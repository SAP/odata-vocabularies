# Analytics Vocabulary
**Namespace: [com.sap.vocabularies.Analytics.v1](Analytics.xml)**

Terms for annotating analytical resources


## Terms

Term|Type|Description
:---|:---|:----------
[Dimension](./Analytics.xml#L41:~:text=<Term%20Name="-,Dimension,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Dimension"></a>Deprecated in favor of [`AnalyticalContext/Dimension`](#AnalyticalContext)
[Measure](./Analytics.xml#L53:~:text=<Term%20Name="-,Measure,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Measure"></a>Deprecated in favor of [`AnalyticalContext/Measure`](#AnalyticalContext)
[AccumulativeMeasure](./Analytics.xml#L65:~:text=<Term%20Name="-,AccumulativeMeasure,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="AccumulativeMeasure"></a>Deprecated in favor of [`AnalyticalContext/AccumulativeMeasure`](#AnalyticalContext)
[RolledUpPropertyCount](./Analytics.xml#L77:~:text=<Term%20Name="-,RolledUpPropertyCount,-") *([Experimental](Common.md#Experimental))*|Int16?|<a name="RolledUpPropertyCount"></a>Number of properties in the entity instance that have been aggregated away
[DrillURL](./Analytics.xml#L83:~:text=<Term%20Name="-,DrillURL,-") *([Experimental](Common.md#Experimental))*|URL?|<a name="DrillURL"></a>URL to retrieve more detailed data related to a node of a recursive hierarchy. Annotations with this term MUST include a qualifier to select the hierarchy for which the drill URL is provided.
[PlanningAction](./Analytics.xml#L95:~:text=<Term%20Name="-,PlanningAction,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PlanningAction"></a>Processes or generates plan data. Its logic may have side-effects on entity sets.
[AggregatedProperties](./Analytics.xml#L103:~:text=<Term%20Name="-,AggregatedProperties,-") *(Deprecated)*|\[[AggregatedPropertyType](#AggregatedPropertyType)\]|<a name="AggregatedProperties"></a>Deprecated in favor of [`AggregatedProperty`](#AggregatedProperty)
[AggregatedProperty](./Analytics.xml#L121:~:text=<Term%20Name="-,AggregatedProperty,-")|[AggregatedPropertyType](#AggregatedPropertyType)|<a name="AggregatedProperty"></a>Dynamic property for aggregate expression with specified aggregation method defined on the annotated entity type.
[AnalyticalContext](./Analytics.xml#L141:~:text=<Term%20Name="-,AnalyticalContext,-")|\[[AnalyticalContextType](#AnalyticalContextType)\]|<a name="AnalyticalContext"></a>Collection of properties that define an analytical context


## Functions

### <a name="condense"></a>[condense](./Analytics.xml#L170:~:text=<Function%20Name="-,condense,-")

Condenses the non-empty input set in which every property occurs in only one instance into a one-instance output set of the same type in which every property has the non-null value from the input set

An empty input set leads to an empty output set.
This function SHOULD only be used as a set transformation [OData-Aggr, section 7.6] after a `concat` of one-instance sets with disjoint property lists.
Servers SHOULD reject any other usage of this function.

The set transformation converts the input set

|NumberOfLeaves|Subtotal|
|-------------:|-------:|
|           100|        |
|              |    2000|

into the output set

|NumberOfLeaves|Subtotal|
|-------------:|-------:|
|           100|    2000|


Parameter|Type|Description
:--------|:---|:----------
**[InputSet](./Analytics.xml#L191:~:text=<Function%20Name="-,condense,-")**|\[EntityType\]|**Binding parameter**
[&rarr;](./Analytics.xml#L192:~:text=<Function%20Name="-,condense,-")|\[EntityType\]|Output set with same entity type as input set


### <a name="condense"></a>[condense](./Analytics.xml#L196)

Condenses the non-empty input set in which every property occurs in only one instance into a one-instance output set of the same type in which every property has the non-null value from the input set

This is analogous to `condense(Collection(Edm.EntityType))` but intended to be used in
          `transformnested(StructuralProperty,concat(...)/Analytics.condense())`.

Parameter|Type|Description
:--------|:---|:----------
**[InputSet](./Analytics.xml#L202)**|\[ComplexType\]|**Binding parameter**
[&rarr;](./Analytics.xml#L203)|\[ComplexType\]|Output set with same complex type as input set


## <a name="AggregatedPropertyType"></a>[AggregatedPropertyType](./Analytics.xml#L124:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")


Property|Type|Description
:-------|:---|:----------
[Name](./Analytics.xml#L125:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")|[SimpleIdentifier](Common.md#SimpleIdentifier)|Name of the dynamic property holding the aggregated value.
[AggregationMethod](./Analytics.xml#L128:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")|String|Name of the standard or custom aggregation method to be applied.
[AggregatableProperty](./Analytics.xml#L131:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")|PropertyPath|Property whose values shall be aggregated.

**Applicable Annotation Terms:**

- [Label](Common.md#Label)

## <a name="AnalyticalContextType"></a>[AnalyticalContextType](./Analytics.xml#L145:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")
Exactly one of `Property` and `DynamicProperty` must be present

Property|Type|Description
:-------|:---|:----------
[Property](./Analytics.xml#L147:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")|PropertyPath?|Property that is part of the analytical context
[DynamicProperty](./Analytics.xml#L150:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")|AnnotationPath?|Dynamic property introduced by annotations that is part of the analytical context<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)
[Dimension](./Analytics.xml#L159:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The property holds the key of a dimension
[Measure](./Analytics.xml#L162:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The property holds the numeric value of a measure
[AccumulativeMeasure](./Analytics.xml#L165:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The measure has non-negative and additive values; it can be used in whole-part charts, e.g. the Donut
