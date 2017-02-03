# UI Vocabulary
**Namespace: [com.sap.vocabularies.UI.v1](UI.xml)**

Terms for presenting data in user interfaces

Term|Type|Description
:---|:---|:----------
[HeaderInfo](UI.xml#L23)|[HeaderInfoType](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
[Identification](UI.xml#L54)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
[Badge](UI.xml#L59)|[BadgeType](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
[LineItem](UI.xml#L87)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
[StatusInfo](UI.xml#L92)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
[FieldGroup](UI.xml#L97)|[FieldGroupType](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
[GeoLocations](UI.xml#L127)|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
[GeoLocation](UI.xml#L131)|[GeoLocationType](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
[Contacts](UI.xml#L151)|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts
[MediaResource](UI.xml#L157)|[MediaResourceType](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource
[DataPoint](UI.xml#L211)|[DataPointType](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
[KPI *(Experimental)*](UI.xml#L484)|[KPIType](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
[Chart](UI.xml#L519)|[ChartDefinitionType](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
[SelectionFields](UI.xml#L620)|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
[Facets](UI.xml#L628)|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
[HeaderFacets](UI.xml#L632)|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
[QuickViewFacets](UI.xml#L636)|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
[QuickCreateFacets](UI.xml#L640)|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
[FilterFacets *(Experimental)*](UI.xml#L644)|\[[ReferenceFacet](#ReferenceFacet)\]|<a name="FilterFacets"></a>Facets that reference UI.FieldGroup annotations to group filterable fields
[SelectionPresentationVariant](UI.xml#L687)|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
[PresentationVariant](UI.xml#L711)|[PresentationVariantType](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
[SelectionVariant](UI.xml#L783)|[SelectionVariantType](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
[ThingPerspective](UI.xml#L915)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>This term is a Thing Perspective
[IsSummary](UI.xml#L918)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
[PartOfPreview](UI.xml#L923)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This Facet and all included Facets are part of the Thing preview
[Map](UI.xml#L927)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
[Gallery](UI.xml#L931)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
[IsImageURL](UI.xml#L936)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image
[MultiLineText](UI.xml#L942)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties annotated with this annotation should be rendered as multi-line text (e.g. text area)
[TextArrangement](UI.xml#L948)|[TextArrangementType](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text
[Importance](UI.xml#L975)|[ImportanceType](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
[Hidden](UI.xml#L990)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties annotated with this term will not be rendered at all
[HiddenFilter](UI.xml#L994)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria

## <a name="HeaderInfoType"></a>[HeaderInfoType](UI.xml#L28)


Property|Type|Description
:-------|:---|:----------
[TypeName](UI.xml#L29)|String|Name of the main entity type
[TypeNamePlural](UI.xml#L33)|String|Plural form of the name of the main entity type
[Title](UI.xml#L37)|[DataField](#DataField)|Title, e.g. for overview pages
[Description](UI.xml#L40)|[DataField](#DataField)|Description, e.g. for overview pages
[ImageUrl](UI.xml#L43)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L48)|URL|Image URL for the entity type

## <a name="BadgeType"></a>[BadgeType](UI.xml#L63)


Property|Type|Description
:-------|:---|:----------
[HeadLine](UI.xml#L64)|[DataField](#DataField)|Headline
[Title](UI.xml#L67)|[DataField](#DataField)|Title
[ImageUrl](UI.xml#L70)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L75)|URL|Image URL for the entity type
[MainInfo](UI.xml#L79)|[DataField](#DataField)|Main information on the business card
[SecondaryInfo](UI.xml#L82)|[DataField](#DataField)|Additional information on the business card

## <a name="FieldGroupType"></a>[FieldGroupType](UI.xml#L101)


Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L102)|String|Label for the field group
[Data](UI.xml#L106)|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

## <a name="GeoLocationType"></a>[GeoLocationType](UI.xml#L135)
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
[Latitude](UI.xml#L137)|Double|Geographic latitude
[Longitude](UI.xml#L140)|Double|Geographic longitude
[Location](UI.xml#L143)|GeographyPoint|A point in a round-earth coordinate system
[Address](UI.xml#L146)|[AddressType](Communication.md#AddressType)|vCard-style address

## <a name="MediaResourceType"></a>[MediaResourceType](UI.xml#L161)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L162)|URL|URL of media resource
[ContentType](UI.xml#L166)|MediaType|Content type, such as application/pdf, video/x-flv, image/jpeg
[ByteSize](UI.xml#L170)|Int64|Resource size in bytes
[ChangedAt](UI.xml#L173)|DateTimeOffset|Date of last change
[Thumbnail](UI.xml#L176)|[ImageType](#ImageType)|Thumbnail image
[Title](UI.xml#L179)|[DataField](#DataField)|Resource title
[Description](UI.xml#L182)|[DataField](#DataField)|Resource description

## <a name="ImageType"></a>[ImageType](UI.xml#L186)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L187)|URL|URL of image
[Width](UI.xml#L191)|String|Width of image
[Height](UI.xml#L194)|String|Height of image

## <a name="DataPointType"></a>[DataPointType](UI.xml#L216)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L217)|String|Title of the data point
[Description](UI.xml#L221)|String|Short description
[LongDescription](UI.xml#L225)|String|Full description
[Value](UI.xml#L229)|PrimitiveType|Numeric value
[TargetValue](UI.xml#L239)|PrimitiveType|Target value
[ForecastValue](UI.xml#L242)|PrimitiveType|Forecast value
[MinimumValue](UI.xml#L245)|Decimal|Minimum value (for output rendering)
[MaximumValue](UI.xml#L248)|Decimal|Maximum value (for output rendering)
[ValueFormat](UI.xml#L251)|[NumberFormat](#NumberFormat)|Number format
[Visualization](UI.xml#L254)|[VisualizationType](#VisualizationType)|Preferred visualization
[SampleSize](UI.xml#L257)|PrimitiveType|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
[ReferencePeriod](UI.xml#L264)|[ReferencePeriod](#ReferencePeriod)|Reference period
[Criticality](UI.xml#L267)|[CriticalityType](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
[CriticalityRepresentation *(Experimental)*](UI.xml#L270)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[CriticalityCalculation](UI.xml#L274)|[CriticalityCalculationType](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
[Trend](UI.xml#L277)|[TrendType](#TrendType)|Service-calculated trend, alternative to TrendCalculation
[TrendCalculation](UI.xml#L280)|[TrendCalculationType](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
[Responsible](UI.xml#L283)|[ContactType](Communication.md#ContactType)|Contact person

## <a name="NumberFormat"></a>[NumberFormat](UI.xml#L288)
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
[ScaleFactor](UI.xml#L290)|Decimal|Factor to scale a value before visualization, e.g. 0.001 for K, 1e-6 for M
[NumberOfFractionalDigits](UI.xml#L293)|Byte|Number of fractional digits of the scaled value to be visualized

## <a name="VisualizationType"></a>[VisualizationType](UI.xml#L298)


Member|Value|Description
:-----|----:|:----------
[Number](UI.xml#L299)|0|Visualize as a number
[BulletChart](UI.xml#L302)|1|Visualize as bullet chart - requires TargetValue
[Progress](UI.xml#L305)|2|Visualize as progress indicator - requires TargetValue
[Rating](UI.xml#L308)|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
[Donut](UI.xml#L311)|4|Visualize as donut, optionally with missing segment - requires TargetValue

## <a name="ReferencePeriod"></a>[ReferencePeriod](UI.xml#L316)
Reference period

Property|Type|Description
:-------|:---|:----------
[Description](UI.xml#L318)|String|Short description of the reference period
[Start](UI.xml#L322)|DateTimeOffset|Start of the reference period
[End](UI.xml#L325)|DateTimeOffset|End of the reference period

## <a name="CriticalityType"></a>[CriticalityType](UI.xml#L330)
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
[Neutral](UI.xml#L333)|0|Neutral / blue status - inactive - open - in progress
[Negative](UI.xml#L336)|1|Negative / red status - attention - overload - alert
[Critical](UI.xml#L339)|2|Critical / orange status - warning
[Positive](UI.xml#L342)|3|Positive / green status - completed - available - on track - acceptable

## <a name="CriticalityCalculationType"></a>[CriticalityCalculationType](UI.xml#L347): [CriticalityThresholdsType](#CriticalityThresholdsType)
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
[*AcceptanceRangeLowValue*](UI.xml#L390)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L393)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L396)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L399)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L402)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L405)|PrimitiveType|Highest value that is considered critical
[ImprovementDirection](UI.xml#L377)|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
[ConstantThresholds *(Experimental)*](UI.xml#L380)|\[[LevelThresholdsType](#LevelThresholdsType)\]|List of thresholds depending on the aggregation level as a set of constant values

## <a name="CriticalityThresholdsType"></a>[CriticalityThresholdsType](UI.xml#L388)
Thresholds for calculating the criticality of a value

**Derived Types:**
- [CriticalityCalculationType](#CriticalityCalculationType)
- [LevelThresholdsType](#LevelThresholdsType)

Property|Type|Description
:-------|:---|:----------
[AcceptanceRangeLowValue](UI.xml#L390)|PrimitiveType|Lowest value that is considered positive
[AcceptanceRangeHighValue](UI.xml#L393)|PrimitiveType|Highest value that is considered positive
[ToleranceRangeLowValue](UI.xml#L396)|PrimitiveType|Lowest value that is considered neutral
[ToleranceRangeHighValue](UI.xml#L399)|PrimitiveType|Highest value that is considered neutral
[DeviationRangeLowValue](UI.xml#L402)|PrimitiveType|Lowest value that is considered critical
[DeviationRangeHighValue](UI.xml#L405)|PrimitiveType|Highest value that is considered critical

## <a name="ImprovementDirectionType"></a>[ImprovementDirectionType](UI.xml#L410)
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
[Minimize](UI.xml#L412)|1|Lower is better
[Target](UI.xml#L415)|2|Closer to the target is better
[Maximize](UI.xml#L418)|3|Higher is better

## <a name="LevelThresholdsType"></a>[LevelThresholdsType](UI.xml#L423): [CriticalityThresholdsType](#CriticalityThresholdsType) *(Experimental)*
Thresholds for an aggregation level

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](UI.xml#L390)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L393)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L396)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L399)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L402)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L405)|PrimitiveType|Highest value that is considered critical
[AggregationLevel](UI.xml#L426)|\[PropertyPath\]|Describes in which direction the value improves

## <a name="TrendType"></a>[TrendType](UI.xml#L431)
The trend of a value

Member|Value|Description
:-----|----:|:----------
[StrongUp](UI.xml#L433)|1|Value grows strongly
[Up](UI.xml#L436)|2|Value grows
[Sideways](UI.xml#L439)|3|Value does not significantly grow or shrink
[Down](UI.xml#L442)|4|Value shrinks
[StrongDown](UI.xml#L445)|5|Value shrinks strongly

## <a name="TrendCalculationType"></a>[TrendCalculationType](UI.xml#L450)
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
[ReferenceValue](UI.xml#L464)|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L467)|Boolean|Calculate with a relative difference
[UpDifference](UI.xml#L470)|Decimal|Threshold for Up
[StrongUpDifference](UI.xml#L473)|Decimal|Threshold for StrongUp
[DownDifference](UI.xml#L476)|Decimal|Threshold for Down
[StrongDownDifference](UI.xml#L479)|Decimal|Threshold for StrongDown

## <a name="KPIType"></a>[KPIType](UI.xml#L491) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L493)|String|Optional identifier to reference this instance from an external context
[SelectionVariant](UI.xml#L498)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[DataPoint](UI.xml#L501)|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
[Detail](UI.xml#L504)|[KPIDetailType](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

## <a name="KPIDetailType"></a>[KPIDetailType](UI.xml#L508) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[DefaultPresentationVariant](UI.xml#L510)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
[AlternativePresentationVariants](UI.xml#L513)|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path

## <a name="ChartDefinitionType"></a>[ChartDefinitionType](UI.xml#L523)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L524)|String|Title of the chart
[Description](UI.xml#L528)|String|Short description
[ChartType](UI.xml#L532)|[ChartType](#ChartType)|Chart type
[Measures](UI.xml#L535)|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
[MeasureAttributes](UI.xml#L538)|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
[Dimensions](UI.xml#L543)|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
[DimensionAttributes](UI.xml#L546)|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
[Actions](UI.xml#L551)|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

## <a name="ChartType"></a>[ChartType](UI.xml#L556)


Member|Value|Description
:-----|----:|:----------
[Column](UI.xml#L557)|0|
[ColumnStacked](UI.xml#L558)|1|
[ColumnDual](UI.xml#L559)|2|
[ColumnStackedDual](UI.xml#L560)|3|
[ColumnStacked100](UI.xml#L561)|4|
[ColumnStackedDual100](UI.xml#L562)|5|
[Bar](UI.xml#L563)|6|
[BarStacked](UI.xml#L564)|7|
[BarDual](UI.xml#L565)|8|
[BarStackedDual](UI.xml#L566)|9|
[BarStacked100](UI.xml#L567)|10|
[BarStackedDual100](UI.xml#L568)|11|
[Area](UI.xml#L569)|12|
[AreaStacked](UI.xml#L570)|13|
[AreaStacked100](UI.xml#L571)|14|
[HorizontalArea](UI.xml#L572)|15|
[HorizontalAreaStacked](UI.xml#L573)|16|
[HorizontalAreaStacked100](UI.xml#L574)|17|
[Line](UI.xml#L575)|18|
[LineDual](UI.xml#L576)|19|
[Combination](UI.xml#L577)|20|
[CombinationStacked](UI.xml#L578)|21|
[CombinationDual](UI.xml#L579)|22|
[CombinationStackedDual](UI.xml#L580)|23|
[HorizontalCombinationStacked](UI.xml#L581)|24|
[Pie](UI.xml#L582)|25|
[Donut](UI.xml#L583)|26|
[Scatter](UI.xml#L584)|27|
[Bubble](UI.xml#L585)|28|
[Radar](UI.xml#L586)|29|
[HeatMap](UI.xml#L587)|30|
[TreeMap](UI.xml#L588)|31|
[Waterfall](UI.xml#L589)|32|
[Bullet](UI.xml#L590)|33|
[VerticalBullet](UI.xml#L591)|34|

## <a name="ChartDimensionAttributeType"></a>[ChartDimensionAttributeType](UI.xml#L595)


Property|Type|Description
:-------|:---|:----------
[Dimension](UI.xml#L596)|PropertyPath|
[Role](UI.xml#L597)|[ChartDimensionRoleType](#ChartDimensionRoleType)|

## <a name="ChartMeasureAttributeType"></a>[ChartMeasureAttributeType](UI.xml#L600)


Property|Type|Description
:-------|:---|:----------
[Measure](UI.xml#L601)|PropertyPath|
[Role](UI.xml#L602)|[ChartMeasureRoleType](#ChartMeasureRoleType)|
[DataPoint](UI.xml#L603)|AnnotationPath|Annotation path MUST end in UI.DataPoint and the DataPoint Value must be the same property as in Measure

## <a name="ChartDimensionRoleType"></a>[ChartDimensionRoleType](UI.xml#L609)


Member|Value|Description
:-----|----:|:----------
[Category](UI.xml#L610)|0|
[Series](UI.xml#L611)|1|

## <a name="ChartMeasureRoleType"></a>[ChartMeasureRoleType](UI.xml#L614)


Member|Value|Description
:-----|----:|:----------
[Axis1](UI.xml#L615)|0|
[Axis2](UI.xml#L616)|1|
[Axis3](UI.xml#L617)|2|

## <a name="Facet"></a>[*Facet*](UI.xml#L649)
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L651)|String|Facet label
[ID](UI.xml#L655)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

## <a name="CollectionFacet"></a>[CollectionFacet](UI.xml#L660): [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L651)|String|Facet label
[*ID*](UI.xml#L655)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Facets](UI.xml#L662)|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

## <a name="ReferenceFacet"></a>[ReferenceFacet](UI.xml#L667): [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L651)|String|Facet label
[*ID*](UI.xml#L655)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Target](UI.xml#L669)|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge

## <a name="ReferenceURLFacet"></a>[ReferenceURLFacet](UI.xml#L674): [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L651)|String|Facet label
[*ID*](UI.xml#L655)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Url](UI.xml#L676)|URL|URL of referenced information
[UrlContentType](UI.xml#L680)|MediaType|Media type of referenced information

## <a name="SelectionPresentationVariantType"></a>[SelectionPresentationVariantType](UI.xml#L693)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L694)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L699)|String|Name of the bundling variant
[SelectionVariant](UI.xml#L703)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[PresentationVariant](UI.xml#L706)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

## <a name="PresentationVariantType"></a>[PresentationVariantType](UI.xml#L716)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L717)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L720)|String|Name of the presentation variant
[MaxItems](UI.xml#L724)|Int32|Maximum number of items that should be included in the result
[SortOrder](UI.xml#L727)|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
[GroupBy](UI.xml#L731)|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with InitialExpansionLevel.
[TotalBy](UI.xml#L740)|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
[Total](UI.xml#L747)|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
[IncludeGrandTotal](UI.xml#L752)|Boolean|Result should include a grand total for the properties specified in Total
[InitialExpansionLevel](UI.xml#L755)|Int32|Initial number of levels to expand in a hierarchy defined for the queried collection. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
[Visualizations](UI.xml#L761)|\[AnnotationPath\]|Lists available visualization types. Currently supported types are UI.LineItem, UI.Chart, and UI.DataPoint. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different PresentationVariants. A reference to UI.Lineitem should always be part of collection (least common denominator for renderers). The first entry of the collection is the default visualization.
[RequestAtLeast](UI.xml#L771)|\[PropertyPath\]|Properties that should always be included in the result of the queried collection
[SelectionFields *(Experimental)*](UI.xml#L774)|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a UI.SelectionFields annotation via Path.

## <a name="SelectionVariantType"></a>[SelectionVariantType](UI.xml#L788)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L789)|String|May contain identifier to reference this instance from an external context
[Text](UI.xml#L794)|String|Name of the selection variant
[Parameters](UI.xml#L798)|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
[FilterExpression](UI.xml#L801)|String|Filter string for query part of URL, without '$filter ='
[SelectOptions](UI.xml#L806)|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>[*ParameterAbstract*](UI.xml#L813)
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

## <a name="Parameter"></a>[Parameter](UI.xml#L816): [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L818)|PropertyPath|Path to a key property of a parameter entity type
[PropertyValue](UI.xml#L821)|PrimitiveType|Value for the key property

## <a name="IntervalParameter"></a>[IntervalParameter](UI.xml#L825): [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
[PropertyNameFrom](UI.xml#L827)|PropertyPath|Path to the 'from' property of a parameter entity type
[PropertyValueFrom](UI.xml#L830)|PrimitiveType|Value for the 'from' property
[PropertyNameTo](UI.xml#L833)|PropertyPath|Path to the 'to' property of a parameter entity type
[PropertyValueTo](UI.xml#L836)|PrimitiveType|Value for the 'to' property

## <a name="SelectOptionType"></a>[SelectOptionType](UI.xml#L841)
List of value ranges for a single property

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L843)|PropertyPath|Path to the property
[Ranges](UI.xml#L846)|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

## <a name="SelectionRangeType"></a>[SelectionRangeType](UI.xml#L851)
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
[Sign](UI.xml#L855)|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
[Option](UI.xml#L858)|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
[Low](UI.xml#L861)|PrimitiveType|Single value or lower interval boundary
[High](UI.xml#L864)|PrimitiveType|Upper interval boundary

## <a name="SelectionRangeSignType"></a>[SelectionRangeSignType](UI.xml#L869)


Member|Value|Description
:-----|----:|:----------
[I](UI.xml#L870)|0|Inclusive
[E](UI.xml#L873)|1|Exclusive

## <a name="SelectionRangeOptionType"></a>[SelectionRangeOptionType](UI.xml#L878)
Comparison operator

Member|Value|Description
:-----|----:|:----------
[EQ](UI.xml#L880)|0|Equal to
[BT](UI.xml#L883)|1|Between
[CP](UI.xml#L886)|2|Contains pattern
[LE](UI.xml#L889)|3|Less than or equal to
[GE](UI.xml#L892)|4|Greater than or equal to
[NE](UI.xml#L895)|5|Not equal to
[NB](UI.xml#L898)|6|Not between
[NP](UI.xml#L901)|7|Does not contain pattern
[GT](UI.xml#L904)|8|Greater than
[LT](UI.xml#L907)|9|Less than

## <a name="TextArrangementType"></a>[TextArrangementType](UI.xml#L952)


Member|Value|Description
:-----|----:|:----------
[TextFirst](UI.xml#L953)|0|Text is first, followed by the code/ID (e.g. in parentheses)
[TextLast](UI.xml#L956)|1|Code/ID is first, followed by the text (e.g. separated by a dash)
[TextSeparate](UI.xml#L959)|2|Code/ID and text are represented separately
[TextOnly](UI.xml#L962)|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

## <a name="ImportanceType"></a>[ImportanceType](UI.xml#L978)


Member|Value|Description
:-----|----:|:----------
[High](UI.xml#L979)|0|High importance
[Medium](UI.xml#L982)|1|Medium importance
[Low](UI.xml#L985)|2|Low importance

## <a name="DataFieldAbstract"></a>[*DataFieldAbstract*](UI.xml#L998)


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
[Label](UI.xml#L999)|String|A short, human-readable text suitable for labels and captions in UIs
[Criticality](UI.xml#L1003)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[CriticalityRepresentation](UI.xml#L1006)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[IconUrl](UI.xml#L1009)|URL|Optional icon to decorate the value

## <a name="CriticalityRepresentationType"></a>[CriticalityRepresentationType](UI.xml#L1015)


Member|Value|Description
:-----|----:|:----------
[WithIcon](UI.xml#L1016)|0|Criticality is represented with an icon
[WithoutIcon](UI.xml#L1019)|1|Criticality is represented without icon, e.g. only via text color

## <a name="DataFieldForAnnotation"></a>[DataFieldForAnnotation](UI.xml#L1024): [DataFieldAbstract](#DataFieldAbstract)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1003)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1006)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1009)|URL|Optional icon to decorate the value
[Target](UI.xml#L1025)|AnnotationPath|Annotation path MUST end in Communication.Contact, Communication.Address, UI.DataPoint or UI.Chart

## <a name="DataFieldForActionAbstract"></a>[*DataFieldForActionAbstract*](UI.xml#L1031): [DataFieldAbstract](#DataFieldAbstract)
Abstract type to bundle DataFieldForAction and DataFieldForIntentBasedNavigation

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1003)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1006)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1009)|URL|Optional icon to decorate the value
[Inline](UI.xml#L1033)|Boolean|Action should be placed close to (or even inside) the visualized term
[Determining](UI.xml#L1036)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

## <a name="DataFieldForAction"></a>[DataFieldForAction](UI.xml#L1041): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The action is NOT tied to a data value (in contrast to DataFieldWithAction)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1003)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1006)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1009)|URL|Optional icon to decorate the value
[*Inline*](UI.xml#L1033)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1036)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[Action](UI.xml#L1043)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
[InvocationGrouping](UI.xml#L1046)|[OperationGroupingType](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

## <a name="OperationGroupingType"></a>[OperationGroupingType](UI.xml#L1050)


Member|Value|Description
:-----|----:|:----------
[Isolated](UI.xml#L1051)|0|
[ChangeSet](UI.xml#L1052)|1|

## <a name="DataFieldForIntentBasedNavigation"></a>[DataFieldForIntentBasedNavigation](UI.xml#L1055): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The navigation intent is NOT tied to a data value (in contrast to DataFieldWithIntentBasedNavigation), the data field represents a navigation trigger.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1003)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1006)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1009)|URL|Optional icon to decorate the value
[*Inline*](UI.xml#L1033)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1036)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[SemanticObject](UI.xml#L1058)|String|Name of the Semantic Object
[Action](UI.xml#L1061)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[RequiresContext](UI.xml#L1065)|Boolean|Determines whether a context needs to be passed to the target of this navigation.

## <a name="DataField"></a>[DataField](UI.xml#L1070): [DataFieldAbstract](#DataFieldAbstract)


**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1003)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1006)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1009)|URL|Optional icon to decorate the value
[Value](UI.xml#L1071)|PrimitiveType|Value of the data field value

## <a name="DataFieldWithAction"></a>[DataFieldWithAction](UI.xml#L1077): [DataField](#DataField)
The action is tied to a data value which could be render as a button or link that triggers the action. This is in contrast to DataFieldForAction which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1003)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1006)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1009)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1071)|PrimitiveType|Value of the data field value
[Action](UI.xml#L1080)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

## <a name="DataFieldWithIntentBasedNavigation"></a>[DataFieldWithIntentBasedNavigation](UI.xml#L1085): [DataField](#DataField)
The navigation intent is tied to a data value which should be rendered as a hyperlink. This is in contrast to DataFieldForIntentBasedNavigation which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1003)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1006)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1009)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1071)|PrimitiveType|Value of the data field value
[SemanticObject](UI.xml#L1088)|String|Name of the Semantic Object
[Action](UI.xml#L1091)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="DataFieldWithNavigationPath"></a>[DataFieldWithNavigationPath](UI.xml#L1097): [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1003)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1006)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1009)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1071)|PrimitiveType|Value of the data field value
[Target](UI.xml#L1098)|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

## <a name="DataFieldWithUrl"></a>[DataFieldWithUrl](UI.xml#L1105): [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1003)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1006)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1009)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1071)|PrimitiveType|Value of the data field value
[Url](UI.xml#L1106)|URL|Target of the hyperlink
[UrlContentType](UI.xml#L1110)|MediaType|Media type of the hyperlink target, e.g. `videp/mp4`
