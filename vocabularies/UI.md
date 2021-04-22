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
[HeaderInfo](UI.xml#L58)|[HeaderInfoType?](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
[Identification](UI.xml#L105)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
[Badge](UI.xml#L110)|[BadgeType?](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
[LineItem](UI.xml#L137)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
[StatusInfo](UI.xml#L142)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
[FieldGroup](UI.xml#L147)|[FieldGroupType?](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
[ConnectedFields](UI.xml#L161)|[ConnectedFieldsType?](#ConnectedFieldsType)|<a name="ConnectedFields"></a>Group of semantically connected fields with a representation template and an optional label ([Example](UI.xml#L163))
[GeoLocations](UI.xml#L226)|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
[GeoLocation](UI.xml#L230)|[GeoLocationType?](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
[Contacts](UI.xml#L250)|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts<br>Each collection item MUST reference an annotation of a Communication.Contact<br>Allowed terms:<br>- [Contact](Communication.md#Contact)
[MediaResource](UI.xml#L261)|[MediaResourceType?](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource
[DataPoint](UI.xml#L315)|[DataPointType?](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
[KPI](UI.xml#L623)|[KPIType?](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
[Chart](UI.xml#L669)|[ChartDefinitionType?](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
[ValueCriticality](UI.xml#L885) *([Experimental](Common.md#Experimental))*|\[[ValueCriticalityType](#ValueCriticalityType)\]|<a name="ValueCriticality"></a>Assign criticalities to primitive values. This information can be used for semantic coloring.
[CriticalityLabels](UI.xml#L898) *([Experimental](Common.md#Experimental))*|\[[CriticalityLabelType](#CriticalityLabelType)\]|<a name="CriticalityLabels"></a>Assign labels to criticalities. This information can be used for semantic coloring. When applied to a property, a label for a criticality must be provided, if more than one value of the annotated property has been assigned to the same criticality. There must be no more than one label per criticality.
[SelectionFields](UI.xml#L919)|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
[Facets](UI.xml#L927)|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
[HeaderFacets](UI.xml#L931)|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
[QuickViewFacets](UI.xml#L935)|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
[QuickCreateFacets](UI.xml#L939)|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
[FilterFacets](UI.xml#L943)|\[[ReferenceFacet](#ReferenceFacet)\]|<a name="FilterFacets"></a>Facets that reference UI.FieldGroup annotations to group filterable fields
[SelectionPresentationVariant](UI.xml#L1004)|[SelectionPresentationVariantType?](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
[PresentationVariant](UI.xml#L1028)|[PresentationVariantType?](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
[SelectionVariant](UI.xml#L1127)|[SelectionVariantType?](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
[ThingPerspective](UI.xml#L1278)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>The annotated term is a Thing Perspective
[IsSummary](UI.xml#L1281)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
[PartOfPreview](UI.xml#L1285)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This Facet and all included Facets are part of the Thing preview
[Map](UI.xml#L1289)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
[Gallery](UI.xml#L1293)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
[IsImageURL](UI.xml#L1298)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image<br>Can be annotated with:<br>- [IsNaturalPerson](Common.md#IsNaturalPerson)
[IsImage](UI.xml#L1308) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImage"></a>Properties annotated with this term MUST be a stream property annotated with a MIME type image<br>Can be annotated with:<br>- [IsNaturalPerson](Common.md#IsNaturalPerson)
[MultiLineText](UI.xml#L1319)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties annotated with this annotation should be rendered as multi-line text (e.g. text area)
[Placeholder](UI.xml#L1324) *([Experimental](Common.md#Experimental))*|String|<a name="Placeholder"></a>A short, human-readable text that gives a hint or an example to help the user with data entry
[TextArrangement](UI.xml#L1330)|[TextArrangementType?](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text<br>If used for a single property the Common.Text annotation is annotated
[Importance](UI.xml#L1349)|[ImportanceType?](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
[Hidden](UI.xml#L1364)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties or facets (see UI.Facet) annotated with this term will not be rendered if the annotation evaluates to true.<br>Hidden properties usually carry technical information that is used for application control and is of no direct interest to end users. The annotation value may be an expression to dynamically hide or render the annotated feature. If a navigation property is annotated with `Hidden` true, all subsequent parts are hidden - independent of their own potential `Hidden` annotations.
[CreateHidden](UI.xml#L1372)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="CreateHidden"></a>EntitySets annotated with this term can control the visibility of the Create operation dynamically<br>The annotation value should be a path to another property from a related entity.
[UpdateHidden](UI.xml#L1377)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="UpdateHidden"></a>EntitySets annotated with this term can control the visibility of the Edit/Save operation dynamically<br>The annotation value should be a path to another property from the same or a related entity.
[DeleteHidden](UI.xml#L1382)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="DeleteHidden"></a>EntitySets annotated with this term can control the visibility of the Delete operation dynamically<br>The annotation value should be a path to another property from the same or a related entity.
[HiddenFilter](UI.xml#L1387)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria if the annotation evaluates to true.<br>Properties annotated with `HiddenFilter` are intended as parts of a `$filter` expression that cannot be directly influenced by end users. The properties will be rendered in all other places, e.g. table columns or form fields. This is in contrast to properties annotated with [Hidden](#Hidden) that are not rendered at all. If a navigation property is annotated with `HiddenFilter` true, all subsequent parts are hidden in filter - independent of their own potential `HiddenFilter` annotations.
[DataFieldDefault](UI.xml#L1396)|[DataFieldAbstract?](#DataFieldAbstract)|<a name="DataFieldDefault"></a>Default representation of a property as a datafield, e.g. when the property is added as a table column or form field via personalization<br>Only concrete subtypes of [DataFieldAbstract](#DataFieldAbstract) can be used for a DataFieldDefault. For type [DataField](#DataField) and its subtypes the annotation target SHOULD be the same property that is referenced via a path expression in the `Value` of the datafield.
[Criticality](UI.xml#L1571)|[CriticalityType?](#CriticalityType)|<a name="Criticality"></a>Service-calculated criticality, alternative to UI.CriticalityCalculation
[CriticalityCalculation](UI.xml#L1575)|[CriticalityCalculationType?](#CriticalityCalculationType)|<a name="CriticalityCalculation"></a>Parameters for client-calculated criticality, alternative to UI.Criticality
[Emphasized](UI.xml#L1579) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Emphasized"></a>Highlight something that is of special interest<br>The usage of a property or operation should be highlighted as it's of special interest for the end user
[OrderBy](UI.xml#L1585) *([Experimental](Common.md#Experimental))*|PropertyPath?|<a name="OrderBy"></a>Sort by the referenced property instead of by the annotated property<br>Example: annotated property `SizeCode` has string values XS, S, M, L, XL, referenced property SizeOrder has numeric values -2, -1, 0, 1, 2. Numeric ordering by SizeOrder will be more understandable than lexicographic ordering by SizeCode.
[ParameterDefaultValue](UI.xml#L1591) *([Experimental](Common.md#Experimental))*|PrimitiveType?|<a name="ParameterDefaultValue"></a>Define default values for action parameters<br>For unbound actions the default value can either be a constant expression, or a dynamic expression using absolute paths, e.g. singletons or function import results. Whereas for bound actions the bound entity and its properties and associated properties can be used as default values
[RecommendationState](UI.xml#L1598)|[RecommendationStateType?](#RecommendationStateType)|<a name="RecommendationState"></a>Indicates whether a field contains or has a recommended value<br>Intelligent systems can help users by recommending input the user may "prefer".
[RecommendationList](UI.xml#L1628)|[RecommendationListType?](#RecommendationListType)|<a name="RecommendationList"></a>Specifies how to get a list of recommended values for a property or parameter<br>Intelligent systems can help users by recommending input the user may "prefer".
[ExcludeFromNavigationContext](UI.xml#L1660)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ExcludeFromNavigationContext"></a>The contents of this property must not be propagated to the app-to-app navigation context

## <a name="HeaderInfoType"></a>[HeaderInfoType](UI.xml#L62)


Property|Type|Description
:-------|:---|:----------
[TypeName](UI.xml#L63)|String|Name of the main entity type
[TypeNamePlural](UI.xml#L67)|String|Plural form of the name of the main entity type
[Title](UI.xml#L71)|[DataFieldAbstract?](#DataFieldAbstract)|Title, e.g. for overview pages<br>This can be a [DataField](#DataField) and any of its children, or a [DataFieldForAnnotation](#DataFieldForAnnotation) targeting [ConnectedFields](#ConnectedFields).
[Description](UI.xml#L81)|[DataFieldAbstract?](#DataFieldAbstract)|Description, e.g. for overview pages<br>This can be a [DataField](#DataField) and any of its children, or a [DataFieldForAnnotation](#DataFieldForAnnotation) targeting [ConnectedFields](#ConnectedFields).
[ImageUrl](UI.xml#L91)|URL?|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L95)|URL?|Image URL for the entity type
[Initials](UI.xml#L99) *([Experimental](Common.md#Experimental))*|String?|Latin letters to be used in case no ImageUrl or TypeImageUrl is present

## <a name="BadgeType"></a>[BadgeType](UI.xml#L114)


Property|Type|Description
:-------|:---|:----------
[HeadLine](UI.xml#L115)|[DataField](#DataField)|Headline
[Title](UI.xml#L118)|[DataField](#DataField)|Title
[ImageUrl](UI.xml#L121)|URL?|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L125)|URL?|Image URL for the entity type
[MainInfo](UI.xml#L129)|[DataField?](#DataField)|Main information on the business card
[SecondaryInfo](UI.xml#L132)|[DataField?](#DataField)|Additional information on the business card

## <a name="FieldGroupType"></a>[FieldGroupType](UI.xml#L151)


Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L152)|String?|Label for the field group
[Data](UI.xml#L156)|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

## <a name="ConnectedFieldsType"></a>[ConnectedFieldsType](UI.xml#L188)
Group of semantically connected fields with a representation template and an optional label

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L190)|String?|Label for the connected fields
[Template](UI.xml#L194)|String|Template for representing the connected fields<br>Template variables are identifiers enclosed in curly braces, e.g. `{MaterialName} - {MaterialClassName}`. The `Data` collection assigns values to the template variables.
[Data](UI.xml#L199)|[Dictionary](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Dictionary)|Dictionary of template variables<br>Each template variable used in `Template` must be assigned a value here. The value must be of type [DataFieldAbstract](#DataFieldAbstract)

## <a name="GeoLocationType"></a>[GeoLocationType](UI.xml#L234)
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
[Latitude](UI.xml#L236)|Double?|Geographic latitude
[Longitude](UI.xml#L239)|Double?|Geographic longitude
[Location](UI.xml#L242)|GeographyPoint?|A point in a round-earth coordinate system
[Address](UI.xml#L245)|[AddressType?](Communication.md#AddressType)|vCard-style address

## <a name="MediaResourceType"></a>[MediaResourceType](UI.xml#L265)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L266)|URL|URL of media resource
[ContentType](UI.xml#L270)|MediaType?|Content type, such as application/pdf, video/x-flv, image/jpeg
[ByteSize](UI.xml#L274)|Int64?|Resource size in bytes
[ChangedAt](UI.xml#L277)|DateTimeOffset?|Date of last change
[Thumbnail](UI.xml#L280)|[ImageType?](#ImageType)|Thumbnail image
[Title](UI.xml#L283)|[DataField](#DataField)|Resource title
[Description](UI.xml#L286)|[DataField?](#DataField)|Resource description

## <a name="ImageType"></a>[ImageType](UI.xml#L290)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L291)|URL|URL of image
[Width](UI.xml#L295)|String?|Width of image
[Height](UI.xml#L298)|String?|Height of image

## <a name="DataPointType"></a>[DataPointType](UI.xml#L319)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L320)|String?|Title of the data point
[Description](UI.xml#L324)|String?|Short description
[LongDescription](UI.xml#L328)|String?|Full description
[Value](UI.xml#L332)|PrimitiveType|Numeric value<br>The value is typically provided via a `Path` construct. The path MUST lead to a direct property of the same entity type or a property of a complex property (recursively) of that entity type, navigation segments are not allowed.<br/>It could be annotated with either `UoM.ISOCurrency` or `UoM.Unit`. Percentage values are annotated with `UoM.Unit = '%'`. A renderer should take an optional `Common.Text` annotation into consideration.
[TargetValue](UI.xml#L344)|PrimitiveType?|Target value
[ForecastValue](UI.xml#L347)|PrimitiveType?|Forecast value
[MinimumValue](UI.xml#L350)|Decimal?|Minimum value (for output rendering)
[MaximumValue](UI.xml#L353)|Decimal?|Maximum value (for output rendering)
[ValueFormat](UI.xml#L356)|[NumberFormat?](#NumberFormat)|Number format
[Visualization](UI.xml#L359)|[VisualizationType?](#VisualizationType)|Preferred visualization
[SampleSize](UI.xml#L362)|PrimitiveType?|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
[ReferencePeriod](UI.xml#L369)|[ReferencePeriod?](#ReferencePeriod)|Reference period
[Criticality](UI.xml#L372)|[CriticalityType?](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
[CriticalityLabels](UI.xml#L375)|AnnotationPath?|Custom labels for the criticality legend. Annotation path MUST end in UI.CriticalityLabels<br>Allowed terms:<br>- [CriticalityLabels](#CriticalityLabels)
[CriticalityRepresentation](UI.xml#L383) *([Experimental](Common.md#Experimental))*|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[CriticalityCalculation](UI.xml#L387)|[CriticalityCalculationType?](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
[Trend](UI.xml#L390)|[TrendType?](#TrendType)|Service-calculated trend, alternative to TrendCalculation
[TrendCalculation](UI.xml#L393)|[TrendCalculationType?](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
[Responsible](UI.xml#L396)|[ContactType?](Communication.md#ContactType)|Contact person

## <a name="NumberFormat"></a>[NumberFormat](UI.xml#L401)
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
[ScaleFactor](UI.xml#L403)|Decimal?|Display value in *ScaleFactor* units, e.g. 1000 for k (kilo), 1e6 for M (Mega)
[NumberOfFractionalDigits](UI.xml#L406)|Byte?|Number of fractional digits of the scaled value to be visualized

## <a name="VisualizationType"></a>[VisualizationType](UI.xml#L411)


Member|Value|Description
:-----|----:|:----------
[Number](UI.xml#L412)|0|Visualize as a number
[BulletChart](UI.xml#L415)|1|Visualize as bullet chart - requires TargetValue
[Progress](UI.xml#L418)|2|Visualize as progress indicator - requires TargetValue
[Rating](UI.xml#L421)|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
[Donut](UI.xml#L424)|4|Visualize as donut, optionally with missing segment - requires TargetValue
[DeltaBulletChart](UI.xml#L427)|5|Visualize as delta bullet chart - requires TargetValue

## <a name="ReferencePeriod"></a>[ReferencePeriod](UI.xml#L432)
Reference period

Property|Type|Description
:-------|:---|:----------
[Description](UI.xml#L434)|String?|Short description of the reference period
[Start](UI.xml#L438)|DateTimeOffset?|Start of the reference period
[End](UI.xml#L441)|DateTimeOffset?|End of the reference period

## <a name="CriticalityType"></a>[CriticalityType](UI.xml#L446)
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
[VeryNegative](UI.xml#L448) *([Experimental](Common.md#Experimental))*|-1|Very negative / dark-red status - risk - out of stock - late
[Neutral](UI.xml#L452)|0|Neutral / grey status - inactive - open - in progress
[Negative](UI.xml#L455)|1|Negative / red status - attention - overload - alert
[Critical](UI.xml#L458)|2|Critical / orange status - warning
[Positive](UI.xml#L461)|3|Positive / green status - completed - available - on track - acceptable
[VeryPositive](UI.xml#L464) *([Experimental](Common.md#Experimental))*|4|Very positive - above max stock - excess
[Information](UI.xml#L468) *([Experimental](Common.md#Experimental))*|5|Information - noticable - informative

## <a name="CriticalityCalculationType"></a>[CriticalityCalculationType](UI.xml#L474): [CriticalityThresholdsType](#CriticalityThresholdsType)
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
[*AcceptanceRangeLowValue*](UI.xml#L529)|PrimitiveType?|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L532)|PrimitiveType?|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L535)|PrimitiveType?|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L538)|PrimitiveType?|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L541)|PrimitiveType?|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L544)|PrimitiveType?|Highest value that is considered critical
[ReferenceValue](UI.xml#L509) *([Experimental](Common.md#Experimental))*|PrimitiveType?|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L513) *([Experimental](Common.md#Experimental))*|Boolean|Calculate with a relative difference
[ImprovementDirection](UI.xml#L517)|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
[ConstantThresholds](UI.xml#L520) *([Experimental](Common.md#Experimental))*|\[[LevelThresholdsType](#LevelThresholdsType)\]|List of thresholds depending on the aggregation level as a set of constant values<br>Constant thresholds shall only be used in order to refine constant values given for the data point overall (aggregation level with empty collection of property paths), but not if the thresholds are based on other measure elements.

## <a name="CriticalityThresholdsType"></a>[CriticalityThresholdsType](UI.xml#L527)
Thresholds for calculating the criticality of a value

**Derived Types:**
- [CriticalityCalculationType](#CriticalityCalculationType)
- [LevelThresholdsType](#LevelThresholdsType)

Property|Type|Description
:-------|:---|:----------
[AcceptanceRangeLowValue](UI.xml#L529)|PrimitiveType?|Lowest value that is considered positive
[AcceptanceRangeHighValue](UI.xml#L532)|PrimitiveType?|Highest value that is considered positive
[ToleranceRangeLowValue](UI.xml#L535)|PrimitiveType?|Lowest value that is considered neutral
[ToleranceRangeHighValue](UI.xml#L538)|PrimitiveType?|Highest value that is considered neutral
[DeviationRangeLowValue](UI.xml#L541)|PrimitiveType?|Lowest value that is considered critical
[DeviationRangeHighValue](UI.xml#L544)|PrimitiveType?|Highest value that is considered critical

## <a name="ImprovementDirectionType"></a>[ImprovementDirectionType](UI.xml#L549)
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
[Minimize](UI.xml#L551)|1|Lower is better
[Target](UI.xml#L554)|2|Closer to the target is better
[Maximize](UI.xml#L557)|3|Higher is better

## <a name="LevelThresholdsType"></a>[LevelThresholdsType](UI.xml#L562): [CriticalityThresholdsType](#CriticalityThresholdsType) *([Experimental](Common.md#Experimental))*
Thresholds for an aggregation level

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](UI.xml#L529)|PrimitiveType?|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L532)|PrimitiveType?|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L535)|PrimitiveType?|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L538)|PrimitiveType?|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L541)|PrimitiveType?|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L544)|PrimitiveType?|Highest value that is considered critical
[AggregationLevel](UI.xml#L565)|\[PropertyPath\]|An unordered tuple of dimensions, i.e. properties which are intended to be used for grouping in aggregating requests. In analytical UIs, e.g. an analytical chart, the aggregation level typically corresponds to the visible dimensions.

## <a name="TrendType"></a>[TrendType](UI.xml#L570)
The trend of a value

Member|Value|Description
:-----|----:|:----------
[StrongUp](UI.xml#L572)|1|Value grows strongly
[Up](UI.xml#L575)|2|Value grows
[Sideways](UI.xml#L578)|3|Value does not significantly grow or shrink
[Down](UI.xml#L581)|4|Value shrinks
[StrongDown](UI.xml#L584)|5|Value shrinks strongly

## <a name="TrendCalculationType"></a>[TrendCalculationType](UI.xml#L589)
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
[ReferenceValue](UI.xml#L603)|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L606)|Boolean|Calculate with a relative difference
[UpDifference](UI.xml#L609)|Decimal|Threshold for Up
[StrongUpDifference](UI.xml#L612)|Decimal|Threshold for StrongUp
[DownDifference](UI.xml#L615)|Decimal|Threshold for Down
[StrongDownDifference](UI.xml#L618)|Decimal|Threshold for StrongDown

## <a name="KPIType"></a>[KPIType](UI.xml#L629)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L630)|String?|Optional identifier to reference this instance from an external context
[ShortDescription](UI.xml#L635) *([Experimental](Common.md#Experimental))*|String?|Very short description
[SelectionVariant](UI.xml#L640)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[DataPoint](UI.xml#L643)|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
[AdditionalDataPoints](UI.xml#L646)|\[[DataPointType](#DataPointType)\]|Additional data points, either specified inline or referencing another annotation via Path<br>Additional data points are typically related to the main data point and provide complementing information or could be used for comparisons
[Detail](UI.xml#L650)|[KPIDetailType?](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

## <a name="KPIDetailType"></a>[KPIDetailType](UI.xml#L654)


Property|Type|Description
:-------|:---|:----------
[DefaultPresentationVariant](UI.xml#L655)|[PresentationVariantType?](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
[AlternativePresentationVariants](UI.xml#L658)|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path
[SemanticObject](UI.xml#L661)|String?|Name of the Semantic Object. If not specified, use Semantic Object annotated at the property referenced in KPI/DataPoint/Value
[Action](UI.xml#L664)|String?|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="ChartDefinitionType"></a>[ChartDefinitionType](UI.xml#L673)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L674)|String?|Title of the chart
[Description](UI.xml#L678)|String?|Short description
[ChartType](UI.xml#L682)|[ChartType](#ChartType)|Chart type
[AxisScaling](UI.xml#L685)|[ChartAxisScalingType?](#ChartAxisScalingType)|Describes the scale of the chart value axes
[Measures](UI.xml#L688)|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
[DynamicMeasures](UI.xml#L692)|\[AnnotationPath\]|Dynamic properties introduced by annotations and used as measures of the chart<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](#CustomAggregate)
[MeasureAttributes](UI.xml#L701)|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
[Dimensions](UI.xml#L706)|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
[DimensionAttributes](UI.xml#L709)|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
[Actions](UI.xml#L714)|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

## <a name="ChartType"></a>[ChartType](UI.xml#L719)


Member|Value|Description
:-----|----:|:----------
[Column](UI.xml#L720)|0|
[ColumnStacked](UI.xml#L721)|1|
[ColumnDual](UI.xml#L722)|2|
[ColumnStackedDual](UI.xml#L723)|3|
[ColumnStacked100](UI.xml#L724)|4|
[ColumnStackedDual100](UI.xml#L725)|5|
[Bar](UI.xml#L726)|6|
[BarStacked](UI.xml#L727)|7|
[BarDual](UI.xml#L728)|8|
[BarStackedDual](UI.xml#L729)|9|
[BarStacked100](UI.xml#L730)|10|
[BarStackedDual100](UI.xml#L731)|11|
[Area](UI.xml#L732)|12|
[AreaStacked](UI.xml#L733)|13|
[AreaStacked100](UI.xml#L734)|14|
[HorizontalArea](UI.xml#L735)|15|
[HorizontalAreaStacked](UI.xml#L736)|16|
[HorizontalAreaStacked100](UI.xml#L737)|17|
[Line](UI.xml#L738)|18|
[LineDual](UI.xml#L739)|19|
[Combination](UI.xml#L740)|20|
[CombinationStacked](UI.xml#L741)|21|
[CombinationDual](UI.xml#L742)|22|
[CombinationStackedDual](UI.xml#L743)|23|
[HorizontalCombinationStacked](UI.xml#L744)|24|
[Pie](UI.xml#L745)|25|
[Donut](UI.xml#L746)|26|
[Scatter](UI.xml#L747)|27|
[Bubble](UI.xml#L748)|28|
[Radar](UI.xml#L749)|29|
[HeatMap](UI.xml#L750)|30|
[TreeMap](UI.xml#L751)|31|
[Waterfall](UI.xml#L752)|32|
[Bullet](UI.xml#L753)|33|
[VerticalBullet](UI.xml#L754)|34|
[HorizontalWaterfall](UI.xml#L755)|35|
[HorizontalCombinationDual](UI.xml#L756)|36|
[HorizontalCombinationStackedDual](UI.xml#L757)|37|
[Donut100](UI.xml#L758) *([Experimental](Common.md#Experimental))*|38|

## <a name="ChartAxisScalingType"></a>[ChartAxisScalingType](UI.xml#L764)


Property|Type|Description
:-------|:---|:----------
[ScaleBehavior](UI.xml#L765)|[ChartAxisScaleBehaviorType](#ChartAxisScaleBehaviorType)|Scale is fixed or adapts automatically to rendered values
[AutoScaleBehavior](UI.xml#L768)|[ChartAxisAutoScaleBehaviorType?](#ChartAxisAutoScaleBehaviorType)|Settings for automatic scaling
[FixedScaleMultipleStackedMeasuresBoundaryValues](UI.xml#L771)|[FixedScaleMultipleStackedMeasuresBoundaryValuesType?](#FixedScaleMultipleStackedMeasuresBoundaryValuesType)|Boundary values for fixed scaling of a stacking chart type with multiple measures

## <a name="ChartAxisScaleBehaviorType"></a>[ChartAxisScaleBehaviorType](UI.xml#L776)


Member|Value|Description
:-----|----:|:----------
[AutoScale](UI.xml#L777)|0|Value axes scale automatically
[FixedScale](UI.xml#L780)|1|Fixed minimum and maximum values are applied, which are derived from the @UI.MeasureAttributes.DataPoint/MinimumValue and .../MaximumValue annotation by default. For stacking chart types with multiple measures, they are taken from ChartAxisScalingType/FixedScaleMultipleStackedMeasuresBoundaryValues.

## <a name="ChartAxisAutoScaleBehaviorType"></a>[ChartAxisAutoScaleBehaviorType](UI.xml#L789)


Property|Type|Description
:-------|:---|:----------
[ZeroAlwaysVisible](UI.xml#L790)|Boolean|Forces the value axis to always display the zero value
[DataScope](UI.xml#L793)|[ChartAxisAutoScaleDataScopeType](#ChartAxisAutoScaleDataScopeType)|Determines the automatic scaling

## <a name="ChartAxisAutoScaleDataScopeType"></a>[ChartAxisAutoScaleDataScopeType](UI.xml#L798)


Member|Value|Description
:-----|----:|:----------
[DataSet](UI.xml#L799)|0|Minimum and maximum axes values are determined from the entire data set
[VisibleData](UI.xml#L802)|1|Minimum and maximum axes values are determined from the currently visible data. Scrolling will change the scale.

## <a name="FixedScaleMultipleStackedMeasuresBoundaryValuesType"></a>[FixedScaleMultipleStackedMeasuresBoundaryValuesType](UI.xml#L807)


Property|Type|Description
:-------|:---|:----------
[MinimumValue](UI.xml#L808)|Decimal|Minimum value on value axes
[MaximumValue](UI.xml#L811)|Decimal|Maximum value on value axes

## <a name="ChartDimensionAttributeType"></a>[ChartDimensionAttributeType](UI.xml#L816)


Property|Type|Description
:-------|:---|:----------
[Dimension](UI.xml#L817)|PropertyPath?|
[Role](UI.xml#L818)|[ChartDimensionRoleType?](#ChartDimensionRoleType)|
[HierarchyLevel](UI.xml#L819) *([Experimental](Common.md#Experimental))*|Int32?|For a dimension with a hierarchy, members are selected from this level. The root node of the hierarchy is at level 0.
[ValuesForSequentialColorLevels](UI.xml#L823) *([Experimental](Common.md#Experimental))*|\[String\]|All values in this collection should be assigned to levels of the same color.
[EmphasizedValues](UI.xml#L827) *([Experimental](Common.md#Experimental))*|\[String\]|All values in this collection should be emphasized.
[EmphasisLabels](UI.xml#L831) *([Experimental](Common.md#Experimental))*|[EmphasisLabelType?](#EmphasisLabelType)|Assign a label to values with an emphasized representation. This is required, if more than one emphasized value has been specified.

## <a name="ChartMeasureAttributeType"></a>[ChartMeasureAttributeType](UI.xml#L837)
Exactly one of `Measure` and `DynamicMeasure` must be present

Property|Type|Description
:-------|:---|:----------
[Measure](UI.xml#L839)|PropertyPath?|
[DynamicMeasure](UI.xml#L842)|AnnotationPath?|Dynamic property introduced by an annotation and used as a measure in a chart<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](#CustomAggregate)
[Role](UI.xml#L851)|[ChartMeasureRoleType?](#ChartMeasureRoleType)|
[DataPoint](UI.xml#L852)|AnnotationPath?|Annotation path MUST end in @UI.DataPoint and the data point's Value MUST be the same property as in Measure<br>Allowed terms:<br>- [DataPoint](#DataPoint)
[UseSequentialColorLevels](UI.xml#L860) *([Experimental](Common.md#Experimental))*|Boolean|All measures for which this setting is true should be assigned to levels of the same color.

## <a name="ChartDimensionRoleType"></a>[ChartDimensionRoleType](UI.xml#L866)


Member|Value|Description
:-----|----:|:----------
[Category](UI.xml#L867)|0|
[Series](UI.xml#L868)|1|
[Category2](UI.xml#L869)|2|

## <a name="ChartMeasureRoleType"></a>[ChartMeasureRoleType](UI.xml#L872)


Member|Value|Description
:-----|----:|:----------
[Axis1](UI.xml#L873)|0|
[Axis2](UI.xml#L874)|1|
[Axis3](UI.xml#L875)|2|

## <a name="EmphasisLabelType"></a>[EmphasisLabelType](UI.xml#L878) *([Experimental](Common.md#Experimental))*
Assigns a label to the set of emphasized values and optionally also for non-emphasized values. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[EmphasizedValuesLabel](UI.xml#L881)|String|
[NonEmphasizedValuesLabel](UI.xml#L882)|String?|

## <a name="ValueCriticalityType"></a>[ValueCriticalityType](UI.xml#L889) *([Experimental](Common.md#Experimental))*
Assigns a fixed criticality to a primitive value. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Value](UI.xml#L892)|PrimitiveType?|MUST be a fixed value of primitive type
[Criticality](UI.xml#L895)|[CriticalityType?](#CriticalityType)|

## <a name="CriticalityLabelType"></a>[CriticalityLabelType](UI.xml#L909) *([Experimental](Common.md#Experimental))*
Assigns a label to a criticality. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Criticality](UI.xml#L912)|[CriticalityType](#CriticalityType)|
[Label](UI.xml#L913)|String|Criticality label

## <a name="Facet"></a>[*Facet*](UI.xml#L947)
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L949)|String?|Facet label
[ID](UI.xml#L953)|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

## <a name="CollectionFacet"></a>[CollectionFacet](UI.xml#L957): [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L949)|String?|Facet label
[*ID*](UI.xml#L953)|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Facets](UI.xml#L959)|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

## <a name="ReferenceFacet"></a>[ReferenceFacet](UI.xml#L963): [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L949)|String?|Facet label
[*ID*](UI.xml#L953)|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Target](UI.xml#L965)|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge<br>Allowed terms:<br>- [Address](Communication.md#Address)<br>- [Contact](Communication.md#Contact)<br>- [Badge](#Badge)<br>- [Chart](#Chart)<br>- [Contacts](#Contacts)<br>- [DataPoint](#DataPoint)<br>- [FieldGroup](#FieldGroup)<br>- [GeoLocation](#GeoLocation)<br>- [GeoLocations](#GeoLocations)<br>- [HeaderInfo](#HeaderInfo)<br>- [Identification](#Identification)<br>- [KPI](#KPI)<br>- [LineItem](#LineItem)<br>- [MediaResource](#MediaResource)<br>- [PresentationVariant](#PresentationVariant)<br>- [SelectionFields](#SelectionFields)<br>- [SelectionPresentationVariant](#SelectionPresentationVariant)<br>- [StatusInfo](#StatusInfo)

## <a name="ReferenceURLFacet"></a>[ReferenceURLFacet](UI.xml#L991): [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L949)|String?|Facet label
[*ID*](UI.xml#L953)|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Url](UI.xml#L993)|URL|URL of referenced information
[UrlContentType](UI.xml#L997)|MediaType?|Media type of referenced information

## <a name="SelectionPresentationVariantType"></a>[SelectionPresentationVariantType](UI.xml#L1010)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1011)|String?|Optional identifier to reference this variant from an external context
[Text](UI.xml#L1016)|String?|Name of the bundling variant
[SelectionVariant](UI.xml#L1020)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[PresentationVariant](UI.xml#L1023)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

## <a name="PresentationVariantType"></a>[PresentationVariantType](UI.xml#L1034)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1035)|String?|Optional identifier to reference this variant from an external context
[Text](UI.xml#L1038)|String?|Name of the presentation variant
[MaxItems](UI.xml#L1042)|Int32?|Maximum number of items that should be included in the result
[SortOrder](UI.xml#L1045)|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
[GroupBy](UI.xml#L1048)|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with `InitialExpansionLevel`.
[TotalBy](UI.xml#L1057)|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
[Total](UI.xml#L1064)|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
[DynamicTotal](UI.xml#L1070)|\[AnnotationPath\]|Dynamic properties introduced by annotations for which aggregated values should be provided for the additional aggregation levels specified in TotalBy<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](#CustomAggregate)
[IncludeGrandTotal](UI.xml#L1079)|Boolean|Result should include a grand total for the properties specified in Total
[InitialExpansionLevel](UI.xml#L1082)|Int32|Level up to which the hierarchy defined for the queried collection should be expanded initially. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
[Visualizations](UI.xml#L1088)|\[AnnotationPath\]|Lists available visualization types. Currently supported types are `UI.LineItem`, `UI.Chart`, and `UI.DataPoint`. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different presentation variants. A reference to `UI.Lineitem` should always be part of the collection (least common denominator for renderers). The first entry of the collection is the default visualization.<br>Allowed terms:<br>- [Chart](#Chart)<br>- [DataPoint](#DataPoint)<br>- [LineItem](#LineItem)
[RequestAtLeast](UI.xml#L1105)|\[PropertyPath\]|Properties that should always be included in the result of the queried collection
[RequestAtLeastDynamic](UI.xml#L1109)|\[AnnotationPath\]|Dynamic properties introduced by annotations that should always be included in the result of the queried collection<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](#CustomAggregate)
[SelectionFields](UI.xml#L1118) *([Experimental](Common.md#Experimental))*|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a `UI.SelectionFields` annotation via Path.

## <a name="SelectionVariantType"></a>[SelectionVariantType](UI.xml#L1132)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1133)|String?|May contain identifier to reference this instance from an external context
[Text](UI.xml#L1138)|String?|Name of the selection variant
[Parameters](UI.xml#L1142)|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
[FilterExpression](UI.xml#L1145)|String?|Filter string for query part of URL, without `$filter=`
[SelectOptions](UI.xml#L1150)|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>[*ParameterAbstract*](UI.xml#L1157)
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

## <a name="Parameter"></a>[Parameter](UI.xml#L1160): [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1162)|PropertyPath|Path to a key property of a parameter entity type
[PropertyValue](UI.xml#L1165)|PrimitiveType|Value for the key property

## <a name="IntervalParameter"></a>[IntervalParameter](UI.xml#L1169): [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
[PropertyNameFrom](UI.xml#L1171)|PropertyPath|Path to the 'from' property of a parameter entity type
[PropertyValueFrom](UI.xml#L1174)|PrimitiveType|Value for the 'from' property
[PropertyNameTo](UI.xml#L1177)|PropertyPath|Path to the 'to' property of a parameter entity type
[PropertyValueTo](UI.xml#L1180)|PrimitiveType|Value for the 'to' property

## <a name="SelectOptionType"></a>[SelectOptionType](UI.xml#L1185)
List of value ranges for a single property

Exactly one of `PropertyName` and `DynamicPropertyName` must be present

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1188)|PropertyPath?|Path to the property
[DynamicPropertyName](UI.xml#L1200)|AnnotationPath?|Dynamic property introduced by annotations for which value ranges are specified<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](#CustomAggregate)
[Ranges](UI.xml#L1209)|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

## <a name="SelectionRangeType"></a>[SelectionRangeType](UI.xml#L1214)
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
[Sign](UI.xml#L1218)|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
[Option](UI.xml#L1221)|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
[Low](UI.xml#L1224)|PrimitiveType|Single value or lower interval boundary
[High](UI.xml#L1227)|PrimitiveType?|Upper interval boundary

## <a name="SelectionRangeSignType"></a>[SelectionRangeSignType](UI.xml#L1232)


Member|Value|Description
:-----|----:|:----------
[I](UI.xml#L1233)|0|Inclusive
[E](UI.xml#L1236)|1|Exclusive

## <a name="SelectionRangeOptionType"></a>[SelectionRangeOptionType](UI.xml#L1241)
Comparison operator

Member|Value|Description
:-----|----:|:----------
[EQ](UI.xml#L1243)|0|Equal to
[BT](UI.xml#L1246)|1|Between
[CP](UI.xml#L1249)|2|Contains pattern
[LE](UI.xml#L1252)|3|Less than or equal to
[GE](UI.xml#L1255)|4|Greater than or equal to
[NE](UI.xml#L1258)|5|Not equal to
[NB](UI.xml#L1261)|6|Not between
[NP](UI.xml#L1264)|7|Does not contain pattern
[GT](UI.xml#L1267)|8|Greater than
[LT](UI.xml#L1270)|9|Less than

## <a name="TextArrangementType"></a>[TextArrangementType](UI.xml#L1334)


Member|Value|Description
:-----|----:|:----------
[TextFirst](UI.xml#L1335)|0|Text is first, followed by the code/ID (e.g. in parentheses)
[TextLast](UI.xml#L1338)|1|Code/ID is first, followed by the text (e.g. separated by a dash)
[TextSeparate](UI.xml#L1341)|2|Code/ID and text are represented separately (code/ID will be shown and text can be visualized in a separate place)
[TextOnly](UI.xml#L1344)|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

## <a name="ImportanceType"></a>[ImportanceType](UI.xml#L1352)


Member|Value|Description
:-----|----:|:----------
[High](UI.xml#L1353)|0|High importance
[Medium](UI.xml#L1356)|1|Medium importance
[Low](UI.xml#L1359)|2|Low importance

## <a name="DataFieldAbstract"></a>[*DataFieldAbstract*](UI.xml#L1401)
Elementary building block that represents a piece of data and/or allows triggering an action

By using the applicable terms UI.Hidden, UI.Importance or HTML5.CssDefaults, the visibility, the importance and
          and the default css settings (as the width) of the data field can be influenced. 

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
[Label](UI.xml#L1414)|String?|A short, human-readable text suitable for labels and captions in UIs
[Criticality](UI.xml#L1418)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[CriticalityRepresentation](UI.xml#L1421)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[IconUrl](UI.xml#L1424)|URL?|Optional icon

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="CriticalityRepresentationType"></a>[CriticalityRepresentationType](UI.xml#L1430)


Member|Value|Description
:-----|----:|:----------
[WithIcon](UI.xml#L1431)|0|Criticality is represented with an icon
[WithoutIcon](UI.xml#L1434)|1|Criticality is represented without icon, e.g. only via text color
[OnlyIcon](UI.xml#L1437) *([Experimental](Common.md#Experimental))*|2|Criticality is represented only by using an icon

## <a name="DataFieldForAnnotation"></a>[DataFieldForAnnotation](UI.xml#L1443): [DataFieldAbstract](#DataFieldAbstract)
A structured piece of data described by an annotation

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1414)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1418)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1421)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1424)|URL?|Optional icon
[Target](UI.xml#L1445)|AnnotationPath|Target MUST reference an annotation of terms Communication.Contact, Communication.Address, UI.DataPoint, UI.Chart, UI.FieldGroup, or UI.ConnectedFields<br>Allowed terms:<br>- [Address](Communication.md#Address)<br>- [Contact](Communication.md#Contact)<br>- [Chart](#Chart)<br>- [ConnectedFields](#ConnectedFields)<br>- [DataPoint](#DataPoint)<br>- [FieldGroup](#FieldGroup)

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldForActionAbstract"></a>[*DataFieldForActionAbstract*](UI.xml#L1460): [DataFieldAbstract](#DataFieldAbstract)
Triggers an action

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1414)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1418)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1421)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1424)|URL?|Optional icon
[Inline](UI.xml#L1462)|Boolean|Action should be placed close to (or even inside) the visualized term
[Determining](UI.xml#L1465)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldForAction"></a>[DataFieldForAction](UI.xml#L1470): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
Triggers an OData action

The action is NOT tied to a data value (in contrast to [DataFieldWithAction](#DataFieldWithAction)).

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1414)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1418)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1421)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1424)|URL?|Optional icon
[*Inline*](UI.xml#L1462)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1465)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[Action](UI.xml#L1473)|[ActionOverload](Common.md#ActionOverload)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
[InvocationGrouping](UI.xml#L1476)|[OperationGroupingType?](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="OperationGroupingType"></a>[OperationGroupingType](UI.xml#L1480)


Member|Value|Description
:-----|----:|:----------
[Isolated](UI.xml#L1481)|0|Invoke each action in isolation from other actions
[ChangeSet](UI.xml#L1484)|1|Group all actions into a single change set

## <a name="DataFieldForIntentBasedNavigation"></a>[DataFieldForIntentBasedNavigation](UI.xml#L1489): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
Triggers intent-based UI navigation

The navigation intent is is expressed as a Semantic Object and optionally an Action on that object.

It is NOT tied to a data value (in contrast to [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation))."

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1414)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1418)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1421)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1424)|URL?|Optional icon
[*Inline*](UI.xml#L1462)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1465)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[SemanticObject](UI.xml#L1496)|String|Name of the Semantic Object
[Action](UI.xml#L1499)|String?|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[NavigationAvailable](UI.xml#L1502)|Boolean|The navigation intent is for that user with the selected context and parameters available
[RequiresContext](UI.xml#L1505)|Boolean|Determines whether a context needs to be passed to the target of this navigation.
[Mapping](UI.xml#L1508)|\[[SemanticObjectMappingType](Common.md#SemanticObjectMappingType)\]|Maps properties of the annotated entity type to properties of the Semantic Object

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataField"></a>[DataField](UI.xml#L1513): [DataFieldAbstract](#DataFieldAbstract)
A piece of data

**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1414)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1418)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1421)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1424)|URL?|Optional icon
[Value](UI.xml#L1515)|PrimitiveType|The data field's value

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithAction"></a>[DataFieldWithAction](UI.xml#L1521): [DataField](#DataField)
A piece of data that allows triggering an OData action

The action is tied to a data value which should be rendered as a hyperlink. This is in contrast to [DataFieldForAction](#DataFieldForAction)) which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1414)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1418)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1421)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1424)|URL?|Optional icon
[*Value*](UI.xml#L1515)|PrimitiveType|The data field's value
[Action](UI.xml#L1524)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithIntentBasedNavigation"></a>[DataFieldWithIntentBasedNavigation](UI.xml#L1529): [DataField](#DataField)
A piece of data that allows triggering intent-based UI navigation

The navigation intent is is expressed as a Semantic Object and optionally an Action on that object.

It is tied to a data value which should be rendered as a hyperlink.
This is in contrast to [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation) which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1414)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1418)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1421)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1424)|URL?|Optional icon
[*Value*](UI.xml#L1515)|PrimitiveType|The data field's value
[SemanticObject](UI.xml#L1537)|String|Name of the Semantic Object
[Action](UI.xml#L1540)|String?|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[Mapping](UI.xml#L1543)|\[[SemanticObjectMappingType](Common.md#SemanticObjectMappingType)\]|Maps properties of the annotated entity type to properties of the Semantic Object

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithNavigationPath"></a>[DataFieldWithNavigationPath](UI.xml#L1548): [DataField](#DataField)
A piece of data that allows navigating to related data

It should be rendered as a hyperlink

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1414)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1418)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1421)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1424)|URL?|Optional icon
[*Value*](UI.xml#L1515)|PrimitiveType|The data field's value
[Target](UI.xml#L1551)|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithUrl"></a>[DataFieldWithUrl](UI.xml#L1558): [DataField](#DataField)
A piece of data that allows navigating to other information on the Web

It should be rendered as a hyperlink

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1414)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1418)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1421)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1424)|URL?|Optional icon
[*Value*](UI.xml#L1515)|PrimitiveType|The data field's value
[Url](UI.xml#L1561)|URL|Target of the hyperlink
[UrlContentType](UI.xml#L1565)|MediaType?|Media type of the hyperlink target, e.g. `video/mp4`

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="RecommendationStateType"></a>[RecommendationStateType](UI.xml#L1605)
**Type:** Byte

Indicates whether a field contains or has a recommended value

Editable fields for which a recommendation has been pre-filled or that have recommendations that differ from existing human input need to be highlighted.

Allowed Value|Description
:------------|:----------
[0](UI.xml#L1612)|regular - with human or default input, no recommendation
[1](UI.xml#L1616)|highlighted - without human input and with recommendation
[2](UI.xml#L1620)|warning - with human or default input and with recommendation

## <a name="RecommendationListType"></a>[RecommendationListType](UI.xml#L1635)
Reference to a recommendation list

A recommendation consists of one or more values for editable fields plus a rank between 0.0 and 9.9, with 9.9 being the best recommendation.

Property|Type|Description
:-------|:---|:----------
[CollectionPath](UI.xml#L1640)|String|Resource path of a collection of recommended values
[RankProperty](UI.xml#L1643)|String|Name of the property within the collection of recommended values that describes the rank of the recommendation
[Binding](UI.xml#L1646)|\[[RecommendationBinding](#RecommendationBinding)\]|List of pairs of a local property and recommended value property

## <a name="RecommendationBinding"></a>[RecommendationBinding](UI.xml#L1651)


Property|Type|Description
:-------|:---|:----------
[LocalDataProperty](UI.xml#L1652)|PropertyPath|Path to editable property for which recommended values exist
[ValueListProperty](UI.xml#L1655)|String|Path to property in the collection of recommended values. Format is identical to PropertyPath annotations.
