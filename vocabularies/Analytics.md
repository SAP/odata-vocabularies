# Analytics Vocabulary
**Namespace: [com.sap.vocabularies.Analytics.v1](Analytics.xml)**

Terms for annotating analytical resources


## Terms

Term|Type|Description
:---|:---|:----------
[Dimension](./Analytics.xml#L41:~:text=Name="-,Dimension,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Dimension"></a>Deprecated in favor of [`AnalyticalContext/Dimension`](#AnalyticalContext)
[Measure](./Analytics.xml#L53:~:text=Name="-,Measure,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Measure"></a>Deprecated in favor of [`AnalyticalContext/Measure`](#AnalyticalContext)
[AccumulativeMeasure](./Analytics.xml#L65:~:text=Name="-,AccumulativeMeasure,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="AccumulativeMeasure"></a>Deprecated in favor of [`AnalyticalContext/AccumulativeMeasure`](#AnalyticalContext)
[RolledUpPropertyCount](./Analytics.xml#L77:~:text=Name="-,RolledUpPropertyCount,-") *([Experimental](Common.md#Experimental))*|Int16?|<a name="RolledUpPropertyCount"></a>Number of properties in the entity instance that have been aggregated away
[DrillURL](./Analytics.xml#L83:~:text=Name="-,DrillURL,-") *([Experimental](Common.md#Experimental))*|URL?|<a name="DrillURL"></a>URL to retrieve more detailed data related to a node of a recursive hierarchy. Annotations with this term MUST include a qualifier to select the hierarchy for which the drill URL is provided.
[PlanningAction](./Analytics.xml#L95:~:text=Name="-,PlanningAction,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PlanningAction"></a>Processes or generates plan data. Its logic may have side-effects on entity sets.
[AggregatedProperties](./Analytics.xml#L103:~:text=Name="-,AggregatedProperties,-") *(Deprecated)*|\[[AggregatedPropertyType](#AggregatedPropertyType)\]|<a name="AggregatedProperties"></a>Deprecated in favor of [`AggregatedProperty`](#AggregatedProperty)
[AggregatedProperty](./Analytics.xml#L121:~:text=Name="-,AggregatedProperty,-")|[AggregatedPropertyType](#AggregatedPropertyType)|<a name="AggregatedProperty"></a>Dynamic property for aggregate expression with specified aggregation method defined on the annotated entity type.
[AnalyticalContext](./Analytics.xml#L141:~:text=Name="-,AnalyticalContext,-")|\[[AnalyticalContextType](#AnalyticalContextType)\]|<a name="AnalyticalContext"></a>Collection of properties that define an analytical context


## Functions

### <a name="unique"></a>[unique](./Analytics.xml#L170:~:text=Name="-,unique,-")

This custom aggregation method evaluates to the unique non-null value that the aggregated property has in the input set, otherwise to null

This can be used to compress input sets that have been constructed with `concat`, like
A|B
-|-
1|
||2

into output sets that contain a single instance with the non-null properties.

`aggregate(A with Analytics.unique as A1, B with Analytics.unique as B1)` applied to the above input set yields
A1|B1
-|-
1|2


Parameter|Type|Description
:--------|:---|:----------
[InputSet](./Analytics.xml#L188:~:text=Name="-,InputSet,-")|\[PrimitiveType\]|
[&rarr;](./Analytics.xml#L189:~:text=Name="-,&rarr;,-")|PrimitiveType?|


## <a name="AggregatedPropertyType"></a>[AggregatedPropertyType](./Analytics.xml#L124:~:text=Name="-,AggregatedPropertyType,-")


Property|Type|Description
:-------|:---|:----------
[Name](./Analytics.xml#L125:~:text=Name="-,Name,-")|[SimpleIdentifier](Common.md#SimpleIdentifier)|Name of the dynamic property holding the aggregated value.
[AggregationMethod](./Analytics.xml#L128:~:text=Name="-,AggregationMethod,-")|String|Name of the standard or custom aggregation method to be applied.
[AggregatableProperty](./Analytics.xml#L131:~:text=Name="-,AggregatableProperty,-")|PropertyPath|Property whose values shall be aggregated.

**Applicable Annotation Terms:**

- [Label](Common.md#Label)

## <a name="AnalyticalContextType"></a>[AnalyticalContextType](./Analytics.xml#L145:~:text=Name="-,AnalyticalContextType,-")
Exactly one of `Property` and `DynamicProperty` must be present

Property|Type|Description
:-------|:---|:----------
[Property](./Analytics.xml#L147:~:text=Name="-,Property,-")|PropertyPath?|Property that is part of the analytical context
[DynamicProperty](./Analytics.xml#L150:~:text=Name="-,DynamicProperty,-")|AnnotationPath?|Dynamic property introduced by annotations that is part of the analytical context<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)
[Dimension](./Analytics.xml#L159:~:text=Name="-,Dimension,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The property holds the key of a dimension
[Measure](./Analytics.xml#L162:~:text=Name="-,Measure,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The property holds the numeric value of a measure
[AccumulativeMeasure](./Analytics.xml#L165:~:text=Name="-,AccumulativeMeasure,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The measure has non-negative and additive values; it can be used in whole-part charts, e.g. the Donut
