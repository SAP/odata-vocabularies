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
[HeaderInfo](UI.xml#L64)|[HeaderInfoType](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
[Identification](UI.xml#L115)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
[Badge](UI.xml#L120)|[BadgeType](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
[LineItem](UI.xml#L147)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
[StatusInfo](UI.xml#L152)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
[FieldGroup](UI.xml#L157)|[FieldGroupType](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
[ConnectedFields](UI.xml#L171)|[ConnectedFieldsType](#ConnectedFieldsType)|<a name="ConnectedFields"></a>Group of semantically connected fields with a representation template and an optional label ([Example](UI.xml#L173))
[GeoLocations](UI.xml#L236)|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
[GeoLocation](UI.xml#L240)|[GeoLocationType](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
[Contacts](UI.xml#L260)|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts<br>Each collection item MUST reference an annotation of a Communication.Contact<br>Allowed terms:<ul><li>[Contact](Communication.md#Contact)</li></ul>
[MediaResource](UI.xml#L271)|[MediaResourceType](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource<br>Either `Url` or `Stream` MUST be present, and never both.
[DataPoint](UI.xml#L351)|[DataPointType](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
[KPI](UI.xml#L659)|[KPIType](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
[Chart](UI.xml#L705)|[ChartDefinitionType](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
[ValueCriticality](UI.xml#L929) *([Experimental](Common.md#Experimental))*|\[[ValueCriticalityType](#ValueCriticalityType)\]|<a name="ValueCriticality"></a>Assign criticalities to primitive values. This information can be used for semantic coloring.
[CriticalityLabels](UI.xml#L942) *([Experimental](Common.md#Experimental))*|\[[CriticalityLabelType](#CriticalityLabelType)\]|<a name="CriticalityLabels"></a>Assign labels to criticalities. This information can be used for semantic coloring. When applied to a property, a label for a criticality must be provided, if more than one value of the annotated property has been assigned to the same criticality. There must be no more than one label per criticality.
[SelectionFields](UI.xml#L963)|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
[Facets](UI.xml#L971)|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
[HeaderFacets](UI.xml#L975)|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
[QuickViewFacets](UI.xml#L979)|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
[QuickCreateFacets](UI.xml#L983)|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
[FilterFacets](UI.xml#L987)|\[[ReferenceFacet](#ReferenceFacet)\]|<a name="FilterFacets"></a>Facets that reference UI.FieldGroup annotations to group filterable fields
[SelectionPresentationVariant](UI.xml#L1060)|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
[PresentationVariant](UI.xml#L1084)|[PresentationVariantType](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
[SelectionVariant](UI.xml#L1197)|[SelectionVariantType](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
[ThingPerspective](UI.xml#L1353)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>The annotated term is a Thing Perspective
[IsSummary](UI.xml#L1356)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
[PartOfPreview](UI.xml#L1360)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This record and all included structural elements are part of the Thing preview<br>This term can be applied e.g. to UI.Facet and UI.DataField
[Map](UI.xml#L1364)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
[Gallery](UI.xml#L1368)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
[IsImageURL](UI.xml#L1373)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image<br>Can be annotated with:<ul><li>[IsNaturalPerson](Common.md#IsNaturalPerson)</li></ul>
[IsImage](UI.xml#L1383) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImage"></a>Properties annotated with this term MUST be a stream property annotated with a MIME type image. Entity types annotated with this term MUST be a media entity type annotated with a MIME type image.<br>Can be annotated with:<ul><li>[IsNaturalPerson](Common.md#IsNaturalPerson)</li></ul>
[MultiLineText](UI.xml#L1394)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties and parameters annotated with this annotation should be rendered as multi-line text (e.g. text area)
[Placeholder](UI.xml#L1399)|String|<a name="Placeholder"></a>A short, human-readable text that gives a hint or an example to help the user with data entry
[InputMask](UI.xml#L1404) *([Experimental](Common.md#Experimental))*|[InputMaskType](#InputMaskType)|<a name="InputMask"></a>Properties or parameters annotated with this term will get a mask in edit mode<br>Input masks improve readability and help to enter data correctly. So, masks can be especially useful for input fields that have a fixed pattern, e.g. DUNS numbers or similar. [Here](../examples/UI.InputMask-sample.xml) you can find an example for this annotation
[TextArrangement](UI.xml#L1438)|[TextArrangementType](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text<br><p>This term annotates one of the following:</p> <ol type="1"> <li>a <a href="Common.md#Text"><code>Common.Text</code></a> annotation of the code or ID property where the annotation value is the text</li> <li>an entity type, this has the same effect as annotating all <code>Common.Text</code> annotations of properties of that entity type.</li> </ol> 
[Note](UI.xml#L1461) *([Experimental](Common.md#Experimental))*|[NoteType](#NoteType)|<a name="Note"></a>Visualization of a note attached to an entity<br>Administrative data is given by the annotations [`Common.CreatedBy`](Common.md#CreatedBy), [`Common.CreatedAt`](Common.md#CreatedAt), [`Common.ChangedBy`](Common.md#ChangedBy), [`Common.ChangedAt`](Common.md#ChangedAt) on the same entity type.
[Importance](UI.xml#L1514)|[ImportanceType](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
[Hidden](UI.xml#L1529)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties or facets (see UI.Facet) annotated with this term will not be rendered if the annotation evaluates to true.<br>Hidden properties usually carry technical information that is used for application control and is of no direct interest to end users. The annotation value may be an expression to dynamically hide or render the annotated feature. If a navigation property is annotated with `Hidden` true, all subsequent parts are hidden - independent of their own potential `Hidden` annotations.
[IsCopyAction](UI.xml#L1537) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCopyAction"></a>The annotated [`DataFieldForAction`](#DataFieldForAction) record references an action that deep-copies an instance of the annotated entity type<br>The referenced action MUST be bound to the annotated entity type and MUST create a new instance of the same entity type as a deep copy of the bound instance. Upon successful completion, the response MUST contain a `Location` header that contains the edit URL or read URL of the created entity, and the response MUST be either `201 Created` and a representation of the created entity, or `204 No Content` if the request included a `Prefer` header with a value of `return=minimal` and did not include the system query options `$select` and `$expand`.
[CreateHidden](UI.xml#L1549)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="CreateHidden"></a>EntitySets annotated with this term can control the visibility of the Create operation dynamically<br>The annotation value should be a path to another property from a related entity.
[UpdateHidden](UI.xml#L1554)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="UpdateHidden"></a>EntitySets annotated with this term can control the visibility of the Edit/Save operation dynamically<br>The annotation value should be a path to another property from the same or a related entity.
[DeleteHidden](UI.xml#L1559)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="DeleteHidden"></a>EntitySets annotated with this term can control the visibility of the Delete operation dynamically<br>The annotation value should be a path to another property from the same or a related entity.
[HiddenFilter](UI.xml#L1564)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria if the annotation evaluates to true.<br>Properties annotated with `HiddenFilter` are intended as parts of a `$filter` expression that cannot be directly influenced by end users. The properties will be rendered in all other places, e.g. table columns or form fields. This is in contrast to properties annotated with [Hidden](#Hidden) that are not rendered at all. If a navigation property is annotated with `HiddenFilter` true, all subsequent parts are hidden in filter - independent of their own potential `HiddenFilter` annotations.
[AdaptationHidden](UI.xml#L1573) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="AdaptationHidden"></a>Properties or entities annotated with this term can't be used for UI adaptation/configuration/personalization<br>The tagged elements can only be used in UI based on metadata, annnotations or code.
[DataFieldDefault](UI.xml#L1579)|[DataFieldAbstract](#DataFieldAbstract)|<a name="DataFieldDefault"></a>Default representation of a property as a datafield, e.g. when the property is added as a table column or form field via personalization<br>Only concrete subtypes of [DataFieldAbstract](#DataFieldAbstract) can be used for a DataFieldDefault. For type [DataField](#DataField) and its subtypes the annotation target SHOULD be the same property that is referenced via a path expression in the `Value` of the datafield.
[Criticality](UI.xml#L1804)|[CriticalityType](#CriticalityType)|<a name="Criticality"></a>Service-calculated criticality, alternative to UI.CriticalityCalculation
[CriticalityCalculation](UI.xml#L1808)|[CriticalityCalculationType](#CriticalityCalculationType)|<a name="CriticalityCalculation"></a>Parameters for client-calculated criticality, alternative to UI.Criticality
[Emphasized](UI.xml#L1812) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Emphasized"></a>Highlight something that is of special interest<br>The usage of a property or operation should be highlighted as it's of special interest for the end user
[OrderBy](UI.xml#L1818) *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="OrderBy"></a>Sort by the referenced property instead of by the annotated property<br>Example: annotated property `SizeCode` has string values XS, S, M, L, XL, referenced property SizeOrder has numeric values -2, -1, 0, 1, 2. Numeric ordering by SizeOrder will be more understandable than lexicographic ordering by SizeCode.
[ParameterDefaultValue](UI.xml#L1824)|PrimitiveType?|<a name="ParameterDefaultValue"></a>Define default values for action parameters<br>For unbound actions the default value can either be a constant expression, or a dynamic expression using absolute paths, e.g. singletons or function import results. Whereas for bound actions the bound entity and its properties and associated properties can be used as default values
[RecommendationState](UI.xml#L1830)|[RecommendationStateType](#RecommendationStateType)|<a name="RecommendationState"></a>Indicates whether a field contains or has a recommended value<br>Intelligent systems can help users by recommending input the user may "prefer".
[RecommendationList](UI.xml#L1860)|[RecommendationListType](#RecommendationListType)|<a name="RecommendationList"></a>Specifies how to get a list of recommended values for a property or parameter<br>Intelligent systems can help users by recommending input the user may "prefer".
[Recommendations](UI.xml#L1892) *([Experimental](Common.md#Experimental))*|ComplexType|<a name="Recommendations"></a>Recommendations for an entity<br>This complex-typed annotation contains structural properties corresponding via name equality to non-key structural primitive properties of the entity type for which recommendations are available. The type of such a property is a collection of a informal specialization of [`PropertyRecommendationType`](#PropertyRecommendationType). (The specializiations are called "informal" because they may omit the property `RecommendedFieldDescription`.)<br/>Clients retrieve the recommendations with a GET request that includes this annotation in a `$select` clause. The recommendations MAY be computed asynchronously, see [this diagram](../docs/recommendations.md).
[ExcludeFromNavigationContext](UI.xml#L1938)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ExcludeFromNavigationContext"></a>The contents of this property must not be propagated to the app-to-app navigation context
[DoNotCheckScaleOfMeasuredQuantity](UI.xml#L1942) *([Experimental](Common.md#Experimental))*|Boolean|<a name="DoNotCheckScaleOfMeasuredQuantity"></a>Do not check the number of fractional digits of the annotated measured quantity<br>The annotated property contains a measured quantity, and the user may enter more fractional digits than defined for the corresponding unit of measure.<br/>This switches off the validation of user input with respect to decimals.
[LeadingEntitySet](UI.xml#L1952) *([Experimental](Common.md#Experimental))*|String|<a name="LeadingEntitySet"></a>The referenced entity set is the preferred starting point for UIs using this service

<a name="HeaderInfoType"></a>
## [HeaderInfoType](UI.xml#L68)


Property|Type|Description
:-------|:---|:----------
[TypeName](UI.xml#L69)|String|Name of the main entity type
[TypeNamePlural](UI.xml#L73)|String|Plural form of the name of the main entity type
[Title](UI.xml#L77)|[DataFieldAbstract?](#DataFieldAbstract)|Title, e.g. for overview pages<br>This can be a [DataField](#DataField) and any of its children, or a [DataFieldForAnnotation](#DataFieldForAnnotation) targeting [ConnectedFields](#ConnectedFields).
[Description](UI.xml#L87)|[DataFieldAbstract?](#DataFieldAbstract)|Description, e.g. for overview pages<br>This can be a [DataField](#DataField) and any of its children, or a [DataFieldForAnnotation](#DataFieldForAnnotation) targeting [ConnectedFields](#ConnectedFields).
[Image](UI.xml#L97) *([Experimental](Common.md#Experimental))*|Stream?|Image for an instance of the entity type. If the property has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the value of the property `ImageUrl` can be used instead.
[ImageUrl](UI.xml#L101)|URL?|Image URL for an instance of the entity type. If the property has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the value of the property `TypeImageUrl` can be used instead.
[TypeImageUrl](UI.xml#L105)|URL?|Image URL for the entity type
[Initials](UI.xml#L109) *([Experimental](Common.md#Experimental))*|String?|Latin letters to be used in case no `Image`, `ImageUrl`, or `TypeImageUrl` is present

<a name="BadgeType"></a>
## [BadgeType](UI.xml#L124)


Property|Type|Description
:-------|:---|:----------
[HeadLine](UI.xml#L125)|[DataField](#DataField)|Headline
[Title](UI.xml#L128)|[DataField](#DataField)|Title
[ImageUrl](UI.xml#L131)|URL?|Image URL for an instance of the entity type. If the property has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the value of the property `TypeImageUrl` can be used instead.
[TypeImageUrl](UI.xml#L135)|URL?|Image URL for the entity type
[MainInfo](UI.xml#L139)|[DataField?](#DataField)|Main information on the business card
[SecondaryInfo](UI.xml#L142)|[DataField?](#DataField)|Additional information on the business card

<a name="FieldGroupType"></a>
## [FieldGroupType](UI.xml#L161)


Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L162)|String?|Label for the field group
[Data](UI.xml#L166)|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

<a name="ConnectedFieldsType"></a>
## [ConnectedFieldsType](UI.xml#L198)
Group of semantically connected fields with a representation template and an optional label

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L200)|String?|Label for the connected fields
[Template](UI.xml#L204)|String|Template for representing the connected fields<br>Template variables are identifiers enclosed in curly braces, e.g. `{MaterialName} - {MaterialClassName}`. The `Data` collection assigns values to the template variables.
[Data](UI.xml#L209)|[Dictionary](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Dictionary)|Dictionary of template variables<br>Each template variable used in `Template` must be assigned a value here. The value must be of type [DataFieldAbstract](#DataFieldAbstract)

<a name="GeoLocationType"></a>
## [GeoLocationType](UI.xml#L244)
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
[Latitude](UI.xml#L246)|Double?|Geographic latitude
[Longitude](UI.xml#L249)|Double?|Geographic longitude
[Location](UI.xml#L252)|GeographyPoint?|A point in a round-earth coordinate system
[Address](UI.xml#L255)|[AddressType?](Communication.md#AddressType)|vCard-style address

<a name="MediaResourceType"></a>
## [MediaResourceType](UI.xml#L276)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L277)|URL?|URL of media resource<br>Can be annotated with:<ul><li>[LinkTarget](HTML5.md#LinkTarget)</li></ul>
[Stream](UI.xml#L286) *([Experimental](Common.md#Experimental))*|Stream?|Stream of media resource<br>Can be annotated with:<ul><li>[LinkTarget](HTML5.md#LinkTarget)</li></ul>
[ContentType](UI.xml#L295)|MediaType?|Content type, such as application/pdf, video/x-flv, image/jpeg
[ByteSize](UI.xml#L299)|Int64?|Resource size in bytes
[ChangedAt](UI.xml#L302)|DateTimeOffset?|Date of last change
[Thumbnail](UI.xml#L305)|[ImageType?](#ImageType)|Thumbnail image
[Title](UI.xml#L308)|[DataField?](#DataField)|Resource title
[Description](UI.xml#L311)|[DataField?](#DataField)|Resource description

<a name="ImageType"></a>
## [ImageType](UI.xml#L315)
Properties that describe an image

Either `Url` or `Stream` MUST be present, and never both.

Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L318)|URL|URL of image
[Stream](UI.xml#L322) *([Experimental](Common.md#Experimental))*|Stream?|Stream of image<br>Can be annotated with:<ul><li>[LinkTarget](HTML5.md#LinkTarget)</li></ul>
[Width](UI.xml#L331)|String?|Width of image
[Height](UI.xml#L334)|String?|Height of image

<a name="DataPointType"></a>
## [DataPointType](UI.xml#L355)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L356)|String?|Title of the data point
[Description](UI.xml#L360)|String?|Short description
[LongDescription](UI.xml#L364)|String?|Full description
[Value](UI.xml#L368)|PrimitiveType|Numeric value<br>The value is typically provided via a `Path` construct. The path MUST lead to a direct property of the same entity type or a property of a complex property (recursively) of that entity type, navigation segments are not allowed.<br/>It could be annotated with either `UoM.ISOCurrency` or `UoM.Unit`. Percentage values are annotated with `UoM.Unit = '%'`. A renderer should take an optional `Common.Text` annotation into consideration.
[TargetValue](UI.xml#L380)|PrimitiveType?|Target value
[ForecastValue](UI.xml#L383)|PrimitiveType?|Forecast value
[MinimumValue](UI.xml#L386)|Decimal?|Minimum value (for output rendering)
[MaximumValue](UI.xml#L389)|Decimal?|Maximum value (for output rendering)
[ValueFormat](UI.xml#L392)|[NumberFormat?](#NumberFormat)|Number format
[Visualization](UI.xml#L395)|[VisualizationType?](#VisualizationType)|Preferred visualization
[SampleSize](UI.xml#L398)|PrimitiveType?|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
[ReferencePeriod](UI.xml#L405)|[ReferencePeriod?](#ReferencePeriod)|Reference period
[Criticality](UI.xml#L408)|[CriticalityType?](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
[CriticalityLabels](UI.xml#L411)|AnnotationPath?|Custom labels for the criticality legend. Annotation path MUST end in UI.CriticalityLabels<br>Allowed terms:<ul><li>[CriticalityLabels](#CriticalityLabels)</li></ul>
[CriticalityRepresentation](UI.xml#L419) *([Experimental](Common.md#Experimental))*|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[CriticalityCalculation](UI.xml#L423)|[CriticalityCalculationType?](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
[Trend](UI.xml#L426)|[TrendType?](#TrendType)|Service-calculated trend, alternative to TrendCalculation
[TrendCalculation](UI.xml#L429)|[TrendCalculationType?](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
[Responsible](UI.xml#L432)|[ContactType?](Communication.md#ContactType)|Contact person

<a name="NumberFormat"></a>
## [NumberFormat](UI.xml#L437)
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
[ScaleFactor](UI.xml#L439)|Decimal?|Display value in *ScaleFactor* units, e.g. 1000 for k (kilo), 1e6 for M (Mega)
[NumberOfFractionalDigits](UI.xml#L442)|Byte?|Number of fractional digits of the scaled value to be visualized

<a name="VisualizationType"></a>
## [VisualizationType](UI.xml#L447)


Member|Value|Description
:-----|----:|:----------
[Number](UI.xml#L448)|0|Visualize as a number
[BulletChart](UI.xml#L451)|1|Visualize as bullet chart - requires TargetValue
[Progress](UI.xml#L454)|2|Visualize as progress indicator - requires TargetValue
[Rating](UI.xml#L457)|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
[Donut](UI.xml#L460)|4|Visualize as donut, optionally with missing segment - requires TargetValue
[DeltaBulletChart](UI.xml#L463)|5|Visualize as delta bullet chart - requires TargetValue

<a name="ReferencePeriod"></a>
## [ReferencePeriod](UI.xml#L468)
Reference period

Property|Type|Description
:-------|:---|:----------
[Description](UI.xml#L470)|String?|Short description of the reference period
[Start](UI.xml#L474)|DateTimeOffset?|Start of the reference period
[End](UI.xml#L477)|DateTimeOffset?|End of the reference period

<a name="CriticalityType"></a>
## [CriticalityType](UI.xml#L482)
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
[VeryNegative](UI.xml#L484) *([Experimental](Common.md#Experimental))*|-1|Very negative / dark-red status - risk - out of stock - late
[Neutral](UI.xml#L488)|0|Neutral / grey status - inactive - open - in progress
[Negative](UI.xml#L491)|1|Negative / red status - attention - overload - alert
[Critical](UI.xml#L494)|2|Critical / orange status - warning
[Positive](UI.xml#L497)|3|Positive / green status - completed - available - on track - acceptable
[VeryPositive](UI.xml#L500) *([Experimental](Common.md#Experimental))*|4|Very positive - above max stock - excess
[Information](UI.xml#L504) *([Experimental](Common.md#Experimental))*|5|Information - noticable - informative

<a name="CriticalityCalculationType"></a>
## [CriticalityCalculationType](UI.xml#L510): [CriticalityThresholdsType](#CriticalityThresholdsType)
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
[*AcceptanceRangeLowValue*](UI.xml#L565)|PrimitiveType?|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L568)|PrimitiveType?|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L571)|PrimitiveType?|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L574)|PrimitiveType?|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L577)|PrimitiveType?|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L580)|PrimitiveType?|Highest value that is considered critical
[ReferenceValue](UI.xml#L545) *([Experimental](Common.md#Experimental))*|PrimitiveType?|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L549) *([Experimental](Common.md#Experimental))*|Boolean|Calculate with a relative difference
[ImprovementDirection](UI.xml#L553)|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
[ConstantThresholds](UI.xml#L556) *([Experimental](Common.md#Experimental))*|\[[LevelThresholdsType](#LevelThresholdsType)\]|List of thresholds depending on the aggregation level as a set of constant values<br>Constant thresholds shall only be used in order to refine constant values given for the data point overall (aggregation level with empty collection of property paths), but not if the thresholds are based on other measure elements.

<a name="CriticalityThresholdsType"></a>
## [CriticalityThresholdsType](UI.xml#L563)
Thresholds for calculating the criticality of a value

**Derived Types:**
- [CriticalityCalculationType](#CriticalityCalculationType)
- [LevelThresholdsType](#LevelThresholdsType)

Property|Type|Description
:-------|:---|:----------
[AcceptanceRangeLowValue](UI.xml#L565)|PrimitiveType?|Lowest value that is considered positive
[AcceptanceRangeHighValue](UI.xml#L568)|PrimitiveType?|Highest value that is considered positive
[ToleranceRangeLowValue](UI.xml#L571)|PrimitiveType?|Lowest value that is considered neutral
[ToleranceRangeHighValue](UI.xml#L574)|PrimitiveType?|Highest value that is considered neutral
[DeviationRangeLowValue](UI.xml#L577)|PrimitiveType?|Lowest value that is considered critical
[DeviationRangeHighValue](UI.xml#L580)|PrimitiveType?|Highest value that is considered critical

<a name="ImprovementDirectionType"></a>
## [ImprovementDirectionType](UI.xml#L585)
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
[Minimize](UI.xml#L587)|1|Lower is better
[Target](UI.xml#L590)|2|Closer to the target is better
[Maximize](UI.xml#L593)|3|Higher is better

<a name="LevelThresholdsType"></a>
## [LevelThresholdsType](UI.xml#L598): [CriticalityThresholdsType](#CriticalityThresholdsType) *([Experimental](Common.md#Experimental))*
Thresholds for an aggregation level

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](UI.xml#L565)|PrimitiveType?|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L568)|PrimitiveType?|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L571)|PrimitiveType?|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L574)|PrimitiveType?|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L577)|PrimitiveType?|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L580)|PrimitiveType?|Highest value that is considered critical
[AggregationLevel](UI.xml#L601)|\[PropertyPath\]|An unordered tuple of dimensions, i.e. properties which are intended to be used for grouping in aggregating requests. In analytical UIs, e.g. an analytical chart, the aggregation level typically corresponds to the visible dimensions.

<a name="TrendType"></a>
## [TrendType](UI.xml#L606)
The trend of a value

Member|Value|Description
:-----|----:|:----------
[StrongUp](UI.xml#L608)|1|Value grows strongly
[Up](UI.xml#L611)|2|Value grows
[Sideways](UI.xml#L614)|3|Value does not significantly grow or shrink
[Down](UI.xml#L617)|4|Value shrinks
[StrongDown](UI.xml#L620)|5|Value shrinks strongly

<a name="TrendCalculationType"></a>
## [TrendCalculationType](UI.xml#L625)
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
[ReferenceValue](UI.xml#L639)|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L642)|Boolean|Calculate with a relative difference
[UpDifference](UI.xml#L645)|Decimal|Threshold for Up
[StrongUpDifference](UI.xml#L648)|Decimal|Threshold for StrongUp
[DownDifference](UI.xml#L651)|Decimal|Threshold for Down
[StrongDownDifference](UI.xml#L654)|Decimal|Threshold for StrongDown

<a name="KPIType"></a>
## [KPIType](UI.xml#L665)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L666)|String?|Optional identifier to reference this instance from an external context
[ShortDescription](UI.xml#L671) *([Experimental](Common.md#Experimental))*|String?|Very short description
[SelectionVariant](UI.xml#L676)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[DataPoint](UI.xml#L679)|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
[AdditionalDataPoints](UI.xml#L682)|\[[DataPointType](#DataPointType)\]|Additional data points, either specified inline or referencing another annotation via Path<br>Additional data points are typically related to the main data point and provide complementing information or could be used for comparisons
[Detail](UI.xml#L686)|[KPIDetailType?](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

<a name="KPIDetailType"></a>
## [KPIDetailType](UI.xml#L690)


Property|Type|Description
:-------|:---|:----------
[DefaultPresentationVariant](UI.xml#L691)|[PresentationVariantType?](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
[AlternativePresentationVariants](UI.xml#L694)|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path
[SemanticObject](UI.xml#L697)|String?|Name of the Semantic Object. If not specified, use Semantic Object annotated at the property referenced in KPI/DataPoint/Value
[Action](UI.xml#L700)|String?|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

<a name="ChartDefinitionType"></a>
## [ChartDefinitionType](UI.xml#L709)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L710)|String?|Title of the chart
[Description](UI.xml#L714)|String?|Short description
[ChartType](UI.xml#L718)|[ChartType](#ChartType)|Chart type
[AxisScaling](UI.xml#L721)|[ChartAxisScalingType?](#ChartAxisScalingType)|Describes the scale of the chart value axes
[Measures](UI.xml#L724)|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
[DynamicMeasures](UI.xml#L728)|\[AnnotationPath\]|Dynamic properties introduced by annotations and used as measures of the chart<br>If the annotation referenced by an annotation path does not apply to the same collection of entities as the one being visualized according to the `UI.Chart` annotation, the annotation path MUST be silently ignored.<br>Allowed terms:<ul><li>[AggregatedProperty](Analytics.md#AggregatedProperty)</li><li>[CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)</li></ul>
[MeasureAttributes](UI.xml#L741)|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
[Dimensions](UI.xml#L746)|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
[DimensionAttributes](UI.xml#L749)|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
[Actions](UI.xml#L754)|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

<a name="ChartType"></a>
## [ChartType](UI.xml#L759)


Member|Value|Description
:-----|----:|:----------
[Column](UI.xml#L760)|0|
[ColumnStacked](UI.xml#L761)|1|
[ColumnDual](UI.xml#L762)|2|
[ColumnStackedDual](UI.xml#L763)|3|
[ColumnStacked100](UI.xml#L764)|4|
[ColumnStackedDual100](UI.xml#L765)|5|
[Bar](UI.xml#L766)|6|
[BarStacked](UI.xml#L767)|7|
[BarDual](UI.xml#L768)|8|
[BarStackedDual](UI.xml#L769)|9|
[BarStacked100](UI.xml#L770)|10|
[BarStackedDual100](UI.xml#L771)|11|
[Area](UI.xml#L772)|12|
[AreaStacked](UI.xml#L773)|13|
[AreaStacked100](UI.xml#L774)|14|
[HorizontalArea](UI.xml#L775)|15|
[HorizontalAreaStacked](UI.xml#L776)|16|
[HorizontalAreaStacked100](UI.xml#L777)|17|
[Line](UI.xml#L778)|18|
[LineDual](UI.xml#L779)|19|
[Combination](UI.xml#L780)|20|
[CombinationStacked](UI.xml#L781)|21|
[CombinationDual](UI.xml#L782)|22|
[CombinationStackedDual](UI.xml#L783)|23|
[HorizontalCombinationStacked](UI.xml#L784)|24|
[Pie](UI.xml#L785)|25|
[Donut](UI.xml#L786)|26|
[Scatter](UI.xml#L787)|27|
[Bubble](UI.xml#L788)|28|
[Radar](UI.xml#L789)|29|
[HeatMap](UI.xml#L790)|30|
[TreeMap](UI.xml#L791)|31|
[Waterfall](UI.xml#L792)|32|
[Bullet](UI.xml#L793)|33|
[VerticalBullet](UI.xml#L794)|34|
[HorizontalWaterfall](UI.xml#L795)|35|
[HorizontalCombinationDual](UI.xml#L796)|36|
[HorizontalCombinationStackedDual](UI.xml#L797)|37|
[Donut100](UI.xml#L798) *([Experimental](Common.md#Experimental))*|38|

<a name="ChartAxisScalingType"></a>
## [ChartAxisScalingType](UI.xml#L804)


Property|Type|Description
:-------|:---|:----------
[ScaleBehavior](UI.xml#L805)|[ChartAxisScaleBehaviorType](#ChartAxisScaleBehaviorType)|Scale is fixed or adapts automatically to rendered values
[AutoScaleBehavior](UI.xml#L808)|[ChartAxisAutoScaleBehaviorType?](#ChartAxisAutoScaleBehaviorType)|Settings for automatic scaling
[FixedScaleMultipleStackedMeasuresBoundaryValues](UI.xml#L811)|[FixedScaleMultipleStackedMeasuresBoundaryValuesType?](#FixedScaleMultipleStackedMeasuresBoundaryValuesType)|Boundary values for fixed scaling of a stacking chart type with multiple measures

<a name="ChartAxisScaleBehaviorType"></a>
## [ChartAxisScaleBehaviorType](UI.xml#L816)


Member|Value|Description
:-----|----:|:----------
[AutoScale](UI.xml#L817)|0|Value axes scale automatically
[FixedScale](UI.xml#L820)|1|Fixed minimum and maximum values are applied, which are derived from the @UI.MeasureAttributes.DataPoint/MinimumValue and .../MaximumValue annotation by default. For stacking chart types with multiple measures, they are taken from ChartAxisScalingType/FixedScaleMultipleStackedMeasuresBoundaryValues.

<a name="ChartAxisAutoScaleBehaviorType"></a>
## [ChartAxisAutoScaleBehaviorType](UI.xml#L829)


Property|Type|Description
:-------|:---|:----------
[ZeroAlwaysVisible](UI.xml#L830)|Boolean|Forces the value axis to always display the zero value
[DataScope](UI.xml#L833)|[ChartAxisAutoScaleDataScopeType](#ChartAxisAutoScaleDataScopeType)|Determines the automatic scaling

<a name="ChartAxisAutoScaleDataScopeType"></a>
## [ChartAxisAutoScaleDataScopeType](UI.xml#L838)


Member|Value|Description
:-----|----:|:----------
[DataSet](UI.xml#L839)|0|Minimum and maximum axes values are determined from the entire data set
[VisibleData](UI.xml#L842)|1|Minimum and maximum axes values are determined from the currently visible data. Scrolling will change the scale.

<a name="FixedScaleMultipleStackedMeasuresBoundaryValuesType"></a>
## [FixedScaleMultipleStackedMeasuresBoundaryValuesType](UI.xml#L847)


Property|Type|Description
:-------|:---|:----------
[MinimumValue](UI.xml#L848)|Decimal|Minimum value on value axes
[MaximumValue](UI.xml#L851)|Decimal|Maximum value on value axes

<a name="ChartDimensionAttributeType"></a>
## [ChartDimensionAttributeType](UI.xml#L856)


Property|Type|Description
:-------|:---|:----------
[Dimension](UI.xml#L857)|PropertyPath?|
[Role](UI.xml#L858)|[ChartDimensionRoleType?](#ChartDimensionRoleType)|
[HierarchyLevel](UI.xml#L859) *([Experimental](Common.md#Experimental))*|Int32?|For a dimension with a hierarchy, members are selected from this level. The root node of the hierarchy is at level 0.
[ValuesForSequentialColorLevels](UI.xml#L863) *([Experimental](Common.md#Experimental))*|\[String\]|All values in this collection should be assigned to levels of the same color.
[EmphasizedValues](UI.xml#L867) *([Experimental](Common.md#Experimental))*|\[String\]|All values in this collection should be emphasized.
[EmphasisLabels](UI.xml#L871) *([Experimental](Common.md#Experimental))*|[EmphasisLabelType?](#EmphasisLabelType)|Assign a label to values with an emphasized representation. This is required, if more than one emphasized value has been specified.

<a name="ChartMeasureAttributeType"></a>
## [ChartMeasureAttributeType](UI.xml#L877)
Exactly one of `Measure` and `DynamicMeasure` must be present

Property|Type|Description
:-------|:---|:----------
[Measure](UI.xml#L879)|PropertyPath?|
[DynamicMeasure](UI.xml#L882)|AnnotationPath?|Dynamic property introduced by an annotation and used as a measure in a chart<br>If the annotation referenced by an annotation path does not apply to the same collection of entities as the one being visualized according to the `UI.Chart` annotation, the annotation path MUST be silently ignored.<br>Allowed terms:<ul><li>[AggregatedProperty](Analytics.md#AggregatedProperty)</li><li>[CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)</li></ul>
[Role](UI.xml#L895)|[ChartMeasureRoleType?](#ChartMeasureRoleType)|
[DataPoint](UI.xml#L896)|AnnotationPath?|Annotation path MUST end in @UI.DataPoint and the data point's Value MUST be the same property as in Measure<br>Allowed terms:<ul><li>[DataPoint](#DataPoint)</li></ul>
[UseSequentialColorLevels](UI.xml#L904) *([Experimental](Common.md#Experimental))*|Boolean|All measures for which this setting is true should be assigned to levels of the same color.

<a name="ChartDimensionRoleType"></a>
## [ChartDimensionRoleType](UI.xml#L910)


Member|Value|Description
:-----|----:|:----------
[Category](UI.xml#L911)|0|
[Series](UI.xml#L912)|1|
[Category2](UI.xml#L913)|2|

<a name="ChartMeasureRoleType"></a>
## [ChartMeasureRoleType](UI.xml#L916)


Member|Value|Description
:-----|----:|:----------
[Axis1](UI.xml#L917)|0|
[Axis2](UI.xml#L918)|1|
[Axis3](UI.xml#L919)|2|

<a name="EmphasisLabelType"></a>
## [EmphasisLabelType](UI.xml#L922) *([Experimental](Common.md#Experimental))*
Assigns a label to the set of emphasized values and optionally also for non-emphasized values. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[EmphasizedValuesLabel](UI.xml#L925)|String|
[NonEmphasizedValuesLabel](UI.xml#L926)|String?|

<a name="ValueCriticalityType"></a>
## [ValueCriticalityType](UI.xml#L933) *([Experimental](Common.md#Experimental))*
Assigns a fixed criticality to a primitive value. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Value](UI.xml#L936)|PrimitiveType?|MUST be a fixed value of primitive type
[Criticality](UI.xml#L939)|[CriticalityType?](#CriticalityType)|

<a name="CriticalityLabelType"></a>
## [CriticalityLabelType](UI.xml#L953) *([Experimental](Common.md#Experimental))*
Assigns a label to a criticality. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Criticality](UI.xml#L956)|[CriticalityType](#CriticalityType)|
[Label](UI.xml#L957)|String|Criticality label

<a name="Facet"></a>
## [*Facet*](UI.xml#L991)
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L999)|String?|Facet label
[ID](UI.xml#L1003)|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [PartOfPreview](#PartOfPreview)

<a name="CollectionFacet"></a>
## [CollectionFacet](UI.xml#L1007): [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String?|Facet label
[*ID*](UI.xml#L1003)|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Facets](UI.xml#L1009)|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [PartOfPreview](#PartOfPreview)

<a name="ReferenceFacet"></a>
## [ReferenceFacet](UI.xml#L1013): [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String?|Facet label
[*ID*](UI.xml#L1003)|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Target](UI.xml#L1015)|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge<br>Allowed terms:<ul><li>[Address](Communication.md#Address)</li><li>[Contact](Communication.md#Contact)</li><li>[Badge](#Badge)</li><li>[Chart](#Chart)</li><li>[Contacts](#Contacts)</li><li>[DataPoint](#DataPoint)</li><li>[FieldGroup](#FieldGroup)</li><li>[GeoLocation](#GeoLocation)</li><li>[GeoLocations](#GeoLocations)</li><li>[HeaderInfo](#HeaderInfo)</li><li>[Identification](#Identification)</li><li>[KPI](#KPI)</li><li>[LineItem](#LineItem)</li><li>[MediaResource](#MediaResource)</li><li>[Note](#Note)</li><li>[PresentationVariant](#PresentationVariant)</li><li>[SelectionFields](#SelectionFields)</li><li>[SelectionPresentationVariant](#SelectionPresentationVariant)</li><li>[StatusInfo](#StatusInfo)</li></ul>

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [PartOfPreview](#PartOfPreview)

<a name="ReferenceURLFacet"></a>
## [ReferenceURLFacet](UI.xml#L1042): [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L999)|String?|Facet label
[*ID*](UI.xml#L1003)|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Url](UI.xml#L1044)|URL|URL of referenced information<br>Can be annotated with:<ul><li>[LinkTarget](HTML5.md#LinkTarget)</li></ul>
[UrlContentType](UI.xml#L1053)|MediaType?|Media type of referenced information

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [PartOfPreview](#PartOfPreview)

<a name="SelectionPresentationVariantType"></a>
## [SelectionPresentationVariantType](UI.xml#L1066)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1067)|String?|Optional identifier to reference this variant from an external context
[Text](UI.xml#L1072)|String?|Name of the bundling variant
[SelectionVariant](UI.xml#L1076)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[PresentationVariant](UI.xml#L1079)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

<a name="PresentationVariantType"></a>
## [PresentationVariantType](UI.xml#L1090)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1091)|String?|Optional identifier to reference this variant from an external context
[Text](UI.xml#L1094)|String?|Name of the presentation variant
[MaxItems](UI.xml#L1098)|Int32?|Maximum number of items that should be included in the result
[SortOrder](UI.xml#L1101)|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
[GroupBy](UI.xml#L1104)|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with `InitialExpansionLevel`.
[TotalBy](UI.xml#L1113)|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
[Total](UI.xml#L1120)|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
[DynamicTotal](UI.xml#L1126)|\[AnnotationPath\]|Dynamic properties introduced by annotations for which aggregated values should be provided for the additional aggregation levels specified in TotalBy<br>If the annotation referenced by an annotation path does not apply to the same collection of entities as the one being presented according to the `UI.PresentationVariant` annotation, the annotation path MUST be silently ignored.<br>Allowed terms:<ul><li>[AggregatedProperty](Analytics.md#AggregatedProperty)</li><li>[CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)</li></ul>
[IncludeGrandTotal](UI.xml#L1139)|Boolean|Result should include a grand total for the properties specified in Total
[InitialExpansionLevel](UI.xml#L1142)|Int32|Level up to which the hierarchy defined for the queried collection should be expanded initially. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
[Visualizations](UI.xml#L1148)|\[AnnotationPath\]|Lists available visualization types. Currently supported types are `UI.LineItem`, `UI.Chart`, and `UI.DataPoint`. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different presentation variants. A reference to `UI.Lineitem` should always be part of the collection (least common denominator for renderers). The first entry of the collection is the default visualization.<br>Allowed terms:<ul><li>[Chart](#Chart)</li><li>[DataPoint](#DataPoint)</li><li>[LineItem](#LineItem)</li></ul>
[RequestAtLeast](UI.xml#L1165)|\[PropertyPath\]|Properties that should always be included in the result of the queried collection<br>Properties in `RequestAtLeast` must occur either in the `$select` clause of an OData request or among the grouping properties in an `$apply=groupby((grouping properties),...)` clause of an aggregating OData request.
[SelectionFields](UI.xml#L1188) *([Experimental](Common.md#Experimental))*|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a `UI.SelectionFields` annotation via Path.

<a name="SelectionVariantType"></a>
## [SelectionVariantType](UI.xml#L1202)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1203)|String?|May contain identifier to reference this instance from an external context
[Text](UI.xml#L1208)|String?|Name of the selection variant
[Parameters](UI.xml#L1212)|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
[FilterExpression](UI.xml#L1215)|String?|Filter string for query part of URL, without `$filter=`
[SelectOptions](UI.xml#L1220)|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

<a name="ParameterAbstract"></a>
## [*ParameterAbstract*](UI.xml#L1227)
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

<a name="Parameter"></a>
## [Parameter](UI.xml#L1230): [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1232)|PropertyPath|Path to a key property of a parameter entity type
[PropertyValue](UI.xml#L1235)|PrimitiveType|Value for the key property

<a name="IntervalParameter"></a>
## [IntervalParameter](UI.xml#L1239): [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
[PropertyNameFrom](UI.xml#L1241)|PropertyPath|Path to the 'from' property of a parameter entity type
[PropertyValueFrom](UI.xml#L1244)|PrimitiveType|Value for the 'from' property
[PropertyNameTo](UI.xml#L1247)|PropertyPath|Path to the 'to' property of a parameter entity type
[PropertyValueTo](UI.xml#L1250)|PrimitiveType|Value for the 'to' property

<a name="SelectOptionType"></a>
## [SelectOptionType](UI.xml#L1255)
List of value ranges for a single property

Exactly one of `PropertyName` and `DynamicPropertyName` must be present

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1258)|PropertyPath?|Path to the property
[DynamicPropertyName](UI.xml#L1270)|AnnotationPath?|Dynamic property introduced by annotations for which value ranges are specified<br>If the annotation referenced by the annotation path does not apply to the same collection of entities as the one being filtered according to the `UI.SelectionVariant` annotation, this instance of `UI.SelectionVariant/SelectOptions` MUST be silently ignored. For an example, see the `UI.SelectionVariant` annotation in the [example](../examples/DynamicProperties-sample.xml).<br>Allowed terms:<ul><li>[AggregatedProperty](Analytics.md#AggregatedProperty)</li><li>[CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)</li></ul>
[Ranges](UI.xml#L1284)|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

<a name="SelectionRangeType"></a>
## [SelectionRangeType](UI.xml#L1289)
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
[Sign](UI.xml#L1293)|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
[Option](UI.xml#L1296)|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
[Low](UI.xml#L1299)|PrimitiveType|Single value or lower interval boundary
[High](UI.xml#L1302)|PrimitiveType?|Upper interval boundary

<a name="SelectionRangeSignType"></a>
## [SelectionRangeSignType](UI.xml#L1307)


Member|Value|Description
:-----|----:|:----------
[I](UI.xml#L1308)|0|Inclusive
[E](UI.xml#L1311)|1|Exclusive

<a name="SelectionRangeOptionType"></a>
## [SelectionRangeOptionType](UI.xml#L1316)
Comparison operator

Member|Value|Description
:-----|----:|:----------
[EQ](UI.xml#L1318)|0|Equal to
[BT](UI.xml#L1321)|1|Between
[CP](UI.xml#L1324)|2|Contains pattern
[LE](UI.xml#L1327)|3|Less than or equal to
[GE](UI.xml#L1330)|4|Greater than or equal to
[NE](UI.xml#L1333)|5|Not equal to
[NB](UI.xml#L1336)|6|Not between
[NP](UI.xml#L1339)|7|Does not contain pattern
[GT](UI.xml#L1342)|8|Greater than
[LT](UI.xml#L1345)|9|Less than

<a name="InputMaskType"></a>
## [InputMaskType](UI.xml#L1413) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Mask](UI.xml#L1415)|String|The mask to be applied to the property or the parameter
[PlaceholderSymbol](UI.xml#L1418)|String|A single character symbol to be shown where the user can type a character
[Rules](UI.xml#L1421)|\[[InputMaskRuleType](#InputMaskRuleType)\]|Rules that define valid values for one symbol in the mask<br>The following rules are defined as default and don't need to be listed here: * = ., C = [a-zA-Z], 9 = [0-9]

<a name="InputMaskRuleType"></a>
## [InputMaskRuleType](UI.xml#L1428) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[MaskSymbol](UI.xml#L1430)|String|A symbol in the mask that stands for a regular expression which must be matched by the user input in every position where this symbol occurs
[RegExp](UI.xml#L1433)|String|Regular expression that defines the valid values for the mask symbol

<a name="TextArrangementType"></a>
## [TextArrangementType](UI.xml#L1446)


Member|Value|Description
:-----|----:|:----------
[TextFirst](UI.xml#L1447)|0|Text is first, followed by the code/ID (e.g. in parentheses)
[TextLast](UI.xml#L1450)|1|Code/ID is first, followed by the text (e.g. separated by a dash)
[TextSeparate](UI.xml#L1453)|2|Code/ID and text are represented separately (code/ID will be shown and text can be visualized in a separate place)
[TextOnly](UI.xml#L1456)|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

<a name="NoteType"></a>
## [NoteType](UI.xml#L1473) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L1475)|String?|Title of the note<br>The title of a note is hidden with an annotation `@UI.Note/Title/@UI.Hidden`, not with an annotation on the property targeted by `@UI.Note/Title`.<br>Can be annotated with:<ul><li>[Hidden](#Hidden)</li></ul>
[Content](UI.xml#L1487)|String|Content of the note, as a string<br>The property targeted by `@UI.Note/Content` must be annotated with `Core.MediaType` and may be annotated with `Common.SAPObjectNodeTypeReference`. When it is tagged with `Core.IsLanguageDependent`, another property of the same entity type that is tagged with [`Common.IsLanguageIdentifier`](Common.md#IsLanguageIdentifier) determines the language of the note.<br>Can be annotated with:<ul><li>[MediaType](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#MediaType)</li><li>[IsLanguageDependent](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#IsLanguageDependent)</li><li>[SAPObjectNodeTypeReference](Common.md#SAPObjectNodeTypeReference)</li></ul>
[Type](UI.xml#L1503)|String|A type used for grouping notes
[MaximalLength](UI.xml#L1506)|Int32?|Type-specific maximal length of the content of the note
[MultipleNotes](UI.xml#L1509)|Boolean|Whether the type allows multiple notes for one object

<a name="ImportanceType"></a>
## [ImportanceType](UI.xml#L1517)


Member|Value|Description
:-----|----:|:----------
[High](UI.xml#L1518)|0|High importance
[Medium](UI.xml#L1521)|1|Medium importance
[Low](UI.xml#L1524)|2|Low importance

<a name="DataFieldAbstract"></a>
## [*DataFieldAbstract*](UI.xml#L1584)
Elementary building block that represents a piece of data and/or allows triggering an action

By using the applicable terms UI.Hidden, UI.Importance or HTML5.CssDefaults, the visibility, the importance and
          and the default css settings (as the width) of the data field can be influenced. 

**Derived Types:**
- [DataFieldForAnnotation](#DataFieldForAnnotation)
- *[DataFieldForActionAbstract](#DataFieldForActionAbstract)*
  - [DataFieldForAction](#DataFieldForAction)
  - [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)
- [DataFieldForActionGroup](#DataFieldForActionGroup)
- [DataField](#DataField)
  - [DataFieldWithAction](#DataFieldWithAction)
  - [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
  - [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
  - [DataFieldWithUrl](#DataFieldWithUrl)
  - [DataFieldWithActionGroup](#DataFieldWithActionGroup)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[Criticality](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[CriticalityRepresentation](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[IconUrl](UI.xml#L1610)|URL?|Optional icon

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="CriticalityRepresentationType"></a>
## [CriticalityRepresentationType](UI.xml#L1616)


Member|Value|Description
:-----|----:|:----------
[WithIcon](UI.xml#L1617)|0|Criticality is represented with an icon
[WithoutIcon](UI.xml#L1620)|1|Criticality is represented without icon, e.g. only via text color
[OnlyIcon](UI.xml#L1623) *([Experimental](Common.md#Experimental))*|2|Criticality is represented only by using an icon

<a name="DataFieldForAnnotation"></a>
## [DataFieldForAnnotation](UI.xml#L1629): [DataFieldAbstract](#DataFieldAbstract)
A structured piece of data described by an annotation

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[Target](UI.xml#L1631)|AnnotationPath|Target MUST reference an annotation of terms Communication.Contact, Communication.Address, UI.DataPoint, UI.Chart, UI.FieldGroup, or UI.ConnectedFields<br>Allowed terms:<ul><li>[Address](Communication.md#Address)</li><li>[Contact](Communication.md#Contact)</li><li>[Chart](#Chart)</li><li>[ConnectedFields](#ConnectedFields)</li><li>[DataPoint](#DataPoint)</li><li>[FieldGroup](#FieldGroup)</li></ul>

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="DataFieldForActionAbstract"></a>
## [*DataFieldForActionAbstract*](UI.xml#L1646): [DataFieldAbstract](#DataFieldAbstract)
Triggers an action

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[Inline](UI.xml#L1648)|Boolean|Action should be placed close to (or even inside) the visualized term
[Determining](UI.xml#L1651)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="DataFieldForAction"></a>
## [DataFieldForAction](UI.xml#L1656): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
Triggers an OData action

The action is NOT tied to a data value (in contrast to [DataFieldWithAction](#DataFieldWithAction)).

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[*Inline*](UI.xml#L1648)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1651)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[Action](UI.xml#L1659)|[ActionName](#ActionName)|Name of an Action, Function, ActionImport, or FunctionImport in scope
[InvocationGrouping](UI.xml#L1662)|[OperationGroupingType?](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="OperationGroupingType"></a>
## [OperationGroupingType](UI.xml#L1666)


Member|Value|Description
:-----|----:|:----------
[Isolated](UI.xml#L1667)|0|Invoke each action in isolation from other actions
[ChangeSet](UI.xml#L1670)|1|Group all actions into a single change set

<a name="DataFieldForIntentBasedNavigation"></a>
## [DataFieldForIntentBasedNavigation](UI.xml#L1675): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
Triggers intent-based UI navigation

The navigation intent is expressed as a Semantic Object and optionally an Action on that object.

It is NOT tied to a data value (in contrast to [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)).

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[*Inline*](UI.xml#L1648)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1651)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[SemanticObject](UI.xml#L1682)|String|Name of the Semantic Object
[Action](UI.xml#L1685)|String?|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[NavigationAvailable](UI.xml#L1688)|Boolean|The navigation intent is for that user with the selected context and parameters available
[RequiresContext](UI.xml#L1691)|Boolean|Determines whether a context needs to be passed to the target of this navigation.
[Mapping](UI.xml#L1694)|\[[SemanticObjectMappingType](Common.md#SemanticObjectMappingType)\]|Maps properties of the annotated entity type to properties of the Semantic Object

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="DataFieldForActionGroup"></a>
## [DataFieldForActionGroup](UI.xml#L1699): [DataFieldAbstract](#DataFieldAbstract) *([Experimental](Common.md#Experimental))*
Collection of OData actions and intent based navigations

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[Actions](UI.xml#L1702)|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Collection of data fields that refer to actions or intent based navigations

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="DataField"></a>
## [DataField](UI.xml#L1707): [DataFieldAbstract](#DataFieldAbstract)
A piece of data

**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)
- [DataFieldWithActionGroup](#DataFieldWithActionGroup)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[Value](UI.xml#L1709)|Untyped|The data field's value

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="DataFieldWithAction"></a>
## [DataFieldWithAction](UI.xml#L1736): [DataField](#DataField)
A piece of data that allows triggering an OData action

The action is tied to a data value. This is in contrast to [DataFieldForAction](#DataFieldForAction) which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[Value](UI.xml#L1739)|PrimitiveType|The data field's value
[Action](UI.xml#L1740)|[ActionName](#ActionName)|Name of an Action, Function, ActionImport, or FunctionImport in scope

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="DataFieldWithIntentBasedNavigation"></a>
## [DataFieldWithIntentBasedNavigation](UI.xml#L1745): [DataField](#DataField)
A piece of data that allows triggering intent-based UI navigation

The navigation intent is expressed as a Semantic Object and optionally an Action on that object.

It is tied to a data value which should be rendered as a hyperlink.
This is in contrast to [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation) which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[Value](UI.xml#L1753)|PrimitiveType|The data field's value
[SemanticObject](UI.xml#L1754)|String|Name of the Semantic Object
[Action](UI.xml#L1757)|String?|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[Mapping](UI.xml#L1760)|\[[SemanticObjectMappingType](Common.md#SemanticObjectMappingType)\]|Maps properties of the annotated entity type to properties of the Semantic Object

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="DataFieldWithNavigationPath"></a>
## [DataFieldWithNavigationPath](UI.xml#L1765): [DataField](#DataField)
A piece of data that allows navigating to related data

It should be rendered as a hyperlink

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[Value](UI.xml#L1768)|PrimitiveType|The data field's value
[Target](UI.xml#L1769)|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="DataFieldWithUrl"></a>
## [DataFieldWithUrl](UI.xml#L1776): [DataField](#DataField)
A piece of data that allows navigating to other information on the Web

It should be rendered as a hyperlink

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[Value](UI.xml#L1779)|PrimitiveType|The data field's value
[Url](UI.xml#L1780)|URL|Target of the hyperlink<br>Can be annotated with:<ul><li>[LinkTarget](HTML5.md#LinkTarget)</li></ul>
[UrlContentType](UI.xml#L1789)|MediaType?|Media type of the hyperlink target, e.g. `video/mp4`

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="DataFieldWithActionGroup"></a>
## [DataFieldWithActionGroup](UI.xml#L1795): [DataField](#DataField) *([Experimental](Common.md#Experimental))*
Collection of OData actions and intent based navigations

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1600)|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1604)|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1607)|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1610)|URL?|Optional icon
[Value](UI.xml#L1798)|PrimitiveType|The data field's value
[Actions](UI.xml#L1799)|\[[DataField](#DataField)\]|Collection of data fields that are either [DataFieldWithAction](#DataFieldWithAction), [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation), [DataFieldWithNavigationPath](#DataFieldWithNavigationPath), or [DataFieldWithUrl](#DataFieldWithUrl)

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)
- [RowSpanForDuplicateValues](HTML5.md#RowSpanForDuplicateValues)
- [FieldControl](Common.md#FieldControl)

<a name="RecommendationStateType"></a>
## [RecommendationStateType](UI.xml#L1837)
**Type:** Byte

Indicates whether a field contains or has a recommended value

Editable fields for which a recommendation has been pre-filled or that have recommendations that differ from existing human input need to be highlighted.

Allowed Value|Description
:------------|:----------
[0](UI.xml#L1844)|regular - with human or default input, no recommendation
[1](UI.xml#L1848)|highlighted - without human input and with recommendation
[2](UI.xml#L1852)|warning - with human or default input and with recommendation

<a name="RecommendationListType"></a>
## [RecommendationListType](UI.xml#L1867)
Reference to a recommendation list

A recommendation consists of one or more values for editable fields plus a rank between 0.0 and 9.9, with 9.9 being the best recommendation.

Property|Type|Description
:-------|:---|:----------
[CollectionPath](UI.xml#L1872)|String|Resource path of a collection of recommended values
[RankProperty](UI.xml#L1875)|String|Name of the property within the collection of recommended values that describes the rank of the recommendation
[Binding](UI.xml#L1878)|\[[RecommendationBinding](#RecommendationBinding)\]|List of pairs of a local property and recommended value property

<a name="RecommendationBinding"></a>
## [RecommendationBinding](UI.xml#L1883)


Property|Type|Description
:-------|:---|:----------
[LocalDataProperty](UI.xml#L1884)|PropertyPath|Path to editable property for which recommended values exist
[ValueListProperty](UI.xml#L1887)|String|Path to property in the collection of recommended values. Format is identical to PropertyPath annotations.

<a name="PropertyRecommendationType"></a>
## [*PropertyRecommendationType*](UI.xml#L1905) *([Experimental](Common.md#Experimental))*
Base type containing recommendations for an entity type property

Property|Type|Description
:-------|:---|:----------
[RecommendedFieldValue](UI.xml#L1908)|PrimitiveType|Recommended value<br>In informal specializations of this base type, this property is specialized to the primitive type of the entity type property. If the recommendation has a description, this property has a [`Common.Text`](Common.md#Text) annotation that evaluates to the `RecommendedFieldDescription` property.
[RecommendedFieldDescription](UI.xml#L1917)|String?|Description of the recommended value<br>In informal specializations of this base type, this property is specialized to the string type of the text property corresponding to the entity type property. It is omitted from informal specializations for recommendations without description.
[RecommendedFieldScoreValue](UI.xml#L1924)|Decimal?|Confidence score of the recommended value
[RecommendedFieldIsSuggestion](UI.xml#L1927)|Boolean|Whether the recommended value shall be suggested in the input field<br>For any collection of a specialization of `PropertyRecommendationType` in a property containing [`Recommendations`](#Recommendations), this flag can be true in at most one instance of the collection, and only if the `RecommendedFieldScoreValue` exceeds a certain threshold.

<a name="ActionName"></a>
## [ActionName](UI.xml#L1957)
**Type:** String

Name of an Action, Function, ActionImport, or FunctionImport in scope

Possible values are

- Namespace-qualified name of an action or function (`foo.bar`)
- Namespace-qualified name of an action or function followed by parentheses with the parameter signature to identify a specific overload, like in an [annotation target](https://docs.oasis-open.org/odata/odata-csdl-xml/v4.01/odata-csdl-xml-v4.01.html#sec_Target) (`foo.bar(baz.qux)`)
- Simple name of an action import or function import of the annotated service (`quux`)
- Namespace-qualified name of an entity container, followed by a slash and the simple name of an action import or function import in any referenced schema (`foo.corge/quux`)
