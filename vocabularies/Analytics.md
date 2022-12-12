# Analytics Vocabulary
**Namespace: [com.sap.vocabularies.Analytics.v1](Analytics.xml)**

Terms for annotating analytical resources


## Terms

Term|Type|Description
:---|:---|:----------
[Dimension](./Analytics.xml#L41:~:text=<Term%20Name="-,Dimension,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Dimension"></a>Deprecated in favor of [`AnalyticalContext/Dimension`](#AnalyticalContext)
[Measure](./Analytics.xml#L53:~:text=<Term%20Name="-,Measure,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Measure"></a>Deprecated in favor of [`AnalyticalContext/Measure`](#AnalyticalContext)
[AccumulativeMeasure](./Analytics.xml#L65:~:text=<Term%20Name="-,AccumulativeMeasure,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="AccumulativeMeasure"></a>Deprecated in favor of [`AnalyticalContext/AccumulativeMeasure`](#AnalyticalContext)
[RolledUpPropertyCount](./Analytics.xml#L77:~:text=<Term%20Name="-,RolledUpPropertyCount,-") *([Experimental](Common.md#Experimental))*|Int16|<a name="RolledUpPropertyCount"></a>Number of properties in the entity instance that have been aggregated away
[DrillURL](./Analytics.xml#L83:~:text=<Term%20Name="-,DrillURL,-") *([Experimental](Common.md#Experimental))*|URL|<a name="DrillURL"></a>URL to retrieve more detailed data related to a node of a recursive hierarchy. Annotations with this term MUST include a qualifier to select the hierarchy for which the drill URL is provided.
[PlanningAction](./Analytics.xml#L95:~:text=<Term%20Name="-,PlanningAction,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PlanningAction"></a>Processes or generates plan data. Its logic may have side-effects on entity sets.
[AggregatedProperties](./Analytics.xml#L103:~:text=<Term%20Name="-,AggregatedProperties,-") *(Deprecated)*|\[[AggregatedPropertyType](#AggregatedPropertyType)\]|<a name="AggregatedProperties"></a>Deprecated in favor of [`AggregatedProperty`](#AggregatedProperty)
[AggregatedProperty](./Analytics.xml#L121:~:text=<Term%20Name="-,AggregatedProperty,-")|[AggregatedPropertyType](#AggregatedPropertyType)|<a name="AggregatedProperty"></a>Dynamic property for aggregate expression with specified aggregation method defined on the annotated entity type.
[AnalyticalContext](./Analytics.xml#L141:~:text=<Term%20Name="-,AnalyticalContext,-")|\[[AnalyticalContextType](#AnalyticalContextType)\]|<a name="AnalyticalContext"></a>Collection of properties that define an analytical context
[UpdateAction](./Analytics.xml#L170:~:text=<Term%20Name="-,UpdateAction,-") *([Experimental](Common.md#Experimental))*|[UpdateActionType](#UpdateActionType)|<a name="UpdateAction"></a>Action for updating an aggregate entity ([Example](./Analytics.xml#L181))<br>Transient entities that result from the application of a transformation sequence represent an aggregate of persistent entities (for example, aggregate sales per country and product, as in [OData-Aggr, example 19]). Such a transient entity may be annotated with this term to describe a service-defined action that can be used to update the transient entity. This effectively means updating the persistent entities whose aggregate the transient entity represents, how this dis-aggregation happens is defined by the service.
[CustomDisaggregate](./Analytics.xml#L216:~:text=<Term%20Name="-,CustomDisaggregate,-") *([Experimental](Common.md#Experimental))*|[CustomDisaggregateType](#CustomDisaggregateType)|<a name="CustomDisaggregate"></a>Dis-aggregation rule for the custom aggregate defined by the [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#CustomAggregate)<br>When an aggregate entity is updated with an [UpdateAction](#UpdateAction), the value of a property whose name is the qualifier of this annotation, and for which there is a custom aggregate with the same name, is distributed to among the persistent entities according to this rule.

## <a name="AggregatedPropertyType"></a>[AggregatedPropertyType](./Analytics.xml#L124:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")


Property|Type|Description
:-------|:---|:----------
[Name](./Analytics.xml#L125:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")|[SimpleIdentifier](Common.md#SimpleIdentifier)|Name of the dynamic property holding the aggregated value.
[AggregationMethod](./Analytics.xml#L128:~:text=<ComplexType%20Name="-,AggregatedPropertyType,-")|[AggregationMethod](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#AggregationMethod)|Name of the standard or custom aggregation method to be applied.
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

## <a name="UpdateActionType"></a>[UpdateActionType](./Analytics.xml#L193:~:text=<ComplexType%20Name="-,UpdateActionType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[ActionURL](./Analytics.xml#L195:~:text=<ComplexType%20Name="-,UpdateActionType,-")|URL|Action URL [OData-Protocol, section 11.5.5](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_Actions)
[ActionParameter](./Analytics.xml#L199:~:text=<ComplexType%20Name="-,UpdateActionType,-")|String?|Value that the first parameter of the action must have<br>If present, this is the string value of the first action parameter, which identifies the aggregate that the transient entity represents. Subsequent parameters define how this is updated, they are explained in the action definition in the service metadata.

## <a name="CustomDisaggregateType"></a>[*CustomDisaggregateType*](./Analytics.xml#L226:~:text=<ComplexType%20Name="-,CustomDisaggregateType,-") *([Experimental](Common.md#Experimental))*
A dis-aggregation rule is defined by a subtype of this abstract type

**Derived Types:**
- [ProportionalDisaggregateType](#ProportionalDisaggregateType)

## <a name="ProportionalDisaggregateType"></a>[ProportionalDisaggregateType](./Analytics.xml#L230:~:text=<ComplexType%20Name="-,ProportionalDisaggregateType,-"): [CustomDisaggregateType](#CustomDisaggregateType) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[InProportionTo](./Analytics.xml#L232:~:text=<ComplexType%20Name="-,ProportionalDisaggregateType,-")|PrimitiveType|The updated value of the custom aggregate property is distributed among the persistent entities in proportion to this value
