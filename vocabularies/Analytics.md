# Analytics Vocabulary
**Namespace: [com.sap.vocabularies.Analytics.v1](Analytics.xml)**

Terms for annotating analytical resources


## Terms

Term|Type|Description
:---|:---|:----------
[Dimension](Analytics.xml#L41)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Dimension"></a>A property holding the key of a dimension in an analytical context
[Measure](Analytics.xml#L45)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Measure"></a>A property holding the numeric value of a measure in an analytical context
[AccumulativeMeasure](Analytics.xml#L49)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="AccumulativeMeasure"></a>The measure has non-negative and additive values; it can be used in whole-part charts, e.g. the Donut
[RolledUpPropertyCount](Analytics.xml#L53) *([Experimental](Common.md#Experimental))*|Int16?|<a name="RolledUpPropertyCount"></a>Number of properties in the entity instance that have been aggregated away
[DrillURL](Analytics.xml#L59) *([Experimental](Common.md#Experimental))*|URL?|<a name="DrillURL"></a>URL to retrieve more detailed data related to a node of a recursive hierarchy. Annotations with this term MUST include a qualifier to select the hierarchy for which the drill URL is provided.
[PlanningAction](Analytics.xml#L71) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PlanningAction"></a>Processes or generates plan data. Its logic may have side-effects on entity sets.
[AggregatedProperties](Analytics.xml#L79)|\[[AggregatedPropertyType](#AggregatedPropertyType)\]|<a name="AggregatedProperties"></a>Dynamic properties for aggregate expressions with specified aggregation method defined on the annotated entity type.<br>Other annotations may refer in property paths to dynamic properties declared in any AgrgegatedProperties annotation of the given entity type to leverage the results of the aggregate expression determined in the context of an entity collection of the annotated type.

## <a name="AggregatedPropertyType"></a>[AggregatedPropertyType](Analytics.xml#L90)


Property|Type|Description
:-------|:---|:----------
[Name](Analytics.xml#L91)|[SimpleIdentifier](Common.md#SimpleIdentifier)|Name the dynamic property holding the aggregated value.
[AggregationMethod](Analytics.xml#L94)|String|Name of the standard or custom aggregation method to be applied.
[AggregatableProperty](Analytics.xml#L97)|PropertyPath|Property whose values shall be aggregated.

**Applicable Annotation Terms:**

- [Label](Common.md#Label)
