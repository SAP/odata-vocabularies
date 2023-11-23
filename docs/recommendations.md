Invocation flow for a recommendations function implementing the signature of [`AI.Recommendations`](../vocabularies/AI.md#Recommendations)

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
    server ->> server: GET SalesOrder('A')/AI.Recommendations<br>Prefer: respond-async
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

Instead of "long polling" outside the sticky session, the client could also make repeated poll requests in the sticky session.
The lower half of the diagram then becomes:
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
  par
    loop until successful lookup
      client ->> server: GET «Location header for recommendations»
      server ->> server: look up recommendations on database
      server -->> client: return recommendations if found
    end
  and
    AI -->>- task: return recommendations
    task ->> task: write recommendations to database
    deactivate task
  end
  note over server: sticky session continues
  deactivate server
```

Or the client could be notified via web socket when the recommendations are available:
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
  note right of server: outside or inside sticky session
  server -->>- client: return recommendations
  note over server: sticky session continues
  deactivate server
```
