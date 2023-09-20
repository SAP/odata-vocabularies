Invocation flow for a recommendations function annotated in [`Common.RecommendationsFunction`](../vocabularies/Common.md#RecommendationsFunction)

```mermaid
sequenceDiagram
  actor client as Fiori client
  box ABAP
    participant server as OData service
    participant task as New task
  end
  participant AI as BTP recommendations service
  activate server
  note over server: sticky session
  client ->> server: POST $batch
  server ->> server: PATCH SalesOrder('A')
  par
    server ->> server: GET SalesOrder('A')?$expand=... for side effects
  and
    server ->> server: GET SalesOrder('A')/ns.Recommendations?Targets=...<br>Prefer: respond-async
    server ->>+ task: call function ... starting new task
  end
  server -->> client: $batch response with<br>Location header for recommendations
  task ->>+ AI: compute recommendations
  client ->>+ server: GET «Location header for recommendations»
  note right of server: outside sticky session
  par
    loop until successful lookup
     server ->> server: look up recommendations on database
    end
  and
    AI -->>- task: return recommendations
    task ->> task: write recommendations to database
    deactivate task
  end
  server -->>- client: return recommendations
  note over server: sticky session continues
  deactivate server
```

The lower half of the diagram could alternatively use a web socket:
```mermaid
sequenceDiagram
  actor client as Fiori client
  box ABAP
    participant server as OData service
    participant task as New task
  end
  participant AI as BTP recommendations service
  activate server
  activate task
  task ->>+ AI: compute recommendations
  AI -->>- task: return recommendations
  task ->> task: write recommendations to database
  task ->> client: send recommendation retrieval URL over web socket
  deactivate task
  client ->>+ server: GET «recommendation retrieval URL»
  note right of server: outside sticky session
  server -->>- client: return recommendations
  note over server: sticky session continues
  deactivate server
```
