# Analytics Vocabulary
**Namespace: [com.sap.vocabularies.Analytics.v1](Analytics.xml)**

Terms for annotating analytical resources


## Terms

Term|Type|Description
:---|:---|:----------
[Dimension](Analytics.xml#L31)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Dimension"></a>A property holding the key of a dimension in an analytical context
[Measure](Analytics.xml#L35)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Measure"></a>A property holding the numeric value of a measure in an analytical context
[RolledUpPropertyCount](Analytics.xml#L39) *(Experimental)*|Int16|<a name="RolledUpPropertyCount"></a>Number of properties in the entity instance that have been aggregated away
[DrillURL](Analytics.xml#L44) *(Experimental)*|URL|<a name="DrillURL"></a>URL to retrieve more detailed data related to a node of a recursive hierarchy. Annotations with this term MUST include a qualifier to select the hierarchy for which the drill URL is provided.
[PlanningAction](Analytics.xml#L55) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PlanningAction"></a>Processes or generates plan data. Its logic may have side-effects on entity sets.
[RecursiveHierarchy](Analytics.xml#L63) *(Experimental)*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy.

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](Analytics.xml#L67) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[ParentNodeProperty](Analytics.xml#L69)|PropertyPath|Property holding the parent hierarchy node value
[ExternalKeyProperty](Analytics.xml#L72)|PropertyPath|Property holding the external key value for a node
[DescendantCountProperty](Analytics.xml#L75)|PropertyPath|Property holding the number of descendants of a node
[DrillStateProperty](Analytics.xml#L78)|PropertyPath|Property holding the drill state of a node<p>*TODO: which values does the drill state have?*</p>
