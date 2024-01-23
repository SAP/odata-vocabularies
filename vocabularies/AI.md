# AI Vocabulary
**Namespace: [com.sap.vocabularies.AI.v1](AI.xml)**

Terms for AI-related functionality at SAP


## Terms

Term|Type|Description
:---|:---|:----------
[Recommendations](./AI.xml#L38:~:text=<Term%20Name="-,Recommendations,-") *([Experimental](Common.md#Experimental))*|ComplexType|<a name="Recommendations"></a>AI-based recommendations for an entity<br>This complex-typed annotation contains structural properties corresponding via name equality to non-key structural properties of the entity type for which recommendations are available. The type of such a property is a collection of a specialization of [`PropertyRecommendationType`](#PropertyRecommendationType).<br/>Clients retrieve the recommendations with a GET request that includes this annotation in a `$select` clause. The recommendations SHOULD be computed asynchronously, see [this diagram](../docs/recommendations.md).

<a name="PropertyRecommendationType"></a>
## [*PropertyRecommendationType*](./AI.xml#L51:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-") *([Experimental](Common.md#Experimental))*
Base type containing AI-based recommendations for an entity type property

Specializations of this base type have four properties:
- a property that is the target of a [`Common.Text`](Common.md#Text) annotation, its name may differ from `AIRecommendedFieldValue`
- a property to which the `Common.Text` annotation evaluates, its name may differ from `AIRecommendedFieldDescription`
- a property named `AIRecommendedFieldScoreValue`
- a Boolean property named `AIRecommendedFieldIsSuggestion`.

Property|Type|Description
:-------|:---|:----------
[AIRecommendedFieldValue](./AI.xml#L61:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|PrimitiveType|Recommended value<br>In specializations of this base type, this property is specialized to the primitive type of the entity type property.
[AIRecommendedFieldDescription](./AI.xml#L68:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|String?|Description of the recommended value<br>In specializations of this base type, this property is specialized to the string type of the text property corresponding to the entity type property.
[AIRecommendedFieldScoreValue](./AI.xml#L74:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|Decimal?|Confidence score of the recommended value
[AIRecommendedFieldIsSuggestion](./AI.xml#L77:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|Boolean|Whether the recommended value shall be suggested in the input field<br>For any collection of a specialization of `PropertyRecommendationType` in a property of `SAP__Recommendations`, this flag can be true in at most one instance of the collection, and only if the `AIRecommendedFieldScoreValue` exceeds a certain threshold.
