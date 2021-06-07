# Common_401 Vocabulary
**Namespace: [com.sap.vocabularies.Common_401.v1](Common_401.xml)**

2020-06-02 © Copyright 2021 SAP SE. All rights reserved


## Terms

Term|Type|Description
:---|:---|:----------
[callback](Common_401.xml#L36)|Untyped|<a name="callback"></a>Data that the server has embedded within an error response to make a callback to the client<br>The callback data may describe a conflict that was detected by the server and that must be resolved through user interaction before the request can be successfully repeated. This instance annotation has the format of a [message body](https://docs.oasis-open.org/odata/odata-json-format/v4.01/odata-json-format-v4.01.html#sec_MessageBody) and may be server-side expanded with a navigation property that is annotated with [`UI.UserInteraction`](UI.md#UserInteraction) or with an instance annotation [`UI.UserInteractionSimple`](UI.md#UserInteractionSimple). Overall, the error response can contain multiple such navigation properties or instance annotations.
