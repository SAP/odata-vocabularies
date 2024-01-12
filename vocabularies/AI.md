# AI Vocabulary
**Namespace: [com.sap.vocabularies.AI.v1](AI.xml)**

Terms for AI-related functionality at SAP

## AI-based recommendations

Entity types for which AI-based recommendations are available have an additional
property `SAP__Recommendations` of a complex type. This complex type contains
structural properties corresponding to non-key structural properties of the entity type for which recommendations are
available. The type of such a property is a collection of a specialization of [`PropertyRecommendationType`](#PropertyRecommendationType)

Clients retrieve the recommendations with a GET request that includes `SAP__Recommendations` in a `$select` clause.
The recommendations SHOULD be computed asynchronously, see [this diagram](../docs/recommendations.md).


## Terms

Term|Type|Description
:---|:---|:----------
[RecommendationsRole](./AI.xml#L85:~:text=<Term%20Name="-,RecommendationsRole,-") *([Experimental](Common.md#Experimental))*|[RecommendationsRoleType](#RecommendationsRoleType)|<a name="RecommendationsRole"></a>Role of this property or parameter regarding AI-based recommendations

<a name="PropertyRecommendationType"></a>
## [*PropertyRecommendationType*](./AI.xml#L49:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-") *([Experimental](Common.md#Experimental))*
Base type containing AI-based recommendations for an entity type property

Specializations of this base type have four properties:
- a property that is the target of a [`Common.Text`](Common.md#Text) annotation, its name may differ from `AIRecommendedFieldValue`
- a property to which the `Common.Text` annotation evaluates, its name may differ from `AIRecommendedFieldDescription`
- a property named `AIRecommendedFieldScoreValue`
- a Boolean property named `AIRecommendedFieldIsSuggestion`.

Property|Type|Description
:-------|:---|:----------
[AIRecommendedFieldValue](./AI.xml#L59:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|PrimitiveType|Recommended value<br>In specializations of this base type, this property is specialized to the primitive type of the entity type property.
[AIRecommendedFieldDescription](./AI.xml#L66:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|String?|Description of the recommended value<br>In specializations of this base type, this property is specialized to the string type of the text property corresponding to the entity type property.
[AIRecommendedFieldScoreValue](./AI.xml#L72:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|Decimal?|Confidence score of the recommended value
[AIRecommendedFieldIsSuggestion](./AI.xml#L75:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|Boolean|Whether the recommended value shall be suggested in the input field<br>For any collection of a specialization of `PropertyRecommendationType` in a property of `SAP__Recommendations`, this flag can be true in at most one instance of the collection, and only if the `AIRecommendedFieldScoreValue` exceeds a certain threshold.

<a name="RecommendationsRoleType"></a>
## [RecommendationsRoleType](./AI.xml#L89:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-") *([Experimental](Common.md#Experimental))*
**Type:** String



Allowed Value|Description
:------------|:----------
[Input](./AI.xml#L93:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property is input for some recommendation
[Output](./AI.xml#L97:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property or parameter is the target of some recommendation
[InputOutput](./AI.xml#L101:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property is input for and the target of some recommendation
[RequiredInput](./AI.xml#L105:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property is required input before any recommendations are requested
