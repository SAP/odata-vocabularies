# Analytics Vocabulary
**Namespace: [com.sap.vocabularies.Analytics.v1](Analytics.xml)**

Terms for annotating analytical resources


## Terms

Term|Type|Description
:---|:---|:----------
[Dimension](Analytics.xml#L41) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Dimension"></a>Deprecated since the base term `Aggregation.Groupable` is also deprecated
[Measure](Analytics.xml#L53) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Measure"></a>Deprecated since the base term `Aggregation.Aggregatable` is also deprecated
[AccumulativeMeasure](Analytics.xml#L65) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="AccumulativeMeasure"></a>Deprecated since the base term [`Measure`](#Measure) is also deprecated
[RolledUpPropertyCount](Analytics.xml#L77) *([Experimental](Common.md#Experimental))*|Int16?|<a name="RolledUpPropertyCount"></a>Number of properties in the entity instance that have been aggregated away
[DrillURL](Analytics.xml#L83) *([Experimental](Common.md#Experimental))*|URL?|<a name="DrillURL"></a>URL to retrieve more detailed data related to a node of a recursive hierarchy. Annotations with this term MUST include a qualifier to select the hierarchy for which the drill URL is provided.
[PlanningAction](Analytics.xml#L95) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PlanningAction"></a>Processes or generates plan data. Its logic may have side-effects on entity sets.
[AggregatedProperties](Analytics.xml#L103)|\[[AggregatedPropertyType](#AggregatedPropertyType)\]|<a name="AggregatedProperties"></a>Dynamic properties for aggregate expressions with specified aggregation method defined on the annotated entity type.<p>Other annotations may refer in property paths to dynamic properties declared in any AgrgegatedProperties annotation of the given entity type to leverage the results of the aggregate expression determined in the context of an entity collection of the annotated type.</p>

## <a name="AggregatedPropertyType"></a>[AggregatedPropertyType](Analytics.xml#L115)


Property|Type|Description
:-------|:---|:----------
[Name](Analytics.xml#L116)|[SimpleIdentifier](Common.md#SimpleIdentifier)|Name the dynamic property holding the aggregated value.
[AggregationMethod](Analytics.xml#L119)|String|Name of the standard or custom aggregation method to be applied.
[AggregatableProperty](Analytics.xml#L122)|PropertyPath|Property whose values shall be aggregated.

**Applicable Annotation Terms:**

- [Label](Common.md#Label)
