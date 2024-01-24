Entity types for which recommendations are available have an additional property carrying the recommendations and the following annotation pointing to this property:
```xml
<EntityType Name="...">
  <Annotation Term="UI.Recommendations" Path="SAP__Recommendations" />
  <Key>
    <PropertyRef Name="ID" />
  </Key>
  <Property Name="ID" Type="Edm.String" Nullable="false" />
  <Property Name="DocumentType" Type="Edm.String" />
  ...
  <Property Name="SAP__Recommendations" Type="self.RecommendationsType" />
</EntityType>
<ComplexType Name="RecommendationsType">
  <Property Name="DocumentType" Type="Collection(UI.PropertyRecommendationType)" />
  ...
</ComplexType>
```

Clients request recommendations from the server at their discretion.

```mermaid
sequenceDiagram
  actor client as Fiori client
  actor otherclient as Other Fiori client<br>of same collaborative draft
  box ABAP
    participant server as OData service
    participant task as New task
  end
  participant AI as BTP recommendations service
  client ->>+ server: POST $batch
  server ->> server: PATCH SalesOrder('A')
  server ->> server: GET SalesOrder('A')?$expand=... for side effects
  server -->> client: $batch response
  par server decides whether to update recommendations
    opt input for recommendations has changed
      server ->>+ task: call function ... starting new task
      deactivate server
      task ->>+ AI: compute recommendations
      AI -->>- task: return recommendations
      task ->> task: update recommendations in draft
      deactivate task
    end
  and
    client ->>+ server: GET SalesOrder('A')?$select=SAP__Recommendations&$expand=...
    server ->> server: read recommendations from draft
    server -->>- client: return recommendations
  and
    otherclient ->>+ server: GET SalesOrder('A')?$select=SAP__Recommendations&$expand=...
    server ->> server: read recommendations from draft
    server -->>- otherclient: return recommendations
  end
```

Alternatively, clients can be notified via web socket if recommendations have been updated.

```mermaid
sequenceDiagram
  actor client as Fiori client
  actor otherclient as Other Fiori client<br>of same collaborative draft
  box ABAP
    participant server as OData service
    participant task as New task
  end
  participant AI as BTP recommendations service
  client ->>+ server: POST $batch
  server ->> server: PATCH SalesOrder('A')
  server ->> server: GET SalesOrder('A')?$expand=... for side effects
  server -->> client: $batch response
  opt input for recommendations has changed
    server ->>+ task: call function ... starting new task
    deactivate server
    task ->>+ AI: compute recommendations
    AI -->>- task: return recommendations
    task ->> task: update recommendations in draft
    par
      task ->> client: notify client of updated recommendations
    and
      task ->> otherclient: notify client of updated recommendations
    end
    deactivate task
    par
      client ->>+ server: GET SalesOrder('A')?$select=SAP__Recommendations&$expand=...
      server ->> server: read recommendations from draft
      server -->>- client: return recommendations
    and
      otherclient ->>+ server: GET SalesOrder('A')?$select=SAP__Recommendations&$expand=...
      server ->> server: read recommendations from draft
      server -->>- otherclient: return recommendations
    end
  end
```
