# UI Vocabulary
**Namespace: [com.sap.vocabularies.UI.v1](UI.xml)**

Terms for presenting data in user interfaces


## Terms

Term|Type|Description
:---|:---|:----------
[HeaderInfo](UI.xml#L38)|[HeaderInfoType](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
[Identification](UI.xml#L69)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
[Badge](UI.xml#L74)|[BadgeType](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
[LineItem](UI.xml#L102)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
[StatusInfo](UI.xml#L107)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
[FieldGroup](UI.xml#L112)|[FieldGroupType](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
[ConnectedFields](UI.xml#L126) *(Experimental)*|[ConnectedFieldsType](#ConnectedFieldsType)|<a name="ConnectedFields"></a>Group of semantically connected fields with a representation template and an optional label
[GeoLocations](UI.xml#L199)|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
[GeoLocation](UI.xml#L203)|[GeoLocationType](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
[Contacts](UI.xml#L223)|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts<p>Each collection item MUST reference an annotation of a Communication.Contact</p>
[MediaResource](UI.xml#L230)|[MediaResourceType](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource
[DataPoint](UI.xml#L284)|[DataPointType](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
[KPI](UI.xml#L574)|[KPIType](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
[Chart](UI.xml#L623)|[ChartDefinitionType](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
[ValueCriticality](UI.xml#L806) *(Experimental)*|\[[ValueCriticalityType](#ValueCriticalityType)\]|<a name="ValueCriticality"></a>Assign criticalities to primitive values. This information can be used for semantic coloring.
[SelectionFields](UI.xml#L819)|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
[Facets](UI.xml#L828)|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
[HeaderFacets](UI.xml#L832)|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
[QuickViewFacets](UI.xml#L836)|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
[QuickCreateFacets](UI.xml#L840)|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
[FilterFacets](UI.xml#L844)|\[[ReferenceFacet](#ReferenceFacet)\]|<a name="FilterFacets"></a>Facets that reference UI.FieldGroup annotations to group filterable fields
[SelectionPresentationVariant](UI.xml#L886)|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
[PresentationVariant](UI.xml#L912)|[PresentationVariantType](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
[SelectionVariant](UI.xml#L986)|[SelectionVariantType](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
[ThingPerspective](UI.xml#L1118)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>This term is a Thing Perspective
[IsSummary](UI.xml#L1121)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
[PartOfPreview](UI.xml#L1126)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This Facet and all included Facets are part of the Thing preview
[Map](UI.xml#L1130)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
[Gallery](UI.xml#L1135)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
[IsImageURL](UI.xml#L1140)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image
[MultiLineText](UI.xml#L1146)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties annotated with this annotation should be rendered as multi-line text (e.g. text area)
[TextArrangement](UI.xml#L1152)|[TextArrangementType](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text<p>If used for a single property the Common.Text annotation is annotated</p>
[Importance](UI.xml#L1179)|[ImportanceType](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
[Hidden](UI.xml#L1194)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties or facets (see UI.Facet) annotated with this term will not be rendered if the annotation evaluates to true.<p>Hidden properties usually carry technical information that is used for application control and is of no direct interest to end users. The annotation value may be an expression to dynamically hide or render the annotated feature.</p>
[HiddenFilter](UI.xml#L1201)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria if the annotation evaluates to true.<p>Properties annotated with `HiddenFilter` are intended as parts of a `$filter` expression that cannot be directly influenced by end users. The properties will be rendered in all other places, e.g. table columns or form fields. This is in contrast to properties annotated with [`UI.Hidden`](#Hidden) that are not rendered at all.</p>
[DataFieldDefault](UI.xml#L1208) *(Experimental)*|[DataFieldAbstract](#DataFieldAbstract)|<a name="DataFieldDefault"></a>Default representation of a property as a datafield, e.g. when the property is added as a table column or form field via personalization<p>Only concrete subtypes of DataFieldAbstract can be used for a DataFieldDefault. For type `DataField` and its subtypes the annotation target SHOULD be the same property that is referenced via a path expression in the `Value` of the datafield.</p>
[Criticality](UI.xml#L1344) *(Experimental)*|[CriticalityType](#CriticalityType)|<a name="Criticality"></a>Service-calculated criticality, alternative to UI.CriticalityCalculation
[CriticalityCalculation](UI.xml#L1349) *(Experimental)*|[CriticalityCalculationType](#CriticalityCalculationType)|<a name="CriticalityCalculation"></a>Parameters for client-calculated criticality, alternative to UI.Criticality
[OrderBy](UI.xml#L1354) *(Experimental)*|PropertyPath|<a name="OrderBy"></a>Sort by the referenced property instead of by the annotated property<p>Example: annotated property `SizeCode` has string values XS, S, M, L, XL, referenced property SizeOrder has numeric values -2, -1, 0, 1, 2. Numeric ordering by SizeOrder will be more understandable than lexicographic ordering by SizeCode.</p>
[RecommendationState](UI.xml#L1362) *(Experimental)*|[RecommendationStateType](#RecommendationStateType)|<a name="RecommendationState"></a>Indicates whether a field contains or has a recommended value<p>Intelligent systems can help users by recommending input the user may "prefer".</p>
[RecommendationList](UI.xml#L1394) *(Experimental)*|[RecommendationListType](#RecommendationListType)|<a name="RecommendationList"></a>Specifies how to get a list of recommended values for a property or parameter<p>Intelligent systems can help users by recommending input the user may "prefer".</p>

## <a name="HeaderInfoType"></a>[HeaderInfoType](UI.xml#L43)


Property|Type|Description
:-------|:---|:----------
[TypeName](UI.xml#L44)|String|Name of the main entity type
[TypeNamePlural](UI.xml#L48)|String|Plural form of the name of the main entity type
[Title](UI.xml#L52)|[DataField](#DataField)|Title, e.g. for overview pages
[Description](UI.xml#L55)|[DataField](#DataField)|Description, e.g. for overview pages
[ImageUrl](UI.xml#L58)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L63)|URL|Image URL for the entity type

## <a name="BadgeType"></a>[BadgeType](UI.xml#L78)


Property|Type|Description
:-------|:---|:----------
[HeadLine](UI.xml#L79)|[DataField](#DataField)|Headline
[Title](UI.xml#L82)|[DataField](#DataField)|Title
[ImageUrl](UI.xml#L85)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L90)|URL|Image URL for the entity type
[MainInfo](UI.xml#L94)|[DataField](#DataField)|Main information on the business card
[SecondaryInfo](UI.xml#L97)|[DataField](#DataField)|Additional information on the business card

## <a name="FieldGroupType"></a>[FieldGroupType](UI.xml#L116)


Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L117)|String|Label for the field group
[Data](UI.xml#L121)|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

## <a name="ConnectedFieldsType"></a>[ConnectedFieldsType](UI.xml#L157) *(Experimental)*
Group of semantically connected fields with a representation template and an optional label

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L161)|String|Label for the connected fields
[Template](UI.xml#L165)|String|Template for representing the connected fields<p>Template variables are identifiers enclosed in curly braces, e.g. `{MaterialName} - {MaterialClassName}`. The `Data` collection assigns values to the template variables.</p>
[Data](UI.xml#L171)|[Dictionary](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Dictionary)|Dictionary of template variables<p>Each template variable used in `Template` must be assigned a value here. The value must be of type [`UI.DataFieldAbstract`](#DataFieldAbstract)</p>

## <a name="GeoLocationType"></a>[GeoLocationType](UI.xml#L207)
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
[Latitude](UI.xml#L209)|Double|Geographic latitude
[Longitude](UI.xml#L212)|Double|Geographic longitude
[Location](UI.xml#L215)|GeographyPoint|A point in a round-earth coordinate system
[Address](UI.xml#L218)|[AddressType](Communication.md#AddressType)|vCard-style address

## <a name="MediaResourceType"></a>[MediaResourceType](UI.xml#L234)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L235)|URL|URL of media resource
[ContentType](UI.xml#L239)|MediaType|Content type, such as application/pdf, video/x-flv, image/jpeg
[ByteSize](UI.xml#L243)|Int64|Resource size in bytes
[ChangedAt](UI.xml#L246)|DateTimeOffset|Date of last change
[Thumbnail](UI.xml#L249)|[ImageType](#ImageType)|Thumbnail image
[Title](UI.xml#L252)|[DataField](#DataField)|Resource title
[Description](UI.xml#L255)|[DataField](#DataField)|Resource description

## <a name="ImageType"></a>[ImageType](UI.xml#L259)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L260)|URL|URL of image
[Width](UI.xml#L264)|String|Width of image
[Height](UI.xml#L267)|String|Height of image

## <a name="DataPointType"></a>[DataPointType](UI.xml#L289)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L290)|String|Title of the data point
[Description](UI.xml#L294)|String|Short description
[LongDescription](UI.xml#L298)|String|Full description
[Value](UI.xml#L302)|PrimitiveType|Numeric value<p>               It could be annotated with either `UoM.ISOCurrency` or `UoM.Unit`.               Percentage values are annotated with `UoM.Unit = '%'`.               A renderer should take an optional `Common.Text` annotation into consideration.             </p>
[TargetValue](UI.xml#L312)|PrimitiveType|Target value
[ForecastValue](UI.xml#L315)|PrimitiveType|Forecast value
[MinimumValue](UI.xml#L318)|Decimal|Minimum value (for output rendering)
[MaximumValue](UI.xml#L321)|Decimal|Maximum value (for output rendering)
[ValueFormat](UI.xml#L324)|[NumberFormat](#NumberFormat)|Number format
[Visualization](UI.xml#L327)|[VisualizationType](#VisualizationType)|Preferred visualization
[SampleSize](UI.xml#L330)|PrimitiveType|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
[ReferencePeriod](UI.xml#L337)|[ReferencePeriod](#ReferencePeriod)|Reference period
[Criticality](UI.xml#L340)|[CriticalityType](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
[CriticalityRepresentation](UI.xml#L343) *(Experimental)*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[CriticalityCalculation](UI.xml#L347)|[CriticalityCalculationType](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
[Trend](UI.xml#L350)|[TrendType](#TrendType)|Service-calculated trend, alternative to TrendCalculation
[TrendCalculation](UI.xml#L353)|[TrendCalculationType](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
[Responsible](UI.xml#L356)|[ContactType](Communication.md#ContactType)|Contact person

## <a name="NumberFormat"></a>[NumberFormat](UI.xml#L361)
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
[ScaleFactor](UI.xml#L363)|Decimal|Display value in *ScaleFactor* units, e.g. 1000 for k (kilo), 1e6 for M (Mega)
[NumberOfFractionalDigits](UI.xml#L367)|Byte|Number of fractional digits of the scaled value to be visualized

## <a name="VisualizationType"></a>[VisualizationType](UI.xml#L372)


Member|Value|Description
:-----|----:|:----------
[Number](UI.xml#L373)|0|Visualize as a number
[BulletChart](UI.xml#L376)|1|Visualize as bullet chart - requires TargetValue
[Progress](UI.xml#L379)|2|Visualize as progress indicator - requires TargetValue
[Rating](UI.xml#L382)|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
[Donut](UI.xml#L386)|4|Visualize as donut, optionally with missing segment - requires TargetValue
[DeltaBulletChart](UI.xml#L389)|5|Visualize as delta bullet chart - requires TargetValue

## <a name="ReferencePeriod"></a>[ReferencePeriod](UI.xml#L394)
Reference period

Property|Type|Description
:-------|:---|:----------
[Description](UI.xml#L396)|String|Short description of the reference period
[Start](UI.xml#L400)|DateTimeOffset|Start of the reference period
[End](UI.xml#L403)|DateTimeOffset|End of the reference period

## <a name="CriticalityType"></a>[CriticalityType](UI.xml#L408)
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
[VeryNegative](UI.xml#L411) *(Experimental)*|-1|Very negative / dark-red status - risk - out of stock - late
[Neutral](UI.xml#L415)|0|Neutral / grey status - inactive - open - in progress
[Negative](UI.xml#L418)|1|Negative / red status - attention - overload - alert
[Critical](UI.xml#L421)|2|Critical / orange status - warning
[Positive](UI.xml#L424)|3|Positive / green status - completed - available - on track - acceptable
[VeryPositive](UI.xml#L427) *(Experimental)*|4|Very positive / blue status - above max stock - excess

## <a name="CriticalityCalculationType"></a>[CriticalityCalculationType](UI.xml#L433): [CriticalityThresholdsType](#CriticalityThresholdsType)
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
[*AcceptanceRangeLowValue*](UI.xml#L478)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L481)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L484)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L487)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L490)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L493)|PrimitiveType|Highest value that is considered critical
[ImprovementDirection](UI.xml#L464)|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
[ConstantThresholds](UI.xml#L467) *(Experimental)*|\[[LevelThresholdsType](#LevelThresholdsType)\]|List of thresholds depending on the aggregation level as a set of constant values<p>Constant thresholds shall only be used in order to refine constant values given for the data point overall (aggregation level with empty collection of property paths), but not if the thresholds are based on other measure elements.</p>

## <a name="CriticalityThresholdsType"></a>[CriticalityThresholdsType](UI.xml#L476)
Thresholds for calculating the criticality of a value

**Derived Types:**
- [CriticalityCalculationType](#CriticalityCalculationType)
- [LevelThresholdsType](#LevelThresholdsType)

Property|Type|Description
:-------|:---|:----------
[AcceptanceRangeLowValue](UI.xml#L478)|PrimitiveType|Lowest value that is considered positive
[AcceptanceRangeHighValue](UI.xml#L481)|PrimitiveType|Highest value that is considered positive
[ToleranceRangeLowValue](UI.xml#L484)|PrimitiveType|Lowest value that is considered neutral
[ToleranceRangeHighValue](UI.xml#L487)|PrimitiveType|Highest value that is considered neutral
[DeviationRangeLowValue](UI.xml#L490)|PrimitiveType|Lowest value that is considered critical
[DeviationRangeHighValue](UI.xml#L493)|PrimitiveType|Highest value that is considered critical

## <a name="ImprovementDirectionType"></a>[ImprovementDirectionType](UI.xml#L498)
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
[Minimize](UI.xml#L500)|1|Lower is better
[Target](UI.xml#L503)|2|Closer to the target is better
[Maximize](UI.xml#L506)|3|Higher is better

## <a name="LevelThresholdsType"></a>[LevelThresholdsType](UI.xml#L511): [CriticalityThresholdsType](#CriticalityThresholdsType) *(Experimental)*
Thresholds for an aggregation level

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](UI.xml#L478)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L481)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L484)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L487)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L490)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L493)|PrimitiveType|Highest value that is considered critical
[AggregationLevel](UI.xml#L514)|\[PropertyPath\]|An unordered tuple of dimensions, i.e. properties which are intended to be used for grouping in aggregating requests. In analytical UIs, e.g. an analytical chart, the aggregation level typically corresponds to the visible dimensions.

## <a name="TrendType"></a>[TrendType](UI.xml#L520)
The trend of a value

Member|Value|Description
:-----|----:|:----------
[StrongUp](UI.xml#L522)|1|Value grows strongly
[Up](UI.xml#L525)|2|Value grows
[Sideways](UI.xml#L528)|3|Value does not significantly grow or shrink
[Down](UI.xml#L531)|4|Value shrinks
[StrongDown](UI.xml#L534)|5|Value shrinks strongly

## <a name="TrendCalculationType"></a>[TrendCalculationType](UI.xml#L539)
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
[ReferenceValue](UI.xml#L553)|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L557)|Boolean|Calculate with a relative difference
[UpDifference](UI.xml#L560)|Decimal|Threshold for Up
[StrongUpDifference](UI.xml#L563)|Decimal|Threshold for StrongUp
[DownDifference](UI.xml#L566)|Decimal|Threshold for Down
[StrongDownDifference](UI.xml#L569)|Decimal|Threshold for StrongDown

## <a name="KPIType"></a>[KPIType](UI.xml#L580)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L581)|String|Optional identifier to reference this instance from an external context
[ShortDescription](UI.xml#L586) *(Experimental)*|String|Very short description
[SelectionVariant](UI.xml#L591)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[DataPoint](UI.xml#L595)|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
[Detail](UI.xml#L599)|[KPIDetailType](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

## <a name="KPIDetailType"></a>[KPIDetailType](UI.xml#L604)


Property|Type|Description
:-------|:---|:----------
[DefaultPresentationVariant](UI.xml#L605)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
[AlternativePresentationVariants](UI.xml#L609)|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path
[SemanticObject](UI.xml#L613)|String|Name of the Semantic Object. If not specified, use Semantic Object annotated at the property referenced in KPI/DataPoint/Value
[Action](UI.xml#L617)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="ChartDefinitionType"></a>[ChartDefinitionType](UI.xml#L627)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L628)|String|Title of the chart
[Description](UI.xml#L632)|String|Short description
[ChartType](UI.xml#L636)|[ChartType](#ChartType)|Chart type
[AxisScaling](UI.xml#L639)|[ChartAxisScalingType](#ChartAxisScalingType)|Describes the scale of the chart value axes
[Measures](UI.xml#L642)|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
[MeasureAttributes](UI.xml#L645)|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
[Dimensions](UI.xml#L650)|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
[DimensionAttributes](UI.xml#L653)|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
[Actions](UI.xml#L658)|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

## <a name="ChartType"></a>[ChartType](UI.xml#L663)


Member|Value|Description
:-----|----:|:----------
[Column](UI.xml#L664)|0|
[ColumnStacked](UI.xml#L665)|1|
[ColumnDual](UI.xml#L666)|2|
[ColumnStackedDual](UI.xml#L667)|3|
[ColumnStacked100](UI.xml#L668)|4|
[ColumnStackedDual100](UI.xml#L669)|5|
[Bar](UI.xml#L670)|6|
[BarStacked](UI.xml#L671)|7|
[BarDual](UI.xml#L672)|8|
[BarStackedDual](UI.xml#L673)|9|
[BarStacked100](UI.xml#L674)|10|
[BarStackedDual100](UI.xml#L675)|11|
[Area](UI.xml#L676)|12|
[AreaStacked](UI.xml#L677)|13|
[AreaStacked100](UI.xml#L678)|14|
[HorizontalArea](UI.xml#L679)|15|
[HorizontalAreaStacked](UI.xml#L680)|16|
[HorizontalAreaStacked100](UI.xml#L681)|17|
[Line](UI.xml#L682)|18|
[LineDual](UI.xml#L683)|19|
[Combination](UI.xml#L684)|20|
[CombinationStacked](UI.xml#L685)|21|
[CombinationDual](UI.xml#L686)|22|
[CombinationStackedDual](UI.xml#L687)|23|
[HorizontalCombinationStacked](UI.xml#L688)|24|
[Pie](UI.xml#L689)|25|
[Donut](UI.xml#L690)|26|
[Scatter](UI.xml#L691)|27|
[Bubble](UI.xml#L692)|28|
[Radar](UI.xml#L693)|29|
[HeatMap](UI.xml#L694)|30|
[TreeMap](UI.xml#L695)|31|
[Waterfall](UI.xml#L696)|32|
[Bullet](UI.xml#L697)|33|
[VerticalBullet](UI.xml#L698)|34|
[HorizontalWaterfall](UI.xml#L699)|35|
[HorizontalCombinationDual](UI.xml#L700)|36|
[HorizontalCombinationStackedDual](UI.xml#L701)|37|

## <a name="ChartAxisScalingType"></a>[ChartAxisScalingType](UI.xml#L705)


Property|Type|Description
:-------|:---|:----------
[ScaleBehavior](UI.xml#L706)|[ChartAxisScaleBehaviorType](#ChartAxisScaleBehaviorType)|Scale is fixed or adapts automatically to rendered values
[AutoScaleBehavior](UI.xml#L709)|[ChartAxisAutoScaleBehaviorType](#ChartAxisAutoScaleBehaviorType)|Settings for automatic scaling
[FixedScaleMultipleStackedMeasuresBoundaryValues](UI.xml#L714)|[FixedScaleMultipleStackedMeasuresBoundaryValuesType](#FixedScaleMultipleStackedMeasuresBoundaryValuesType)|Boundary values for fixed scaling of a stacking chart type with multiple measures

## <a name="ChartAxisScaleBehaviorType"></a>[ChartAxisScaleBehaviorType](UI.xml#L720)


Member|Value|Description
:-----|----:|:----------
[AutoScale](UI.xml#L721)|0|Value axes scale automatically
[FixedScale](UI.xml#L724)|1|Fixed minimum and maximum values are applied, which are derived from the @UI.MeasureAttributes.DataPoint/MinimumValue and .../MaximumValue annotation by default. For stacking chart types with multiple measures, they are taken from ChartAxisScalingType/FixedScaleMultipleStackedMeasuresBoundaryValues.

## <a name="ChartAxisAutoScaleBehaviorType"></a>[ChartAxisAutoScaleBehaviorType](UI.xml#L733)


Property|Type|Description
:-------|:---|:----------
[ZeroAlwaysVisible](UI.xml#L734)|Boolean|Forces the value axis to always display the zero value
[DataScope](UI.xml#L737)|[ChartAxisAutoScaleDataScopeType](#ChartAxisAutoScaleDataScopeType)|Determines the automatic scaling

## <a name="ChartAxisAutoScaleDataScopeType"></a>[ChartAxisAutoScaleDataScopeType](UI.xml#L742)


Member|Value|Description
:-----|----:|:----------
[DataSet](UI.xml#L743)|0|Minimum and maximum axes values are determined from the entire data set
[VisibleData](UI.xml#L746)|1|Minimum and maximum axes values are determined from the currently visible data. Scrolling will change the scale.

## <a name="FixedScaleMultipleStackedMeasuresBoundaryValuesType"></a>[FixedScaleMultipleStackedMeasuresBoundaryValuesType](UI.xml#L752)


Property|Type|Description
:-------|:---|:----------
[MinimumValue](UI.xml#L753)|Decimal|Minimum value on value axes
[MaximumValue](UI.xml#L756)|Decimal|Maximum value on value axes

## <a name="ChartDimensionAttributeType"></a>[ChartDimensionAttributeType](UI.xml#L761)


Property|Type|Description
:-------|:---|:----------
[Dimension](UI.xml#L762)|PropertyPath|
[Role](UI.xml#L763)|[ChartDimensionRoleType](#ChartDimensionRoleType)|
[HierarchyLevel](UI.xml#L764) *(Experimental)*|Int32|For a dimension with a hierarchy, members are selected from this level. The root node of the hierarchy is at level 0.
[ValuesForSequentialColorLevels](UI.xml#L769) *(Experimental)*|\[PrimitiveType\]|All values in this collection should be assigned to levels of the same color.
[EmphasizedValues](UI.xml#L774) *(Experimental)*|\[PrimitiveType\]|All values in this collection should be emphasized.

## <a name="ChartMeasureAttributeType"></a>[ChartMeasureAttributeType](UI.xml#L780)


Property|Type|Description
:-------|:---|:----------
[Measure](UI.xml#L781)|PropertyPath|
[Role](UI.xml#L782)|[ChartMeasureRoleType](#ChartMeasureRoleType)|
[DataPoint](UI.xml#L783)|AnnotationPath|Annotation path MUST end in UI.DataPoint and the DataPoint Value must be the same property as in Measure
[UseSequentialColorLevels](UI.xml#L787) *(Experimental)*|Boolean|All measures for which this setting is true should be assigned to levels of the same color.

## <a name="ChartDimensionRoleType"></a>[ChartDimensionRoleType](UI.xml#L794)


Member|Value|Description
:-----|----:|:----------
[Category](UI.xml#L795)|0|
[Series](UI.xml#L796)|1|
[Category2](UI.xml#L797)|2|

## <a name="ChartMeasureRoleType"></a>[ChartMeasureRoleType](UI.xml#L800)


Member|Value|Description
:-----|----:|:----------
[Axis1](UI.xml#L801)|0|
[Axis2](UI.xml#L802)|1|
[Axis3](UI.xml#L803)|2|

## <a name="ValueCriticalityType"></a>[ValueCriticalityType](UI.xml#L811) *(Experimental)*
Assigns a fixed criticality to a primitive value. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Value](UI.xml#L815)|PrimitiveType|
[Criticality](UI.xml#L816)|[CriticalityType](#CriticalityType)|

## <a name="Facet"></a>[*Facet*](UI.xml#L848)
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L850)|String|Facet label
[ID](UI.xml#L854)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

## <a name="CollectionFacet"></a>[CollectionFacet](UI.xml#L859): [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L850)|String|Facet label
[*ID*](UI.xml#L854)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Facets](UI.xml#L861)|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

## <a name="ReferenceFacet"></a>[ReferenceFacet](UI.xml#L866): [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L850)|String|Facet label
[*ID*](UI.xml#L854)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Target](UI.xml#L868)|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge

## <a name="ReferenceURLFacet"></a>[ReferenceURLFacet](UI.xml#L873): [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L850)|String|Facet label
[*ID*](UI.xml#L854)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Url](UI.xml#L875)|URL|URL of referenced information
[UrlContentType](UI.xml#L879)|MediaType|Media type of referenced information

## <a name="SelectionPresentationVariantType"></a>[SelectionPresentationVariantType](UI.xml#L892)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L893)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L898)|String|Name of the bundling variant
[SelectionVariant](UI.xml#L902)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[PresentationVariant](UI.xml#L906)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

## <a name="PresentationVariantType"></a>[PresentationVariantType](UI.xml#L918)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L919)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L922)|String|Name of the presentation variant
[MaxItems](UI.xml#L926)|Int32|Maximum number of items that should be included in the result
[SortOrder](UI.xml#L929)|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
[GroupBy](UI.xml#L933)|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with `InitialExpansionLevel`.
[TotalBy](UI.xml#L942)|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
[Total](UI.xml#L949)|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
[IncludeGrandTotal](UI.xml#L954)|Boolean|Result should include a grand total for the properties specified in Total
[InitialExpansionLevel](UI.xml#L957)|Int32|Level up to which the hierarchy defined for the queried collection should be expanded initially. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
[Visualizations](UI.xml#L963)|\[AnnotationPath\]|Lists available visualization types. Currently supported types are `UI.LineItem`, `UI.Chart`, and `UI.DataPoint`. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different presentation variants. A reference to `UI.Lineitem` should always be part of collection (least common denominator for renderers). The first entry of the collection is the default visualization.
[RequestAtLeast](UI.xml#L973)|\[PropertyPath\]|Properties that should always be included in the result of the queried collection
[SelectionFields](UI.xml#L977) *(Experimental)*|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a `UI.SelectionFields` annotation via Path.

## <a name="SelectionVariantType"></a>[SelectionVariantType](UI.xml#L991)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L992)|String|May contain identifier to reference this instance from an external context
[Text](UI.xml#L997)|String|Name of the selection variant
[Parameters](UI.xml#L1001)|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
[FilterExpression](UI.xml#L1004)|String|Filter string for query part of URL, without `$filter=`
[SelectOptions](UI.xml#L1009)|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>[*ParameterAbstract*](UI.xml#L1016)
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

## <a name="Parameter"></a>[Parameter](UI.xml#L1019): [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1021)|PropertyPath|Path to a key property of a parameter entity type
[PropertyValue](UI.xml#L1024)|PrimitiveType|Value for the key property

## <a name="IntervalParameter"></a>[IntervalParameter](UI.xml#L1028): [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
[PropertyNameFrom](UI.xml#L1030)|PropertyPath|Path to the 'from' property of a parameter entity type
[PropertyValueFrom](UI.xml#L1033)|PrimitiveType|Value for the 'from' property
[PropertyNameTo](UI.xml#L1036)|PropertyPath|Path to the 'to' property of a parameter entity type
[PropertyValueTo](UI.xml#L1039)|PrimitiveType|Value for the 'to' property

## <a name="SelectOptionType"></a>[SelectOptionType](UI.xml#L1044)
List of value ranges for a single property

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1046)|PropertyPath|Path to the property
[Ranges](UI.xml#L1049)|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

## <a name="SelectionRangeType"></a>[SelectionRangeType](UI.xml#L1054)
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
[Sign](UI.xml#L1058)|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
[Option](UI.xml#L1061)|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
[Low](UI.xml#L1064)|PrimitiveType|Single value or lower interval boundary
[High](UI.xml#L1067)|PrimitiveType|Upper interval boundary

## <a name="SelectionRangeSignType"></a>[SelectionRangeSignType](UI.xml#L1072)


Member|Value|Description
:-----|----:|:----------
[I](UI.xml#L1073)|0|Inclusive
[E](UI.xml#L1076)|1|Exclusive

## <a name="SelectionRangeOptionType"></a>[SelectionRangeOptionType](UI.xml#L1081)
Comparison operator

Member|Value|Description
:-----|----:|:----------
[EQ](UI.xml#L1083)|0|Equal to
[BT](UI.xml#L1086)|1|Between
[CP](UI.xml#L1089)|2|Contains pattern
[LE](UI.xml#L1092)|3|Less than or equal to
[GE](UI.xml#L1095)|4|Greater than or equal to
[NE](UI.xml#L1098)|5|Not equal to
[NB](UI.xml#L1101)|6|Not between
[NP](UI.xml#L1104)|7|Does not contain pattern
[GT](UI.xml#L1107)|8|Greater than
[LT](UI.xml#L1110)|9|Less than

## <a name="TextArrangementType"></a>[TextArrangementType](UI.xml#L1156)


Member|Value|Description
:-----|----:|:----------
[TextFirst](UI.xml#L1157)|0|Text is first, followed by the code/ID (e.g. in parentheses)
[TextLast](UI.xml#L1160)|1|Code/ID is first, followed by the text (e.g. separated by a dash)
[TextSeparate](UI.xml#L1163)|2|Code/ID and text are represented separately
[TextOnly](UI.xml#L1166)|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

## <a name="ImportanceType"></a>[ImportanceType](UI.xml#L1182)


Member|Value|Description
:-----|----:|:----------
[High](UI.xml#L1183)|0|High importance
[Medium](UI.xml#L1186)|1|Medium importance
[Low](UI.xml#L1189)|2|Low importance

## <a name="DataFieldAbstract"></a>[*DataFieldAbstract*](UI.xml#L1216)


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
[Label](UI.xml#L1217)|String|A short, human-readable text suitable for labels and captions in UIs
[Criticality](UI.xml#L1221)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[CriticalityRepresentation](UI.xml#L1224)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[IconUrl](UI.xml#L1227)|URL|Optional icon to decorate the value

## <a name="CriticalityRepresentationType"></a>[CriticalityRepresentationType](UI.xml#L1233)


Member|Value|Description
:-----|----:|:----------
[WithIcon](UI.xml#L1234)|0|Criticality is represented with an icon
[WithoutIcon](UI.xml#L1237)|1|Criticality is represented without icon, e.g. only via text color

## <a name="DataFieldForAnnotation"></a>[DataFieldForAnnotation](UI.xml#L1242): [DataFieldAbstract](#DataFieldAbstract)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1217)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1221)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1224)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1227)|URL|Optional icon to decorate the value
[Target](UI.xml#L1243)|AnnotationPath|Target MUST reference an annotation of terms Communication.Contact, Communication.Address, UI.DataPoint, UI.Chart, UI.FieldGroup, or UI.ConnectedFields

## <a name="DataFieldForActionAbstract"></a>[*DataFieldForActionAbstract*](UI.xml#L1249): [DataFieldAbstract](#DataFieldAbstract)
Abstract type to bundle DataFieldForAction and DataFieldForIntentBasedNavigation

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1217)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1221)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1224)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1227)|URL|Optional icon to decorate the value
[Inline](UI.xml#L1252)|Boolean|Action should be placed close to (or even inside) the visualized term
[Determining](UI.xml#L1255)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

## <a name="DataFieldForAction"></a>[DataFieldForAction](UI.xml#L1261): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The action is NOT tied to a data value (in contrast to DataFieldWithAction)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1217)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1221)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1224)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1227)|URL|Optional icon to decorate the value
[*Inline*](UI.xml#L1252)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1255)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[Action](UI.xml#L1263)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
[InvocationGrouping](UI.xml#L1267)|[OperationGroupingType](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

## <a name="OperationGroupingType"></a>[OperationGroupingType](UI.xml#L1272)


Member|Value|Description
:-----|----:|:----------
[Isolated](UI.xml#L1273)|0|
[ChangeSet](UI.xml#L1274)|1|

## <a name="DataFieldForIntentBasedNavigation"></a>[DataFieldForIntentBasedNavigation](UI.xml#L1277): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
The navigation intent is is expressed as a Semantic Object and optionally an Action on that object

The navigation intent is NOT tied to a data value (in contrast to DataFieldWithIntentBasedNavigation), the data field represents a navigation trigger.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1217)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1221)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1224)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1227)|URL|Optional icon to decorate the value
[*Inline*](UI.xml#L1252)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1255)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[SemanticObject](UI.xml#L1282)|String|Name of the Semantic Object
[Action](UI.xml#L1285)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[RequiresContext](UI.xml#L1289)|Boolean|Determines whether a context needs to be passed to the target of this navigation.

## <a name="DataField"></a>[DataField](UI.xml#L1295): [DataFieldAbstract](#DataFieldAbstract)


**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1217)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1221)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1224)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1227)|URL|Optional icon to decorate the value
[Value](UI.xml#L1296)|PrimitiveType|The data field's value

## <a name="DataFieldWithAction"></a>[DataFieldWithAction](UI.xml#L1302): [DataField](#DataField)
The action is tied to a data value which could be render as a button or link that triggers the action. This is in contrast to DataFieldForAction which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1217)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1221)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1224)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1227)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1296)|PrimitiveType|The data field's value
[Action](UI.xml#L1305)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

## <a name="DataFieldWithIntentBasedNavigation"></a>[DataFieldWithIntentBasedNavigation](UI.xml#L1311): [DataField](#DataField)
The navigation intent is is expressed as a Semantic Object and optionally an Action on that object

The navigation intent is tied to a data value which should be rendered as a hyperlink. This is in contrast to DataFieldForIntentBasedNavigation which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1217)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1221)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1224)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1227)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1296)|PrimitiveType|The data field's value
[SemanticObject](UI.xml#L1316)|String|Name of the Semantic Object
[Action](UI.xml#L1319)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="DataFieldWithNavigationPath"></a>[DataFieldWithNavigationPath](UI.xml#L1325): [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1217)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1221)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1224)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1227)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1296)|PrimitiveType|The data field's value
[Target](UI.xml#L1326)|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

## <a name="DataFieldWithUrl"></a>[DataFieldWithUrl](UI.xml#L1333): [DataField](#DataField)


Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1217)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1221)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1224)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1227)|URL|Optional icon to decorate the value
[*Value*](UI.xml#L1296)|PrimitiveType|The data field's value
[Url](UI.xml#L1334)|URL|Target of the hyperlink
[UrlContentType](UI.xml#L1338)|MediaType|Media type of the hyperlink target, e.g. `video/mp4`

## <a name="RecommendationStateType"></a>[RecommendationStateType](UI.xml#L1370) *(Experimental)*
**Type:** Byte

Indicates whether a field contains or has a recommended value

Editable fields for which a recommendation has been pre-filled or that have recommendations that differ from existing human input need to be highlighted.

Allowed Value|Description
:------------|:----------
[0](UI.xml#L1378)|regular - with human or default input, no recommendation
[1](UI.xml#L1382)|highlighted - without human input and with recommendation
[2](UI.xml#L1386)|warning - with human or default input and with recommendation

## <a name="RecommendationListType"></a>[RecommendationListType](UI.xml#L1403) *(Experimental)*
Reference to a recommendation list

A recommendation consists of one or more values for editable fields plus a rank between 0.0 and 9.9, with 9.9 being the best recommendation.

Property|Type|Description
:-------|:---|:----------
[CollectionPath](UI.xml#L1409)|String|Resource path of a collection of recommended values
[RankProperty](UI.xml#L1412)|String|Name of the property within the collection of recommended values that describes the rank of the recommendation
[Binding](UI.xml#L1416)|\[[RecommendationBinding](#RecommendationBinding)\]|List of pairs of a local property and recommended value property

## <a name="RecommendationBinding"></a>[RecommendationBinding](UI.xml#L1421) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[LocalDataProperty](UI.xml#L1423)|PropertyPath|Path to editable property for which recommended values exist
[ValueListProperty](UI.xml#L1426)|String|Path to property in the collection of recommended values. Format is identical to PropertyPath annotations.
