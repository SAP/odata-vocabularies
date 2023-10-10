# AI Vocabulary
**Namespace: [com.sap.vocabularies.AI.v1](AI.xml)**

Terms for AI-related functionality at SAP


## Terms

Term|Type|Description
:---|:---|:----------
[RecommendationsRole](./AI.xml#L104:~:text=<Term%20Name="-,RecommendationsRole,-") *([Experimental](Common.md#Experimental))*|[RecommendationsRoleType](#RecommendationsRoleType)|<a name="RecommendationsRole"></a>Role of this property or parameter regarding AI-based recommendations


## Functions

<a name="Recommendations"></a>
### [Recommendations](./AI.xml#L38:~:text=<Function%20Name="-,Recommendations,-") *([Experimental](Common.md#Experimental))*

Computes AI-based recommendations for the bound entity and its related entities

The function SHOULD compute the recommendations asynchronously, see [this diagram](../docs/recommendations.md).

Parameter|Type|Description
:--------|:---|:----------
**[Entity](./AI.xml#L45:~:text=<Function%20Name="-,Recommendations,-")**|EntityType|**Binding parameter**
*[AIRecommendationTargets](./AI.xml#L46:~:text=<Function%20Name="-,Recommendations,-")*|[RecommendationTargetsType](#RecommendationTargetsType)|*Optional parameter:* Entities, properties or action/function parameters for which recommendations shall be retrieved<br>Implementations of this function MAY omit this parameter. If this parameter is omitted (by the implementation or in the invocation), all recommendations are retrieved.
[&rarr;](./AI.xml#L56:~:text=<Function%20Name="-,Recommendations,-")|\[[PropertyRecommendationType](#PropertyRecommendationType)\]|A collection of recommendations that differ in their `AIRecommendedFieldPath` property


<a name="RecommendationTargetsType"></a>
## [RecommendationTargetsType](./AI.xml#L60:~:text=<ComplexType%20Name="-,RecommendationTargetsType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[URLs](./AI.xml#L62:~:text=<ComplexType%20Name="-,RecommendationTargetsType,-")|\[URL\]|URLs (relative to the request URL) that address entities, properties or action/function parameters for which recommendations shall be retrieved<br>The request `SalesOrder('A')/AI.Recommendations?AIRecommendationTargets={"URLs":["","Items(10)"]}` retrieves recommendations for the entities `SalesOrder('A')` and `SalesOrder('A')/Items(10)`.

<a name="PropertyRecommendationType"></a>
## [PropertyRecommendationType](./AI.xml#L71:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[AIRecommendedFieldPath](./AI.xml#L73:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|URL|URL (relative to the URL of the [`Recommendations`](#Recommendations) function request) addressing a property [OData-URL, section 4.6](https://docs.oasis-open.org/odata/odata/v4.01/os/part2-url-conventions/odata-v4.01-os-part2-url-conventions.html#sec_AddressingaProperty) that is targeted by this recommendation<br>The request `SalesOrder('A')/AI.Recommendations?AIRecommendationTargets=...` might retrieve a recommendation with `"AIRecommendedFieldPath": "Items(10)/Product"`.
[AIRecommendedFieldValue](./AI.xml#L81:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|String|Recommended value, converted to string
[AIRecommendedFieldDescription](./AI.xml#L85:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|String?|Description of the recommended value
[AIAltvRecmddFldVals](./AI.xml#L88:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|\[[AlternativeRecommendationType](#AlternativeRecommendationType)\]|A list of alternative values, sorted by confidence score in descending order<br>If a value is recommended via property `AIRecommendedFieldValue`, it must be the first entry in this list.

<a name="AlternativeRecommendationType"></a>
## [AlternativeRecommendationType](./AI.xml#L95:~:text=<ComplexType%20Name="-,AlternativeRecommendationType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[AIRecommendedFieldValue](./AI.xml#L97:~:text=<ComplexType%20Name="-,AlternativeRecommendationType,-")|String|Alternatively recommended value, converted to string
[AIRecommendedFieldScore](./AI.xml#L100:~:text=<ComplexType%20Name="-,AlternativeRecommendationType,-")|Decimal?|Confidence score of the alternatively recommended value

<a name="RecommendationsRoleType"></a>
## [RecommendationsRoleType](./AI.xml#L108:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-") *([Experimental](Common.md#Experimental))*
**Type:** String



Allowed Value|Description
:------------|:----------
[Input](./AI.xml#L112:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property is input for some recommendation
[Output](./AI.xml#L116:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property or parameter is the target of some recommendation
[InputOutput](./AI.xml#L120:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property is input for and the target of some recommendation
[RequiredInput](./AI.xml#L124:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property is required input before any recommendations are requested
