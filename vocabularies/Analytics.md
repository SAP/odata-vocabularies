# Analytics Vocabulary
**Namespace: [com.sap.vocabularies.Analytics.v1](Analytics.xml)**

Terms for annotating analytical resources


## Terms

Term|Type|Description
:---|:---|:----------
[Dimension](./Analytics.xml#L44:~:text=<Term%20Name="-,Dimension,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Dimension"></a>Deprecated in favor of [`AnalyticalContext/Dimension`](#AnalyticalContext)
[Measure](./Analytics.xml#L56:~:text=<Term%20Name="-,Measure,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Measure"></a>Deprecated in favor of [`AnalyticalContext/Measure`](#AnalyticalContext)
[AccumulativeMeasure](./Analytics.xml#L68:~:text=<Term%20Name="-,AccumulativeMeasure,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="AccumulativeMeasure"></a>Deprecated in favor of [`AnalyticalContext/AccumulativeMeasure`](#AnalyticalContext)
[RolledUpPropertyCount](./Analytics.xml#L80:~:text=<Term%20Name="-,RolledUpPropertyCount,-") *([Experimental](Common.md#Experimental))*|Int16|<a name="RolledUpPropertyCount"></a>Number of properties in the entity instance that have been aggregated away
[DrillURL](./Analytics.xml#L86:~:text=<Term%20Name="-,DrillURL,-") *([Experimental](Common.md#Experimental))*|URL|<a name="DrillURL"></a>URL to retrieve more detailed data related to a node of a recursive hierarchy. Annotations with this term MUST include a qualifier to select the hierarchy for which the drill URL is provided.
[PlanningAction](./Analytics.xml#L98:~:text=<Term%20Name="-,PlanningAction,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PlanningAction"></a>Processes or generates plan data. Its logic may have side-effects on entity sets.
[AggregatedProperties](./Analytics.xml#L106:~:text=<Term%20Name="-,AggregatedProperties,-") *(Deprecated)*|\[[AggregatedPropertyType](#AggregatedPropertyType)\]|<a name="AggregatedProperties"></a>Deprecated in favor of [`AggregatedProperty`](#AggregatedProperty)
[AggregatedProperty](./Analytics.xml#L124:~:text=<Term%20Name="-,AggregatedProperty,-")|[AggregatedPropertyType](#AggregatedPropertyType)|<a name="AggregatedProperty"></a>Dynamic property for aggregate expression with specified aggregation method defined on the annotated entity type.
[AnalyticalContext](./Analytics.xml#L144:~:text=<Term%20Name="-,AnalyticalContext,-")|\[[AnalyticalContextType](#AnalyticalContextType)\]|<a name="AnalyticalContext"></a>Collection of properties that define an analytical context
[LevelInformation](./Analytics.xml#L283:~:text=<Term%20Name="-,LevelInformation,-") *([Experimental](Common.md#Experimental))*|[HierarchyType](Hierarchy.md#HierarchyType)|<a name="LevelInformation"></a>Information about grouping levels in the result set of a request including the [`AutoExpand`](#AutoExpand) transformation


## Functions

<a name="AutoExpand"></a>
### [AutoExpand](./Analytics.xml#L182:~:text=<Function%20Name="-,AutoExpand,-") *([Experimental](Common.md#Experimental))*

`$apply` transformation that expands an unnamed leveled hierarchy with custom aggregation of certain properties

Parameter|Type|Description
:--------|:---|:----------
**[InputSet](./Analytics.xml#L186:~:text=<Function%20Name="-,AutoExpand,-")**|\[EntityType\]|**Binding parameter:** Entity set to be processed
[Levels](./Analytics.xml#L189:~:text=<Function%20Name="-,AutoExpand,-")|\[[AutoExpandLevel](#AutoExpandLevel)\]|Collection of aggregation levels forming a leveled hierarchy<br>Each element in the collection defines the property names for one level. A property must not referenced by more than one level. The first element in the collection defines the property names of the coarsest level, the following elements define the property names of consecutively finer-grained aggregation levels. All referenced properties must be groupable.
[ExpandLevel](./Analytics.xml#L199:~:text=<Function%20Name="-,AutoExpand,-")|Int64|Number of levels to be expanded, counting from left<br>The function result comprises the leveled hierarchy with the expanded levels and the following level as leaves in preorder.
[Aggregation](./Analytics.xml#L205:~:text=<Function%20Name="-,AutoExpand,-")|\[String\]|Properties to aggregate for all result entries on all levels<br>All properties in this collection must be custom aggregates.
[SiblingOrder](./Analytics.xml#L211:~:text=<Function%20Name="-,AutoExpand,-")|\[[AutoExpandSiblingOrder](#AutoExpandSiblingOrder)\]|Sort specification to apply to all direct descendants of a given entry in the resulting leveled hierarchy
*[BeforeAggregationFilter](./Analytics.xml#L214:~:text=<Function%20Name="-,AutoExpand,-")*|String|*Optional parameter:* Expression valid for `filter` transformation to restrict the input set before any further procressing
*[AggregatedValuesLeafFilter](./Analytics.xml#L220:~:text=<Function%20Name="-,AutoExpand,-")*|String|*Optional parameter:* Expression valid for `filter` transformation to restrict the input set at the most detailed grouping level with conditions on aggregated values
*[Skip](./Analytics.xml#L226:~:text=<Function%20Name="-,AutoExpand,-")*|Int64|*Optional parameter:* Number of entries to skip from the top of the fully ordered result
*[Top](./Analytics.xml#L234:~:text=<Function%20Name="-,AutoExpand,-")*|Int64|*Optional parameter:* Number of entries to return from the result set after any skipping (absent means all)
*[ResultEntriesCount](./Analytics.xml#L240:~:text=<Function%20Name="-,AutoExpand,-")*|Bool|*Optional parameter:* Whether to return the total number of entries in the result independent of Skip/Top
[&rarr;](./Analytics.xml#L248:~:text=<Function%20Name="-,AutoExpand,-")|\[EntityType\]|Output set including the instance annotation [`LevelInformation`](#LevelInformation)


<a name="AggregatedPropertyType"></a>
## [AggregatedPropertyType](./Analytics.xml#L127:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")


Property|Type|Description
:-------|:---|:----------
[Name](./Analytics.xml#L128:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")|[SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Name of the dynamic property holding the aggregated value.
[AggregationMethod](./Analytics.xml#L131:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")|[AggregationMethod](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#AggregationMethod)|Name of the standard or custom aggregation method to be applied.
[AggregatableProperty](./Analytics.xml#L134:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")|PropertyPath|Property whose values shall be aggregated.

**Applicable Annotation Terms:**

- [Label](Common.md#Label)

<a name="AnalyticalContextType"></a>
## [AnalyticalContextType](./Analytics.xml#L148:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")
Exactly one of `Property` and `DynamicProperty` must be present

Property|Type|Description
:-------|:---|:----------
[Property](./Analytics.xml#L150:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")|PropertyPath?|Property that is part of the analytical context
[DynamicProperty](./Analytics.xml#L153:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")|AnnotationPath?|Dynamic property introduced by annotations that is part of the analytical context<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)
[Dimension](./Analytics.xml#L162:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The property holds the key of a dimension
[Measure](./Analytics.xml#L165:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The property holds the numeric value of a measure
[AccumulativeMeasure](./Analytics.xml#L168:~:text=<ComplexType%20Name="-,AnalyticalContextType,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The measure has non-negative and additive values; it can be used in whole-part charts, e.g. the Donut

<a name="AutoExpandLevel"></a>
## [AutoExpandLevel](./Analytics.xml#L252:~:text=<ComplexType%20Name="-,AutoExpandLevel,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[P](./Analytics.xml#L254:~:text=<ComplexType%20Name="-,AutoExpandLevel,-")|\[String\]|A non-empty set of property names constituting a level

<a name="AutoExpandSiblingOrder"></a>
## [AutoExpandSiblingOrder](./Analytics.xml#L258:~:text=<ComplexType%20Name="-,AutoExpandSiblingOrder,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Property](./Analytics.xml#L260:~:text=<ComplexType%20Name="-,AutoExpandSiblingOrder,-")|String|Property by which to sort
[Order](./Analytics.xml#L263:~:text=<ComplexType%20Name="-,AutoExpandSiblingOrder,-")|[SortOrderType](#SortOrderType)|Sorting direction

<a name="SortOrderType"></a>
## [SortOrderType](./Analytics.xml#L267:~:text=<TypeDefinition%20Name="-,SortOrderType,-") *([Experimental](Common.md#Experimental))*
**Type:** String



Allowed Value|Description
:------------|:----------
[asc](./Analytics.xml#L271:~:text=<TypeDefinition%20Name="-,SortOrderType,-")|Sort in ascending order
[desc](./Analytics.xml#L275:~:text=<TypeDefinition%20Name="-,SortOrderType,-")|Sort in descending order
