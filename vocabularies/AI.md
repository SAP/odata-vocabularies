# AI Vocabulary
**Namespace: [com.sap.vocabularies.AI.v1](AI.xml)**

Terms for AI-related functionality at SAP


## Terms

Term|Type|Description
:---|:---|:----------
[RecommendationsRole](./AI.xml#L101:~:text=<Term%20Name="-,RecommendationsRole,-") *([Experimental](Common.md#Experimental))*|[RecommendationsRoleType](#RecommendationsRoleType)|<a name="RecommendationsRole"></a>Role of this property or parameter regarding AI-based recommendations


## Functions

<a name="GetRecommendations"></a>
### [GetRecommendations](./AI.xml#L35:~:text=<Function%20Name="-,GetRecommendations,-") *([Experimental](Common.md#Experimental))*

Computes AI-based recommendations for the bound entity and its related entities

The function SHOULD compute the recommendations asynchronously, see [this diagram](../docs/recommendations.md).

Parameter|Type|Description
:--------|:---|:----------
**[Entity](./AI.xml#L42:~:text=<Function%20Name="-,GetRecommendations,-")**|EntityType|**Binding parameter**
*[Targets](./AI.xml#L43:~:text=<Function%20Name="-,GetRecommendations,-")*|[RecommendationsTargetsType](#RecommendationsTargetsType)|*Optional parameter:* Entities, properties or action/function parameters for which recommendations shall be retrieved<br>Implementations of this function MAY omit this parameter. If this parameter is omitted (by the implementation or in the invocation), all recommendations are retrieved.
[&rarr;](./AI.xml#L53:~:text=<Function%20Name="-,GetRecommendations,-")|\[[PropertyRecommendationType](#PropertyRecommendationType)\]|A collection of recommendations that differ in their `AIRecommendedFieldPath` property


<a name="RecommendationsTargetsType"></a>
## [RecommendationsTargetsType](./AI.xml#L57:~:text=<ComplexType%20Name="-,RecommendationsTargetsType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[URLs](./AI.xml#L59:~:text=<ComplexType%20Name="-,RecommendationsTargetsType,-")|\[URL\]|URLs (relative to the request URL) that address entities, properties or action/function parameters for which recommendations shall be retrieved<br>The request `SalesOrder('A')/ns.GetRecommendations?Targets={"URLs":["","Items(10)"]}` retrieves recommendations for the entities `SalesOrder('A')` and `SalesOrder('A')/Items(10)`.

<a name="PropertyRecommendationType"></a>
## [PropertyRecommendationType](./AI.xml#L68:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[AIRecommendedFieldPath](./AI.xml#L70:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|URL|URL (relative to the URL of the [`GetRecommendations`](#GetRecommendations) function request) addressing a property [OData-URL, section 4.6](https://docs.oasis-open.org/odata/odata/v4.01/os/part2-url-conventions/odata-v4.01-os-part2-url-conventions.html#sec_AddressingaProperty) that is targeted by this recommendation<br>The request `SalesOrder('A')/ns.GetRecommendations?Targets=...` might retrieve a recommendation with `"AIRecommendedFieldPath": "Items(10)/Product"`.
[AIRecommendedFieldValue](./AI.xml#L78:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|String|Recommended value, converted to string
[AIRecommendedFieldDescription](./AI.xml#L82:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|String?|Description of the recommended value
[AIAltvRecmddFldVals](./AI.xml#L85:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|\[[AlternativeRecommendationType](#AlternativeRecommendationType)\]|A list of alternative values, sorted by confidence score in descending order<br>If a value is recommended via property `AIRecommendedFieldValue`, it must be the first entry in this list.

<a name="AlternativeRecommendationType"></a>
## [AlternativeRecommendationType](./AI.xml#L92:~:text=<ComplexType%20Name="-,AlternativeRecommendationType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[AIRecommendedFieldValue](./AI.xml#L94:~:text=<ComplexType%20Name="-,AlternativeRecommendationType,-")|String|Alternatively recommended value, converted to string
[AIRecommendedFieldScore](./AI.xml#L97:~:text=<ComplexType%20Name="-,AlternativeRecommendationType,-")|Decimal?|Confidence score of the alternatively recommended value

<a name="RecommendationsRoleType"></a>
## [RecommendationsRoleType](./AI.xml#L105:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-") *([Experimental](Common.md#Experimental))*
**Type:** String


