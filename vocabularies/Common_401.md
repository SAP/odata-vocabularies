# Common_401 Vocabulary
**Namespace: [com.sap.vocabularies.Common_401.v1](Common_401.xml)**

2020-06-02 © Copyright 2021 SAP SE. All rights reserved


## Terms

Term|Type|Description
:---|:---|:----------
[callback](./Common_401.xml#L36:~:text=Name="-,callback,-")|Untyped|<a name="callback"></a>Data that the server has embedded within an error response to make a callback to the client<br>This instance annotation has the format of a [message body](https://docs.oasis-open.org/odata/odata-json-format/v4.01/odata-json-format-v4.01.html#sec_MessageBody). The callback allows the client to adjust the request so that it can be successfully repeated. An example for such a callback is a user interaction to resolve a conflict that was detected by the server, see [`UI.UserInteraction`](UI.md#UserInteraction).
