# UI Vocabulary
**Namespace: [com.sap.vocabularies.UI.v1](UI.xml)**

Terms for presenting data in user interfaces

Term|Type|Description
:---|:---|:----------
HeaderInfo|[HeaderInfoType](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
Identification|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
Badge|[BadgeType](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
LineItem|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
StatusInfo|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
FieldGroup|[FieldGroupType](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
GeoLocations|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
GeoLocation|[GeoLocationType](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
Contacts|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts
MediaResource|[MediaResourceType](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource
DataPoint|[DataPointType](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
KPI|[KPIType](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
Chart|[ChartDefinitionType](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
SelectionFields|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
Facets|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
HeaderFacets|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
QuickViewFacets|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
QuickCreateFacets|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
SelectionPresentationVariant|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
PresentationVariant|[PresentationVariantType](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
SelectionVariant|[SelectionVariantType](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
ThingPerspective|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>This term is a Thing Perspective
IsSummary|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
PartOfPreview|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This Facet and all included Facets are part of the Thing preview
Map|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
Gallery|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
IsImageURL|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image
MultiLineText|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties annotated with this annotation should be rendered as multi-line text (e.g. text area)
TextArrangement|[TextArrangementType](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text
Importance|[ImportanceType](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
Hidden|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties annotated with this term will not be rendered at all
HiddenFilter|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria

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
Address|[AddressType](Communication.md#AddressType)|vCard-style address

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
Title|String|Title of the data point
Description|String|Short description
LongDescription|String|Full description
Value|PrimitiveType|Numeric value
TargetValue|PrimitiveType|Target value
ForecastValue|PrimitiveType|Forecast value
MinimumValue|Decimal|Minimum value (for output rendering)
MaximumValue|Decimal|Maximum value (for output rendering)
ValueFormat|[NumberFormat](#NumberFormat)|Number format
Visualization|[VisualizationType](#VisualizationType)|Preferred visualization
SampleSize|PrimitiveType|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
ReferencePeriod|[ReferencePeriod](#ReferencePeriod)|Reference period
Criticality|[CriticalityType](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
CriticalityCalculation|[CriticalityCalculationType](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
Trend|[TrendType](#TrendType)|Service-calculated trend, alternative to TrendCalculation
TrendCalculation|[TrendCalculationType](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
Responsible|[ContactType](Communication.md#ContactType)|Contact person

## <a name="NumberFormat"></a>NumberFormat
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
ScaleFactor|Decimal|Factor to scale a value before visualization, e.g. 0.001 for K, 1e-6 for M
NumberOfFractionalDigits|Byte|Number of fractional digits of the scaled value to be visualized

## <a name="VisualizationType"></a>VisualizationType


Member|Value|Description
:-----|----:|:----------
Number|0|Visualize as a number
BulletChart|1|Visualize as bullet chart - requires TargetValue
Progress|2|Visualize as progress indicator - requires TargetValue
Rating|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
Donut|4|Visualize as donut, optionally with missing segment - requires TargetValue

## <a name="ReferencePeriod"></a>ReferencePeriod
Reference period

Property|Type|Description
:-------|:---|:----------
Description|String|Short description of the reference period
Start|DateTimeOffset|Start of the reference period
End|DateTimeOffset|End of the reference period

## <a name="CriticalityType"></a>CriticalityType
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
Neutral|0|Neutral / blue status - inactive - open - in progress
Negative|1|Negative / red status - attention - overload - alert
Critical|2|Critical / orange status - warning
Positive|3|Positive / green status - completed - available - on track - acceptable

## <a name="CriticalityCalculationType"></a>CriticalityCalculationType
Describes how to calculate the criticality of a value depending on the improvement direction

The calculation is done by comparing a value to the threshold values relevant for the specified improvement direction.

For improvement direction `Target`, the criticality is calculated using both low and high threshold values. It will be
  - Positive if the value is greater than or equal to AcceptanceRangeLowValue and lower than or equal to AcceptanceRangeHighValue
  - Neutral if the value is greater than or equal to ToleranceRangeLowValue and lower than AcceptanceRangeLowValue OR greater than AcceptanceRangeHighValue and lower than or equal to ToleranceRangeHighValue
  - Critical if the value is greater than or equal to DeviationRangeLowValue and lower than ToleranceRangeLowValue OR greater than ToleranceRangeHighValue  and lower than or equal to DeviationRangeHighValue
  - Negative if the value is lower than DeviationRangeLowValue or greater than DeviationRangeHighValue

For improvement direction `Minimize`, the criticality is calculated using the high threshold values. It is
  - Positive if the value is lower than or equal to AcceptanceRangeHighValue
  - Neutral if the value is  greater than AcceptanceRangeHighValue and lower than or equal to ToleranceRangeHighValue
  - Critical if the value is greater than ToleranceRangeHighValue and lower than or equal to DeviationRangeHighValue
  - Negative if the value is greater than DeviationRangeHighValue

For improvement direction `Maximize`, the criticality is calculated using the low threshold values. It is
  - Positive if the value is greater than or equal to AcceptanceRangeLowValue
  - Neutral if the value is less than AcceptanceRangeLowValue and greater than or equal to ToleranceRangeLowValue
  - Critical if the value is lower than ToleranceRangeLowValue and greater than or equal to DeviationRangeLowValue
  - Negative if the value is lower than DeviationRangeLowValue
             
Thresholds are optional. For unassigned values, defaults are determined in this order:
  - For Deviation, an omitted LowValue translates into the smallest possible number (-INF), an omitted HighValue translates into the largest possible number (+INF)
  - For Tolerance, an omitted LowValue will be initialized with DeviationLowValue, an omitted HighValue will be initialized with DeviationHighValue
  - For Acceptance, an omitted LowValue will be initialized with ToleranceLowValue, an omitted HighValue will be initialized with ToleranceHighValue
          

Property|Type|Description
:-------|:---|:----------
ImprovementDirection|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
AcceptanceRangeLowValue|PrimitiveType|Lowest value that is considered neutral
AcceptanceRangeHighValue|PrimitiveType|Highest value that is considered neutral
ToleranceRangeLowValue|PrimitiveType|Lowest value that is considered positive
ToleranceRangeHighValue|PrimitiveType|Highest value that is considered positive
DeviationRangeLowValue|PrimitiveType|Lowest value that is considered critical
DeviationRangeHighValue|PrimitiveType|Highest value that is considered critical

## <a name="ImprovementDirectionType"></a>ImprovementDirectionType
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
Minimize|1|Lower is better
Target|2|Closer to the target is better
Maximize|3|Higher is better

## <a name="TrendType"></a>TrendType
The trend of a value

Member|Value|Description
:-----|----:|:----------
StrongUp|1|Value grows strongly
Up|2|Value grows
Sideways|3|Value does not significantly grow or shrink
Down|4|Value shrinks
StrongDown|5|Value shrinks strongly

## <a name="TrendCalculationType"></a>TrendCalculationType
Describes how to calculate the trend of a value

By default, the calculation is done by comparing the difference between Value and ReferenceValue to the threshold values. 
If IsRelativeDifference is set, the difference of Value and ReferenceValue is divided by ReferenceValue and the relative difference is compared.

The trend is 
  - StrongUp if the difference is greater than or equal to StrongUpDifference
  - Up if the difference is less than StrongUpDifference and greater than or equal to UpDifference
  - Sideways if the difference  is less than UpDifference and greater than DownDifference
  - Down if the difference is greater than StrongDownDifference and lower than or equal to DownDifference
  - StrongDown if the difference is lower than or equal to StrongDownDifference

Property|Type|Description
:-------|:---|:----------
ReferenceValue|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
IsRelativeDifference|Boolean|Calculate with a relative difference
UpDifference|Decimal|Threshold for Up
StrongUpDifference|Decimal|Threshold for StrongUp
DownDifference|Decimal|Threshold for Down
StrongDownDifference|Decimal|Threshold for StrongDown

## <a name="KPIType"></a>KPIType


Property|Type|Description
:-------|:---|:----------
ID|String|Optional identifier to reference this instance from an external context
SelectionVariant|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
DataPoint|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
Detail|[KPIDetailType](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

## <a name="KPIDetailType"></a>KPIDetailType


Property|Type|Description
:-------|:---|:----------
DefaultPresentationVariant|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
AlternativePresentationVariants|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path

## <a name="ChartDefinitionType"></a>ChartDefinitionType


Property|Type|Description
:-------|:---|:----------
Title|String|Title of the chart
Description|String|Short description
ChartType|[ChartType](#ChartType)|Chart type
Measures|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
MeasureAttributes|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
Dimensions|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
DimensionAttributes|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
Actions|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

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
Facets|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

## <a name="ReferenceFacet"></a>ReferenceFacet: [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
*Label*|String|Facet label
*ID*|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
Target|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge

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
ID|String|Optional identifier to reference this variant from an external context
Text|String|Name of the bundling variant
SelectionVariant|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
PresentationVariant|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

## <a name="PresentationVariantType"></a>PresentationVariantType


Property|Type|Description
:-------|:---|:----------
ID|String|Optional identifier to reference this variant from an external context
Text|String|Name of the presentation variant
MaxItems|Int32|Maximum number of items that should be included in the result
SortOrder|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
GroupBy|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with InitialExpansionLevel.
TotalBy|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
Total|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
IncludeGrandTotal|Boolean|Result should include a grand total for the properties specified in Total
InitialExpansionLevel|Int32|Initial number of levels to expand in a hierarchy defined for the queried collection. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
Visualizations|\[AnnotationPath\]|Lists available visualization types. Currently supported types are UI.LineItem, UI.Chart, and UI.DataPoint. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different PresentationVariants. A reference to UI.Lineitem should always be part of collection (least common denominator for renderers). The first entry of the collection is the default visualization.
RequestAtLeast|\[PropertyPath\]|Properties that should always be included in the result of the queried collection
SelectionFields|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a UI.SelectionFields annotation via Path.

## <a name="SelectionVariantType"></a>SelectionVariantType


Property|Type|Description
:-------|:---|:----------
ID|String|May contain identifier to reference this instance from an external context
Text|String|Name of the selection variant
Parameters|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
FilterExpression|String|Filter string for query part of URL, without '$filter ='
SelectOptions|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>*ParameterAbstract*
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

## <a name="Parameter"></a>Parameter: [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
PropertyName|PropertyPath|Path to a key property of a parameter entity type
PropertyValue|PrimitiveType|Value for the key property

## <a name="IntervalParameter"></a>IntervalParameter: [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
PropertyNameFrom|PropertyPath|Path to the 'from' property of a parameter entity type
PropertyValueFrom|PrimitiveType|Value for the 'from' property
PropertyNameTo|PropertyPath|Path to the 'to' property of a parameter entity type
PropertyValueTo|PrimitiveType|Value for the 'to' property

## <a name="SelectOptionType"></a>SelectOptionType
List of value ranges for a single property

Property|Type|Description
:-------|:---|:----------
PropertyName|PropertyPath|Path to the property
Ranges|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

## <a name="SelectionRangeType"></a>SelectionRangeType
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
Sign|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
Option|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
Low|PrimitiveType|Single value or lower interval boundary
High|PrimitiveType|Upper interval boundary

## <a name="SelectionRangeSignType"></a>SelectionRangeSignType


Member|Value|Description
:-----|----:|:----------
I|0|Inclusive
E|1|Exclusive

## <a name="SelectionRangeOptionType"></a>SelectionRangeOptionType
Comparison operator

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
TextFirst|0|Text is first, followed by the code/ID (e.g. in parentheses)
TextLast|1|Code/ID is first, followed by the text (e.g. separated by a dash)
TextSeparate|2|Code/ID and text are represented separately
TextOnly|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

## <a name="ImportanceType"></a>ImportanceType


Member|Value|Description
:-----|----:|:----------
High|0|High importance
Medium|1|Medium importance
Low|2|Low importance

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
Label|String|A short, human-readable text suitable for labels and captions in UIs
Criticality|[CriticalityType](#CriticalityType)|Criticality of the data field value
CriticalityRepresentation|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
IconUrl|URL|Optional icon to decorate the value

## <a name="CriticalityRepresentationType"></a>CriticalityRepresentationType


Member|Value|Description
:-----|----:|:----------
WithIcon|0|Criticality is represented with an icon
WithoutIcon|1|Criticality is represented without icon, e.g. only via text color

## <a name="DataFieldForAnnotation"></a>DataFieldForAnnotation: [DataFieldAbstract](#DataFieldAbstract)


Property|Type|Description
:-------|:---|:----------
*Label*|String|A short, human-readable text suitable for labels and captions in UIs
*Criticality*|[CriticalityType](#CriticalityType)|Criticality of the data field value
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|Optional icon to decorate the value
Target|AnnotationPath|Annotation path MUST end in Communication.Contact, Communication.Address, UI.DataPoint or UI.Chart

## <a name="DataFieldForActionAbstract"></a>*DataFieldForActionAbstract*: [DataFieldAbstract](#DataFieldAbstract)
Abstract type to bundle DataFieldForAction and DataFieldForIntentBasedNavigation

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
*Label*|String|A short, human-readable text suitable for labels and captions in UIs
*Criticality*|[CriticalityType](#CriticalityType)|Criticality of the data field value
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|Optional icon to decorate the value
Inline|Boolean|Action should be placed close to (or even inside) the visualized term
Determining|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

## <a name="DataFieldForAction"></a>DataFieldForAction: [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The action is NOT tied to a data value (in contrast to DataFieldWithAction)

Property|Type|Description
:-------|:---|:----------
*Label*|String|A short, human-readable text suitable for labels and captions in UIs
*Criticality*|[CriticalityType](#CriticalityType)|Criticality of the data field value
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|Optional icon to decorate the value
*Inline*|Boolean|Action should be placed close to (or even inside) the visualized term
*Determining*|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
Action|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
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
*Label*|String|A short, human-readable text suitable for labels and captions in UIs
*Criticality*|[CriticalityType](#CriticalityType)|Criticality of the data field value
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|Optional icon to decorate the value
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
*Label*|String|A short, human-readable text suitable for labels and captions in UIs
*Criticality*|[CriticalityType](#CriticalityType)|Criticality of the data field value
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|Optional icon to decorate the value
Value|PrimitiveType|Value of the data field value

## <a name="DataFieldWithAction"></a>DataFieldWithAction: [DataField](#DataField)
The action is tied to a data value which could be render as a button or link that triggers the action. This is in contrast to DataFieldForAction which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
*Label*|String|A short, human-readable text suitable for labels and captions in UIs
*Criticality*|[CriticalityType](#CriticalityType)|Criticality of the data field value
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|Optional icon to decorate the value
*Value*|PrimitiveType|Value of the data field value
Action|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

## <a name="DataFieldWithIntentBasedNavigation"></a>DataFieldWithIntentBasedNavigation: [DataField](#DataField)
The navigation intent is tied to a data value which should be rendered as a hyperlink. This is in contrast to DataFieldForIntentBasedNavigation which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
*Label*|String|A short, human-readable text suitable for labels and captions in UIs
*Criticality*|[CriticalityType](#CriticalityType)|Criticality of the data field value
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|Optional icon to decorate the value
*Value*|PrimitiveType|Value of the data field value
SemanticObject|String|Name of the Semantic Object
Action|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="DataFieldWithNavigationPath"></a>DataFieldWithNavigationPath: [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
*Label*|String|A short, human-readable text suitable for labels and captions in UIs
*Criticality*|[CriticalityType](#CriticalityType)|Criticality of the data field value
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|Optional icon to decorate the value
*Value*|PrimitiveType|Value of the data field value
Target|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

## <a name="DataFieldWithUrl"></a>DataFieldWithUrl: [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
*Label*|String|A short, human-readable text suitable for labels and captions in UIs
*Criticality*|[CriticalityType](#CriticalityType)|Criticality of the data field value
*CriticalityRepresentation*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
*IconUrl*|URL|Optional icon to decorate the value
*Value*|PrimitiveType|Value of the data field value
Url|URL|Target of the hyperlink
UrlContentType|MediaType|Media type of the hyperlink target, e.g. `videp/mp4`
