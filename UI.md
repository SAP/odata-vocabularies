# UI Vocabulary
**Namespace: [com.sap.vocabularies.UI.v1](UI.xml)**

Terms for presenting data in user interfaces


## Terms

Term|Type|Description
:---|:---|:----------
[HeaderInfo](UI.xml#L38)|[HeaderInfoType](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
[Identification](UI.xml#L73)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
[Badge](UI.xml#L78)|[BadgeType](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
[LineItem](UI.xml#L106)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
[StatusInfo](UI.xml#L111)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
[FieldGroup](UI.xml#L116)|[FieldGroupType](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
[ConnectedFields](UI.xml#L130) *(Experimental)*|[ConnectedFieldsType](#ConnectedFieldsType)|<a name="ConnectedFields"></a>Group of semantically connected fields with a representation template and an optional label
[GeoLocations](UI.xml#L203)|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
[GeoLocation](UI.xml#L207)|[GeoLocationType](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
[Contacts](UI.xml#L227)|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts<p>Each collection item MUST reference an annotation of a Communication.Contact</p>
[MediaResource](UI.xml#L234)|[MediaResourceType](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource
[DataPoint](UI.xml#L288)|[DataPointType](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
[KPI](UI.xml#L580)|[KPIType](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
[Chart](UI.xml#L629)|[ChartDefinitionType](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
[ValueCriticality](UI.xml#L833) *(Experimental)*|\[[ValueCriticalityType](#ValueCriticalityType)\]|<a name="ValueCriticality"></a>Assign criticalities to primitive values. This information can be used for semantic coloring.
[CriticalityLabels](UI.xml#L846) *(Experimental)*|\[[CriticalityLabelType](#CriticalityLabelType)\]|<a name="CriticalityLabels"></a>Assign labels to criticalities. This information can be used for semantic coloring. A label for a criticality is required, if more than one value of the annotated property has been assigned to the same criticality. There must be no more than one label per criticality.
[SelectionFields](UI.xml#L868)|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
[Facets](UI.xml#L877)|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
[HeaderFacets](UI.xml#L881)|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
[QuickViewFacets](UI.xml#L885)|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
[QuickCreateFacets](UI.xml#L889)|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
[FilterFacets](UI.xml#L893)|\[[ReferenceFacet](#ReferenceFacet)\]|<a name="FilterFacets"></a>Facets that reference UI.FieldGroup annotations to group filterable fields
[SelectionPresentationVariant](UI.xml#L957)|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
[PresentationVariant](UI.xml#L983)|[PresentationVariantType](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
[SelectionVariant](UI.xml#L1057)|[SelectionVariantType](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
[ThingPerspective](UI.xml#L1189)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>The annotated term is a Thing Perspective
[IsSummary](UI.xml#L1192)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
[PartOfPreview](UI.xml#L1197)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This Facet and all included Facets are part of the Thing preview
[Map](UI.xml#L1201)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
[Gallery](UI.xml#L1206)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
[IsImageURL](UI.xml#L1211)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image
[MultiLineText](UI.xml#L1217)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties annotated with this annotation should be rendered as multi-line text (e.g. text area)
[TextArrangement](UI.xml#L1223)|[TextArrangementType](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text<p>If used for a single property the Common.Text annotation is annotated</p>
[Importance](UI.xml#L1250)|[ImportanceType](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
[Hidden](UI.xml#L1265)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties or facets (see UI.Facet) annotated with this term will not be rendered if the annotation evaluates to true.<p>Hidden properties usually carry technical information that is used for application control and is of no direct interest to end users. The annotation value may be an expression to dynamically hide or render the annotated feature.</p>
[HiddenFilter](UI.xml#L1272)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria if the annotation evaluates to true.<p>Properties annotated with `HiddenFilter` are intended as parts of a `$filter` expression that cannot be directly influenced by end users. The properties will be rendered in all other places, e.g. table columns or form fields. This is in contrast to properties annotated with [`UI.Hidden`](#Hidden) that are not rendered at all.</p>
[DataFieldDefault](UI.xml#L1279) *(Experimental)*|[DataFieldAbstract](#DataFieldAbstract)|<a name="DataFieldDefault"></a>Default representation of a property as a datafield, e.g. when the property is added as a table column or form field via personalization<p>Only concrete subtypes of DataFieldAbstract can be used for a DataFieldDefault. For type `DataField` and its subtypes the annotation target SHOULD be the same property that is referenced via a path expression in the `Value` of the datafield.</p>
[Criticality](UI.xml#L1425)|[CriticalityType](#CriticalityType)|<a name="Criticality"></a>Service-calculated criticality, alternative to UI.CriticalityCalculation
[CriticalityCalculation](UI.xml#L1429)|[CriticalityCalculationType](#CriticalityCalculationType)|<a name="CriticalityCalculation"></a>Parameters for client-calculated criticality, alternative to UI.Criticality
[OrderBy](UI.xml#L1433) *(Experimental)*|PropertyPath|<a name="OrderBy"></a>Sort by the referenced property instead of by the annotated property<p>Example: annotated property `SizeCode` has string values XS, S, M, L, XL, referenced property SizeOrder has numeric values -2, -1, 0, 1, 2. Numeric ordering by SizeOrder will be more understandable than lexicographic ordering by SizeCode.</p>
[RecommendationState](UI.xml#L1441) *(Experimental)*|[RecommendationStateType](#RecommendationStateType)|<a name="RecommendationState"></a>Indicates whether a field contains or has a recommended value<p>Intelligent systems can help users by recommending input the user may "prefer".</p>
[RecommendationList](UI.xml#L1473) *(Experimental)*|[RecommendationListType](#RecommendationListType)|<a name="RecommendationList"></a>Specifies how to get a list of recommended values for a property or parameter<p>Intelligent systems can help users by recommending input the user may "prefer".</p>

## <a name="HeaderInfoType"></a>[HeaderInfoType](UI.xml#L43)


Property|Type|Description
:-------|:---|:----------
[TypeName](UI.xml#L44)|String|Name of the main entity type
[TypeNamePlural](UI.xml#L48)|String|Plural form of the name of the main entity type
[Title](UI.xml#L52)|[DataField](#DataField)|Title, e.g. for overview pages
[Description](UI.xml#L55)|[DataField](#DataField)|Description, e.g. for overview pages
[ImageUrl](UI.xml#L58)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L63)|URL|Image URL for the entity type
[Initials](UI.xml#L67) *(Experimental)*|String|Latin letters to be used in case no ImageUrl or TypeImageUrl is present

## <a name="BadgeType"></a>[BadgeType](UI.xml#L82)


Property|Type|Description
:-------|:---|:----------
[HeadLine](UI.xml#L83)|[DataField](#DataField)|Headline
[Title](UI.xml#L86)|[DataField](#DataField)|Title
[ImageUrl](UI.xml#L89)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L94)|URL|Image URL for the entity type
[MainInfo](UI.xml#L98)|[DataField](#DataField)|Main information on the business card
[SecondaryInfo](UI.xml#L101)|[DataField](#DataField)|Additional information on the business card

## <a name="FieldGroupType"></a>[FieldGroupType](UI.xml#L120)


Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L121)|String|Label for the field group
[Data](UI.xml#L125)|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

## <a name="ConnectedFieldsType"></a>[ConnectedFieldsType](UI.xml#L161) *(Experimental)*
Group of semantically connected fields with a representation template and an optional label

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L165)|String|Label for the connected fields
[Template](UI.xml#L169)|String|Template for representing the connected fields<p>Template variables are identifiers enclosed in curly braces, e.g. `{MaterialName} - {MaterialClassName}`. The `Data` collection assigns values to the template variables.</p>
[Data](UI.xml#L175)|[Dictionary](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Dictionary)|Dictionary of template variables<p>Each template variable used in `Template` must be assigned a value here. The value must be of type [`UI.DataFieldAbstract`](#DataFieldAbstract)</p>

## <a name="GeoLocationType"></a>[GeoLocationType](UI.xml#L211)
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
[Latitude](UI.xml#L213)|Double|Geographic latitude
[Longitude](UI.xml#L216)|Double|Geographic longitude
[Location](UI.xml#L219)|GeographyPoint|A point in a round-earth coordinate system
[Address](UI.xml#L222)|[AddressType](Communication.md#AddressType)|vCard-style address

## <a name="MediaResourceType"></a>[MediaResourceType](UI.xml#L238)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L239)|URL|URL of media resource
[ContentType](UI.xml#L243)|MediaType|Content type, such as application/pdf, video/x-flv, image/jpeg
[ByteSize](UI.xml#L247)|Int64|Resource size in bytes
[ChangedAt](UI.xml#L250)|DateTimeOffset|Date of last change
[Thumbnail](UI.xml#L253)|[ImageType](#ImageType)|Thumbnail image
[Title](UI.xml#L256)|[DataField](#DataField)|Resource title
[Description](UI.xml#L259)|[DataField](#DataField)|Resource description

## <a name="ImageType"></a>[ImageType](UI.xml#L263)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L264)|URL|URL of image
[Width](UI.xml#L268)|String|Width of image
[Height](UI.xml#L271)|String|Height of image

## <a name="DataPointType"></a>[DataPointType](UI.xml#L293)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L294)|String|Title of the data point
[Description](UI.xml#L298)|String|Short description
[LongDescription](UI.xml#L302)|String|Full description
[Value](UI.xml#L306)|PrimitiveType|Numeric value<p> The value is typically provided via a `Path` construct. The path MUST lead to a direct property of the same entity type or a property of a complex property (recursively) of that entity type, navigation segments are not allowed.<br/>It could be annotated with either `UoM.ISOCurrency` or `UoM.Unit`. Percentage values are annotated with `UoM.Unit = '%'`. A renderer should take an optional `Common.Text` annotation into consideration.             </p>
[TargetValue](UI.xml#L318)|PrimitiveType|Target value
[ForecastValue](UI.xml#L321)|PrimitiveType|Forecast value
[MinimumValue](UI.xml#L324)|Decimal|Minimum value (for output rendering)
[MaximumValue](UI.xml#L327)|Decimal|Maximum value (for output rendering)
[ValueFormat](UI.xml#L330)|[NumberFormat](#NumberFormat)|Number format
[Visualization](UI.xml#L333)|[VisualizationType](#VisualizationType)|Preferred visualization
[SampleSize](UI.xml#L336)|PrimitiveType|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
[ReferencePeriod](UI.xml#L343)|[ReferencePeriod](#ReferencePeriod)|Reference period
[Criticality](UI.xml#L346)|[CriticalityType](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
[CriticalityRepresentation](UI.xml#L349) *(Experimental)*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[CriticalityCalculation](UI.xml#L353)|[CriticalityCalculationType](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
[Trend](UI.xml#L356)|[TrendType](#TrendType)|Service-calculated trend, alternative to TrendCalculation
[TrendCalculation](UI.xml#L359)|[TrendCalculationType](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
[Responsible](UI.xml#L362)|[ContactType](Communication.md#ContactType)|Contact person

## <a name="NumberFormat"></a>[NumberFormat](UI.xml#L367)
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
[ScaleFactor](UI.xml#L369)|Decimal|Display value in *ScaleFactor* units, e.g. 1000 for k (kilo), 1e6 for M (Mega)
[NumberOfFractionalDigits](UI.xml#L373)|Byte|Number of fractional digits of the scaled value to be visualized

## <a name="VisualizationType"></a>[VisualizationType](UI.xml#L378)


Member|Value|Description
:-----|----:|:----------
[Number](UI.xml#L379)|0|Visualize as a number
[BulletChart](UI.xml#L382)|1|Visualize as bullet chart - requires TargetValue
[Progress](UI.xml#L385)|2|Visualize as progress indicator - requires TargetValue
[Rating](UI.xml#L388)|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
[Donut](UI.xml#L392)|4|Visualize as donut, optionally with missing segment - requires TargetValue
[DeltaBulletChart](UI.xml#L395)|5|Visualize as delta bullet chart - requires TargetValue

## <a name="ReferencePeriod"></a>[ReferencePeriod](UI.xml#L400)
Reference period

Property|Type|Description
:-------|:---|:----------
[Description](UI.xml#L402)|String|Short description of the reference period
[Start](UI.xml#L406)|DateTimeOffset|Start of the reference period
[End](UI.xml#L409)|DateTimeOffset|End of the reference period

## <a name="CriticalityType"></a>[CriticalityType](UI.xml#L414)
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
[VeryNegative](UI.xml#L417) *(Experimental)*|-1|Very negative / dark-red status - risk - out of stock - late
[Neutral](UI.xml#L421)|0|Neutral / grey status - inactive - open - in progress
[Negative](UI.xml#L424)|1|Negative / red status - attention - overload - alert
[Critical](UI.xml#L427)|2|Critical / orange status - warning
[Positive](UI.xml#L430)|3|Positive / green status - completed - available - on track - acceptable
[VeryPositive](UI.xml#L433) *(Experimental)*|4|Very positive / blue status - above max stock - excess

## <a name="CriticalityCalculationType"></a>[CriticalityCalculationType](UI.xml#L439): [CriticalityThresholdsType](#CriticalityThresholdsType)
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
[*AcceptanceRangeLowValue*](UI.xml#L484)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L487)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L490)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L493)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L496)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L499)|PrimitiveType|Highest value that is considered critical
[ImprovementDirection](UI.xml#L470)|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
[ConstantThresholds](UI.xml#L473) *(Experimental)*|\[[LevelThresholdsType](#LevelThresholdsType)\]|List of thresholds depending on the aggregation level as a set of constant values<p>Constant thresholds shall only be used in order to refine constant values given for the data point overall (aggregation level with empty collection of property paths), but not if the thresholds are based on other measure elements.</p>

## <a name="CriticalityThresholdsType"></a>[CriticalityThresholdsType](UI.xml#L482)
Thresholds for calculating the criticality of a value

**Derived Types:**
- [CriticalityCalculationType](#CriticalityCalculationType)
- [LevelThresholdsType](#LevelThresholdsType)

Property|Type|Description
:-------|:---|:----------
[AcceptanceRangeLowValue](UI.xml#L484)|PrimitiveType|Lowest value that is considered positive
[AcceptanceRangeHighValue](UI.xml#L487)|PrimitiveType|Highest value that is considered positive
[ToleranceRangeLowValue](UI.xml#L490)|PrimitiveType|Lowest value that is considered neutral
[ToleranceRangeHighValue](UI.xml#L493)|PrimitiveType|Highest value that is considered neutral
[DeviationRangeLowValue](UI.xml#L496)|PrimitiveType|Lowest value that is considered critical
[DeviationRangeHighValue](UI.xml#L499)|PrimitiveType|Highest value that is considered critical

## <a name="ImprovementDirectionType"></a>[ImprovementDirectionType](UI.xml#L504)
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
[Minimize](UI.xml#L506)|1|Lower is better
[Target](UI.xml#L509)|2|Closer to the target is better
[Maximize](UI.xml#L512)|3|Higher is better

## <a name="LevelThresholdsType"></a>[LevelThresholdsType](UI.xml#L517): [CriticalityThresholdsType](#CriticalityThresholdsType) *(Experimental)*
Thresholds for an aggregation level

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](UI.xml#L484)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L487)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L490)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L493)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L496)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L499)|PrimitiveType|Highest value that is considered critical
[AggregationLevel](UI.xml#L520)|\[PropertyPath\]|An unordered tuple of dimensions, i.e. properties which are intended to be used for grouping in aggregating requests. In analytical UIs, e.g. an analytical chart, the aggregation level typically corresponds to the visible dimensions.

## <a name="TrendType"></a>[TrendType](UI.xml#L526)
The trend of a value

Member|Value|Description
:-----|----:|:----------
[StrongUp](UI.xml#L528)|1|Value grows strongly
[Up](UI.xml#L531)|2|Value grows
[Sideways](UI.xml#L534)|3|Value does not significantly grow or shrink
[Down](UI.xml#L537)|4|Value shrinks
[StrongDown](UI.xml#L540)|5|Value shrinks strongly

## <a name="TrendCalculationType"></a>[TrendCalculationType](UI.xml#L545)
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
[ReferenceValue](UI.xml#L559)|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L563)|Boolean|Calculate with a relative difference
[UpDifference](UI.xml#L566)|Decimal|Threshold for Up
[StrongUpDifference](UI.xml#L569)|Decimal|Threshold for StrongUp
[DownDifference](UI.xml#L572)|Decimal|Threshold for Down
[StrongDownDifference](UI.xml#L575)|Decimal|Threshold for StrongDown

## <a name="KPIType"></a>[KPIType](UI.xml#L586)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L587)|String|Optional identifier to reference this instance from an external context
[ShortDescription](UI.xml#L592) *(Experimental)*|String|Very short description
[SelectionVariant](UI.xml#L597)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[DataPoint](UI.xml#L601)|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
[Detail](UI.xml#L605)|[KPIDetailType](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

## <a name="KPIDetailType"></a>[KPIDetailType](UI.xml#L610)


Property|Type|Description
:-------|:---|:----------
[DefaultPresentationVariant](UI.xml#L611)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
[AlternativePresentationVariants](UI.xml#L615)|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path
[SemanticObject](UI.xml#L619)|String|Name of the Semantic Object. If not specified, use Semantic Object annotated at the property referenced in KPI/DataPoint/Value
[Action](UI.xml#L623)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="ChartDefinitionType"></a>[ChartDefinitionType](UI.xml#L633)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L634)|String|Title of the chart
[Description](UI.xml#L638)|String|Short description
[ChartType](UI.xml#L642)|[ChartType](#ChartType)|Chart type
[AxisScaling](UI.xml#L645)|[ChartAxisScalingType](#ChartAxisScalingType)|Describes the scale of the chart value axes
[Measures](UI.xml#L648)|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
[MeasureAttributes](UI.xml#L651)|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
[Dimensions](UI.xml#L656)|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
[DimensionAttributes](UI.xml#L659)|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
[Actions](UI.xml#L664)|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

## <a name="ChartType"></a>[ChartType](UI.xml#L669)


Member|Value|Description
:-----|----:|:----------
[Column](UI.xml#L670)|0|
[ColumnStacked](UI.xml#L671)|1|
[ColumnDual](UI.xml#L672)|2|
[ColumnStackedDual](UI.xml#L673)|3|
[ColumnStacked100](UI.xml#L674)|4|
[ColumnStackedDual100](UI.xml#L675)|5|
[Bar](UI.xml#L676)|6|
[BarStacked](UI.xml#L677)|7|
[BarDual](UI.xml#L678)|8|
[BarStackedDual](UI.xml#L679)|9|
[BarStacked100](UI.xml#L680)|10|
[BarStackedDual100](UI.xml#L681)|11|
[Area](UI.xml#L682)|12|
[AreaStacked](UI.xml#L683)|13|
[AreaStacked100](UI.xml#L684)|14|
[HorizontalArea](UI.xml#L685)|15|
[HorizontalAreaStacked](UI.xml#L686)|16|
[HorizontalAreaStacked100](UI.xml#L687)|17|
[Line](UI.xml#L688)|18|
[LineDual](UI.xml#L689)|19|
[Combination](UI.xml#L690)|20|
[CombinationStacked](UI.xml#L691)|21|
[CombinationDual](UI.xml#L692)|22|
[CombinationStackedDual](UI.xml#L693)|23|
[HorizontalCombinationStacked](UI.xml#L694)|24|
[Pie](UI.xml#L695)|25|
[Donut](UI.xml#L696)|26|
[Scatter](UI.xml#L697)|27|
[Bubble](UI.xml#L698)|28|
[Radar](UI.xml#L699)|29|
[HeatMap](UI.xml#L700)|30|
[TreeMap](UI.xml#L701)|31|
[Waterfall](UI.xml#L702)|32|
[Bullet](UI.xml#L703)|33|
[VerticalBullet](UI.xml#L704)|34|
[HorizontalWaterfall](UI.xml#L705)|35|
[HorizontalCombinationDual](UI.xml#L706)|36|
[HorizontalCombinationStackedDual](UI.xml#L707)|37|
[Donut100](UI.xml#L708) *(Experimental)*|38|

## <a name="ChartAxisScalingType"></a>[ChartAxisScalingType](UI.xml#L714)


Property|Type|Description
:-------|:---|:----------
[ScaleBehavior](UI.xml#L715)|[ChartAxisScaleBehaviorType](#ChartAxisScaleBehaviorType)|Scale is fixed or adapts automatically to rendered values
[AutoScaleBehavior](UI.xml#L718)|[ChartAxisAutoScaleBehaviorType](#ChartAxisAutoScaleBehaviorType)|Settings for automatic scaling
[FixedScaleMultipleStackedMeasuresBoundaryValues](UI.xml#L723)|[FixedScaleMultipleStackedMeasuresBoundaryValuesType](#FixedScaleMultipleStackedMeasuresBoundaryValuesType)|Boundary values for fixed scaling of a stacking chart type with multiple measures

## <a name="ChartAxisScaleBehaviorType"></a>[ChartAxisScaleBehaviorType](UI.xml#L729)


Member|Value|Description
:-----|----:|:----------
[AutoScale](UI.xml#L730)|0|Value axes scale automatically
[FixedScale](UI.xml#L733)|1|Fixed minimum and maximum values are applied, which are derived from the @UI.MeasureAttributes.DataPoint/MinimumValue and .../MaximumValue annotation by default. For stacking chart types with multiple measures, they are taken from ChartAxisScalingType/FixedScaleMultipleStackedMeasuresBoundaryValues.

## <a name="ChartAxisAutoScaleBehaviorType"></a>[ChartAxisAutoScaleBehaviorType](UI.xml#L742)


Property|Type|Description
:-------|:---|:----------
[ZeroAlwaysVisible](UI.xml#L743)|Boolean|Forces the value axis to always display the zero value
[DataScope](UI.xml#L746)|[ChartAxisAutoScaleDataScopeType](#ChartAxisAutoScaleDataScopeType)|Determines the automatic scaling

## <a name="ChartAxisAutoScaleDataScopeType"></a>[ChartAxisAutoScaleDataScopeType](UI.xml#L751)


Member|Value|Description
:-----|----:|:----------
[DataSet](UI.xml#L752)|0|Minimum and maximum axes values are determined from the entire data set
[VisibleData](UI.xml#L755)|1|Minimum and maximum axes values are determined from the currently visible data. Scrolling will change the scale.

## <a name="FixedScaleMultipleStackedMeasuresBoundaryValuesType"></a>[FixedScaleMultipleStackedMeasuresBoundaryValuesType](UI.xml#L761)


Property|Type|Description
:-------|:---|:----------
[MinimumValue](UI.xml#L762)|Decimal|Minimum value on value axes
[MaximumValue](UI.xml#L765)|Decimal|Maximum value on value axes

## <a name="ChartDimensionAttributeType"></a>[ChartDimensionAttributeType](UI.xml#L770)


Property|Type|Description
:-------|:---|:----------
[Dimension](UI.xml#L771)|PropertyPath|
[Role](UI.xml#L772)|[ChartDimensionRoleType](#ChartDimensionRoleType)|
[HierarchyLevel](UI.xml#L773) *(Experimental)*|Int32|For a dimension with a hierarchy, members are selected from this level. The root node of the hierarchy is at level 0.
[ValuesForSequentialColorLevels](UI.xml#L778) *(Experimental)*|\[String\]|All values in this collection should be assigned to levels of the same color.
[EmphasizedValues](UI.xml#L783) *(Experimental)*|\[String\]|All values in this collection should be emphasized.
[EmphasisLabels](UI.xml#L787) *(Experimental)*|[EmphasisLabelType](#EmphasisLabelType)|Assign a label to values with an emphasized representation. This is required, if more than one emphasized value has been specified.

## <a name="ChartMeasureAttributeType"></a>[ChartMeasureAttributeType](UI.xml#L794)


Property|Type|Description
:-------|:---|:----------
[Measure](UI.xml#L795)|PropertyPath|
[Role](UI.xml#L796)|[ChartMeasureRoleType](#ChartMeasureRoleType)|
[DataPoint](UI.xml#L797)|AnnotationPath|Annotation path MUST end in @UI.DataPoint and the data point's Value MUST be the same property as in Measure
[UseSequentialColorLevels](UI.xml#L806) *(Experimental)*|Boolean|All measures for which this setting is true should be assigned to levels of the same color.

## <a name="ChartDimensionRoleType"></a>[ChartDimensionRoleType](UI.xml#L813)


Member|Value|Description
:-----|----:|:----------
[Category](UI.xml#L814)|0|
[Series](UI.xml#L815)|1|
[Category2](UI.xml#L816)|2|

## <a name="ChartMeasureRoleType"></a>[ChartMeasureRoleType](UI.xml#L819)


Member|Value|Description
:-----|----:|:----------
[Axis1](UI.xml#L820)|0|
[Axis2](UI.xml#L821)|1|
[Axis3](UI.xml#L822)|2|

## <a name="EmphasisLabelType"></a>[EmphasisLabelType](UI.xml#L825) *(Experimental)*
Assigns a label to the set of emphasized values and optionally also for non-emphasized values. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[EmphasizedValuesLabel](UI.xml#L829)|String|
[NonEmphasizedValuesLabel](UI.xml#L830)|String|

## <a name="ValueCriticalityType"></a>[ValueCriticalityType](UI.xml#L838) *(Experimental)*
Assigns a fixed criticality to a primitive value. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Value](UI.xml#L842)|PrimitiveType|
[Criticality](UI.xml#L843)|[CriticalityType](#CriticalityType)|

## <a name="CriticalityLabelType"></a>[CriticalityLabelType](UI.xml#L857) *(Experimental)*
Assigns a label to a criticality. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Criticality](UI.xml#L861)|[CriticalityType](#CriticalityType)|
[Label](UI.xml#L862)|String|Criticality label

## <a name="Facet"></a>[*Facet*](UI.xml#L897)
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L899)|String|Facet label
[ID](UI.xml#L903)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

## <a name="CollectionFacet"></a>[CollectionFacet](UI.xml#L908): [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L899)|String|Facet label
[*ID*](UI.xml#L903)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Facets](UI.xml#L910)|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

## <a name="ReferenceFacet"></a>[ReferenceFacet](UI.xml#L915): [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L899)|String|Facet label
[*ID*](UI.xml#L903)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Target](UI.xml#L917)|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge

## <a name="ReferenceURLFacet"></a>[ReferenceURLFacet](UI.xml#L944): [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L899)|String|Facet label
[*ID*](UI.xml#L903)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Url](UI.xml#L946)|URL|URL of referenced information
[UrlContentType](UI.xml#L950)|MediaType|Media type of referenced information

## <a name="SelectionPresentationVariantType"></a>[SelectionPresentationVariantType](UI.xml#L963)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L964)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L969)|String|Name of the bundling variant
[SelectionVariant](UI.xml#L973)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[PresentationVariant](UI.xml#L977)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

## <a name="PresentationVariantType"></a>[PresentationVariantType](UI.xml#L989)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L990)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L993)|String|Name of the presentation variant
[MaxItems](UI.xml#L997)|Int32|Maximum number of items that should be included in the result
[SortOrder](UI.xml#L1000)|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
[GroupBy](UI.xml#L1004)|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with `InitialExpansionLevel`.
[TotalBy](UI.xml#L1013)|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
[Total](UI.xml#L1020)|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
[IncludeGrandTotal](UI.xml#L1025)|Boolean|Result should include a grand total for the properties specified in Total
[InitialExpansionLevel](UI.xml#L1028)|Int32|Level up to which the hierarchy defined for the queried collection should be expanded initially. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
[Visualizations](UI.xml#L1034)|\[AnnotationPath\]|Lists available visualization types. Currently supported types are `UI.LineItem`, `UI.Chart`, and `UI.DataPoint`. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different presentation variants. A reference to `UI.Lineitem` should always be part of collection (least common denominator for renderers). The first entry of the collection is the default visualization.
[RequestAtLeast](UI.xml#L1044)|\[PropertyPath\]|Properties that should always be included in the result of the queried collection
[SelectionFields](UI.xml#L1048) *(Experimental)*|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a `UI.SelectionFields` annotation via Path.

## <a name="SelectionVariantType"></a>[SelectionVariantType](UI.xml#L1062)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1063)|String|May contain identifier to reference this instance from an external context
[Text](UI.xml#L1068)|String|Name of the selection variant
[Parameters](UI.xml#L1072)|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
[FilterExpression](UI.xml#L1075)|String|Filter string for query part of URL, without `$filter=`
[SelectOptions](UI.xml#L1080)|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>[*ParameterAbstract*](UI.xml#L1087)
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

## <a name="Parameter"></a>[Parameter](UI.xml#L1090): [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1092)|PropertyPath|Path to a key property of a parameter entity type
[PropertyValue](UI.xml#L1095)|PrimitiveType|Value for the key property

## <a name="IntervalParameter"></a>[IntervalParameter](UI.xml#L1099): [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
[PropertyNameFrom](UI.xml#L1101)|PropertyPath|Path to the 'from' property of a parameter entity type
[PropertyValueFrom](UI.xml#L1104)|PrimitiveType|Value for the 'from' property
[PropertyNameTo](UI.xml#L1107)|PropertyPath|Path to the 'to' property of a parameter entity type
[PropertyValueTo](UI.xml#L1110)|PrimitiveType|Value for the 'to' property

## <a name="SelectOptionType"></a>[SelectOptionType](UI.xml#L1115)
List of value ranges for a single property

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1117)|PropertyPath|Path to the property
[Ranges](UI.xml#L1120)|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

## <a name="SelectionRangeType"></a>[SelectionRangeType](UI.xml#L1125)
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
[Sign](UI.xml#L1129)|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
[Option](UI.xml#L1132)|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
[Low](UI.xml#L1135)|PrimitiveType|Single value or lower interval boundary
[High](UI.xml#L1138)|PrimitiveType|Upper interval boundary

## <a name="SelectionRangeSignType"></a>[SelectionRangeSignType](UI.xml#L1143)


Member|Value|Description
:-----|----:|:----------
[I](UI.xml#L1144)|0|Inclusive
[E](UI.xml#L1147)|1|Exclusive

## <a name="SelectionRangeOptionType"></a>[SelectionRangeOptionType](UI.xml#L1152)
Comparison operator

Member|Value|Description
:-----|----:|:----------
[EQ](UI.xml#L1154)|0|Equal to
[BT](UI.xml#L1157)|1|Between
[CP](UI.xml#L1160)|2|Contains pattern
[LE](UI.xml#L1163)|3|Less than or equal to
[GE](UI.xml#L1166)|4|Greater than or equal to
[NE](UI.xml#L1169)|5|Not equal to
[NB](UI.xml#L1172)|6|Not between
[NP](UI.xml#L1175)|7|Does not contain pattern
[GT](UI.xml#L1178)|8|Greater than
[LT](UI.xml#L1181)|9|Less than

## <a name="TextArrangementType"></a>[TextArrangementType](UI.xml#L1227)


Member|Value|Description
:-----|----:|:----------
[TextFirst](UI.xml#L1228)|0|Text is first, followed by the code/ID (e.g. in parentheses)
[TextLast](UI.xml#L1231)|1|Code/ID is first, followed by the text (e.g. separated by a dash)
[TextSeparate](UI.xml#L1234)|2|Code/ID and text are represented separately
[TextOnly](UI.xml#L1237)|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

## <a name="ImportanceType"></a>[ImportanceType](UI.xml#L1253)


Member|Value|Description
:-----|----:|:----------
[High](UI.xml#L1254)|0|High importance
[Medium](UI.xml#L1257)|1|Medium importance
[Low](UI.xml#L1260)|2|Low importance

## <a name="DataFieldAbstract"></a>[*DataFieldAbstract*](UI.xml#L1287)


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
[Label](UI.xml#L1288)|String|A short, human-readable text suitable for labels and captions in UIs
[Criticality](UI.xml#L1292)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[CriticalityRepresentation](UI.xml#L1295)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[IconUrl](UI.xml#L1298)|URL|Optional icon to decorate the value

## <a name="CriticalityRepresentationType"></a>[CriticalityRepresentationType](UI.xml#L1304)


Member|Value|Description
:-----|----:|:----------
[WithIcon](UI.xml#L1305)|0|Criticality is represented with an icon
[WithoutIcon](UI.xml#L1308)|1|Criticality is represented without icon, e.g. only via text color

## <a name="DataFieldForAnnotation"></a>[DataFieldForAnnotation](UI.xml#L1313): [DataFieldAbstract](#DataFieldAbstract)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1288)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1292)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1295)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1298)|URL|Optional icon to decorate the value
[Target](UI.xml#L1314)|AnnotationPath|Target MUST reference an annotation of terms Communication.Contact, Communication.Address, UI.DataPoint, UI.Chart, UI.FieldGroup, or UI.ConnectedFields

## <a name="DataFieldForActionAbstract"></a>[*DataFieldForActionAbstract*](UI.xml#L1330): [DataFieldAbstract](#DataFieldAbstract)
Abstract type to bundle DataFieldForAction and DataFieldForIntentBasedNavigation

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1288)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1292)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1295)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1298)|URL|Optional icon to decorate the value
[Inline](UI.xml#L1333)|Boolean|Action should be placed close to (or even inside) the visualized term
[Determining](UI.xml#L1336)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

## <a name="DataFieldForAction"></a>[DataFieldForAction](UI.xml#L1342): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The action is NOT tied to a data value (in contrast to DataFieldWithAction)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1288)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1292)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1295)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1298)|URL|Optional icon to decorate the value
[*Inline*](UI.xml#L1333)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1336)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[Action](UI.xml#L1344)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
[InvocationGrouping](UI.xml#L1348)|[OperationGroupingType](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

## <a name="OperationGroupingType"></a>[OperationGroupingType](UI.xml#L1353)


Member|Value|Description
:-----|----:|:----------
[Isolated](UI.xml#L1354)|0|
[ChangeSet](UI.xml#L1355)|1|

## <a name="DataFieldForIntentBasedNavigation"></a>[DataFieldForIntentBasedNavigation](UI.xml#L1358): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The navigation intent is is expressed as a Semantic Object and optionally an Action on that object

The navigation intent is NOT tied to a data value (in contrast to DataFieldWithIntentBasedNavigation), the data field represents a navigation trigger.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1288)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1292)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1295)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1298)|URL|Optional icon to decorate the value
[*Inline*](UI.xml#L1333)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1336)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[SemanticObject](UI.xml#L1363)|String|Name of the Semantic Object
[Action](UI.xml#L1366)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[RequiresContext](UI.xml#L1370)|Boolean|Determines whether a context needs to be passed to the target of this navigation.

## <a name="DataField"></a>[DataField](UI.xml#L1376): [DataFieldAbstract](#DataFieldAbstract)


**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1288)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1292)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1295)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1298)|URL|Optional icon to decorate the value
[Value](UI.xml#L1377)|PrimitiveType|The data field's value

## <a name="DataFieldWithAction"></a>[DataFieldWithAction](UI.xml#L1383): [DataField](#DataField)
The action is tied to a data value which could be render as a button or link that triggers the action. This is in contrast to DataFieldForAction which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1288)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1292)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1295)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1298)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1377)|PrimitiveType|The data field's value
[Action](UI.xml#L1386)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

## <a name="DataFieldWithIntentBasedNavigation"></a>[DataFieldWithIntentBasedNavigation](UI.xml#L1392): [DataField](#DataField)
The navigation intent is is expressed as a Semantic Object and optionally an Action on that object

The navigation intent is tied to a data value which should be rendered as a hyperlink. This is in contrast to DataFieldForIntentBasedNavigation which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1288)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1292)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1295)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1298)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1377)|PrimitiveType|The data field's value
[SemanticObject](UI.xml#L1397)|String|Name of the Semantic Object
[Action](UI.xml#L1400)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="DataFieldWithNavigationPath"></a>[DataFieldWithNavigationPath](UI.xml#L1406): [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1288)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1292)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1295)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1298)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1377)|PrimitiveType|The data field's value
[Target](UI.xml#L1407)|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

## <a name="DataFieldWithUrl"></a>[DataFieldWithUrl](UI.xml#L1414): [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1288)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1292)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1295)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1298)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1377)|PrimitiveType|The data field's value
[Url](UI.xml#L1415)|URL|Target of the hyperlink
[UrlContentType](UI.xml#L1419)|MediaType|Media type of the hyperlink target, e.g. `video/mp4`

## <a name="RecommendationStateType"></a>[RecommendationStateType](UI.xml#L1449) *(Experimental)*
**Type:** Byte

Indicates whether a field contains or has a recommended value

Editable fields for which a recommendation has been pre-filled or that have recommendations that differ from existing human input need to be highlighted.

Allowed Value|Description
:------------|:----------
[0](UI.xml#L1457)|regular - with human or default input, no recommendation
[1](UI.xml#L1461)|highlighted - without human input and with recommendation
[2](UI.xml#L1465)|warning - with human or default input and with recommendation

## <a name="RecommendationListType"></a>[RecommendationListType](UI.xml#L1482) *(Experimental)*
Reference to a recommendation list

A recommendation consists of one or more values for editable fields plus a rank between 0.0 and 9.9, with 9.9 being the best recommendation.

Property|Type|Description
:-------|:---|:----------
[CollectionPath](UI.xml#L1488)|String|Resource path of a collection of recommended values
[RankProperty](UI.xml#L1491)|String|Name of the property within the collection of recommended values that describes the rank of the recommendation
[Binding](UI.xml#L1495)|\[[RecommendationBinding](#RecommendationBinding)\]|List of pairs of a local property and recommended value property

## <a name="RecommendationBinding"></a>[RecommendationBinding](UI.xml#L1500) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[LocalDataProperty](UI.xml#L1502)|PropertyPath|Path to editable property for which recommended values exist
[ValueListProperty](UI.xml#L1505)|String|Path to property in the collection of recommended values. Format is identical to PropertyPath annotations.
