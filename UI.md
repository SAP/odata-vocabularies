# UI Vocabulary
**Namespace: [com.sap.vocabularies.UI.v1](UI.xml)**

Terms for presenting data in user interfaces

Term|Type|Description
:---|:---|:----------
[HeaderInfo](UI.xml#L31)|[HeaderInfoType](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
[Identification](UI.xml#L62)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
[Badge](UI.xml#L67)|[BadgeType](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
[LineItem](UI.xml#L95)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
[StatusInfo](UI.xml#L100)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
[FieldGroup](UI.xml#L105)|[FieldGroupType](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
[GeoLocations](UI.xml#L135)|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
[GeoLocation](UI.xml#L139)|[GeoLocationType](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
[Contacts](UI.xml#L159)|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts<p>Each collection item MUST reference an annotation of a Communication.Contact</p>
[MediaResource](UI.xml#L165)|[MediaResourceType](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource
[DataPoint](UI.xml#L219)|[DataPointType](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
[KPI](UI.xml#L492) *(Experimental)*|[KPIType](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
[Chart](UI.xml#L527)|[ChartDefinitionType](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
[SelectionFields](UI.xml#L628)|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
[Facets](UI.xml#L636)|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
[HeaderFacets](UI.xml#L640)|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
[QuickViewFacets](UI.xml#L644)|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
[QuickCreateFacets](UI.xml#L648)|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
[FilterFacets](UI.xml#L652)|\[[ReferenceFacet](#ReferenceFacet)\]|<a name="FilterFacets"></a>Facets that reference UI.FieldGroup annotations to group filterable fields
[SelectionPresentationVariant](UI.xml#L694)|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
[PresentationVariant](UI.xml#L718)|[PresentationVariantType](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
[SelectionVariant](UI.xml#L790)|[SelectionVariantType](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
[ThingPerspective](UI.xml#L922)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>This term is a Thing Perspective
[IsSummary](UI.xml#L925)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
[PartOfPreview](UI.xml#L930)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This Facet and all included Facets are part of the Thing preview
[Map](UI.xml#L934)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
[Gallery](UI.xml#L938)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
[IsImageURL](UI.xml#L943)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image
[MultiLineText](UI.xml#L949)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties annotated with this annotation should be rendered as multi-line text (e.g. text area)
[TextArrangement](UI.xml#L955)|[TextArrangementType](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text<p>If used for a single property the Common.Text annotation is annotated</p>
[Importance](UI.xml#L982)|[ImportanceType](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
[Hidden](UI.xml#L997)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties or facets (see UI.Facet) annotated with this term will not be rendered if annotation evaluates to true
[HiddenFilter](UI.xml#L1001)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria

## <a name="HeaderInfoType"></a>[HeaderInfoType](UI.xml#L36)


Property|Type|Description
:-------|:---|:----------
[TypeName](UI.xml#L37)|String|Name of the main entity type
[TypeNamePlural](UI.xml#L41)|String|Plural form of the name of the main entity type
[Title](UI.xml#L45)|[DataField](#DataField)|Title, e.g. for overview pages
[Description](UI.xml#L48)|[DataField](#DataField)|Description, e.g. for overview pages
[ImageUrl](UI.xml#L51)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L56)|URL|Image URL for the entity type

## <a name="BadgeType"></a>[BadgeType](UI.xml#L71)


Property|Type|Description
:-------|:---|:----------
[HeadLine](UI.xml#L72)|[DataField](#DataField)|Headline
[Title](UI.xml#L75)|[DataField](#DataField)|Title
[ImageUrl](UI.xml#L78)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L83)|URL|Image URL for the entity type
[MainInfo](UI.xml#L87)|[DataField](#DataField)|Main information on the business card
[SecondaryInfo](UI.xml#L90)|[DataField](#DataField)|Additional information on the business card

## <a name="FieldGroupType"></a>[FieldGroupType](UI.xml#L109)


Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L110)|String|Label for the field group
[Data](UI.xml#L114)|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

## <a name="GeoLocationType"></a>[GeoLocationType](UI.xml#L143)
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
[Latitude](UI.xml#L145)|Double|Geographic latitude
[Longitude](UI.xml#L148)|Double|Geographic longitude
[Location](UI.xml#L151)|GeographyPoint|A point in a round-earth coordinate system
[Address](UI.xml#L154)|[AddressType](Communication.md#AddressType)|vCard-style address

## <a name="MediaResourceType"></a>[MediaResourceType](UI.xml#L169)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L170)|URL|URL of media resource
[ContentType](UI.xml#L174)|MediaType|Content type, such as application/pdf, video/x-flv, image/jpeg
[ByteSize](UI.xml#L178)|Int64|Resource size in bytes
[ChangedAt](UI.xml#L181)|DateTimeOffset|Date of last change
[Thumbnail](UI.xml#L184)|[ImageType](#ImageType)|Thumbnail image
[Title](UI.xml#L187)|[DataField](#DataField)|Resource title
[Description](UI.xml#L190)|[DataField](#DataField)|Resource description

## <a name="ImageType"></a>[ImageType](UI.xml#L194)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L195)|URL|URL of image
[Width](UI.xml#L199)|String|Width of image
[Height](UI.xml#L202)|String|Height of image

## <a name="DataPointType"></a>[DataPointType](UI.xml#L224)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L225)|String|Title of the data point
[Description](UI.xml#L229)|String|Short description
[LongDescription](UI.xml#L233)|String|Full description
[Value](UI.xml#L237)|PrimitiveType|Numeric value<p>               It could be annotated with either `UoM.ISOCurrency` or `UoM.Unit`.               Percentage values are annotated with `UoM.Unit = '%'`.               A renderer should take an optional `Common.Text` annotation into consideration.             </p>
[TargetValue](UI.xml#L247)|PrimitiveType|Target value
[ForecastValue](UI.xml#L250)|PrimitiveType|Forecast value
[MinimumValue](UI.xml#L253)|Decimal|Minimum value (for output rendering)
[MaximumValue](UI.xml#L256)|Decimal|Maximum value (for output rendering)
[ValueFormat](UI.xml#L259)|[NumberFormat](#NumberFormat)|Number format
[Visualization](UI.xml#L262)|[VisualizationType](#VisualizationType)|Preferred visualization
[SampleSize](UI.xml#L265)|PrimitiveType|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
[ReferencePeriod](UI.xml#L272)|[ReferencePeriod](#ReferencePeriod)|Reference period
[Criticality](UI.xml#L275)|[CriticalityType](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
[CriticalityRepresentation](UI.xml#L278) *(Experimental)*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[CriticalityCalculation](UI.xml#L282)|[CriticalityCalculationType](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
[Trend](UI.xml#L285)|[TrendType](#TrendType)|Service-calculated trend, alternative to TrendCalculation
[TrendCalculation](UI.xml#L288)|[TrendCalculationType](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
[Responsible](UI.xml#L291)|[ContactType](Communication.md#ContactType)|Contact person

## <a name="NumberFormat"></a>[NumberFormat](UI.xml#L296)
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
[ScaleFactor](UI.xml#L298)|Decimal|Factor to scale a value before visualization, e.g. 0.001 for K, 1e-6 for M
[NumberOfFractionalDigits](UI.xml#L301)|Byte|Number of fractional digits of the scaled value to be visualized

## <a name="VisualizationType"></a>[VisualizationType](UI.xml#L306)


Member|Value|Description
:-----|----:|:----------
[Number](UI.xml#L307)|0|Visualize as a number
[BulletChart](UI.xml#L310)|1|Visualize as bullet chart - requires TargetValue
[Progress](UI.xml#L313)|2|Visualize as progress indicator - requires TargetValue
[Rating](UI.xml#L316)|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
[Donut](UI.xml#L319)|4|Visualize as donut, optionally with missing segment - requires TargetValue

## <a name="ReferencePeriod"></a>[ReferencePeriod](UI.xml#L324)
Reference period

Property|Type|Description
:-------|:---|:----------
[Description](UI.xml#L326)|String|Short description of the reference period
[Start](UI.xml#L330)|DateTimeOffset|Start of the reference period
[End](UI.xml#L333)|DateTimeOffset|End of the reference period

## <a name="CriticalityType"></a>[CriticalityType](UI.xml#L338)
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
[Neutral](UI.xml#L341)|0|Neutral / blue status - inactive - open - in progress
[Negative](UI.xml#L344)|1|Negative / red status - attention - overload - alert
[Critical](UI.xml#L347)|2|Critical / orange status - warning
[Positive](UI.xml#L350)|3|Positive / green status - completed - available - on track - acceptable

## <a name="CriticalityCalculationType"></a>[CriticalityCalculationType](UI.xml#L355): [CriticalityThresholdsType](#CriticalityThresholdsType)
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
[*AcceptanceRangeLowValue*](UI.xml#L398)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L401)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L404)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L407)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L410)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L413)|PrimitiveType|Highest value that is considered critical
[ImprovementDirection](UI.xml#L385)|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
[ConstantThresholds](UI.xml#L388) *(Experimental)*|\[[LevelThresholdsType](#LevelThresholdsType)\]|List of thresholds depending on the aggregation level as a set of constant values<p>Constant thresholds shall only be used in order to refine constant values given for the data point overall (aggregation level with empty collection of property paths), but not if the thresholds are based on other measure elements.</p>

## <a name="CriticalityThresholdsType"></a>[CriticalityThresholdsType](UI.xml#L396)
Thresholds for calculating the criticality of a value

**Derived Types:**
- [CriticalityCalculationType](#CriticalityCalculationType)
- [LevelThresholdsType](#LevelThresholdsType)

Property|Type|Description
:-------|:---|:----------
[AcceptanceRangeLowValue](UI.xml#L398)|PrimitiveType|Lowest value that is considered positive
[AcceptanceRangeHighValue](UI.xml#L401)|PrimitiveType|Highest value that is considered positive
[ToleranceRangeLowValue](UI.xml#L404)|PrimitiveType|Lowest value that is considered neutral
[ToleranceRangeHighValue](UI.xml#L407)|PrimitiveType|Highest value that is considered neutral
[DeviationRangeLowValue](UI.xml#L410)|PrimitiveType|Lowest value that is considered critical
[DeviationRangeHighValue](UI.xml#L413)|PrimitiveType|Highest value that is considered critical

## <a name="ImprovementDirectionType"></a>[ImprovementDirectionType](UI.xml#L418)
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
[Minimize](UI.xml#L420)|1|Lower is better
[Target](UI.xml#L423)|2|Closer to the target is better
[Maximize](UI.xml#L426)|3|Higher is better

## <a name="LevelThresholdsType"></a>[LevelThresholdsType](UI.xml#L431): [CriticalityThresholdsType](#CriticalityThresholdsType) *(Experimental)*
Thresholds for an aggregation level

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](UI.xml#L398)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L401)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L404)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L407)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L410)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L413)|PrimitiveType|Highest value that is considered critical
[AggregationLevel](UI.xml#L434)|\[PropertyPath\]|Describes in which direction the value improves

## <a name="TrendType"></a>[TrendType](UI.xml#L439)
The trend of a value

Member|Value|Description
:-----|----:|:----------
[StrongUp](UI.xml#L441)|1|Value grows strongly
[Up](UI.xml#L444)|2|Value grows
[Sideways](UI.xml#L447)|3|Value does not significantly grow or shrink
[Down](UI.xml#L450)|4|Value shrinks
[StrongDown](UI.xml#L453)|5|Value shrinks strongly

## <a name="TrendCalculationType"></a>[TrendCalculationType](UI.xml#L458)
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
[ReferenceValue](UI.xml#L472)|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L475)|Boolean|Calculate with a relative difference
[UpDifference](UI.xml#L478)|Decimal|Threshold for Up
[StrongUpDifference](UI.xml#L481)|Decimal|Threshold for StrongUp
[DownDifference](UI.xml#L484)|Decimal|Threshold for Down
[StrongDownDifference](UI.xml#L487)|Decimal|Threshold for StrongDown

## <a name="KPIType"></a>[KPIType](UI.xml#L499) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L501)|String|Optional identifier to reference this instance from an external context
[SelectionVariant](UI.xml#L506)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[DataPoint](UI.xml#L509)|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
[Detail](UI.xml#L512)|[KPIDetailType](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

## <a name="KPIDetailType"></a>[KPIDetailType](UI.xml#L516) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[DefaultPresentationVariant](UI.xml#L518)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
[AlternativePresentationVariants](UI.xml#L521)|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path

## <a name="ChartDefinitionType"></a>[ChartDefinitionType](UI.xml#L531)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L532)|String|Title of the chart
[Description](UI.xml#L536)|String|Short description
[ChartType](UI.xml#L540)|[ChartType](#ChartType)|Chart type
[Measures](UI.xml#L543)|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
[MeasureAttributes](UI.xml#L546)|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
[Dimensions](UI.xml#L551)|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
[DimensionAttributes](UI.xml#L554)|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
[Actions](UI.xml#L559)|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

## <a name="ChartType"></a>[ChartType](UI.xml#L564)


Member|Value|Description
:-----|----:|:----------
[Column](UI.xml#L565)|0|
[ColumnStacked](UI.xml#L566)|1|
[ColumnDual](UI.xml#L567)|2|
[ColumnStackedDual](UI.xml#L568)|3|
[ColumnStacked100](UI.xml#L569)|4|
[ColumnStackedDual100](UI.xml#L570)|5|
[Bar](UI.xml#L571)|6|
[BarStacked](UI.xml#L572)|7|
[BarDual](UI.xml#L573)|8|
[BarStackedDual](UI.xml#L574)|9|
[BarStacked100](UI.xml#L575)|10|
[BarStackedDual100](UI.xml#L576)|11|
[Area](UI.xml#L577)|12|
[AreaStacked](UI.xml#L578)|13|
[AreaStacked100](UI.xml#L579)|14|
[HorizontalArea](UI.xml#L580)|15|
[HorizontalAreaStacked](UI.xml#L581)|16|
[HorizontalAreaStacked100](UI.xml#L582)|17|
[Line](UI.xml#L583)|18|
[LineDual](UI.xml#L584)|19|
[Combination](UI.xml#L585)|20|
[CombinationStacked](UI.xml#L586)|21|
[CombinationDual](UI.xml#L587)|22|
[CombinationStackedDual](UI.xml#L588)|23|
[HorizontalCombinationStacked](UI.xml#L589)|24|
[Pie](UI.xml#L590)|25|
[Donut](UI.xml#L591)|26|
[Scatter](UI.xml#L592)|27|
[Bubble](UI.xml#L593)|28|
[Radar](UI.xml#L594)|29|
[HeatMap](UI.xml#L595)|30|
[TreeMap](UI.xml#L596)|31|
[Waterfall](UI.xml#L597)|32|
[Bullet](UI.xml#L598)|33|
[VerticalBullet](UI.xml#L599)|34|

## <a name="ChartDimensionAttributeType"></a>[ChartDimensionAttributeType](UI.xml#L603)


Property|Type|Description
:-------|:---|:----------
[Dimension](UI.xml#L604)|PropertyPath|
[Role](UI.xml#L605)|[ChartDimensionRoleType](#ChartDimensionRoleType)|

## <a name="ChartMeasureAttributeType"></a>[ChartMeasureAttributeType](UI.xml#L608)


Property|Type|Description
:-------|:---|:----------
[Measure](UI.xml#L609)|PropertyPath|
[Role](UI.xml#L610)|[ChartMeasureRoleType](#ChartMeasureRoleType)|
[DataPoint](UI.xml#L611)|AnnotationPath|Annotation path MUST end in UI.DataPoint and the DataPoint Value must be the same property as in Measure

## <a name="ChartDimensionRoleType"></a>[ChartDimensionRoleType](UI.xml#L617)


Member|Value|Description
:-----|----:|:----------
[Category](UI.xml#L618)|0|
[Series](UI.xml#L619)|1|

## <a name="ChartMeasureRoleType"></a>[ChartMeasureRoleType](UI.xml#L622)


Member|Value|Description
:-----|----:|:----------
[Axis1](UI.xml#L623)|0|
[Axis2](UI.xml#L624)|1|
[Axis3](UI.xml#L625)|2|

## <a name="Facet"></a>[*Facet*](UI.xml#L656)
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L658)|String|Facet label
[ID](UI.xml#L662)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

## <a name="CollectionFacet"></a>[CollectionFacet](UI.xml#L667): [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L658)|String|Facet label
[*ID*](UI.xml#L662)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Facets](UI.xml#L669)|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

## <a name="ReferenceFacet"></a>[ReferenceFacet](UI.xml#L674): [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L658)|String|Facet label
[*ID*](UI.xml#L662)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Target](UI.xml#L676)|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge

## <a name="ReferenceURLFacet"></a>[ReferenceURLFacet](UI.xml#L681): [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L658)|String|Facet label
[*ID*](UI.xml#L662)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Url](UI.xml#L683)|URL|URL of referenced information
[UrlContentType](UI.xml#L687)|MediaType|Media type of referenced information

## <a name="SelectionPresentationVariantType"></a>[SelectionPresentationVariantType](UI.xml#L700)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L701)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L706)|String|Name of the bundling variant
[SelectionVariant](UI.xml#L710)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[PresentationVariant](UI.xml#L713)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

## <a name="PresentationVariantType"></a>[PresentationVariantType](UI.xml#L723)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L724)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L727)|String|Name of the presentation variant
[MaxItems](UI.xml#L731)|Int32|Maximum number of items that should be included in the result
[SortOrder](UI.xml#L734)|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
[GroupBy](UI.xml#L738)|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with InitialExpansionLevel.
[TotalBy](UI.xml#L747)|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
[Total](UI.xml#L754)|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
[IncludeGrandTotal](UI.xml#L759)|Boolean|Result should include a grand total for the properties specified in Total
[InitialExpansionLevel](UI.xml#L762)|Int32|Initial number of levels to expand in a hierarchy defined for the queried collection. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
[Visualizations](UI.xml#L768)|\[AnnotationPath\]|Lists available visualization types. Currently supported types are UI.LineItem, UI.Chart, and UI.DataPoint. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different PresentationVariants. A reference to UI.Lineitem should always be part of collection (least common denominator for renderers). The first entry of the collection is the default visualization.
[RequestAtLeast](UI.xml#L778)|\[PropertyPath\]|Properties that should always be included in the result of the queried collection
[SelectionFields](UI.xml#L781) *(Experimental)*|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a UI.SelectionFields annotation via Path.

## <a name="SelectionVariantType"></a>[SelectionVariantType](UI.xml#L795)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L796)|String|May contain identifier to reference this instance from an external context
[Text](UI.xml#L801)|String|Name of the selection variant
[Parameters](UI.xml#L805)|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
[FilterExpression](UI.xml#L808)|String|Filter string for query part of URL, without '$filter ='
[SelectOptions](UI.xml#L813)|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>[*ParameterAbstract*](UI.xml#L820)
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

## <a name="Parameter"></a>[Parameter](UI.xml#L823): [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L825)|PropertyPath|Path to a key property of a parameter entity type
[PropertyValue](UI.xml#L828)|PrimitiveType|Value for the key property

## <a name="IntervalParameter"></a>[IntervalParameter](UI.xml#L832): [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
[PropertyNameFrom](UI.xml#L834)|PropertyPath|Path to the 'from' property of a parameter entity type
[PropertyValueFrom](UI.xml#L837)|PrimitiveType|Value for the 'from' property
[PropertyNameTo](UI.xml#L840)|PropertyPath|Path to the 'to' property of a parameter entity type
[PropertyValueTo](UI.xml#L843)|PrimitiveType|Value for the 'to' property

## <a name="SelectOptionType"></a>[SelectOptionType](UI.xml#L848)
List of value ranges for a single property

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L850)|PropertyPath|Path to the property
[Ranges](UI.xml#L853)|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

## <a name="SelectionRangeType"></a>[SelectionRangeType](UI.xml#L858)
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
[Sign](UI.xml#L862)|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
[Option](UI.xml#L865)|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
[Low](UI.xml#L868)|PrimitiveType|Single value or lower interval boundary
[High](UI.xml#L871)|PrimitiveType|Upper interval boundary

## <a name="SelectionRangeSignType"></a>[SelectionRangeSignType](UI.xml#L876)


Member|Value|Description
:-----|----:|:----------
[I](UI.xml#L877)|0|Inclusive
[E](UI.xml#L880)|1|Exclusive

## <a name="SelectionRangeOptionType"></a>[SelectionRangeOptionType](UI.xml#L885)
Comparison operator

Member|Value|Description
:-----|----:|:----------
[EQ](UI.xml#L887)|0|Equal to
[BT](UI.xml#L890)|1|Between
[CP](UI.xml#L893)|2|Contains pattern
[LE](UI.xml#L896)|3|Less than or equal to
[GE](UI.xml#L899)|4|Greater than or equal to
[NE](UI.xml#L902)|5|Not equal to
[NB](UI.xml#L905)|6|Not between
[NP](UI.xml#L908)|7|Does not contain pattern
[GT](UI.xml#L911)|8|Greater than
[LT](UI.xml#L914)|9|Less than

## <a name="TextArrangementType"></a>[TextArrangementType](UI.xml#L959)


Member|Value|Description
:-----|----:|:----------
[TextFirst](UI.xml#L960)|0|Text is first, followed by the code/ID (e.g. in parentheses)
[TextLast](UI.xml#L963)|1|Code/ID is first, followed by the text (e.g. separated by a dash)
[TextSeparate](UI.xml#L966)|2|Code/ID and text are represented separately
[TextOnly](UI.xml#L969)|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

## <a name="ImportanceType"></a>[ImportanceType](UI.xml#L985)


Member|Value|Description
:-----|----:|:----------
[High](UI.xml#L986)|0|High importance
[Medium](UI.xml#L989)|1|Medium importance
[Low](UI.xml#L992)|2|Low importance

## <a name="DataFieldAbstract"></a>[*DataFieldAbstract*](UI.xml#L1005)


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
[Label](UI.xml#L1006)|String|A short, human-readable text suitable for labels and captions in UIs
[Criticality](UI.xml#L1010)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[CriticalityRepresentation](UI.xml#L1013)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[IconUrl](UI.xml#L1016)|URL|Optional icon to decorate the value

## <a name="CriticalityRepresentationType"></a>[CriticalityRepresentationType](UI.xml#L1022)


Member|Value|Description
:-----|----:|:----------
[WithIcon](UI.xml#L1023)|0|Criticality is represented with an icon
[WithoutIcon](UI.xml#L1026)|1|Criticality is represented without icon, e.g. only via text color

## <a name="DataFieldForAnnotation"></a>[DataFieldForAnnotation](UI.xml#L1031): [DataFieldAbstract](#DataFieldAbstract)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1006)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1010)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1013)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1016)|URL|Optional icon to decorate the value
[Target](UI.xml#L1032)|AnnotationPath|Annotation path MUST end in Communication.Contact, Communication.Address, UI.DataPoint or UI.Chart

## <a name="DataFieldForActionAbstract"></a>[*DataFieldForActionAbstract*](UI.xml#L1038): [DataFieldAbstract](#DataFieldAbstract)
Abstract type to bundle DataFieldForAction and DataFieldForIntentBasedNavigation

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1006)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1010)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1013)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1016)|URL|Optional icon to decorate the value
[Inline](UI.xml#L1040)|Boolean|Action should be placed close to (or even inside) the visualized term
[Determining](UI.xml#L1043)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

## <a name="DataFieldForAction"></a>[DataFieldForAction](UI.xml#L1048): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The action is NOT tied to a data value (in contrast to DataFieldWithAction)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1006)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1010)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1013)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1016)|URL|Optional icon to decorate the value
[*Inline*](UI.xml#L1040)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1043)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[Action](UI.xml#L1050)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
[InvocationGrouping](UI.xml#L1053)|[OperationGroupingType](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

## <a name="OperationGroupingType"></a>[OperationGroupingType](UI.xml#L1057)


Member|Value|Description
:-----|----:|:----------
[Isolated](UI.xml#L1058)|0|
[ChangeSet](UI.xml#L1059)|1|

## <a name="DataFieldForIntentBasedNavigation"></a>[DataFieldForIntentBasedNavigation](UI.xml#L1062): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The navigation intent is NOT tied to a data value (in contrast to DataFieldWithIntentBasedNavigation), the data field represents a navigation trigger.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1006)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1010)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1013)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1016)|URL|Optional icon to decorate the value
[*Inline*](UI.xml#L1040)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1043)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[SemanticObject](UI.xml#L1065)|String|Name of the Semantic Object
[Action](UI.xml#L1068)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[RequiresContext](UI.xml#L1072)|Boolean|Determines whether a context needs to be passed to the target of this navigation.

## <a name="DataField"></a>[DataField](UI.xml#L1077): [DataFieldAbstract](#DataFieldAbstract)


**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1006)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1010)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1013)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1016)|URL|Optional icon to decorate the value
[Value](UI.xml#L1078)|PrimitiveType|Value of the data field value

## <a name="DataFieldWithAction"></a>[DataFieldWithAction](UI.xml#L1084): [DataField](#DataField)
The action is tied to a data value which could be render as a button or link that triggers the action. This is in contrast to DataFieldForAction which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1006)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1010)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1013)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1016)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1078)|PrimitiveType|Value of the data field value
[Action](UI.xml#L1087)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

## <a name="DataFieldWithIntentBasedNavigation"></a>[DataFieldWithIntentBasedNavigation](UI.xml#L1092): [DataField](#DataField)
The navigation intent is tied to a data value which should be rendered as a hyperlink. This is in contrast to DataFieldForIntentBasedNavigation which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1006)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1010)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1013)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1016)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1078)|PrimitiveType|Value of the data field value
[SemanticObject](UI.xml#L1095)|String|Name of the Semantic Object
[Action](UI.xml#L1098)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="DataFieldWithNavigationPath"></a>[DataFieldWithNavigationPath](UI.xml#L1104): [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1006)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1010)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1013)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1016)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1078)|PrimitiveType|Value of the data field value
[Target](UI.xml#L1105)|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

## <a name="DataFieldWithUrl"></a>[DataFieldWithUrl](UI.xml#L1112): [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1006)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1010)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1013)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1016)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1078)|PrimitiveType|Value of the data field value
[Url](UI.xml#L1113)|URL|Target of the hyperlink
[UrlContentType](UI.xml#L1117)|MediaType|Media type of the hyperlink target, e.g. `videp/mp4`
