# Session Vocabulary
**Namespace: [com.sap.vocabularies.Session.v1](Session.xml)**

Terms for services supporting sticky sessions for data modification


Building REST APIs on top of ABAP code that has been written for classic session-based communication is hard and sometimes not economically feasible.

HTTP is not connection-based, meaning that each request may be sent over a different TCP connection. 
Adding scalable servers and load balancers into the mix, each individual HTTP request is typically answered by a different application server instance.

Sticky sessions to the rescue: session stickiness or session affinity is a mechanism to route (HTTP) calls from the same client instance to the same "session", 
"work process", or "application instance".  This is a performance improvement measure because it allows the server to keep server state in process-specific memory.
This process-specific memory is lost if the server process instance crashes, in which case the client is redirected to another process instance.
In modern, scalable server environments sticky sessions are usually combined with a persistency service to allow recovering session state after 
a process instance crash, so from the client's perspective the server state is kept. In the case of ABAP servers the session state is simply lost.

Session stickiness is usually achieved via a cookie containing the session id. This has the benefit that browser-based applications don't need to be aware 
of the session stickiness because browsers automatically send cookies on subsequent requests. 
However, cookies are shared across browser tabs and windows, and requests from different tabs or windows would be dispatched to the same server session.
Again this poses a problem for classic ABAP code which was built under the assumption that each server session is tied to at most one client instance.

This means that the client application has to be aware of the service's limitations and cooperate to route calls from each client application instance (browser tab or window) 
to a different server session. The ABAP server allows this by sending the session id in the response header `sap-contextid`, 
which client application instances will need to echo as a request header in subsequent requests.

Also the client needs to adhere to a strict choreography of 
- initiate session
- send data modification and read requests
- end session by either
  - confirm data modification or
  - discard changes

This choreography is (intentionally) similar to the choreography for [Draft Handling](https://experience.sap.com/fiori-design-web/draft-handling/).

Data modification requests outside of a session are allowed and have their usual OData semantics.
This allows e.g. using the same service for a list report with actions and for an editable object page, 
combined as one UI app.
        


## Terms

Term|Type|Description
:---|:---|:----------
[StickySessionSupported](./Session.xml#L71:~:text=<Term%20Name="-,StickySessionSupported,-")|[StickySessionSupportedType](#StickySessionSupportedType)|<a name="StickySessionSupported"></a>The annotated entity set allows data modification only within a sticky session ([Example](./Session.xml#L73))

## <a name="StickySessionSupportedType"></a>[StickySessionSupportedType](./Session.xml#L86:~:text=<ComplexType%20Name="-,StickySessionSupportedType,-")
Actions for managing data modification within a sticky session

Property|Type|Description
:-------|:---|:----------
[NewAction](./Session.xml#L88:~:text=<ComplexType%20Name="-,StickySessionSupportedType,-")|[QualifiedName](Common.md#QualifiedName)|Bound action that initiates a sticky session for creating new entities in the targeted entity set or collection<br>Signature:<br/>- Binding parameter is collection of type of annotated entity set<br/>- No non-binding parameters<br/>- No return type <br/>If called within a sticky session the sticky session continues. <br/>Otherwise:<br/>- On success this action initiates a sticky session.<br/>- On failure no sticky session is initiated.
[AdditionalNewActions](./Session.xml#L108:~:text=<ComplexType%20Name="-,StickySessionSupportedType,-") *([Experimental](Common.md#Experimental))*|\[[QualifiedName](Common.md#QualifiedName)\]|Additional bound actions that initiate a sticky session<br>Actions have the same binding parameter as the `NewAction` and may have non-binding paramters
[EditAction](./Session.xml#L113:~:text=<ComplexType%20Name="-,StickySessionSupportedType,-")|[QualifiedName](Common.md#QualifiedName)|Bound action that initiates a sticky session for editing the targeted entity<br>Signature:<br/>- Binding parameter is type of annotated entity set<br/>- No non-binding parameters<br/>- Return type is same as binding parameter type <br/>If called within a sticky session the sticky session continues. <br/>Otherwise:<br/>- On success this action returns the targeted entity and initiates a sticky session.<br/>- On failure no sticky session is initiated.
[SaveAction](./Session.xml#L133:~:text=<ComplexType%20Name="-,StickySessionSupportedType,-")|[QualifiedName](Common.md#QualifiedName)|Bound action that saves a new or edited entity<br>Signature:<br/>- Binding parameter is type of annotated entity set<br/>- No non-binding parameters<br/>- Return type is same as binding parameter type <br/>On success this action returns the newly created or edited entity. The sticky session is terminated after all entities that were newly created or edited in it have been saved. <br/>On failure the sticky session is kept alive.
[DiscardAction](./Session.xml#L149:~:text=<ComplexType%20Name="-,StickySessionSupportedType,-")|[SimpleIdentifier](Common.md#SimpleIdentifier)|Action import for an unbound action that discards all changes and terminates the sticky session<br>Signature:<br/>- No parameters<br/>- No return type <br/>If called within a sticky session the sticky session is terminated, irrespective of whether the action succeeds or fails. <br/>If called outside of a sticky session the action fails and does not initiate a session.
