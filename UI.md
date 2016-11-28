# UI Vocabulary
**Namespace: [com.sap.vocabularies.UI.v1](com.sap.vocabularies.UI.v1.xml)**

Terms for presenting data in user interfaces


Term|Type|Description
:---|:---|:----------
HeaderInfo|[HeaderInfoType](#HeaderInfoType)|Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
Identification|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of fields identifying the object
Badge|[BadgeType](#BadgeType)|Information usually displayed in the form of a business card
LineItem|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields for representation in a table or list
StatusInfo|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields describing the status of an entity
FieldGroup|[FieldGroupType](#FieldGroupType)|Group of fields with an optional label
GeoLocations|\[[GeoLocationType](#GeoLocationType)\]|Collection of geographic locations
GeoLocation|[GeoLocationType](#GeoLocationType)|Geographic location
Contacts|\[AnnotationPath\]|Collection of contacts
MediaResource|[MediaResourceType](#MediaResourceType)|Properties that describe a media resource
DataPoint|[DataPointType](#DataPointType)|Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
Chart|[ChartDefinitionType](#ChartDefinitionType)|Visualization of multiple data points
SelectionFields|\[PropertyPath\]|Properties that might be relevant for filtering a collection of entities of this type
Facets|\[[Facet](#Facet)\]|Collection of facets
HeaderFacets|\[[Facet](#Facet)\]|Facets for additional object header information
QuickViewFacets|\[[Facet](#Facet)\]|Facets that may be used for a quick overview of the object
QuickCreateFacets|\[[Facet](#Facet)\]|Facets that may be used for a (quick) create of the object
SelectionPresentationVariant|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
PresentationVariant|[PresentationVariantType](#PresentationVariantType)|Defines how the result of a queried collection of entities is shaped and how this result is displayed
SelectionVariant|[SelectionVariantType](#SelectionVariantType)|A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
ThingPerspective|[Tag](Org.OData.Core.V1.md#Tag)|This term is a Thing Perspective
IsSummary|[Tag](Org.OData.Core.V1.md#Tag)|This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
PartOfPreview|[Tag](Org.OData.Core.V1.md#Tag)|This Facet and all included Facets are part of the Thing preview
Map|[Tag](Org.OData.Core.V1.md#Tag)|Target MUST reference a UI.GeoLocation, vCard.Address or a collection of these
Gallery|[Tag](Org.OData.Core.V1.md#Tag)|Target MUST reference a UI.MediaResource
IsImageURL|[Tag](Org.OData.Core.V1.md#Tag)|Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image
MultiLineText|[Tag](Org.OData.Core.V1.md#Tag)|Properties annotated with this annotation should be rendered as multi-line text (e.g. text area)
TextArrangement|[TextArrangementType](#TextArrangementType)|Describes the arrangement of a code value and its text
Importance|[ImportanceType](#ImportanceType)|Expresses the importance of e.g. a DataField or an annotation
Hidden|[Tag](Org.OData.Core.V1.md#Tag)|Properties annotated with this term will not be rendered at all
HiddenFilter|[Tag](Org.OData.Core.V1.md#Tag)|Properties annotated with this term will not be rendered as filter criteria

## <a name="HeaderInfoType"></a>HeaderInfoType


Property|Type|Description
:-------|:---|:----------
TypeName|String|Name of the main entity type
TypeNamePlural|String|Plural form of the name of the main entity type
Title|[DataField](#DataField)|Title, e.g. for overview pages
Description|[DataField](#DataField)|Description, e.g. for overview pages
ImageUrl|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
TypeImageUrl|URL|Image URL for the entity type

## <a name="BadgeType"></a>BadgeType


Property|Type|Description
:-------|:---|:----------
HeadLine|[DataField](#DataField)|Headline
Title|[DataField](#DataField)|Title
ImageUrl|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
TypeImageUrl|URL|Image URL for the entity type
MainInfo|[DataField](#DataField)|Main information on the business card
SecondaryInfo|[DataField](#DataField)|Additional information on the business card

## <a name="FieldGroupType"></a>FieldGroupType


Property|Type|Description
:-------|:---|:----------
Label|String|Label for the field group
Data|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

## <a name="GeoLocationType"></a>GeoLocationType
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
Latitude|Double|Geographic latitude
Longitude|Double|Geographic longitude
Location|GeographyPoint|A point in a round-earth coordinate system
Address|[AddressType](com.sap.vocabularies.Communication.v1.md#AddressType)|vCard-style address

## <a name="MediaResourceType"></a>MediaResourceType


Property|Type|Description
:-------|:---|:----------
Url|URL|URL of media resource
ContentType|MediaType|Content type, such as application/pdf, video/x-flv, image/jpeg
ByteSize|Int64|Resource size in bytes
ChangedAt|DateTimeOffset|Date of last change
Thumbnail|[ImageType](#ImageType)|Thumbnail image
Title|[DataField](#DataField)|Resource title
Description|[DataField](#DataField)|Resource description

## <a name="ImageType"></a>ImageType


Property|Type|Description
:-------|:---|:----------
Url|URL|URL of image
Width|String|Width of image
Height|String|Height of image

## <a name="DataPointType"></a>DataPointType


Property|Type|Description
:-------|:---|:----------
Title|String|
Description|String|
LongDescription|String|
Value|PrimitiveType|The numeric value of the DataPoint
TargetValue|PrimitiveType|The target value of the DataPoint
ForecastValue|PrimitiveType|The forecast value of the DataPoint
MinimumValue|Decimal|The minimum value of the DataPoint (for output rendering)
MaximumValue|Decimal|The maximum value of the DataPoint (for output rendering)
ValueFormat|[NumberFormat](#NumberFormat)|
Visualization|[VisualizationType](#VisualizationType)|The preferred visualization of the DataPoint
SampleSize|PrimitiveType|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
ReferencePeriod|[ReferencePeriod](#ReferencePeriod)|
Criticality|[CriticalityType](#CriticalityType)|
CriticalityCalculation|[CriticalityCalculationType](#CriticalityCalculationType)|
Trend|[TrendType](#TrendType)|
TrendCalculation|[TrendCalculationType](#TrendCalculationType)|
Responsible|[ContactType](com.sap.vocabularies.Communication.v1.md#ContactType)|

## <a name="NumberFormat"></a>NumberFormat


Property|Type|Description
:-------|:---|:----------
ScaleFactor|Decimal|
NumberOfFractionalDigits|Byte|

## <a name="VisualizationType"></a>VisualizationType


Member|Value|Description
:-----|----:|:----------
Number|0|Visualize as a number
BulletChart|1|Visualize as bullet chart - requires TargetValue
Progress|2|Visualize as progress indicator - requires TargetValue
Rating|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
Donut|4|Visualize as donut, optionally with missing segment - requires TargetValue

## <a name="ReferencePeriod"></a>ReferencePeriod


Property|Type|Description
:-------|:---|:----------
Description|String|
Start|DateTimeOffset|
End|DateTimeOffset|

## <a name="CriticalityType"></a>CriticalityType


Member|Value|Description
:-----|----:|:----------
Neutral|0|Neutral / blue status - inactive - open - in progress
Negative|1|Negative / red status - attention - overload - alert
Critical|2|Critical / orange status - warning
Positive|3|Positive / green status - completed - available - on track - acceptable

## <a name="CriticalityCalculationType"></a>CriticalityCalculationType
Direction: Target - Positive: ge ToleranceRangeLowValue and le ToleranceRangeHighValue - Critical: ge DeviationRangeLowValue and lt ToleranceRangeLowValue or gt ToleranceRangeHighValue and le DeviationRangeHighValue - Negative: lt DeviationRangeLowValue or gt DeviationRangeHighValue Direction: Minimize - Positive: le ToleranceRangeHighValue - Critical: gt ToleranceRangeHighValue and le DeviationRangeHighValue - Negative: gt DeviationRangeHighValue Direction: Maximize - Positive: ge ToleranceRangeLowValue - Critical: lt ToleranceRangeLowValue and ge DeviationRangeLowValue - Negative: lt DeviationRangeLowValue

Property|Type|Description
:-------|:---|:----------
ImprovementDirection|[ImprovementDirectionType](#ImprovementDirectionType)|
ToleranceRangeLowValue|PrimitiveType|
ToleranceRangeHighValue|PrimitiveType|
DeviationRangeLowValue|PrimitiveType|
DeviationRangeHighValue|PrimitiveType|

## <a name="ImprovementDirectionType"></a>ImprovementDirectionType


Member|Value|Description
:-----|----:|:----------
Minimize|1|
Target|2|
Maximize|3|

## <a name="TrendType"></a>TrendType


Member|Value|Description
:-----|----:|:----------
StrongUp|1|
Up|2|
Sideways|3|
Down|4|
StrongDown|5|

## <a name="TrendCalculationType"></a>TrendCalculationType
Value sub ReferenceValue ( div ReferenceValue if IsRelativeDifference ) must be - StrongUp: ge StrongUpDifference - Up: lt StrongUpDifference and ge UpDifference - Sideways: lt UpDifference and gt DownDifference - Down: gt StrongDownDifference and le DownDifference - StrongDown: le StrongDownDifference

Property|Type|Description
:-------|:---|:----------
ReferenceValue|PrimitiveType|
IsRelativeDifference|Boolean|
UpDifference|Decimal|
StrongUpDifference|Decimal|
DownDifference|Decimal|
StrongDownDifference|Decimal|

## <a name="ChartDefinitionType"></a>ChartDefinitionType


Property|Type|Description
:-------|:---|:----------
Title|String|
Description|String|
ChartType|[ChartType](#ChartType)|
Measures|\[PropertyPath\]|
MeasureAttributes|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
Dimensions|\[PropertyPath\]|
DimensionAttributes|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
Actions|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|

## <a name="ChartType"></a>ChartType


Member|Value|Description
:-----|----:|:----------
Column|0|
ColumnStacked|1|
ColumnDual|2|
ColumnStackedDual|3|
ColumnStacked100|4|
ColumnStackedDual100|5|
Bar|6|
BarStacked|7|
BarDual|8|
BarStackedDual|9|
BarStacked100|10|
BarStackedDual100|11|
Area|12|
AreaStacked|13|
AreaStacked100|14|
HorizontalArea|15|
HorizontalAreaStacked|16|
HorizontalAreaStacked100|17|
Line|18|
LineDual|19|
Combination|20|
CombinationStacked|21|
CombinationDual|22|
CombinationStackedDual|23|
HorizontalCombinationStacked|24|
Pie|25|
Donut|26|
Scatter|27|
Bubble|28|
Radar|29|
HeatMap|30|
TreeMap|31|
Waterfall|32|
Bullet|33|
VerticalBullet|34|

## <a name="ChartDimensionAttributeType"></a>ChartDimensionAttributeType


Property|Type|Description
:-------|:---|:----------
Dimension|PropertyPath|
Role|[ChartDimensionRoleType](#ChartDimensionRoleType)|

## <a name="ChartMeasureAttributeType"></a>ChartMeasureAttributeType


Property|Type|Description
:-------|:---|:----------
Measure|PropertyPath|
Role|[ChartMeasureRoleType](#ChartMeasureRoleType)|
DataPoint|AnnotationPath|Annotation path MUST end in UI.DataPoint and the DataPoint Value must be the same property as in Measure

## <a name="ChartDimensionRoleType"></a>ChartDimensionRoleType


Member|Value|Description
:-----|----:|:----------
Category|0|
Series|1|

## <a name="ChartMeasureRoleType"></a>ChartMeasureRoleType


Member|Value|Description
:-----|----:|:----------
Axis1|0|
Axis2|1|
Axis3|2|

## <a name="Facet"></a>*Facet*
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
Label|String|Facet label
ID|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

## <a name="CollectionFacet"></a>CollectionFacet: [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
*Label*|String|Facet label
*ID*|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
Facets|\[[Facet](#Facet)\]|

## <a name="ReferenceFacet"></a>ReferenceFacet: [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
*Label*|String|Facet label
*ID*|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
Target|AnnotationPath|Referenced information: vCard.Contact, vCard.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge

## <a name="ReferenceURLFacet"></a>ReferenceURLFacet: [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
*Label*|String|Facet label
*ID*|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
Url|URL|URL of referenced information
UrlContentType|MediaType|Media type of referenced information

## <a name="SelectionPresentationVariantType"></a>SelectionPresentationVariantType


Property|Type|Description
:-------|:---|:----------
ID|String|May contain an identifier to reference this instance from an external context
Text|String|Name of the bundling variant
SelectionVariant|[SelectionVariantType](#SelectionVariantType)|Could reference an UI.SelectionVariant Annotation via Path, syntax identical to AnnotationPath
PresentationVariant|[PresentationVariantType](#PresentationVariantType)|Could reference an UI.PresentationVariant Annotation via Path, syntax identical to AnnotationPath

## <a name="PresentationVariantType"></a>PresentationVariantType


Property|Type|Description
:-------|:---|:----------
ID|String|May contain an identifier to reference this instance from an external context
Text|String|Name of the presentation variant
MaxItems|Int32|Maximum number of items that should be included in the result
SortOrder|\[[SortOrderType](com.sap.vocabularies.Common.v1.md#SortOrderType)\]|Collection could be provided inline or a reference to an Common.SortOrder Annotation via Path could be specified (syntax is identical to AnnotationPath)
GroupBy|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with InitialExpansionLevel.
TotalBy|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
Total|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
IncludeGrandTotal|Boolean|Result should include a grand total for the properties specified in Total
InitialExpansionLevel|Int32|Initial number of levels to expand in a hierarchy defined for the queried collection. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
Visualizations|\[AnnotationPath\]|Lists available visualization types. Currently supported types are UI.LineItem, UI.Chart, and UI.DataPoint. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different PresentationVariants. A reference to UI.Lineitem should always be part of collection (least common denominator for renderers). The first entry of the collection is the default visualization.
RequestAtLeast|\[PropertyPath\]|Properties that should always be included in the result of the queried collection

## <a name="SelectionVariantType"></a>SelectionVariantType


Property|Type|Description
:-------|:---|:----------
ID|String|May contain identifier to reference this instance from an external context
Text|String|Name of the selection variant
Parameters|\[[ParameterAbstract](#ParameterAbstract)\]|
FilterExpression|String|Filter string for query part of URL, without '$filter ='
SelectOptions|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>*ParameterAbstract*


**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

Property|Type|Description
:-------|:---|:----------

## <a name="Parameter"></a>Parameter: [ParameterAbstract](#ParameterAbstract)


Property|Type|Description
:-------|:---|:----------
PropertyName|PropertyPath|
PropertyValue|PrimitiveType|

## <a name="IntervalParameter"></a>IntervalParameter: [ParameterAbstract](#ParameterAbstract)


Property|Type|Description
:-------|:---|:----------
PropertyNameFrom|PropertyPath|
PropertyValueFrom|PrimitiveType|
PropertyNameTo|PropertyPath|
PropertyValueTo|PrimitiveType|

## <a name="SelectOptionType"></a>SelectOptionType


Property|Type|Description
:-------|:---|:----------
PropertyName|PropertyPath|
Ranges|\[[SelectionRangeType](#SelectionRangeType)\]|

## <a name="SelectionRangeType"></a>SelectionRangeType
If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
Sign|[SelectionRangeSignType](#SelectionRangeSignType)|
Option|[SelectionRangeOptionType](#SelectionRangeOptionType)|
Low|PrimitiveType|
High|PrimitiveType|

## <a name="SelectionRangeSignType"></a>SelectionRangeSignType


Member|Value|Description
:-----|----:|:----------
I|0|Inclusive
E|1|Exclusive

## <a name="SelectionRangeOptionType"></a>SelectionRangeOptionType


Member|Value|Description
:-----|----:|:----------
EQ|0|Equal to
BT|1|Between
CP|2|Contains pattern
LE|3|Less than or equal to
GE|4|Greater than or equal to
NE|5|Not equal to
NB|6|Not between
NP|7|Does not contain pattern
GT|8|Greater than
LT|9|Less than

## <a name="TextArrangementType"></a>TextArrangementType


Member|Value|Description
:-----|----:|:----------
TextFirst|0|
TextLast|1|
TextSeparate|2|
TextOnly|3|

## <a name="ImportanceType"></a>ImportanceType


Member|Value|Description
:-----|----:|:----------
High|0|
Medium|1|
Low|2|

## <a name="DataFieldAbstract"></a>*DataFieldAbstract*


**Derived Types:**
- [DataFieldForAnnotation](#DataFieldForAnnotation)
- *[DataFieldForActionAbstract](#DataFieldForActionAbstract)*
  - [DataFieldForAction](#DataFieldForAction)
  - [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)
- [DataField](#DataField)
  - [DataFieldWithAction](#DataFieldWithAction)
  - [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
  - [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
  - [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
Label|String|
Criticality|[CriticalityType](#CriticalityType)|
CriticalityRepresentation|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
IconUrl|URL|

## <a name="CriticalityRepresentationType"></a>CriticalityRepresentationType


Member|Value|Description
:-----|----:|:----------
WithIcon|0|
WithoutIcon|1|

## <a name="DataFieldForAnnotation"></a>DataFieldForAnnotation: [DataFieldAbstract](#DataFieldAbstract)


Property|Type|Description
:-------|:---|:----------
*Label*|String|
*Criticality*|[CriticalityType](#CriticalityType)|
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|
Target|AnnotationPath|Annotation path MUST end in vCard.Contact, vCard.Address, UI.DataPoint or UI.Chart

## <a name="DataFieldForActionAbstract"></a>*DataFieldForActionAbstract*: [DataFieldAbstract](#DataFieldAbstract)
Abstract type to bundle DataFieldForAction and DataFieldForIntentBasedNavigation

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
*Label*|String|
*Criticality*|[CriticalityType](#CriticalityType)|
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|
Inline|Boolean|Action should be placed close to (or even inside) the visualized term
Determining|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

## <a name="DataFieldForAction"></a>DataFieldForAction: [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The action is NOT tied to a data value (in contrast to DataFieldWithAction)

Property|Type|Description
:-------|:---|:----------
*Label*|String|
*Criticality*|[CriticalityType](#CriticalityType)|
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|
*Inline*|Boolean|Action should be placed close to (or even inside) the visualized term
*Determining*|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
Action|[QualifiedName](com.sap.vocabularies.Common.v1.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
InvocationGrouping|[OperationGroupingType](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

## <a name="OperationGroupingType"></a>OperationGroupingType


Member|Value|Description
:-----|----:|:----------
Isolated|0|
ChangeSet|1|

## <a name="DataFieldForIntentBasedNavigation"></a>DataFieldForIntentBasedNavigation: [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The navigation intent is NOT tied to a data value (in contrast to DataFieldWithIntentBasedNavigation), the data field represents a navigation trigger.

Property|Type|Description
:-------|:---|:----------
*Label*|String|
*Criticality*|[CriticalityType](#CriticalityType)|
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|
*Inline*|Boolean|Action should be placed close to (or even inside) the visualized term
*Determining*|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
SemanticObject|String|Name of the Semantic Object
Action|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
RequiresContext|Boolean|Determines whether a context needs to be passed to the target of this navigation.

## <a name="DataField"></a>DataField: [DataFieldAbstract](#DataFieldAbstract)


**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
*Label*|String|
*Criticality*|[CriticalityType](#CriticalityType)|
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|
Value|PrimitiveType|

## <a name="DataFieldWithAction"></a>DataFieldWithAction: [DataField](#DataField)
The action is tied to a data value which could be render as a button or link that triggers the action. This is in contrast to DataFieldForAction which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
*Label*|String|
*Criticality*|[CriticalityType](#CriticalityType)|
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|
*Value*|PrimitiveType|
Action|[QualifiedName](com.sap.vocabularies.Common.v1.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

## <a name="DataFieldWithIntentBasedNavigation"></a>DataFieldWithIntentBasedNavigation: [DataField](#DataField)
The navigation intent is tied to a data value which should be rendered as a hyperlink. This is in contrast to DataFieldForIntentBasedNavigation which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
*Label*|String|
*Criticality*|[CriticalityType](#CriticalityType)|
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|
*Value*|PrimitiveType|
SemanticObject|String|Name of the Semantic Object
Action|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="DataFieldWithNavigationPath"></a>DataFieldWithNavigationPath: [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
*Label*|String|
*Criticality*|[CriticalityType](#CriticalityType)|
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|
*Value*|PrimitiveType|
Target|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

## <a name="DataFieldWithUrl"></a>DataFieldWithUrl: [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
*Label*|String|
*Criticality*|[CriticalityType](#CriticalityType)|
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|
*Value*|PrimitiveType|
Url|URL|
UrlContentType|MediaType|
