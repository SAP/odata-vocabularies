# UI Vocabulary
**Namespace: [com.sap.vocabularies.UI.v1](UI.xml)**

Terms for presenting data in user interfaces


## Terms

Term|Type|Description
:---|:---|:----------
[HeaderInfo](UI.xml#L35)|[HeaderInfoType](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
[Identification](UI.xml#L66)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
[Badge](UI.xml#L71)|[BadgeType](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
[LineItem](UI.xml#L99)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
[StatusInfo](UI.xml#L104)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
[FieldGroup](UI.xml#L109)|[FieldGroupType](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
[ConnectedFields](UI.xml#L123) *(Experimental)*|[ConnectedFieldsType](#ConnectedFieldsType)|<a name="ConnectedFields"></a>Group of semantically connected fields with a representation template and an optional label
[GeoLocations](UI.xml#L194)|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
[GeoLocation](UI.xml#L198)|[GeoLocationType](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
[Contacts](UI.xml#L218)|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts<p>Each collection item MUST reference an annotation of a Communication.Contact</p>
[MediaResource](UI.xml#L225)|[MediaResourceType](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource
[DataPoint](UI.xml#L279)|[DataPointType](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
[KPI](UI.xml#L569)|[KPIType](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
[Chart](UI.xml#L618)|[ChartDefinitionType](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
[ValueCriticality](UI.xml#L797) *(Experimental)*|\[[ValueCriticalityType](#ValueCriticalityType)\]|<a name="ValueCriticality"></a>Assign criticalities to primitive values. This information can be used for semantic coloring.
[SelectionFields](UI.xml#L810)|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
[Facets](UI.xml#L819)|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
[HeaderFacets](UI.xml#L823)|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
[QuickViewFacets](UI.xml#L827)|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
[QuickCreateFacets](UI.xml#L831)|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
[FilterFacets](UI.xml#L835)|\[[ReferenceFacet](#ReferenceFacet)\]|<a name="FilterFacets"></a>Facets that reference UI.FieldGroup annotations to group filterable fields
[SelectionPresentationVariant](UI.xml#L877)|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
[PresentationVariant](UI.xml#L903)|[PresentationVariantType](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
[SelectionVariant](UI.xml#L977)|[SelectionVariantType](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
[ThingPerspective](UI.xml#L1109)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>This term is a Thing Perspective
[IsSummary](UI.xml#L1112)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
[PartOfPreview](UI.xml#L1117)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This Facet and all included Facets are part of the Thing preview
[Map](UI.xml#L1121)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
[Gallery](UI.xml#L1126)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
[IsImageURL](UI.xml#L1131)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image
[MultiLineText](UI.xml#L1137)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties annotated with this annotation should be rendered as multi-line text (e.g. text area)
[TextArrangement](UI.xml#L1143)|[TextArrangementType](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text<p>If used for a single property the Common.Text annotation is annotated</p>
[Importance](UI.xml#L1170)|[ImportanceType](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
[Hidden](UI.xml#L1185)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties or facets (see UI.Facet) annotated with this term will not be rendered if the annotation evaluates to true.<p>Hidden properties usually carry technical information that is used for application control and is of no direct interest to end users. The annotation value may be an expression to dynamically hide or render the annotated feature.</p>
[HiddenFilter](UI.xml#L1192)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria if the annotation evaluates to true.<p>Properties annotated with `HiddenFilter` are intended as parts of a `$filter` expression that cannot be directly influenced by end users. The properties will be rendered in all other places, e.g. table columns or form fields. This is in contrast to properties annotated with [`UI.Hidden`](#Hidden) that are not rendered at all.</p>
[DataFieldDefault](UI.xml#L1199) *(Experimental)*|[DataFieldAbstract](#DataFieldAbstract)|<a name="DataFieldDefault"></a>Default representation of a property as a datafield, e.g. when the property is added as a table column or form field via personalization<p>Only concrete subtypes of DataFieldAbstract can be used for a DataFieldDefault. For type `DataField` and its subtypes the annotation target SHOULD be the same property that is referenced via a path expression in the `Value` of the datafield.</p>
[Criticality](UI.xml#L1335) *(Experimental)*|[CriticalityType](#CriticalityType)|<a name="Criticality"></a>Service-calculated criticality, alternative to UI.CriticalityCalculation
[CriticalityCalculation](UI.xml#L1340) *(Experimental)*|[CriticalityCalculationType](#CriticalityCalculationType)|<a name="CriticalityCalculation"></a>Parameters for client-calculated criticality, alternative to UI.Criticality
[OrderBy](UI.xml#L1345) *(Experimental)*|PropertyPath|<a name="OrderBy"></a>Sort by the referenced property instead of by the annotated property<p>Example: annotated property `SizeCode` has string values XS, S, M, L, XL, referenced property SizeOrder has numeric values -2, -1, 0, 1, 2. Numeric ordering by SizeOrder will be more understandable than lexicographic ordering by SizeCode.</p>

## <a name="HeaderInfoType"></a>[HeaderInfoType](UI.xml#L40)


Property|Type|Description
:-------|:---|:----------
[TypeName](UI.xml#L41)|String|Name of the main entity type
[TypeNamePlural](UI.xml#L45)|String|Plural form of the name of the main entity type
[Title](UI.xml#L49)|[DataField](#DataField)|Title, e.g. for overview pages
[Description](UI.xml#L52)|[DataField](#DataField)|Description, e.g. for overview pages
[ImageUrl](UI.xml#L55)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L60)|URL|Image URL for the entity type

## <a name="BadgeType"></a>[BadgeType](UI.xml#L75)


Property|Type|Description
:-------|:---|:----------
[HeadLine](UI.xml#L76)|[DataField](#DataField)|Headline
[Title](UI.xml#L79)|[DataField](#DataField)|Title
[ImageUrl](UI.xml#L82)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L87)|URL|Image URL for the entity type
[MainInfo](UI.xml#L91)|[DataField](#DataField)|Main information on the business card
[SecondaryInfo](UI.xml#L94)|[DataField](#DataField)|Additional information on the business card

## <a name="FieldGroupType"></a>[FieldGroupType](UI.xml#L113)


Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L114)|String|Label for the field group
[Data](UI.xml#L118)|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

## <a name="ConnectedFieldsType"></a>[ConnectedFieldsType](UI.xml#L152) *(Experimental)*
Group of semantically connected fields with a representation template and an optional label

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L156)|String|Label for the connected fields
[Template](UI.xml#L160)|String|Template for representing the connected fields<p>Template variables are identifiers enclosed in curly braces, e.g. `{MaterialName} - {MaterialClassName}`. The `Data` collection assigns values to the template variables.</p>
[Data](UI.xml#L166)|[Dictionary](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Dictionary)|Dictionary of template variables<p>Each template variable used in `Template` must be assigned a value here. The value must be of type [`UI.DataFieldAbstract`](#DataFieldAbstract)</p>

## <a name="GeoLocationType"></a>[GeoLocationType](UI.xml#L202)
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
[Latitude](UI.xml#L204)|Double|Geographic latitude
[Longitude](UI.xml#L207)|Double|Geographic longitude
[Location](UI.xml#L210)|GeographyPoint|A point in a round-earth coordinate system
[Address](UI.xml#L213)|[AddressType](Communication.md#AddressType)|vCard-style address

## <a name="MediaResourceType"></a>[MediaResourceType](UI.xml#L229)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L230)|URL|URL of media resource
[ContentType](UI.xml#L234)|MediaType|Content type, such as application/pdf, video/x-flv, image/jpeg
[ByteSize](UI.xml#L238)|Int64|Resource size in bytes
[ChangedAt](UI.xml#L241)|DateTimeOffset|Date of last change
[Thumbnail](UI.xml#L244)|[ImageType](#ImageType)|Thumbnail image
[Title](UI.xml#L247)|[DataField](#DataField)|Resource title
[Description](UI.xml#L250)|[DataField](#DataField)|Resource description

## <a name="ImageType"></a>[ImageType](UI.xml#L254)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L255)|URL|URL of image
[Width](UI.xml#L259)|String|Width of image
[Height](UI.xml#L262)|String|Height of image

## <a name="DataPointType"></a>[DataPointType](UI.xml#L284)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L285)|String|Title of the data point
[Description](UI.xml#L289)|String|Short description
[LongDescription](UI.xml#L293)|String|Full description
[Value](UI.xml#L297)|PrimitiveType|Numeric value<p>               It could be annotated with either `UoM.ISOCurrency` or `UoM.Unit`.               Percentage values are annotated with `UoM.Unit = '%'`.               A renderer should take an optional `Common.Text` annotation into consideration.             </p>
[TargetValue](UI.xml#L307)|PrimitiveType|Target value
[ForecastValue](UI.xml#L310)|PrimitiveType|Forecast value
[MinimumValue](UI.xml#L313)|Decimal|Minimum value (for output rendering)
[MaximumValue](UI.xml#L316)|Decimal|Maximum value (for output rendering)
[ValueFormat](UI.xml#L319)|[NumberFormat](#NumberFormat)|Number format
[Visualization](UI.xml#L322)|[VisualizationType](#VisualizationType)|Preferred visualization
[SampleSize](UI.xml#L325)|PrimitiveType|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
[ReferencePeriod](UI.xml#L332)|[ReferencePeriod](#ReferencePeriod)|Reference period
[Criticality](UI.xml#L335)|[CriticalityType](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
[CriticalityRepresentation](UI.xml#L338) *(Experimental)*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[CriticalityCalculation](UI.xml#L342)|[CriticalityCalculationType](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
[Trend](UI.xml#L345)|[TrendType](#TrendType)|Service-calculated trend, alternative to TrendCalculation
[TrendCalculation](UI.xml#L348)|[TrendCalculationType](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
[Responsible](UI.xml#L351)|[ContactType](Communication.md#ContactType)|Contact person

## <a name="NumberFormat"></a>[NumberFormat](UI.xml#L356)
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
[ScaleFactor](UI.xml#L358)|Decimal|Display value in *ScaleFactor* units, e.g. 1000 for k (kilo), 1e6 for M (Mega)
[NumberOfFractionalDigits](UI.xml#L362)|Byte|Number of fractional digits of the scaled value to be visualized

## <a name="VisualizationType"></a>[VisualizationType](UI.xml#L367)


Member|Value|Description
:-----|----:|:----------
[Number](UI.xml#L368)|0|Visualize as a number
[BulletChart](UI.xml#L371)|1|Visualize as bullet chart - requires TargetValue
[Progress](UI.xml#L374)|2|Visualize as progress indicator - requires TargetValue
[Rating](UI.xml#L377)|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
[Donut](UI.xml#L381)|4|Visualize as donut, optionally with missing segment - requires TargetValue
[DeltaBulletChart](UI.xml#L384)|5|Visualize as delta bullet chart - requires TargetValue

## <a name="ReferencePeriod"></a>[ReferencePeriod](UI.xml#L389)
Reference period

Property|Type|Description
:-------|:---|:----------
[Description](UI.xml#L391)|String|Short description of the reference period
[Start](UI.xml#L395)|DateTimeOffset|Start of the reference period
[End](UI.xml#L398)|DateTimeOffset|End of the reference period

## <a name="CriticalityType"></a>[CriticalityType](UI.xml#L403)
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
[VeryNegative](UI.xml#L406) *(Experimental)*|-1|Very negative / dark-red status - risk - out of stock - late
[Neutral](UI.xml#L410)|0|Neutral / grey status - inactive - open - in progress
[Negative](UI.xml#L413)|1|Negative / red status - attention - overload - alert
[Critical](UI.xml#L416)|2|Critical / orange status - warning
[Positive](UI.xml#L419)|3|Positive / green status - completed - available - on track - acceptable
[VeryPositive](UI.xml#L422) *(Experimental)*|4|Very positive / blue status - above max stock - excess

## <a name="CriticalityCalculationType"></a>[CriticalityCalculationType](UI.xml#L428): [CriticalityThresholdsType](#CriticalityThresholdsType)
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
  - For DeviationRange, an omitted LowValue translates into the smallest possible number (-INF), an omitted HighValue translates into the largest possible number (+INF)
  - For ToleranceRange, an omitted LowValue will be initialized with DeviationRangeLowValue, an omitted HighValue will be initialized with DeviationRangeHighValue
  - For AcceptanceRange, an omitted LowValue will be initialized with ToleranceRangeLowValue, an omitted HighValue will be initialized with ToleranceRangeHighValue
          

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](UI.xml#L473)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L476)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L479)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L482)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L485)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L488)|PrimitiveType|Highest value that is considered critical
[ImprovementDirection](UI.xml#L459)|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
[ConstantThresholds](UI.xml#L462) *(Experimental)*|\[[LevelThresholdsType](#LevelThresholdsType)\]|List of thresholds depending on the aggregation level as a set of constant values<p>Constant thresholds shall only be used in order to refine constant values given for the data point overall (aggregation level with empty collection of property paths), but not if the thresholds are based on other measure elements.</p>

## <a name="CriticalityThresholdsType"></a>[CriticalityThresholdsType](UI.xml#L471)
Thresholds for calculating the criticality of a value

**Derived Types:**
- [CriticalityCalculationType](#CriticalityCalculationType)
- [LevelThresholdsType](#LevelThresholdsType)

Property|Type|Description
:-------|:---|:----------
[AcceptanceRangeLowValue](UI.xml#L473)|PrimitiveType|Lowest value that is considered positive
[AcceptanceRangeHighValue](UI.xml#L476)|PrimitiveType|Highest value that is considered positive
[ToleranceRangeLowValue](UI.xml#L479)|PrimitiveType|Lowest value that is considered neutral
[ToleranceRangeHighValue](UI.xml#L482)|PrimitiveType|Highest value that is considered neutral
[DeviationRangeLowValue](UI.xml#L485)|PrimitiveType|Lowest value that is considered critical
[DeviationRangeHighValue](UI.xml#L488)|PrimitiveType|Highest value that is considered critical

## <a name="ImprovementDirectionType"></a>[ImprovementDirectionType](UI.xml#L493)
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
[Minimize](UI.xml#L495)|1|Lower is better
[Target](UI.xml#L498)|2|Closer to the target is better
[Maximize](UI.xml#L501)|3|Higher is better

## <a name="LevelThresholdsType"></a>[LevelThresholdsType](UI.xml#L506): [CriticalityThresholdsType](#CriticalityThresholdsType) *(Experimental)*
Thresholds for an aggregation level

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](UI.xml#L473)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L476)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L479)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L482)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L485)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L488)|PrimitiveType|Highest value that is considered critical
[AggregationLevel](UI.xml#L509)|\[PropertyPath\]|An unordered tuple of dimensions, i.e. properties which are intended to be used for grouping in aggregating requests. In analytical UIs, e.g. an analytical chart, the aggregation level typically corresponds to the visible dimensions.

## <a name="TrendType"></a>[TrendType](UI.xml#L515)
The trend of a value

Member|Value|Description
:-----|----:|:----------
[StrongUp](UI.xml#L517)|1|Value grows strongly
[Up](UI.xml#L520)|2|Value grows
[Sideways](UI.xml#L523)|3|Value does not significantly grow or shrink
[Down](UI.xml#L526)|4|Value shrinks
[StrongDown](UI.xml#L529)|5|Value shrinks strongly

## <a name="TrendCalculationType"></a>[TrendCalculationType](UI.xml#L534)
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
[ReferenceValue](UI.xml#L548)|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L552)|Boolean|Calculate with a relative difference
[UpDifference](UI.xml#L555)|Decimal|Threshold for Up
[StrongUpDifference](UI.xml#L558)|Decimal|Threshold for StrongUp
[DownDifference](UI.xml#L561)|Decimal|Threshold for Down
[StrongDownDifference](UI.xml#L564)|Decimal|Threshold for StrongDown

## <a name="KPIType"></a>[KPIType](UI.xml#L575)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L576)|String|Optional identifier to reference this instance from an external context
[ShortDescription](UI.xml#L581) *(Experimental)*|String|Very short description
[SelectionVariant](UI.xml#L586)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[DataPoint](UI.xml#L590)|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
[Detail](UI.xml#L594)|[KPIDetailType](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

## <a name="KPIDetailType"></a>[KPIDetailType](UI.xml#L599)


Property|Type|Description
:-------|:---|:----------
[DefaultPresentationVariant](UI.xml#L600)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
[AlternativePresentationVariants](UI.xml#L604)|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path
[SemanticObject](UI.xml#L608)|String|Name of the Semantic Object. If not specified, use Semantic Object annotated at the property referenced in KPI/DataPoint/Value
[Action](UI.xml#L612)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="ChartDefinitionType"></a>[ChartDefinitionType](UI.xml#L622)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L623)|String|Title of the chart
[Description](UI.xml#L627)|String|Short description
[ChartType](UI.xml#L631)|[ChartType](#ChartType)|Chart type
[AxisScaling](UI.xml#L634)|[ChartAxisScalingType](#ChartAxisScalingType)|Describes the scale of the chart value axes
[Measures](UI.xml#L637)|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
[MeasureAttributes](UI.xml#L640)|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
[Dimensions](UI.xml#L645)|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
[DimensionAttributes](UI.xml#L648)|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
[Actions](UI.xml#L653)|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

## <a name="ChartType"></a>[ChartType](UI.xml#L658)


Member|Value|Description
:-----|----:|:----------
[Column](UI.xml#L659)|0|
[ColumnStacked](UI.xml#L660)|1|
[ColumnDual](UI.xml#L661)|2|
[ColumnStackedDual](UI.xml#L662)|3|
[ColumnStacked100](UI.xml#L663)|4|
[ColumnStackedDual100](UI.xml#L664)|5|
[Bar](UI.xml#L665)|6|
[BarStacked](UI.xml#L666)|7|
[BarDual](UI.xml#L667)|8|
[BarStackedDual](UI.xml#L668)|9|
[BarStacked100](UI.xml#L669)|10|
[BarStackedDual100](UI.xml#L670)|11|
[Area](UI.xml#L671)|12|
[AreaStacked](UI.xml#L672)|13|
[AreaStacked100](UI.xml#L673)|14|
[HorizontalArea](UI.xml#L674)|15|
[HorizontalAreaStacked](UI.xml#L675)|16|
[HorizontalAreaStacked100](UI.xml#L676)|17|
[Line](UI.xml#L677)|18|
[LineDual](UI.xml#L678)|19|
[Combination](UI.xml#L679)|20|
[CombinationStacked](UI.xml#L680)|21|
[CombinationDual](UI.xml#L681)|22|
[CombinationStackedDual](UI.xml#L682)|23|
[HorizontalCombinationStacked](UI.xml#L683)|24|
[Pie](UI.xml#L684)|25|
[Donut](UI.xml#L685)|26|
[Scatter](UI.xml#L686)|27|
[Bubble](UI.xml#L687)|28|
[Radar](UI.xml#L688)|29|
[HeatMap](UI.xml#L689)|30|
[TreeMap](UI.xml#L690)|31|
[Waterfall](UI.xml#L691)|32|
[Bullet](UI.xml#L692)|33|
[VerticalBullet](UI.xml#L693)|34|
[HorizontalWaterfall](UI.xml#L694)|35|
[HorizontalCombinationDual](UI.xml#L695)|36|
[HorizontalCombinationStackedDual](UI.xml#L696)|37|

## <a name="ChartAxisScalingType"></a>[ChartAxisScalingType](UI.xml#L700)


Property|Type|Description
:-------|:---|:----------
[ScaleBehavior](UI.xml#L701)|[ChartAxisScaleBehaviorType](#ChartAxisScaleBehaviorType)|Scale is fixed or adapts automatically to rendered values
[AutoScaleBehavior](UI.xml#L704)|[ChartAxisAutoScaleBehaviorType](#ChartAxisAutoScaleBehaviorType)|Settings for automatic scaling
[FixedScaleMultipleStackedMeasuresBoundaryValues](UI.xml#L707)|[FixedScaleMultipleStackedMeasuresBoundaryValuesType](#FixedScaleMultipleStackedMeasuresBoundaryValuesType)|Boundary values for fixed scaling of a stacking chart type with multiple measures

## <a name="ChartAxisScaleBehaviorType"></a>[ChartAxisScaleBehaviorType](UI.xml#L712)


Member|Value|Description
:-----|----:|:----------
[AutoScale](UI.xml#L713)|0|Value axes scale automatically
[FixedScale](UI.xml#L716)|1|Fixed minimum and maximum values are applied, which are derived from the @UI.MeasureAttributes.DataPoint/MinimumValue and .../MaximumValue annotation by default. For stacking chart types with multiple measures, they are taken from ChartAxisScalingType/FixedScaleMultipleStackedMeasuresBoundaryValues.

## <a name="ChartAxisAutoScaleBehaviorType"></a>[ChartAxisAutoScaleBehaviorType](UI.xml#L725)


Property|Type|Description
:-------|:---|:----------
[ZeroAlwaysVisible](UI.xml#L726)|Boolean|Forces the value axis to always display the zero value
[DataScope](UI.xml#L729)|[ChartAxisAutoScaleDataScopeType](#ChartAxisAutoScaleDataScopeType)|Determines the automatic scaling

## <a name="ChartAxisAutoScaleDataScopeType"></a>[ChartAxisAutoScaleDataScopeType](UI.xml#L734)


Member|Value|Description
:-----|----:|:----------
[DataSet](UI.xml#L735)|0|Minimum and maximum axes values are determined from the entire data set
[VisibleData](UI.xml#L738)|1|Minimum and maximum axes values are determined from the currently visible data. Scrolling will change the scale.

## <a name="FixedScaleMultipleStackedMeasuresBoundaryValuesType"></a>[FixedScaleMultipleStackedMeasuresBoundaryValuesType](UI.xml#L743)


Property|Type|Description
:-------|:---|:----------
[MinimumValue](UI.xml#L744)|Decimal|Minimum value on value axes
[MaximumValue](UI.xml#L747)|Decimal|Maximum value on value axes

## <a name="ChartDimensionAttributeType"></a>[ChartDimensionAttributeType](UI.xml#L752)


Property|Type|Description
:-------|:---|:----------
[Dimension](UI.xml#L753)|PropertyPath|
[Role](UI.xml#L754)|[ChartDimensionRoleType](#ChartDimensionRoleType)|
[HierarchyLevel](UI.xml#L755) *(Experimental)*|Int32|For a dimension with a hierarchy, members are selected from this level. The root node of the hierarchy is at level 0.
[ValuesForSequentialColorLevels](UI.xml#L760) *(Experimental)*|\[PrimitiveType\]|All values in this collection should be assigned to levels of the same color.
[EmphasizedValues](UI.xml#L765) *(Experimental)*|\[PrimitiveType\]|All values in this collection should be emphasized.

## <a name="ChartMeasureAttributeType"></a>[ChartMeasureAttributeType](UI.xml#L771)


Property|Type|Description
:-------|:---|:----------
[Measure](UI.xml#L772)|PropertyPath|
[Role](UI.xml#L773)|[ChartMeasureRoleType](#ChartMeasureRoleType)|
[DataPoint](UI.xml#L774)|AnnotationPath|Annotation path MUST end in UI.DataPoint and the DataPoint Value must be the same property as in Measure
[UseSequentialColorLevels](UI.xml#L778) *(Experimental)*|Boolean|All measures for which this setting is true should be assigned to levels of the same color.

## <a name="ChartDimensionRoleType"></a>[ChartDimensionRoleType](UI.xml#L785)


Member|Value|Description
:-----|----:|:----------
[Category](UI.xml#L786)|0|
[Series](UI.xml#L787)|1|
[Category2](UI.xml#L788)|2|

## <a name="ChartMeasureRoleType"></a>[ChartMeasureRoleType](UI.xml#L791)


Member|Value|Description
:-----|----:|:----------
[Axis1](UI.xml#L792)|0|
[Axis2](UI.xml#L793)|1|
[Axis3](UI.xml#L794)|2|

## <a name="ValueCriticalityType"></a>[ValueCriticalityType](UI.xml#L802) *(Experimental)*
Assigns a fixed criticality to a primitive value. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Value](UI.xml#L806)|PrimitiveType|
[Criticality](UI.xml#L807)|[CriticalityType](#CriticalityType)|

## <a name="Facet"></a>[*Facet*](UI.xml#L839)
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L841)|String|Facet label
[ID](UI.xml#L845)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

## <a name="CollectionFacet"></a>[CollectionFacet](UI.xml#L850): [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L841)|String|Facet label
[*ID*](UI.xml#L845)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Facets](UI.xml#L852)|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

## <a name="ReferenceFacet"></a>[ReferenceFacet](UI.xml#L857): [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L841)|String|Facet label
[*ID*](UI.xml#L845)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Target](UI.xml#L859)|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge

## <a name="ReferenceURLFacet"></a>[ReferenceURLFacet](UI.xml#L864): [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L841)|String|Facet label
[*ID*](UI.xml#L845)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Url](UI.xml#L866)|URL|URL of referenced information
[UrlContentType](UI.xml#L870)|MediaType|Media type of referenced information

## <a name="SelectionPresentationVariantType"></a>[SelectionPresentationVariantType](UI.xml#L883)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L884)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L889)|String|Name of the bundling variant
[SelectionVariant](UI.xml#L893)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[PresentationVariant](UI.xml#L897)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

## <a name="PresentationVariantType"></a>[PresentationVariantType](UI.xml#L909)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L910)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L913)|String|Name of the presentation variant
[MaxItems](UI.xml#L917)|Int32|Maximum number of items that should be included in the result
[SortOrder](UI.xml#L920)|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
[GroupBy](UI.xml#L924)|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with `InitialExpansionLevel`.
[TotalBy](UI.xml#L933)|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
[Total](UI.xml#L940)|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
[IncludeGrandTotal](UI.xml#L945)|Boolean|Result should include a grand total for the properties specified in Total
[InitialExpansionLevel](UI.xml#L948)|Int32|Level up to which the hierarchy defined for the queried collection should be expanded initially. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
[Visualizations](UI.xml#L954)|\[AnnotationPath\]|Lists available visualization types. Currently supported types are `UI.LineItem`, `UI.Chart`, and `UI.DataPoint`. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different presentation variants. A reference to `UI.Lineitem` should always be part of collection (least common denominator for renderers). The first entry of the collection is the default visualization.
[RequestAtLeast](UI.xml#L964)|\[PropertyPath\]|Properties that should always be included in the result of the queried collection
[SelectionFields](UI.xml#L968) *(Experimental)*|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a `UI.SelectionFields` annotation via Path.

## <a name="SelectionVariantType"></a>[SelectionVariantType](UI.xml#L982)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L983)|String|May contain identifier to reference this instance from an external context
[Text](UI.xml#L988)|String|Name of the selection variant
[Parameters](UI.xml#L992)|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
[FilterExpression](UI.xml#L995)|String|Filter string for query part of URL, without `$filter=`
[SelectOptions](UI.xml#L1000)|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>[*ParameterAbstract*](UI.xml#L1007)
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

## <a name="Parameter"></a>[Parameter](UI.xml#L1010): [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1012)|PropertyPath|Path to a key property of a parameter entity type
[PropertyValue](UI.xml#L1015)|PrimitiveType|Value for the key property

## <a name="IntervalParameter"></a>[IntervalParameter](UI.xml#L1019): [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
[PropertyNameFrom](UI.xml#L1021)|PropertyPath|Path to the 'from' property of a parameter entity type
[PropertyValueFrom](UI.xml#L1024)|PrimitiveType|Value for the 'from' property
[PropertyNameTo](UI.xml#L1027)|PropertyPath|Path to the 'to' property of a parameter entity type
[PropertyValueTo](UI.xml#L1030)|PrimitiveType|Value for the 'to' property

## <a name="SelectOptionType"></a>[SelectOptionType](UI.xml#L1035)
List of value ranges for a single property

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1037)|PropertyPath|Path to the property
[Ranges](UI.xml#L1040)|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

## <a name="SelectionRangeType"></a>[SelectionRangeType](UI.xml#L1045)
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
[Sign](UI.xml#L1049)|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
[Option](UI.xml#L1052)|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
[Low](UI.xml#L1055)|PrimitiveType|Single value or lower interval boundary
[High](UI.xml#L1058)|PrimitiveType|Upper interval boundary

## <a name="SelectionRangeSignType"></a>[SelectionRangeSignType](UI.xml#L1063)


Member|Value|Description
:-----|----:|:----------
[I](UI.xml#L1064)|0|Inclusive
[E](UI.xml#L1067)|1|Exclusive

## <a name="SelectionRangeOptionType"></a>[SelectionRangeOptionType](UI.xml#L1072)
Comparison operator

Member|Value|Description
:-----|----:|:----------
[EQ](UI.xml#L1074)|0|Equal to
[BT](UI.xml#L1077)|1|Between
[CP](UI.xml#L1080)|2|Contains pattern
[LE](UI.xml#L1083)|3|Less than or equal to
[GE](UI.xml#L1086)|4|Greater than or equal to
[NE](UI.xml#L1089)|5|Not equal to
[NB](UI.xml#L1092)|6|Not between
[NP](UI.xml#L1095)|7|Does not contain pattern
[GT](UI.xml#L1098)|8|Greater than
[LT](UI.xml#L1101)|9|Less than

## <a name="TextArrangementType"></a>[TextArrangementType](UI.xml#L1147)


Member|Value|Description
:-----|----:|:----------
[TextFirst](UI.xml#L1148)|0|Text is first, followed by the code/ID (e.g. in parentheses)
[TextLast](UI.xml#L1151)|1|Code/ID is first, followed by the text (e.g. separated by a dash)
[TextSeparate](UI.xml#L1154)|2|Code/ID and text are represented separately
[TextOnly](UI.xml#L1157)|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

## <a name="ImportanceType"></a>[ImportanceType](UI.xml#L1173)


Member|Value|Description
:-----|----:|:----------
[High](UI.xml#L1174)|0|High importance
[Medium](UI.xml#L1177)|1|Medium importance
[Low](UI.xml#L1180)|2|Low importance

## <a name="DataFieldAbstract"></a>[*DataFieldAbstract*](UI.xml#L1207)


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
[Label](UI.xml#L1208)|String|A short, human-readable text suitable for labels and captions in UIs
[Criticality](UI.xml#L1212)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[CriticalityRepresentation](UI.xml#L1215)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[IconUrl](UI.xml#L1218)|URL|Optional icon to decorate the value

## <a name="CriticalityRepresentationType"></a>[CriticalityRepresentationType](UI.xml#L1224)


Member|Value|Description
:-----|----:|:----------
[WithIcon](UI.xml#L1225)|0|Criticality is represented with an icon
[WithoutIcon](UI.xml#L1228)|1|Criticality is represented without icon, e.g. only via text color

## <a name="DataFieldForAnnotation"></a>[DataFieldForAnnotation](UI.xml#L1233): [DataFieldAbstract](#DataFieldAbstract)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1208)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1212)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1215)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1218)|URL|Optional icon to decorate the value
[Target](UI.xml#L1234)|AnnotationPath|Target MUST reference an annotation of terms Communication.Contact, Communication.Address, UI.DataPoint, UI.Chart, UI.FieldGroup, or UI.ConnectedFields

## <a name="DataFieldForActionAbstract"></a>[*DataFieldForActionAbstract*](UI.xml#L1240): [DataFieldAbstract](#DataFieldAbstract)
Abstract type to bundle DataFieldForAction and DataFieldForIntentBasedNavigation

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1208)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1212)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1215)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1218)|URL|Optional icon to decorate the value
[Inline](UI.xml#L1243)|Boolean|Action should be placed close to (or even inside) the visualized term
[Determining](UI.xml#L1246)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

## <a name="DataFieldForAction"></a>[DataFieldForAction](UI.xml#L1252): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The action is NOT tied to a data value (in contrast to DataFieldWithAction)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1208)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1212)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1215)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1218)|URL|Optional icon to decorate the value
[*Inline*](UI.xml#L1243)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1246)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[Action](UI.xml#L1254)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
[InvocationGrouping](UI.xml#L1258)|[OperationGroupingType](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

## <a name="OperationGroupingType"></a>[OperationGroupingType](UI.xml#L1263)


Member|Value|Description
:-----|----:|:----------
[Isolated](UI.xml#L1264)|0|
[ChangeSet](UI.xml#L1265)|1|

## <a name="DataFieldForIntentBasedNavigation"></a>[DataFieldForIntentBasedNavigation](UI.xml#L1268): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The navigation intent is is expressed as a Semantic Object and optionally an Action on that object

The navigation intent is NOT tied to a data value (in contrast to DataFieldWithIntentBasedNavigation), the data field represents a navigation trigger.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1208)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1212)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1215)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1218)|URL|Optional icon to decorate the value
[*Inline*](UI.xml#L1243)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1246)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[SemanticObject](UI.xml#L1273)|String|Name of the Semantic Object
[Action](UI.xml#L1276)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[RequiresContext](UI.xml#L1280)|Boolean|Determines whether a context needs to be passed to the target of this navigation.

## <a name="DataField"></a>[DataField](UI.xml#L1286): [DataFieldAbstract](#DataFieldAbstract)


**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1208)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1212)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1215)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1218)|URL|Optional icon to decorate the value
[Value](UI.xml#L1287)|PrimitiveType|The data field's value

## <a name="DataFieldWithAction"></a>[DataFieldWithAction](UI.xml#L1293): [DataField](#DataField)
The action is tied to a data value which could be render as a button or link that triggers the action. This is in contrast to DataFieldForAction which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1208)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1212)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1215)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1218)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1287)|PrimitiveType|The data field's value
[Action](UI.xml#L1296)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

## <a name="DataFieldWithIntentBasedNavigation"></a>[DataFieldWithIntentBasedNavigation](UI.xml#L1302): [DataField](#DataField)
The navigation intent is is expressed as a Semantic Object and optionally an Action on that object

The navigation intent is tied to a data value which should be rendered as a hyperlink. This is in contrast to DataFieldForIntentBasedNavigation which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1208)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1212)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1215)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1218)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1287)|PrimitiveType|The data field's value
[SemanticObject](UI.xml#L1307)|String|Name of the Semantic Object
[Action](UI.xml#L1310)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="DataFieldWithNavigationPath"></a>[DataFieldWithNavigationPath](UI.xml#L1316): [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1208)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1212)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1215)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1218)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1287)|PrimitiveType|The data field's value
[Target](UI.xml#L1317)|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

## <a name="DataFieldWithUrl"></a>[DataFieldWithUrl](UI.xml#L1324): [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1208)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1212)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1215)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1218)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1287)|PrimitiveType|The data field's value
[Url](UI.xml#L1325)|URL|Target of the hyperlink
[UrlContentType](UI.xml#L1329)|MediaType|Media type of the hyperlink target, e.g. `video/mp4`
