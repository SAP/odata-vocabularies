# Analytics Vocabulary
**Namespace: [com.sap.vocabularies.Analytics.v1](Analytics.xml)**

Terms for annotating analytical resources

Term|Type|Description
:---|:---|:----------
[Dimension](Analytics.xml#L21)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Dimension"></a>A property holding the key of a dimension in an analytical context
[Measure](Analytics.xml#L25)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Measure"></a>A property holding the numeric value of a measure in an analytical context
[RolledUpPropertyCount *(Experimental)*](Analytics.xml#L29)|Int16|<a name="RolledUpPropertyCount"></a>Number of properties in the entity instance that have been aggregated away
[DrillURL *(Experimental)*](Analytics.xml#L34)|URL|<a name="DrillURL"></a>URL to retrieve more detailed data related to a node of a recursive hierarchy. Annotations with this term MUST include a qualifier to select the hierarchy for which the drill URL is provided.
[PlanningAction *(Experimental)*](Analytics.xml#L45)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PlanningAction"></a>Processes or generates plan data. Its logic may have side-effects on entity sets.
