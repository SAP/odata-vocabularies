# Analytics Vocabulary
**Namespace: [com.sap.vocabularies.Analytics.v1](Analytics.xml)**

Terms for annotating analytical resources


## Terms

Term|Type|Description
:---|:---|:----------
[Dimension](Analytics.xml#L36)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Dimension"></a>A property holding the key of a dimension in an analytical context
[Measure](Analytics.xml#L41)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Measure"></a>A property holding the numeric value of a measure in an analytical context
[RolledUpPropertyCount](Analytics.xml#L45) *(Experimental)*|Int16|<a name="RolledUpPropertyCount"></a>Number of properties in the entity instance that have been aggregated away
[DrillURL](Analytics.xml#L50) *(Experimental)*|URL|<a name="DrillURL"></a>URL to retrieve more detailed data related to a node of a recursive hierarchy. Annotations with this term MUST include a qualifier to select the hierarchy for which the drill URL is provided.
[PlanningAction](Analytics.xml#L61) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PlanningAction"></a>Processes or generates plan data. Its logic may have side-effects on entity sets.
[AggregatedProperty](Analytics.xml#L69) *(Experimental)*|[AggregatedPropertyType](#AggregatedPropertyType)|<a name="AggregatedProperty"></a>Statement to aggregate property values with a specified aggregation method.

## <a name="AggregatedPropertyType"></a>[AggregatedPropertyType](Analytics.xml#L73)


Property|Type|Description
:-------|:---|:----------
[Name](Analytics.xml#L74)|[SimpleIdentifier](Common.md#SimpleIdentifier)|Name the dynamic property holding the aggregated value. Can be omitted, if it will be derived from the annotated target.
[AggregationMethod](Analytics.xml#L78)|String|Name of the standard or custom aggregation method to be applied.
[AggregatableProperty](Analytics.xml#L81)|PropertyPath|Property whose values shall be aggregated.
