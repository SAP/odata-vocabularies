# Graph Vocabulary
**Namespace: [com.sap.vocabularies.Graph.v1](Graph.xml)**

Terms for SAP Graph


## Terms

Term|Type|Description
:---|:---|:----------
[traceId](./Graph.xml#L39:~:text=<Term%20Name="-,traceId,-") *([Experimental](Common.md#Experimental))*|String|<a name="traceId"></a>The traceId contains a unique string that is preserved across multiple requests and log files. It is used in error responses to help diagnose problems by correlating log entries.
[Details](./Graph.xml#L45:~:text=<Term%20Name="-,Details,-") *([Experimental](Common.md#Experimental))*|[DetailsType](#DetailsType)|<a name="Details"></a>Graph-specific details for error responses
[CompositionRoot](./Graph.xml#L64:~:text=<Term%20Name="-,CompositionRoot,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="CompositionRoot"></a>The annotated entity type is the root type of a composition tree.

## <a name="DetailsType"></a>[DetailsType](./Graph.xml#L50:~:text=<ComplexType%20Name="-,DetailsType,-") *([Experimental](Common.md#Experimental))*
Graph-specific details for error responses

Property|Type|Description
:-------|:---|:----------
[url](./Graph.xml#L53:~:text=<ComplexType%20Name="-,DetailsType,-") *([Experimental](Common.md#Experimental))*|URL?|URL sent to the business system tenant
[body](./Graph.xml#L58:~:text=<ComplexType%20Name="-,DetailsType,-") *([Experimental](Common.md#Experimental))*|[JSON?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.JSON.V1.md#JSON)|Request body sent to the business system tenant
