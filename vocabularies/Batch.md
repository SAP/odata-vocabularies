# Batch Vocabulary
**Namespace: [com.sap.vocabularies.Batch.v1](Batch.xml)**

Terms for advanced batch request processing


## Terms

Term|Type|Description
:---|:---|:----------
[CorrespondingContentIDs](Batch.xml#L35) *([Experimental](Common.md#Experimental))*|\[[CorrespondingContentID](#CorrespondingContentID)\]|<a name="CorrespondingContentIDs"></a>Correspondence between `Core.ContentID` in a parameter and in the return type of an action<br>If values in the action invocation are annotated with `Core.ContentID`, the corresponding values returned by the action are annotated with the same `Core.ContentID` and can thus be referenced in subsequent requests within the same batch request.

<a name="CorrespondingContentID"></a>
## [CorrespondingContentID](Batch.xml#L44) *([Experimental](Common.md#Experimental))*
Establishes a correspondence between a value in a parameter and a value in the return type

[This service](../examples/Batch.CorrespondingContentIDs-sample.xml)
contains an action annotated with
```json
"@Batch.CorrespondingContentIDs": [{
  "ParameterValue": "items",
  "ReturnedValue": "$ReturnType/Items"
}]
```
Given a sales quotation with items for coffee, sugar and paper,
the following batch request invokes the action to create a sales order for sugar and paper
and adds a 10% discount for the sugar.
```json
{"requests": [{
  "id": "1",
  "method": "post",
  "url": "SalesQuotation(68)/self.CreateSalesOrder",
  "body": {
    "items": [
      {"product": "Sugar", "@Core.ContentID": "I1"},
      {"product": "Paper"}
    ]
  }
}, {
  "id": "2",
  "dependsOn": [ "1" ],
  "method": "post",
  "url": "$I1/Discounts",
  "body": {
    "percent": 10
  }
}]}
```
In the response to the action invocation the sales order item for the sugar is annotated
with `"@Core.ContentID": "I1"`. The subsequent POST request can reference this item without knowing its key.

Property|Type|Description
:-------|:---|:----------
[ParameterValue](Batch.xml#L83)|AnyPropertyPath|Path to a value in a parameter that may be annotated with `Core.ContentID`
[ReturnedValue](Batch.xml#L86)|AnyPropertyPath|Path to a value in the return type that will be annotated with the same `Core.ContentID`
