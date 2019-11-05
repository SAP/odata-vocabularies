# UI Vocabulary
**Namespace: [com.sap.vocabularies.UI.v1](UI.xml)**

Terms for presenting data in user interfaces

The SAP UI Vocabulary aims to optimize usage of data in UI channels.
It focuses on usage patterns of data in UIs, not on UI patterns, and it is completely independent of the
UI technologies or devices used to visualize the data.

These usage patterns represent certain semantic views on business data, some of them very general,
others centering around the concept of a Thing, i.e. something tangible to end users.
Examples for Things are semantic object instances or business object instances.
One example for a usage pattern is the collection of properties which helps the user to identify a Thing,
the [UI.Identification](#Identification) term.
Another example is the [UI.LineItem](#LineItem) term, which is a set of properties suitable for visualizing
a collection of business object instances, e.g. as a list or table.


## Terms

Term|Type|Description
:---|:---|:----------
[HeaderInfo](UI.xml#L55)|[HeaderInfoType](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
[Identification](UI.xml#L106)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
[Badge](UI.xml#L111)|[BadgeType](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
[LineItem](UI.xml#L139)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
[StatusInfo](UI.xml#L144)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
[FieldGroup](UI.xml#L149)|[FieldGroupType](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
[ConnectedFields](UI.xml#L163)|[ConnectedFieldsType](#ConnectedFieldsType)|<a name="ConnectedFields"></a>Group of semantically connected fields with a representation template and an optional label ([Example](UI.xml#L166))
[GeoLocations](UI.xml#L232)|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
[GeoLocation](UI.xml#L236)|[GeoLocationType](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
[Contacts](UI.xml#L256)|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts<p>Each collection item MUST reference an annotation of a Communication.Contact</p>
[MediaResource](UI.xml#L263)|[MediaResourceType](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource
[DataPoint](UI.xml#L317)|[DataPointType](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
[KPI](UI.xml#L632)|[KPIType](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
[Chart](UI.xml#L687)|[ChartDefinitionType](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
[ValueCriticality](UI.xml#L891) *([Experimental](Common.md#Experimental))*|\[[ValueCriticalityType](#ValueCriticalityType)\]|<a name="ValueCriticality"></a>Assign criticalities to primitive values. This information can be used for semantic coloring.
[CriticalityLabels](UI.xml#L906) *([Experimental](Common.md#Experimental))*|\[[CriticalityLabelType](#CriticalityLabelType)\]|<a name="CriticalityLabels"></a>Assign labels to criticalities. This information can be used for semantic coloring. When applied to a property, a label for a criticality must be provided, if more than one value of the annotated property has been assigned to the same criticality. There must be no more than one label per criticality.
[SelectionFields](UI.xml#L928)|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
[Facets](UI.xml#L937)|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
[HeaderFacets](UI.xml#L941)|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
[QuickViewFacets](UI.xml#L945)|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
[QuickCreateFacets](UI.xml#L949)|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
[FilterFacets](UI.xml#L953)|\[[ReferenceFacet](#ReferenceFacet)\]|<a name="FilterFacets"></a>Facets that reference UI.FieldGroup annotations to group filterable fields
[SelectionPresentationVariant](UI.xml#L1017)|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
[PresentationVariant](UI.xml#L1043)|[PresentationVariantType](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
[SelectionVariant](UI.xml#L1117)|[SelectionVariantType](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
[ThingPerspective](UI.xml#L1249)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>The annotated term is a Thing Perspective
[IsSummary](UI.xml#L1252)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
[PartOfPreview](UI.xml#L1257)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This Facet and all included Facets are part of the Thing preview
[Map](UI.xml#L1261)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
[Gallery](UI.xml#L1266)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
[IsImageURL](UI.xml#L1271)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image
[IsImage](UI.xml#L1282) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImage"></a>Properties annotated with this term MUST be a stream property annotated with a MIME type image
[MultiLineText](UI.xml#L1294)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties annotated with this annotation should be rendered as multi-line text (e.g. text area)
[TextArrangement](UI.xml#L1300)|[TextArrangementType](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text<p>If used for a single property the Common.Text annotation is annotated</p>
[Importance](UI.xml#L1327)|[ImportanceType](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
[Hidden](UI.xml#L1342)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties or facets (see UI.Facet) annotated with this term will not be rendered if the annotation evaluates to true.<p>Hidden properties usually carry technical information that is used for application control and is of no direct interest to end users. The annotation value may be an expression to dynamically hide or render the annotated feature.</p>
[CreateHidden](UI.xml#L1349) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="CreateHidden"></a>EntitySets annotated with this term can control the visibility of the Create operation dynamically<p>The annotation value should be a path to another property from the same or an associated EntitySet.</p>
[UpdateHidden](UI.xml#L1358) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="UpdateHidden"></a>EntitySets annotated with this term can control the visibility of the Edit/Save operation dynamically<p>The annotation value should be a path to another property from the same or an associated EntitySet.</p>
[DeleteHidden](UI.xml#L1367) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="DeleteHidden"></a>EntitySets annotated with this term can control the visibility of the Delete operation dynamically<p>The annotation value should be a path to another property from the same or an associated EntitySet.</p>
[HiddenFilter](UI.xml#L1376)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria if the annotation evaluates to true.<p>Properties annotated with `HiddenFilter` are intended as parts of a `$filter` expression that cannot be directly influenced by end users. The properties will be rendered in all other places, e.g. table columns or form fields. This is in contrast to properties annotated with [Hidden](#Hidden) that are not rendered at all.</p>
[DataFieldDefault](UI.xml#L1383)|[DataFieldAbstract](#DataFieldAbstract)|<a name="DataFieldDefault"></a>Default representation of a property as a datafield, e.g. when the property is added as a table column or form field via personalization<p>Only concrete subtypes of [DataFieldAbstract](#DataFieldAbstract) can be used for a DataFieldDefault. For type [DataField](#DataField) and its subtypes the annotation target SHOULD be the same property that is referenced via a path expression in the `Value` of the datafield.</p>
[Criticality](UI.xml#L1559)|[CriticalityType](#CriticalityType)|<a name="Criticality"></a>Service-calculated criticality, alternative to UI.CriticalityCalculation
[CriticalityCalculation](UI.xml#L1563)|[CriticalityCalculationType](#CriticalityCalculationType)|<a name="CriticalityCalculation"></a>Parameters for client-calculated criticality, alternative to UI.Criticality
[OrderBy](UI.xml#L1567) *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="OrderBy"></a>Sort by the referenced property instead of by the annotated property<p>Example: annotated property `SizeCode` has string values XS, S, M, L, XL, referenced property SizeOrder has numeric values -2, -1, 0, 1, 2. Numeric ordering by SizeOrder will be more understandable than lexicographic ordering by SizeCode.</p>
[ParameterDefaultValue](UI.xml#L1574) *([Experimental](Common.md#Experimental))*|PrimitiveType|<a name="ParameterDefaultValue"></a>Define default values for action parameters<p>For unbound actions the default value can either be a constant expression, or a dynamic expression using absolute paths, e.g. singletons or function import results. Whereas for bound actions the bound entity and its properties and associated properties can be used as default values</p>
[RecommendationState](UI.xml#L1582)|[RecommendationStateType](#RecommendationStateType)|<a name="RecommendationState"></a>Indicates whether a field contains or has a recommended value<p>Intelligent systems can help users by recommending input the user may "prefer".</p>
[RecommendationList](UI.xml#L1612)|[RecommendationListType](#RecommendationListType)|<a name="RecommendationList"></a>Specifies how to get a list of recommended values for a property or parameter<p>Intelligent systems can help users by recommending input the user may "prefer".</p>
[ExcludeFromNavigationContext](UI.xml#L1647)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ExcludeFromNavigationContext"></a>The contents of this property must not be propagated to the app-to-app navigation context

## <a name="HeaderInfoType"></a>[HeaderInfoType](UI.xml#L60)


Property|Type|Description
:-------|:---|:----------
[TypeName](UI.xml#L61)|String|Name of the main entity type
[TypeNamePlural](UI.xml#L65)|String|Plural form of the name of the main entity type
[Title](UI.xml#L69)|[DataFieldAbstract](#DataFieldAbstract)|Title, e.g. for overview pages<p>This can be a [DataField](#DataField) and any of its children, or a [DataFieldForAnnotation](#DataFieldForAnnotation) targeting [ConnectedFields](#ConnectedFields).</p>
[Description](UI.xml#L80)|[DataFieldAbstract](#DataFieldAbstract)|Description, e.g. for overview pages<p>This can be a [DataField](#DataField) and any of its children, or a [DataFieldForAnnotation](#DataFieldForAnnotation) targeting [ConnectedFields](#ConnectedFields).</p>
[ImageUrl](UI.xml#L91)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L96)|URL|Image URL for the entity type
[Initials](UI.xml#L100) *([Experimental](Common.md#Experimental))*|String|Latin letters to be used in case no ImageUrl or TypeImageUrl is present

## <a name="BadgeType"></a>[BadgeType](UI.xml#L115)


Property|Type|Description
:-------|:---|:----------
[HeadLine](UI.xml#L116)|[DataField](#DataField)|Headline
[Title](UI.xml#L119)|[DataField](#DataField)|Title
[ImageUrl](UI.xml#L122)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L127)|URL|Image URL for the entity type
[MainInfo](UI.xml#L131)|[DataField](#DataField)|Main information on the business card
[SecondaryInfo](UI.xml#L134)|[DataField](#DataField)|Additional information on the business card

## <a name="FieldGroupType"></a>[FieldGroupType](UI.xml#L153)


Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L154)|String|Label for the field group
[Data](UI.xml#L158)|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

## <a name="ConnectedFieldsType"></a>[ConnectedFieldsType](UI.xml#L191)
Group of semantically connected fields with a representation template and an optional label

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L194)|String|Label for the connected fields
[Template](UI.xml#L198)|String|Template for representing the connected fields<p>Template variables are identifiers enclosed in curly braces, e.g. `{MaterialName} - {MaterialClassName}`. The `Data` collection assigns values to the template variables.</p>
[Data](UI.xml#L204)|[Dictionary](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Dictionary)|Dictionary of template variables<p>Each template variable used in `Template` must be assigned a value here. The value must be of type [DataFieldAbstract](#DataFieldAbstract)</p>

## <a name="GeoLocationType"></a>[GeoLocationType](UI.xml#L240)
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
[Latitude](UI.xml#L242)|Double|Geographic latitude
[Longitude](UI.xml#L245)|Double|Geographic longitude
[Location](UI.xml#L248)|GeographyPoint|A point in a round-earth coordinate system
[Address](UI.xml#L251)|[AddressType](Communication.md#AddressType)|vCard-style address

## <a name="MediaResourceType"></a>[MediaResourceType](UI.xml#L267)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L268)|URL|URL of media resource
[ContentType](UI.xml#L272)|MediaType|Content type, such as application/pdf, video/x-flv, image/jpeg
[ByteSize](UI.xml#L276)|Int64|Resource size in bytes
[ChangedAt](UI.xml#L279)|DateTimeOffset|Date of last change
[Thumbnail](UI.xml#L282)|[ImageType](#ImageType)|Thumbnail image
[Title](UI.xml#L285)|[DataField](#DataField)|Resource title
[Description](UI.xml#L288)|[DataField](#DataField)|Resource description

## <a name="ImageType"></a>[ImageType](UI.xml#L292)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L293)|URL|URL of image
[Width](UI.xml#L297)|String|Width of image
[Height](UI.xml#L300)|String|Height of image

## <a name="DataPointType"></a>[DataPointType](UI.xml#L322)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L323)|String|Title of the data point
[Description](UI.xml#L327)|String|Short description
[LongDescription](UI.xml#L331)|String|Full description
[Value](UI.xml#L335)|PrimitiveType|Numeric value<p>The value is typically provided via a `Path` construct. The path MUST lead to a direct property of the same entity type or a property of a complex property (recursively) of that entity type, navigation segments are not allowed.<br/>It could be annotated with either `UoM.ISOCurrency` or `UoM.Unit`. Percentage values are annotated with `UoM.Unit = '%'`. A renderer should take an optional `Common.Text` annotation into consideration.</p>
[TargetValue](UI.xml#L347)|PrimitiveType|Target value
[ForecastValue](UI.xml#L350)|PrimitiveType|Forecast value
[MinimumValue](UI.xml#L353)|Decimal|Minimum value (for output rendering)
[MaximumValue](UI.xml#L356)|Decimal|Maximum value (for output rendering)
[ValueFormat](UI.xml#L359)|[NumberFormat](#NumberFormat)|Number format
[Visualization](UI.xml#L362)|[VisualizationType](#VisualizationType)|Preferred visualization
[SampleSize](UI.xml#L365)|PrimitiveType|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
[ReferencePeriod](UI.xml#L372)|[ReferencePeriod](#ReferencePeriod)|Reference period
[Criticality](UI.xml#L375)|[CriticalityType](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
[CriticalityLabels](UI.xml#L378)|AnnotationPath|Custom labels for the criticality legend. Annotation path MUST end in UI.CriticalityLabels
[CriticalityRepresentation](UI.xml#L387) *([Experimental](Common.md#Experimental))*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[CriticalityCalculation](UI.xml#L391)|[CriticalityCalculationType](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
[Trend](UI.xml#L394)|[TrendType](#TrendType)|Service-calculated trend, alternative to TrendCalculation
[TrendCalculation](UI.xml#L397)|[TrendCalculationType](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
[Responsible](UI.xml#L400)|[ContactType](Communication.md#ContactType)|Contact person

## <a name="NumberFormat"></a>[NumberFormat](UI.xml#L405)
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
[ScaleFactor](UI.xml#L407)|Decimal|Display value in *ScaleFactor* units, e.g. 1000 for k (kilo), 1e6 for M (Mega)
[NumberOfFractionalDigits](UI.xml#L411)|Byte|Number of fractional digits of the scaled value to be visualized

## <a name="VisualizationType"></a>[VisualizationType](UI.xml#L416)


Member|Value|Description
:-----|----:|:----------
[Number](UI.xml#L417)|0|Visualize as a number
[BulletChart](UI.xml#L420)|1|Visualize as bullet chart - requires TargetValue
[Progress](UI.xml#L423)|2|Visualize as progress indicator - requires TargetValue
[Rating](UI.xml#L426)|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
[Donut](UI.xml#L430)|4|Visualize as donut, optionally with missing segment - requires TargetValue
[DeltaBulletChart](UI.xml#L433)|5|Visualize as delta bullet chart - requires TargetValue

## <a name="ReferencePeriod"></a>[ReferencePeriod](UI.xml#L438)
Reference period

Property|Type|Description
:-------|:---|:----------
[Description](UI.xml#L440)|String|Short description of the reference period
[Start](UI.xml#L444)|DateTimeOffset|Start of the reference period
[End](UI.xml#L447)|DateTimeOffset|End of the reference period

## <a name="CriticalityType"></a>[CriticalityType](UI.xml#L452)
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
[VeryNegative](UI.xml#L455) *([Experimental](Common.md#Experimental))*|-1|Very negative / dark-red status - risk - out of stock - late
[Neutral](UI.xml#L459)|0|Neutral / grey status - inactive - open - in progress
[Negative](UI.xml#L462)|1|Negative / red status - attention - overload - alert
[Critical](UI.xml#L465)|2|Critical / orange status - warning
[Positive](UI.xml#L468)|3|Positive / green status - completed - available - on track - acceptable
[VeryPositive](UI.xml#L471) *([Experimental](Common.md#Experimental))*|4|Very positive / blue status - above max stock - excess

## <a name="CriticalityCalculationType"></a>[CriticalityCalculationType](UI.xml#L477): [CriticalityThresholdsType](#CriticalityThresholdsType)
Describes how to calculate the criticality of a value depending on the improvement direction


The calculation is done by comparing a value to the threshold values relevant for the specified improvement direction.

The value to be compared is
  - Value - if ReferenceValue is not specified
  - Value sub ReferenceValue – if ReferenceValue is specified and IsRelativeDifference is not specified or specified as false
  - (Value sub ReferenceValue) divBy ReferenceValue – if ReferenceValue is specified and IsRelativeDifference is specified as true

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
[*AcceptanceRangeLowValue*](UI.xml#L536)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L539)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L542)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L545)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L548)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L551)|PrimitiveType|Highest value that is considered critical
[ReferenceValue](UI.xml#L513) *([Experimental](Common.md#Experimental))*|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L518) *([Experimental](Common.md#Experimental))*|Boolean|Calculate with a relative difference
[ImprovementDirection](UI.xml#L522)|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
[ConstantThresholds](UI.xml#L525) *([Experimental](Common.md#Experimental))*|\[[LevelThresholdsType](#LevelThresholdsType)\]|List of thresholds depending on the aggregation level as a set of constant values<p>Constant thresholds shall only be used in order to refine constant values given for the data point overall (aggregation level with empty collection of property paths), but not if the thresholds are based on other measure elements.</p>

## <a name="CriticalityThresholdsType"></a>[CriticalityThresholdsType](UI.xml#L534)
Thresholds for calculating the criticality of a value

**Derived Types:**
- [CriticalityCalculationType](#CriticalityCalculationType)
- [LevelThresholdsType](#LevelThresholdsType)

Property|Type|Description
:-------|:---|:----------
[AcceptanceRangeLowValue](UI.xml#L536)|PrimitiveType|Lowest value that is considered positive
[AcceptanceRangeHighValue](UI.xml#L539)|PrimitiveType|Highest value that is considered positive
[ToleranceRangeLowValue](UI.xml#L542)|PrimitiveType|Lowest value that is considered neutral
[ToleranceRangeHighValue](UI.xml#L545)|PrimitiveType|Highest value that is considered neutral
[DeviationRangeLowValue](UI.xml#L548)|PrimitiveType|Lowest value that is considered critical
[DeviationRangeHighValue](UI.xml#L551)|PrimitiveType|Highest value that is considered critical

## <a name="ImprovementDirectionType"></a>[ImprovementDirectionType](UI.xml#L556)
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
[Minimize](UI.xml#L558)|1|Lower is better
[Target](UI.xml#L561)|2|Closer to the target is better
[Maximize](UI.xml#L564)|3|Higher is better

## <a name="LevelThresholdsType"></a>[LevelThresholdsType](UI.xml#L569): [CriticalityThresholdsType](#CriticalityThresholdsType) *([Experimental](Common.md#Experimental))*
Thresholds for an aggregation level

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](UI.xml#L536)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L539)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L542)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L545)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L548)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L551)|PrimitiveType|Highest value that is considered critical
[AggregationLevel](UI.xml#L572)|\[PropertyPath\]|An unordered tuple of dimensions, i.e. properties which are intended to be used for grouping in aggregating requests. In analytical UIs, e.g. an analytical chart, the aggregation level typically corresponds to the visible dimensions.

## <a name="TrendType"></a>[TrendType](UI.xml#L578)
The trend of a value

Member|Value|Description
:-----|----:|:----------
[StrongUp](UI.xml#L580)|1|Value grows strongly
[Up](UI.xml#L583)|2|Value grows
[Sideways](UI.xml#L586)|3|Value does not significantly grow or shrink
[Down](UI.xml#L589)|4|Value shrinks
[StrongDown](UI.xml#L592)|5|Value shrinks strongly

## <a name="TrendCalculationType"></a>[TrendCalculationType](UI.xml#L597)
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
[ReferenceValue](UI.xml#L611)|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L615)|Boolean|Calculate with a relative difference
[UpDifference](UI.xml#L618)|Decimal|Threshold for Up
[StrongUpDifference](UI.xml#L621)|Decimal|Threshold for StrongUp
[DownDifference](UI.xml#L624)|Decimal|Threshold for Down
[StrongDownDifference](UI.xml#L627)|Decimal|Threshold for StrongDown

## <a name="KPIType"></a>[KPIType](UI.xml#L638)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L639)|String|Optional identifier to reference this instance from an external context
[ShortDescription](UI.xml#L644) *([Experimental](Common.md#Experimental))*|String|Very short description
[SelectionVariant](UI.xml#L649)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[DataPoint](UI.xml#L653)|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
[AdditionalDataPoints](UI.xml#L657)|\[[DataPointType](#DataPointType)\]|Additional data points, either specified inline or referencing another annotation via Path<p>Additional data points are typically related to the main data point and provide complementing information or could be used for comparisons</p>
[Detail](UI.xml#L663)|[KPIDetailType](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

## <a name="KPIDetailType"></a>[KPIDetailType](UI.xml#L668)


Property|Type|Description
:-------|:---|:----------
[DefaultPresentationVariant](UI.xml#L669)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
[AlternativePresentationVariants](UI.xml#L673)|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path
[SemanticObject](UI.xml#L677)|String|Name of the Semantic Object. If not specified, use Semantic Object annotated at the property referenced in KPI/DataPoint/Value
[Action](UI.xml#L681)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="ChartDefinitionType"></a>[ChartDefinitionType](UI.xml#L691)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L692)|String|Title of the chart
[Description](UI.xml#L696)|String|Short description
[ChartType](UI.xml#L700)|[ChartType](#ChartType)|Chart type
[AxisScaling](UI.xml#L703)|[ChartAxisScalingType](#ChartAxisScalingType)|Describes the scale of the chart value axes
[Measures](UI.xml#L706)|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
[MeasureAttributes](UI.xml#L709)|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
[Dimensions](UI.xml#L714)|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
[DimensionAttributes](UI.xml#L717)|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
[Actions](UI.xml#L722)|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

## <a name="ChartType"></a>[ChartType](UI.xml#L727)


Member|Value|Description
:-----|----:|:----------
[Column](UI.xml#L728)|0|
[ColumnStacked](UI.xml#L729)|1|
[ColumnDual](UI.xml#L730)|2|
[ColumnStackedDual](UI.xml#L731)|3|
[ColumnStacked100](UI.xml#L732)|4|
[ColumnStackedDual100](UI.xml#L733)|5|
[Bar](UI.xml#L734)|6|
[BarStacked](UI.xml#L735)|7|
[BarDual](UI.xml#L736)|8|
[BarStackedDual](UI.xml#L737)|9|
[BarStacked100](UI.xml#L738)|10|
[BarStackedDual100](UI.xml#L739)|11|
[Area](UI.xml#L740)|12|
[AreaStacked](UI.xml#L741)|13|
[AreaStacked100](UI.xml#L742)|14|
[HorizontalArea](UI.xml#L743)|15|
[HorizontalAreaStacked](UI.xml#L744)|16|
[HorizontalAreaStacked100](UI.xml#L745)|17|
[Line](UI.xml#L746)|18|
[LineDual](UI.xml#L747)|19|
[Combination](UI.xml#L748)|20|
[CombinationStacked](UI.xml#L749)|21|
[CombinationDual](UI.xml#L750)|22|
[CombinationStackedDual](UI.xml#L751)|23|
[HorizontalCombinationStacked](UI.xml#L752)|24|
[Pie](UI.xml#L753)|25|
[Donut](UI.xml#L754)|26|
[Scatter](UI.xml#L755)|27|
[Bubble](UI.xml#L756)|28|
[Radar](UI.xml#L757)|29|
[HeatMap](UI.xml#L758)|30|
[TreeMap](UI.xml#L759)|31|
[Waterfall](UI.xml#L760)|32|
[Bullet](UI.xml#L761)|33|
[VerticalBullet](UI.xml#L762)|34|
[HorizontalWaterfall](UI.xml#L763)|35|
[HorizontalCombinationDual](UI.xml#L764)|36|
[HorizontalCombinationStackedDual](UI.xml#L765)|37|
[Donut100](UI.xml#L766) *([Experimental](Common.md#Experimental))*|38|

## <a name="ChartAxisScalingType"></a>[ChartAxisScalingType](UI.xml#L772)


Property|Type|Description
:-------|:---|:----------
[ScaleBehavior](UI.xml#L773)|[ChartAxisScaleBehaviorType](#ChartAxisScaleBehaviorType)|Scale is fixed or adapts automatically to rendered values
[AutoScaleBehavior](UI.xml#L776)|[ChartAxisAutoScaleBehaviorType](#ChartAxisAutoScaleBehaviorType)|Settings for automatic scaling
[FixedScaleMultipleStackedMeasuresBoundaryValues](UI.xml#L781)|[FixedScaleMultipleStackedMeasuresBoundaryValuesType](#FixedScaleMultipleStackedMeasuresBoundaryValuesType)|Boundary values for fixed scaling of a stacking chart type with multiple measures

## <a name="ChartAxisScaleBehaviorType"></a>[ChartAxisScaleBehaviorType](UI.xml#L787)


Member|Value|Description
:-----|----:|:----------
[AutoScale](UI.xml#L788)|0|Value axes scale automatically
[FixedScale](UI.xml#L791)|1|Fixed minimum and maximum values are applied, which are derived from the @UI.MeasureAttributes.DataPoint/MinimumValue and .../MaximumValue annotation by default. For stacking chart types with multiple measures, they are taken from ChartAxisScalingType/FixedScaleMultipleStackedMeasuresBoundaryValues.

## <a name="ChartAxisAutoScaleBehaviorType"></a>[ChartAxisAutoScaleBehaviorType](UI.xml#L800)


Property|Type|Description
:-------|:---|:----------
[ZeroAlwaysVisible](UI.xml#L801)|Boolean|Forces the value axis to always display the zero value
[DataScope](UI.xml#L804)|[ChartAxisAutoScaleDataScopeType](#ChartAxisAutoScaleDataScopeType)|Determines the automatic scaling

## <a name="ChartAxisAutoScaleDataScopeType"></a>[ChartAxisAutoScaleDataScopeType](UI.xml#L809)


Member|Value|Description
:-----|----:|:----------
[DataSet](UI.xml#L810)|0|Minimum and maximum axes values are determined from the entire data set
[VisibleData](UI.xml#L813)|1|Minimum and maximum axes values are determined from the currently visible data. Scrolling will change the scale.

## <a name="FixedScaleMultipleStackedMeasuresBoundaryValuesType"></a>[FixedScaleMultipleStackedMeasuresBoundaryValuesType](UI.xml#L819)


Property|Type|Description
:-------|:---|:----------
[MinimumValue](UI.xml#L820)|Decimal|Minimum value on value axes
[MaximumValue](UI.xml#L823)|Decimal|Maximum value on value axes

## <a name="ChartDimensionAttributeType"></a>[ChartDimensionAttributeType](UI.xml#L828)


Property|Type|Description
:-------|:---|:----------
[Dimension](UI.xml#L829)|PropertyPath|
[Role](UI.xml#L830)|[ChartDimensionRoleType](#ChartDimensionRoleType)|
[HierarchyLevel](UI.xml#L831) *([Experimental](Common.md#Experimental))*|Int32|For a dimension with a hierarchy, members are selected from this level. The root node of the hierarchy is at level 0.
[ValuesForSequentialColorLevels](UI.xml#L836) *([Experimental](Common.md#Experimental))*|\[String\]|All values in this collection should be assigned to levels of the same color.
[EmphasizedValues](UI.xml#L841) *([Experimental](Common.md#Experimental))*|\[String\]|All values in this collection should be emphasized.
[EmphasisLabels](UI.xml#L845) *([Experimental](Common.md#Experimental))*|[EmphasisLabelType](#EmphasisLabelType)|Assign a label to values with an emphasized representation. This is required, if more than one emphasized value has been specified.

## <a name="ChartMeasureAttributeType"></a>[ChartMeasureAttributeType](UI.xml#L852)


Property|Type|Description
:-------|:---|:----------
[Measure](UI.xml#L853)|PropertyPath|
[Role](UI.xml#L854)|[ChartMeasureRoleType](#ChartMeasureRoleType)|
[DataPoint](UI.xml#L855)|AnnotationPath|Annotation path MUST end in @UI.DataPoint and the data point's Value MUST be the same property as in Measure
[UseSequentialColorLevels](UI.xml#L864) *([Experimental](Common.md#Experimental))*|Boolean|All measures for which this setting is true should be assigned to levels of the same color.

## <a name="ChartDimensionRoleType"></a>[ChartDimensionRoleType](UI.xml#L871)


Member|Value|Description
:-----|----:|:----------
[Category](UI.xml#L872)|0|
[Series](UI.xml#L873)|1|
[Category2](UI.xml#L874)|2|

## <a name="ChartMeasureRoleType"></a>[ChartMeasureRoleType](UI.xml#L877)


Member|Value|Description
:-----|----:|:----------
[Axis1](UI.xml#L878)|0|
[Axis2](UI.xml#L879)|1|
[Axis3](UI.xml#L880)|2|

## <a name="EmphasisLabelType"></a>[EmphasisLabelType](UI.xml#L883) *([Experimental](Common.md#Experimental))*
Assigns a label to the set of emphasized values and optionally also for non-emphasized values. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[EmphasizedValuesLabel](UI.xml#L887)|String|
[NonEmphasizedValuesLabel](UI.xml#L888)|String|

## <a name="ValueCriticalityType"></a>[ValueCriticalityType](UI.xml#L896) *([Experimental](Common.md#Experimental))*
Assigns a fixed criticality to a primitive value. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Value](UI.xml#L900)|PrimitiveType|MUST be a fixed value of primitive type
[Criticality](UI.xml#L903)|[CriticalityType](#CriticalityType)|

## <a name="CriticalityLabelType"></a>[CriticalityLabelType](UI.xml#L917) *([Experimental](Common.md#Experimental))*
Assigns a label to a criticality. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Criticality](UI.xml#L921)|[CriticalityType](#CriticalityType)|
[Label](UI.xml#L922)|String|Criticality label

## <a name="Facet"></a>[*Facet*](UI.xml#L957)
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L959)|String|Facet label
[ID](UI.xml#L963)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

## <a name="CollectionFacet"></a>[CollectionFacet](UI.xml#L968): [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L959)|String|Facet label
[*ID*](UI.xml#L963)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Facets](UI.xml#L970)|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

## <a name="ReferenceFacet"></a>[ReferenceFacet](UI.xml#L975): [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L959)|String|Facet label
[*ID*](UI.xml#L963)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Target](UI.xml#L977)|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge

## <a name="ReferenceURLFacet"></a>[ReferenceURLFacet](UI.xml#L1004): [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L959)|String|Facet label
[*ID*](UI.xml#L963)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Url](UI.xml#L1006)|URL|URL of referenced information
[UrlContentType](UI.xml#L1010)|MediaType|Media type of referenced information

## <a name="SelectionPresentationVariantType"></a>[SelectionPresentationVariantType](UI.xml#L1023)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1024)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L1029)|String|Name of the bundling variant
[SelectionVariant](UI.xml#L1033)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[PresentationVariant](UI.xml#L1037)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

## <a name="PresentationVariantType"></a>[PresentationVariantType](UI.xml#L1049)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1050)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L1053)|String|Name of the presentation variant
[MaxItems](UI.xml#L1057)|Int32|Maximum number of items that should be included in the result
[SortOrder](UI.xml#L1060)|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
[GroupBy](UI.xml#L1064)|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with `InitialExpansionLevel`.
[TotalBy](UI.xml#L1073)|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
[Total](UI.xml#L1080)|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
[IncludeGrandTotal](UI.xml#L1085)|Boolean|Result should include a grand total for the properties specified in Total
[InitialExpansionLevel](UI.xml#L1088)|Int32|Level up to which the hierarchy defined for the queried collection should be expanded initially. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
[Visualizations](UI.xml#L1094)|\[AnnotationPath\]|Lists available visualization types. Currently supported types are `UI.LineItem`, `UI.Chart`, and `UI.DataPoint`. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different presentation variants. A reference to `UI.Lineitem` should always be part of the collection (least common denominator for renderers). The first entry of the collection is the default visualization.
[RequestAtLeast](UI.xml#L1104)|\[PropertyPath\]|Properties that should always be included in the result of the queried collection
[SelectionFields](UI.xml#L1108) *([Experimental](Common.md#Experimental))*|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a `UI.SelectionFields` annotation via Path.

## <a name="SelectionVariantType"></a>[SelectionVariantType](UI.xml#L1122)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1123)|String|May contain identifier to reference this instance from an external context
[Text](UI.xml#L1128)|String|Name of the selection variant
[Parameters](UI.xml#L1132)|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
[FilterExpression](UI.xml#L1135)|String|Filter string for query part of URL, without `$filter=`
[SelectOptions](UI.xml#L1140)|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>[*ParameterAbstract*](UI.xml#L1147)
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

## <a name="Parameter"></a>[Parameter](UI.xml#L1150): [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1152)|PropertyPath|Path to a key property of a parameter entity type
[PropertyValue](UI.xml#L1155)|PrimitiveType|Value for the key property

## <a name="IntervalParameter"></a>[IntervalParameter](UI.xml#L1159): [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
[PropertyNameFrom](UI.xml#L1161)|PropertyPath|Path to the 'from' property of a parameter entity type
[PropertyValueFrom](UI.xml#L1164)|PrimitiveType|Value for the 'from' property
[PropertyNameTo](UI.xml#L1167)|PropertyPath|Path to the 'to' property of a parameter entity type
[PropertyValueTo](UI.xml#L1170)|PrimitiveType|Value for the 'to' property

## <a name="SelectOptionType"></a>[SelectOptionType](UI.xml#L1175)
List of value ranges for a single property

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1177)|PropertyPath|Path to the property
[Ranges](UI.xml#L1180)|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

## <a name="SelectionRangeType"></a>[SelectionRangeType](UI.xml#L1185)
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
[Sign](UI.xml#L1189)|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
[Option](UI.xml#L1192)|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
[Low](UI.xml#L1195)|PrimitiveType|Single value or lower interval boundary
[High](UI.xml#L1198)|PrimitiveType|Upper interval boundary

## <a name="SelectionRangeSignType"></a>[SelectionRangeSignType](UI.xml#L1203)


Member|Value|Description
:-----|----:|:----------
[I](UI.xml#L1204)|0|Inclusive
[E](UI.xml#L1207)|1|Exclusive

## <a name="SelectionRangeOptionType"></a>[SelectionRangeOptionType](UI.xml#L1212)
Comparison operator

Member|Value|Description
:-----|----:|:----------
[EQ](UI.xml#L1214)|0|Equal to
[BT](UI.xml#L1217)|1|Between
[CP](UI.xml#L1220)|2|Contains pattern
[LE](UI.xml#L1223)|3|Less than or equal to
[GE](UI.xml#L1226)|4|Greater than or equal to
[NE](UI.xml#L1229)|5|Not equal to
[NB](UI.xml#L1232)|6|Not between
[NP](UI.xml#L1235)|7|Does not contain pattern
[GT](UI.xml#L1238)|8|Greater than
[LT](UI.xml#L1241)|9|Less than

## <a name="TextArrangementType"></a>[TextArrangementType](UI.xml#L1304)


Member|Value|Description
:-----|----:|:----------
[TextFirst](UI.xml#L1305)|0|Text is first, followed by the code/ID (e.g. in parentheses)
[TextLast](UI.xml#L1308)|1|Code/ID is first, followed by the text (e.g. separated by a dash)
[TextSeparate](UI.xml#L1311)|2|Code/ID and text are represented separately
[TextOnly](UI.xml#L1314)|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

## <a name="ImportanceType"></a>[ImportanceType](UI.xml#L1330)


Member|Value|Description
:-----|----:|:----------
[High](UI.xml#L1331)|0|High importance
[Medium](UI.xml#L1334)|1|Medium importance
[Low](UI.xml#L1337)|2|Low importance

## <a name="DataFieldAbstract"></a>[*DataFieldAbstract*](UI.xml#L1390)
Elementary building block that represents a piece of data and/or allows triggering an action

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
[Label](UI.xml#L1399)|String|A short, human-readable text suitable for labels and captions in UIs
[Criticality](UI.xml#L1403)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[CriticalityRepresentation](UI.xml#L1406)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[IconUrl](UI.xml#L1409)|URL|Optional icon

## <a name="CriticalityRepresentationType"></a>[CriticalityRepresentationType](UI.xml#L1415)


Member|Value|Description
:-----|----:|:----------
[WithIcon](UI.xml#L1416)|0|Criticality is represented with an icon
[WithoutIcon](UI.xml#L1419)|1|Criticality is represented without icon, e.g. only via text color

## <a name="DataFieldForAnnotation"></a>[DataFieldForAnnotation](UI.xml#L1424): [DataFieldAbstract](#DataFieldAbstract)
A structured piece of data described by an annotation

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1399)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1403)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1406)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1409)|URL|Optional icon
[Target](UI.xml#L1426)|AnnotationPath|Target MUST reference an annotation of terms Communication.Contact, Communication.Address, UI.DataPoint, UI.Chart, UI.FieldGroup, or UI.ConnectedFields

## <a name="DataFieldForActionAbstract"></a>[*DataFieldForActionAbstract*](UI.xml#L1442): [DataFieldAbstract](#DataFieldAbstract)
Triggers an action

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1399)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1403)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1406)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1409)|URL|Optional icon
[Inline](UI.xml#L1444)|Boolean|Action should be placed close to (or even inside) the visualized term
[Determining](UI.xml#L1447)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

## <a name="DataFieldForAction"></a>[DataFieldForAction](UI.xml#L1453): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
Triggers an OData action

The action is NOT tied to a data value (in contrast to [DataFieldWithAction](#DataFieldWithAction)).

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1399)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1403)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1406)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1409)|URL|Optional icon
[*Inline*](UI.xml#L1444)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1447)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[Action](UI.xml#L1457)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
[InvocationGrouping](UI.xml#L1461)|[OperationGroupingType](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

## <a name="OperationGroupingType"></a>[OperationGroupingType](UI.xml#L1466)


Member|Value|Description
:-----|----:|:----------
[Isolated](UI.xml#L1467)|0|Invoke each action in isolation from other actions
[ChangeSet](UI.xml#L1470)|1|Group all actions into a single change set

## <a name="DataFieldForIntentBasedNavigation"></a>[DataFieldForIntentBasedNavigation](UI.xml#L1475): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
Triggers intent-based UI navigation

The navigation intent is is expressed as a Semantic Object and optionally an Action on that object.

It is NOT tied to a data value (in contrast to [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation))."

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1399)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1403)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1406)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1409)|URL|Optional icon
[*Inline*](UI.xml#L1444)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1447)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[SemanticObject](UI.xml#L1482)|String|Name of the Semantic Object
[Action](UI.xml#L1485)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[RequiresContext](UI.xml#L1489)|Boolean|Determines whether a context needs to be passed to the target of this navigation.

## <a name="DataField"></a>[DataField](UI.xml#L1495): [DataFieldAbstract](#DataFieldAbstract)
A piece of data

**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1399)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1403)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1406)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1409)|URL|Optional icon
[Value](UI.xml#L1503)|PrimitiveType|The data field's value

## <a name="DataFieldWithAction"></a>[DataFieldWithAction](UI.xml#L1509): [DataField](#DataField)
A piece of data that allows triggering an OData action

The action is tied to a data value which should be rendered as a hyperlink. This is in contrast to [DataFieldForAction](#DataFieldForAction)) which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1399)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1403)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1406)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1409)|URL|Optional icon
[*Value*](UI.xml#L1503)|PrimitiveType|The data field's value
[Action](UI.xml#L1513)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

## <a name="DataFieldWithIntentBasedNavigation"></a>[DataFieldWithIntentBasedNavigation](UI.xml#L1519): [DataField](#DataField)
A piece of data that allows triggering intent-based UI navigation

The navigation intent is is expressed as a Semantic Object and optionally an Action on that object.

It is tied to a data value which should be rendered as a hyperlink.
This is in contrast to [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation) which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1399)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1403)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1406)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1409)|URL|Optional icon
[*Value*](UI.xml#L1503)|PrimitiveType|The data field's value
[SemanticObject](UI.xml#L1527)|String|Name of the Semantic Object
[Action](UI.xml#L1530)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="DataFieldWithNavigationPath"></a>[DataFieldWithNavigationPath](UI.xml#L1536): [DataField](#DataField)
A piece of data that allows navigating to related data

It should be rendered as a hyperlink

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1399)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1403)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1406)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1409)|URL|Optional icon
[*Value*](UI.xml#L1503)|PrimitiveType|The data field's value
[Target](UI.xml#L1539)|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

## <a name="DataFieldWithUrl"></a>[DataFieldWithUrl](UI.xml#L1546): [DataField](#DataField)
A piece of data that allows navigating to other information on the Web

It should be rendered as a hyperlink

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1399)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1403)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1406)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1409)|URL|Optional icon
[*Value*](UI.xml#L1503)|PrimitiveType|The data field's value
[Url](UI.xml#L1549)|URL|Target of the hyperlink
[UrlContentType](UI.xml#L1553)|MediaType|Media type of the hyperlink target, e.g. `video/mp4`

## <a name="RecommendationStateType"></a>[RecommendationStateType](UI.xml#L1589)
**Type:** Byte

Indicates whether a field contains or has a recommended value

Editable fields for which a recommendation has been pre-filled or that have recommendations that differ from existing human input need to be highlighted.

Allowed Value|Description
:------------|:----------
[0](UI.xml#L1596)|regular - with human or default input, no recommendation
[1](UI.xml#L1600)|highlighted - without human input and with recommendation
[2](UI.xml#L1604)|warning - with human or default input and with recommendation

## <a name="RecommendationListType"></a>[RecommendationListType](UI.xml#L1620)
Reference to a recommendation list

A recommendation consists of one or more values for editable fields plus a rank between 0.0 and 9.9, with 9.9 being the best recommendation.

Property|Type|Description
:-------|:---|:----------
[CollectionPath](UI.xml#L1625)|String|Resource path of a collection of recommended values
[RankProperty](UI.xml#L1628)|String|Name of the property within the collection of recommended values that describes the rank of the recommendation
[Binding](UI.xml#L1632)|\[[RecommendationBinding](#RecommendationBinding)\]|List of pairs of a local property and recommended value property

## <a name="RecommendationBinding"></a>[RecommendationBinding](UI.xml#L1637)


Property|Type|Description
:-------|:---|:----------
[LocalDataProperty](UI.xml#L1638)|PropertyPath|Path to editable property for which recommended values exist
[ValueListProperty](UI.xml#L1641)|String|Path to property in the collection of recommended values. Format is identical to PropertyPath annotations.
