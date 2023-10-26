# AI Vocabulary
**Namespace: [com.sap.vocabularies.AI.v1](AI.xml)**

Terms for AI-related functionality at SAP


## Terms

Term|Type|Description
:---|:---|:----------
[RecommendationsRole](./AI.xml#L79:~:text=<Term%20Name="-,RecommendationsRole,-") *([Experimental](Common.md#Experimental))*|[RecommendationsRoleType](#RecommendationsRoleType)|<a name="RecommendationsRole"></a>Role of this property or parameter regarding AI-based recommendations


## Functions

<a name="Recommendations"></a>
### [Recommendations](./AI.xml#L38:~:text=<Function%20Name="-,Recommendations,-") *([Experimental](Common.md#Experimental))*

Computes AI-based recommendations for the bound entity and its related entities

The function SHOULD compute the recommendations asynchronously, see [this diagram](../docs/recommendations.md).

Parameter|Type|Description
:--------|:---|:----------
**[Entity](./AI.xml#L45:~:text=<Function%20Name="-,Recommendations,-")**|EntityType|**Binding parameter**
[&rarr;](./AI.xml#L46:~:text=<Function%20Name="-,Recommendations,-")|ComplexType|Nested structure containing recommendations<br>The nested structure contains complex types that correspond to the entity type of the binding parameter or one of its related entity types. Each complex type contains <br>- the same properties as the key of the corresponding entity type <br>- structural properties corresponding to non-key structural properties of the entity type for which recommendations are available. The type of such a property is a collection of a specialization of [`PropertyRecommendationType`](#PropertyRecommendationType) <br>- structural properties corresponding to navigation properties of the entity type. The type of such a property is (a collection of) a nested complex type corresponding to the target entity type of the navigation property.


<a name="PropertyRecommendationType"></a>
## [*PropertyRecommendationType*](./AI.xml#L59:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-") *([Experimental](Common.md#Experimental))*
Base type containing AI-based recommendations for an entity type property

Property|Type|Description
:-------|:---|:----------
[AIRecommendedFieldValue](./AI.xml#L62:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|PrimitiveType|Recommended value<br>In the specializations of this base type, this property is specialized to the primitive type of the entity type property.
[AIRecommendedFieldDescription](./AI.xml#L69:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|String?|Description of the recommended value<br>In the specializations of this base type, this property is specialized to the string type of the text property corresponding to the entity type property.
[AIRecommendedFieldScoreValue](./AI.xml#L75:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|Decimal?|Confidence score of the recommended value

<a name="RecommendationsRoleType"></a>
## [RecommendationsRoleType](./AI.xml#L83:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-") *([Experimental](Common.md#Experimental))*
**Type:** String



Allowed Value|Description
:------------|:----------
[Input](./AI.xml#L87:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property is input for some recommendation
[Output](./AI.xml#L91:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property or parameter is the target of some recommendation
[InputOutput](./AI.xml#L95:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property is input for and the target of some recommendation
[RequiredInput](./AI.xml#L99:~:text=<TypeDefinition%20Name="-,RecommendationsRoleType,-")|The property is required input before any recommendations are requested
