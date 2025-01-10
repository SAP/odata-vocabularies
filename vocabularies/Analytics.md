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
[LevelInformation](Analytics.xml#L300) *([Experimental](Common.md#Experimental))*|[HierarchyType](Hierarchy.md#HierarchyType)|<a name="LevelInformation"></a>Information about grouping levels in the result set of a request including the [`AutoExpand`](#AutoExpand) transformation


## Functions

<a name="AutoExpand"></a>
### [AutoExpand](Analytics.xml#L182) *([Experimental](Common.md#Experimental))*

`$apply` transformation that expands an unnamed leveled hierarchy with custom aggregation of certain properties

Example transformation sequence:
filter on columns `Industry`, `Amount` and `Currency`,
order by `Amount` descending,
show 2 levels, with two exceptions
```
$apply=filter(Industry in ('IT','AI'))
/groupby((Country,Region,Segment,Industry),
         filter($these/aggregate(Amount) gt 0 and
                $these/aggregate(Currency) ne null))
/concat(
  groupby((Country,Region,Segment,Industry))
    /aggregate($count as LeavesCount),
  aggregate(Amount,Currency),
  Analytics.AutoExpand(
    Levels=[{"D":["Country"],"A":["CountryName"]},
            {"D":["Region"],"A":["RegionName"]},
            {"D":["Segment","Industry"],"A":[]}],
    Aggregation=["Amount","Currency"],
    SiblingOrder=[{"Property":"Amount","Descending":true}],
    ShowLevels=2,
    ExpandEntries=[{"Entry":["US"],"Levels":0},
                   {"Entry":["DE","BW"],"Levels":1}]
  )/concat(aggregate($count as ResultEntriesCount),
           skip(20)/top(10)))
```


Parameter|Type|Description
:--------|:---|:----------
**[InputSet](Analytics.xml#L213)**|\[EntityType\]|**Binding parameter:** Entity set to be processed
[Levels](Analytics.xml#L216)|\[[AutoExpandLevel](#AutoExpandLevel)\]|Collection of aggregation levels forming a leveled hierarchy<br>Each element in the collection defines the properties that constitute one level. A property must not referenced by more than one level. The first element in the collection defines the property names of the coarsest level, the following elements define the property names of consecutively finer-grained aggregation levels. The function result is the leveled hierarchy with these levels in preorder, entries on the finest-grained level cannot be expanded further. All referenced properties must be groupable.
[Aggregation](Analytics.xml#L228)|\[String\]|Properties to aggregate for all result entries on all levels<br>All properties in this collection must be custom aggregates.
[SiblingOrder](Analytics.xml#L234)|\[[AutoExpandSiblingOrder](#AutoExpandSiblingOrder)\]|Sort specification to apply to all direct descendants of a given entry in the resulting leveled hierarchy
*[ShowLevels](Analytics.xml#L237)*|Int64|*Optional parameter:* Number of levels to be shown in the initial expansion (absent means all levels)
*[ExpandEntries](Analytics.xml#L243)*|\[[AutoExpandEntry](#AutoExpandEntry)\]|*Optional parameter:* Entries with exceptional expansion
*[SubtotalsAtBottom](Analytics.xml#L249)*|Bool|*Optional parameter:* Whether to have expanded subtotal rows duplicated: before and after their descendants<br>The entry before has [DrillState](Hierarchy.md#HierarchyType) `expanded`, the entry after has DrillState `subtotal`.
[&rarr;](Analytics.xml#L261)|\[EntityType\]|Output set including the instance annotation [`LevelInformation`](#LevelInformation)


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
[DynamicProperty](Analytics.xml#L153)|AnnotationPath?|Dynamic property introduced by annotations that is part of the analytical context<br>Allowed Terms:<ul><li>[AggregatedProperty](#AggregatedProperty)</li><li>[CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)</li></ul>
[Dimension](Analytics.xml#L162)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The property holds the key of a dimension
[Measure](Analytics.xml#L165)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The property holds the numeric value of a measure
[AccumulativeMeasure](Analytics.xml#L168)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|The measure has non-negative and additive values; it can be used in whole-part charts, e.g. the Donut

<a name="AutoExpandLevel"></a>
## [AutoExpandLevel](Analytics.xml#L265) *([Experimental](Common.md#Experimental))*
Property names constituting a level in an [unnamed leveled hierarchy](#AutoExpand)

Properties in `D` must be used to identify entries in [`ExpandEntries/Entry`](#AutoExpandEntry),
          otherwise they have the same effect as properties in `A`.

Property|Type|Description
:-------|:---|:----------
[D](Analytics.xml#L272)|\[String\]|A non-empty set of property names that define a combination of dimension values
[A](Analytics.xml#L275)|\[String\]|A possibly empty set of names of additional properties of the dimensions that occur in `D`

<a name="AutoExpandSiblingOrder"></a>
## [AutoExpandSiblingOrder](Analytics.xml#L279) *([Experimental](Common.md#Experimental))*
Sibling order in an [unnamed leveled hierarchy](#AutoExpand)

Property|Type|Description
:-------|:---|:----------
[Property](Analytics.xml#L282)|String|Property by which to sort
[Descending](Analytics.xml#L285)|Boolean?|Sort direction, ascending if not specified otherwise

<a name="AutoExpandEntry"></a>
## [AutoExpandEntry](Analytics.xml#L289) *([Experimental](Common.md#Experimental))*
Expansion state of an entry in an [unnamed leveled hierarchy](#AutoExpand)

Property|Type|Description
:-------|:---|:----------
[Entry](Analytics.xml#L292)|\[String\]|An entry on a given [level](#AutoExpandLevel) is identified by a collection of values for the `D` properties that constitute all levels up to and including the given one
[Levels](Analytics.xml#L295)|Int64?|Number of levels to be expanded, null means all levels, 0 means collapsed
