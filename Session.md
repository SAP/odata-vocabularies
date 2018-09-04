# Session Vocabulary
**Namespace: [com.sap.vocabularies.Session.v1](Session.xml)**

Terms for services requiring sticky sessions for data modification


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

This means that the client application has to be aware of the service's limitations and cooperate to route calls from each client instance (browser tab or window) 
to a different server session. The ABAP server allows this by sending the session id in the response header `sap-contextid`, 
which client instances will need to echo in subsequent requests.

Also the client needs to adhere to a strict choreography of 
- initiate session
- send data modification and read requests
- end session by either
  - confirm data modification or
  - discard changes

This choreography is (intentionally) similar to the choreography for [Draft Handling](https://experience.sap.com/fiori-design-web/draft-handling/).

Data modification requests will fail outside of a session. This is a safety mechanism for clients that do not know the session choreography.
        


## Terms

Term|Type|Description
:---|:---|:----------
[StickySessionRequired](Session.xml#L69) *(Experimental)*|[StickySessionRequiredType](#StickySessionRequiredType)|<a name="StickySessionRequired"></a>The annotated entity set allows data modification only within a sticky session

## <a name="StickySessionRequiredType"></a>[StickySessionRequiredType](Session.xml#L93) *(Experimental)*
Actions for managing data modification within a sticky session

Property|Type|Description
:-------|:---|:----------
[NewActions](Session.xml#L96)|\[[QualifiedName](Common.md#QualifiedName)\]|List of bound actions that initiate a sticky session and create a new entity<p>Multiple actions are allowed to support 'create by reference' from different sources.</p>
[EditAction](Session.xml#L102)|[QualifiedName](Common.md#QualifiedName)|Bound action that initiates a sticky session for editing the targeted entity
[PreparationAction](Session.xml#L106)|[QualifiedName](Common.md#QualifiedName)|Bound action that prepares (checks, auto-fills) an entity
[SaveAction](Session.xml#L109)|[QualifiedName](Common.md#QualifiedName)|Bound action that saves a new or edited entity<p>On success this action returns the newly created or edited entity and the sticky session is terminated. On failure the sticky session is kept alive.</p>
[DiscardAction](Session.xml#L114)|[SimpleIdentifier](Common.md#SimpleIdentifier)|Action import for an unbound action that discards all changes and terminates the sticky session
