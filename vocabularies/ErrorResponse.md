# ErrorResponse Vocabulary
**Namespace: [com.sap.vocabularies.ErrorResponse.v1](ErrorResponse.xml)**

2020-06-02 © Copyright 2021 SAP SE. All rights reserved


## Terms

Term|Type|Description
:---|:---|:----------
[userInteraction](ErrorResponse.xml#L36)|Untyped|<a name="userInteraction"></a>Response embedded within an error response and including data for user interaction<br>The embedded response describes a conflict that was detected by the server and that requires user interaction to be resolved before the request can be successfully repeated. It has the format of a [message body](https://docs.oasis-open.org/odata/odata-json-format/v4.01/odata-json-format-v4.01.html#sec_MessageBody) and is server-side expanded with a navigation property that is annotated with [`UI.UserInteraction`](UI.md#UserInteraction) or with an instance annotation [`UI.UserInteractionSimple`](UI.md#UserInteractionSimple). Overall, the error response can contain multiple such navigation properties or instance annotations.
