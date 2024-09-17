# Analytics Vocabulary
**Namespace: [com.sap.vocabularies.Analytics.v1](Analytics.xml)**

Terms for annotating analytical resources


## Terms

Term|Type|Description
:---|:---|:----------
[Dimension](Analytics.xml#L44) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Dimension"></a>Deprecated in favor of [`AnalyticalContext/Dimension`](#AnalyticalContext)
[Measure](Analytics.xml#L56) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Measure"></a>Deprecated in favor of [`AnalyticalContext/Measure`](#AnalyticalContext)
[AccumulativeMeasure](Analytics.xml#L68) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="AccumulativeMeasure"></a>Deprecated in favor of [`AnalyticalContext/AccumulativeMeasure`](#AnalyticalContext)
[RolledUpPropertyCount](Analytics.xml#L80) *([Experimental](Common.md#Experimental))*|Int16|<a name="RolledUpPropertyCount"></a>Number of properties in the entity instance that have been aggregated away
[DrillURL](Analytics.xml#L86) *([Experimental](Common.md#Experimental))*|URL|<a name="DrillURL"></a>URL to retrieve more detailed data related to a node of a recursive hierarchy. Annotations with this term MUST include a qualifier to select the hierarchy for which the drill URL is provided.
[PlanningAction](Analytics.xml#L98) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PlanningAction"></a>Processes or generates plan data. Its logic may have side-effects on entity sets.
[AggregatedProperties](Analytics.xml#L106) *(Deprecated)*|\[[AggregatedPropertyType](#AggregatedPropertyType)\]|<a name="AggregatedProperties"></a>Deprecated in favor of [`AggregatedProperty`](#AggregatedProperty)
[AggregatedProperty](Analytics.xml#L124)|[AggregatedPropertyType](#AggregatedPropertyType)|<a name="AggregatedProperty"></a>Dynamic property for aggregate expression with specified aggregation method defined on the annotated entity type.
[AnalyticalContext](Analytics.xml#L144)|\[[AnalyticalContextType](#AnalyticalContextType)\]|<a name="AnalyticalContext"></a>Collection of properties that define an analytical context
[DataGrid](Analytics.xml#L173) *([Experimental](Common.md#Experimental))*|[DataGridType](#DataGridType)|<a name="DataGrid"></a>Visualization of a data grid
[Structure](Analytics.xml#L231) *([Experimental](Common.md#Experimental))*|\[AnnotationPath\]|<a name="Structure"></a>In analytical reports based on the InA protocol, a collection of entities may be structured into several subsets, each described by one StructureElement<br>An analytical report with such a structure evaluates its measures once for each subset. For example, financial posting items can be structured into "current period", "previous period", "current period last year". See also [this example](../examples/Analytics.DataGrid-sample.xml).<br>Allowed terms:<ul><li>[StructureElement](#StructureElement)</li></ul>
[StructureElement](Analytics.xml#L246) *([Experimental](Common.md#Experimental))*|[StructureElementType](#StructureElementType)|<a name="StructureElement"></a>A subset of entities that is part of one or more [Structures](#Structure)

<a name="AggregatedPropertyType"></a>
## [AggregatedPropertyType](Analytics.xml#L127)


Property|Type|Description
:-------|:---|:----------
[Name](Analytics.xml#L128)|[SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Name of the dynamic property holding the aggregated value.
[AggregationMethod](Analytics.xml#L131)|[AggregationMethod](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#AggregationMethod)|Name of the standard or custom aggregation method to be applied.
[AggregatableProperty](Analytics.xml#L134)|PropertyPath|Property whose values shall be aggregated.

**Applicable Annotation Terms:**

- [Label](Common.md#Label)

<a name="AnalyticalContextType"></a>
## [AnalyticalContextType](Analytics.xml#L148)
Exactly one of `Property` and `DynamicProperty` must be present

Property|Type|Description
:-------|:---|:----------
[Property](Analytics.xml#L150)|PropertyPath?|Property that is part of the analytical context
[DynamicProperty](Analytics.xml#L153)|AnnotationPath?|Dynamic property introduced by annotations that is part of the analytical context<br>Allowed terms:<ul><li>[AggregatedProperty](#AggregatedProperty)</li><li>[CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)</li></ul>
[Dimension](Analytics.xml#L162)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The property holds the key of a dimension
[Measure](Analytics.xml#L165)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The property holds the numeric value of a measure
[AccumulativeMeasure](Analytics.xml#L168)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The measure has non-negative and additive values; it can be used in whole-part charts, e.g. the Donut

<a name="DataGridType"></a>
## [DataGridType](Analytics.xml#L178) *([Experimental](Common.md#Experimental))*


- Exactly one [GridElementMeasures](#GridElementMeasures) must be contained in `Columns` and `Rows` together.
- At most one [GridElementReference](#GridElementReference) targeting a [Structure](#Structure) may be contained in `Columns` and `Rows` together.

Property|Type|Description
:-------|:---|:----------
[Title](Analytics.xml#L184)|String?|Title of the grid
[Description](Analytics.xml#L188)|String?|Short description
[Columns](Analytics.xml#L192)|\[[GridElement](#GridElement)\]|Columns of the grid
[Rows](Analytics.xml#L195)|\[[GridElement](#GridElement)\]|Rows of the grid
[Actions](Analytics.xml#L198)|\[[DataFieldForActionAbstract](UI.md#DataFieldForActionAbstract)\]|Available actions

<a name="GridElementAbstract"></a>
## [*GridElementAbstract*](Analytics.xml#L202) *([Experimental](Common.md#Experimental))*


**Derived Types:**
- [GridElementDimension](#GridElementDimension)
- [GridElementMeasures](#GridElementMeasures)
- [GridElementReference](#GridElementReference)

Property|Type|Description
:-------|:---|:----------
[Label](Analytics.xml#L204)|String?|A short, human-readable text suitable for labels and captions in UIs

<a name="GridElementDimension"></a>
## [GridElementDimension](Analytics.xml#L209): [GridElementAbstract](#GridElementAbstract)


Property|Type|Description
:-------|:---|:----------
[*Label*](Analytics.xml#L204)|String?|A short, human-readable text suitable for labels and captions in UIs
[Value](Analytics.xml#L210)|PropertyPath|The property must occur in [`AnalyticalContext/Dimensions`](#AnalyticalContextType)

<a name="GridElementMeasures"></a>
## [GridElementMeasures](Analytics.xml#L214): [GridElementAbstract](#GridElementAbstract) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[*Label*](Analytics.xml#L204)|String?|A short, human-readable text suitable for labels and captions in UIs
[Values](Analytics.xml#L216)|\[PropertyPath\]|The properties must occur in [`AnalyticalContext/Measures`](#AnalyticalContextType)

<a name="GridElementReference"></a>
## [GridElementReference](Analytics.xml#L220): [GridElementAbstract](#GridElementAbstract) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[*Label*](Analytics.xml#L204)|String?|A short, human-readable text suitable for labels and captions in UIs
[Target](Analytics.xml#L222)|AnnotationPath|<br>Allowed terms:<ul><li>[Structure](#Structure)</li></ul>

<a name="StructureElementType"></a>
## [StructureElementType](Analytics.xml#L250) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Filter](Analytics.xml#L257)|Boolean?|Whether an entity belongs to the subset<br>The value is given as a dynamic expression that is evaluated relative to the entity.

**Applicable Annotation Terms:**

- [Label](Common.md#Label)
