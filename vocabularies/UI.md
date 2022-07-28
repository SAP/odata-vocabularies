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
[HeaderInfo](./UI.xml#L58:~:text=<Term%20Name="-,HeaderInfo,-")|[HeaderInfoType](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
[Identification](./UI.xml#L109:~:text=<Term%20Name="-,Identification,-")|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
[Badge](./UI.xml#L114:~:text=<Term%20Name="-,Badge,-")|[BadgeType](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
[LineItem](./UI.xml#L141:~:text=<Term%20Name="-,LineItem,-")|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
[StatusInfo](./UI.xml#L146:~:text=<Term%20Name="-,StatusInfo,-")|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
[FieldGroup](./UI.xml#L151:~:text=<Term%20Name="-,FieldGroup,-")|[FieldGroupType](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
[ConnectedFields](./UI.xml#L165:~:text=<Term%20Name="-,ConnectedFields,-")|[ConnectedFieldsType](#ConnectedFieldsType)|<a name="ConnectedFields"></a>Group of semantically connected fields with a representation template and an optional label ([Example](./UI.xml#L167))
[GeoLocations](./UI.xml#L230:~:text=<Term%20Name="-,GeoLocations,-")|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
[GeoLocation](./UI.xml#L234:~:text=<Term%20Name="-,GeoLocation,-")|[GeoLocationType](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
[Contacts](./UI.xml#L254:~:text=<Term%20Name="-,Contacts,-")|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts<br>Each collection item MUST reference an annotation of a Communication.Contact<br>Allowed terms:<br>- [Contact](Communication.md#Contact)
[MediaResource](./UI.xml#L265:~:text=<Term%20Name="-,MediaResource,-")|[MediaResourceType](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource
[DataPoint](./UI.xml#L319:~:text=<Term%20Name="-,DataPoint,-")|[DataPointType](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
[KPI](./UI.xml#L632:~:text=<Term%20Name="-,KPI,-")|[KPIType](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
[Chart](./UI.xml#L678:~:text=<Term%20Name="-,Chart,-")|[ChartDefinitionType](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
[ValueCriticality](./UI.xml#L902:~:text=<Term%20Name="-,ValueCriticality,-") *([Experimental](Common.md#Experimental))*|\[[ValueCriticalityType](#ValueCriticalityType)\]|<a name="ValueCriticality"></a>Assign criticalities to primitive values. This information can be used for semantic coloring.
[CriticalityLabels](./UI.xml#L915:~:text=<Term%20Name="-,CriticalityLabels,-") *([Experimental](Common.md#Experimental))*|\[[CriticalityLabelType](#CriticalityLabelType)\]|<a name="CriticalityLabels"></a>Assign labels to criticalities. This information can be used for semantic coloring. When applied to a property, a label for a criticality must be provided, if more than one value of the annotated property has been assigned to the same criticality. There must be no more than one label per criticality.
[SelectionFields](./UI.xml#L936:~:text=<Term%20Name="-,SelectionFields,-")|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
[Facets](./UI.xml#L944:~:text=<Term%20Name="-,Facets,-")|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
[HeaderFacets](./UI.xml#L948:~:text=<Term%20Name="-,HeaderFacets,-")|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
[QuickViewFacets](./UI.xml#L952:~:text=<Term%20Name="-,QuickViewFacets,-")|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
[QuickCreateFacets](./UI.xml#L956:~:text=<Term%20Name="-,QuickCreateFacets,-")|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
[FilterFacets](./UI.xml#L960:~:text=<Term%20Name="-,FilterFacets,-")|\[[ReferenceFacet](#ReferenceFacet)\]|<a name="FilterFacets"></a>Facets that reference UI.FieldGroup annotations to group filterable fields
[SelectionPresentationVariant](./UI.xml#L1027:~:text=<Term%20Name="-,SelectionPresentationVariant,-")|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
[PresentationVariant](./UI.xml#L1051:~:text=<Term%20Name="-,PresentationVariant,-")|[PresentationVariantType](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
[SelectionVariant](./UI.xml#L1164:~:text=<Term%20Name="-,SelectionVariant,-")|[SelectionVariantType](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
[ThingPerspective](./UI.xml#L1320:~:text=<Term%20Name="-,ThingPerspective,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>The annotated term is a Thing Perspective
[IsSummary](./UI.xml#L1323:~:text=<Term%20Name="-,IsSummary,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
[PartOfPreview](./UI.xml#L1327:~:text=<Term%20Name="-,PartOfPreview,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This record and all included structural elements are part of the Thing preview<br>This term can be applied e.g. to UI.Facet and UI.DataField
[Map](./UI.xml#L1331:~:text=<Term%20Name="-,Map,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
[Gallery](./UI.xml#L1335:~:text=<Term%20Name="-,Gallery,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
[IsImageURL](./UI.xml#L1340:~:text=<Term%20Name="-,IsImageURL,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image<br>Can be annotated with:<br>- [IsNaturalPerson](Common.md#IsNaturalPerson)
[IsImage](./UI.xml#L1350:~:text=<Term%20Name="-,IsImage,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImage"></a>Properties annotated with this term MUST be a stream property annotated with a MIME type image. Entity types annotated with this term MUST be a media entity type annotated with a MIME type image.<br>Can be annotated with:<br>- [IsNaturalPerson](Common.md#IsNaturalPerson)
[MultiLineText](./UI.xml#L1361:~:text=<Term%20Name="-,MultiLineText,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties and parameters annotated with this annotation should be rendered as multi-line text (e.g. text area)
[Placeholder](./UI.xml#L1366:~:text=<Term%20Name="-,Placeholder,-") *([Experimental](Common.md#Experimental))*|String|<a name="Placeholder"></a>A short, human-readable text that gives a hint or an example to help the user with data entry
[TextArrangement](./UI.xml#L1372:~:text=<Term%20Name="-,TextArrangement,-")|[TextArrangementType](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text<br>If used for a single property the Common.Text annotation is annotated
[Importance](./UI.xml#L1391:~:text=<Term%20Name="-,Importance,-")|[ImportanceType](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
[Hidden](./UI.xml#L1406:~:text=<Term%20Name="-,Hidden,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties or facets (see UI.Facet) annotated with this term will not be rendered if the annotation evaluates to true.<br>Hidden properties usually carry technical information that is used for application control and is of no direct interest to end users. The annotation value may be an expression to dynamically hide or render the annotated feature. If a navigation property is annotated with `Hidden` true, all subsequent parts are hidden - independent of their own potential `Hidden` annotations.
[CreateHidden](./UI.xml#L1414:~:text=<Term%20Name="-,CreateHidden,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="CreateHidden"></a>EntitySets annotated with this term can control the visibility of the Create operation dynamically<br>The annotation value should be a path to another property from a related entity.
[UpdateHidden](./UI.xml#L1419:~:text=<Term%20Name="-,UpdateHidden,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="UpdateHidden"></a>EntitySets annotated with this term can control the visibility of the Edit/Save operation dynamically<br>The annotation value should be a path to another property from the same or a related entity.
[DeleteHidden](./UI.xml#L1424:~:text=<Term%20Name="-,DeleteHidden,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="DeleteHidden"></a>EntitySets annotated with this term can control the visibility of the Delete operation dynamically<br>The annotation value should be a path to another property from the same or a related entity.
[HiddenFilter](./UI.xml#L1429:~:text=<Term%20Name="-,HiddenFilter,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria if the annotation evaluates to true.<br>Properties annotated with `HiddenFilter` are intended as parts of a `$filter` expression that cannot be directly influenced by end users. The properties will be rendered in all other places, e.g. table columns or form fields. This is in contrast to properties annotated with [Hidden](#Hidden) that are not rendered at all. If a navigation property is annotated with `HiddenFilter` true, all subsequent parts are hidden in filter - independent of their own potential `HiddenFilter` annotations.
[DataFieldDefault](./UI.xml#L1438:~:text=<Term%20Name="-,DataFieldDefault,-")|[DataFieldAbstract](#DataFieldAbstract)|<a name="DataFieldDefault"></a>Default representation of a property as a datafield, e.g. when the property is added as a table column or form field via personalization<br>Only concrete subtypes of [DataFieldAbstract](#DataFieldAbstract) can be used for a DataFieldDefault. For type [DataField](#DataField) and its subtypes the annotation target SHOULD be the same property that is referenced via a path expression in the `Value` of the datafield.
[Criticality](./UI.xml#L1656:~:text=<Term%20Name="-,Criticality,-")|[CriticalityType](#CriticalityType)|<a name="Criticality"></a>Service-calculated criticality, alternative to UI.CriticalityCalculation
[CriticalityCalculation](./UI.xml#L1660:~:text=<Term%20Name="-,CriticalityCalculation,-")|[CriticalityCalculationType](#CriticalityCalculationType)|<a name="CriticalityCalculation"></a>Parameters for client-calculated criticality, alternative to UI.Criticality
[Emphasized](./UI.xml#L1664:~:text=<Term%20Name="-,Emphasized,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Emphasized"></a>Highlight something that is of special interest<br>The usage of a property or operation should be highlighted as it's of special interest for the end user
[OrderBy](./UI.xml#L1670:~:text=<Term%20Name="-,OrderBy,-") *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="OrderBy"></a>Sort by the referenced property instead of by the annotated property<br>Example: annotated property `SizeCode` has string values XS, S, M, L, XL, referenced property SizeOrder has numeric values -2, -1, 0, 1, 2. Numeric ordering by SizeOrder will be more understandable than lexicographic ordering by SizeCode.
[ParameterDefaultValue](./UI.xml#L1676:~:text=<Term%20Name="-,ParameterDefaultValue,-")|PrimitiveType?|<a name="ParameterDefaultValue"></a>Define default values for action parameters<br>For unbound actions the default value can either be a constant expression, or a dynamic expression using absolute paths, e.g. singletons or function import results. Whereas for bound actions the bound entity and its properties and associated properties can be used as default values
[RecommendationState](./UI.xml#L1682:~:text=<Term%20Name="-,RecommendationState,-")|[RecommendationStateType](#RecommendationStateType)|<a name="RecommendationState"></a>Indicates whether a field contains or has a recommended value<br>Intelligent systems can help users by recommending input the user may "prefer".
[RecommendationList](./UI.xml#L1712:~:text=<Term%20Name="-,RecommendationList,-")|[RecommendationListType](#RecommendationListType)|<a name="RecommendationList"></a>Specifies how to get a list of recommended values for a property or parameter<br>Intelligent systems can help users by recommending input the user may "prefer".
[ExcludeFromNavigationContext](./UI.xml#L1744:~:text=<Term%20Name="-,ExcludeFromNavigationContext,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ExcludeFromNavigationContext"></a>The contents of this property must not be propagated to the app-to-app navigation context
[DoNotCheckScaleOfMeasuredQuantity](./UI.xml#L1748:~:text=<Term%20Name="-,DoNotCheckScaleOfMeasuredQuantity,-") *([Experimental](Common.md#Experimental))*|Boolean|<a name="DoNotCheckScaleOfMeasuredQuantity"></a>Do not check the number of fractional digits of the annotated measured quantity<br>The annotated property contains a measured quantity, and the user may enter more fractional digits than defined for the corresponding unit of measure.<br/>This switches off the validation of user input with respect to decimals.

## <a name="HeaderInfoType"></a>[HeaderInfoType](./UI.xml#L62:~:text=<ComplexType%20Name="-,HeaderInfoType,-")


Property|Type|Description
:-------|:---|:----------
[TypeName](./UI.xml#L63:~:text=<ComplexType%20Name="-,HeaderInfoType,-")|String|Name of the main entity type
[TypeNamePlural](./UI.xml#L67:~:text=<ComplexType%20Name="-,HeaderInfoType,-")|String|Plural form of the name of the main entity type
[Title](./UI.xml#L71:~:text=<ComplexType%20Name="-,HeaderInfoType,-")|[DataFieldAbstract?](#DataFieldAbstract)|Title, e.g. for overview pages<br>This can be a [DataField](#DataField) and any of its children, or a [DataFieldForAnnotation](#DataFieldForAnnotation) targeting [ConnectedFields](#ConnectedFields).
[Description](./UI.xml#L81:~:text=<ComplexType%20Name="-,HeaderInfoType,-")|[DataFieldAbstract?](#DataFieldAbstract)|Description, e.g. for overview pages<br>This can be a [DataField](#DataField) and any of its children, or a [DataFieldForAnnotation](#DataFieldForAnnotation) targeting [ConnectedFields](#ConnectedFields).
[Image](./UI.xml#L91:~:text=<ComplexType%20Name="-,HeaderInfoType,-") *([Experimental](Common.md#Experimental))*|Stream?|Image for an instance of the entity type. If the property has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the value of the property `ImageUrl` can be used instead.
[ImageUrl](./UI.xml#L95:~:text=<ComplexType%20Name="-,HeaderInfoType,-")|URL?|Image URL for an instance of the entity type. If the property has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the value of the property `TypeImageUrl` can be used instead.
[TypeImageUrl](./UI.xml#L99:~:text=<ComplexType%20Name="-,HeaderInfoType,-")|URL?|Image URL for the entity type
[Initials](./UI.xml#L103:~:text=<ComplexType%20Name="-,HeaderInfoType,-") *([Experimental](Common.md#Experimental))*|String?|Latin letters to be used in case no `Image`, `ImageUrl`, or `TypeImageUrl` is present

## <a name="BadgeType"></a>[BadgeType](./UI.xml#L118:~:text=<ComplexType%20Name="-,BadgeType,-")


Property|Type|Description
:-------|:---|:----------
[HeadLine](./UI.xml#L119:~:text=<ComplexType%20Name="-,BadgeType,-")|[DataField](#DataField)|Headline
[Title](./UI.xml#L122:~:text=<ComplexType%20Name="-,BadgeType,-")|[DataField](#DataField)|Title
[ImageUrl](./UI.xml#L125:~:text=<ComplexType%20Name="-,BadgeType,-")|URL?|Image URL for an instance of the entity type. If the property has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the value of the property `TypeImageUrl` can be used instead.
[TypeImageUrl](./UI.xml#L129:~:text=<ComplexType%20Name="-,BadgeType,-")|URL?|Image URL for the entity type
[MainInfo](./UI.xml#L133:~:text=<ComplexType%20Name="-,BadgeType,-")|[DataField?](#DataField)|Main information on the business card
[SecondaryInfo](./UI.xml#L136:~:text=<ComplexType%20Name="-,BadgeType,-")|[DataField?](#DataField)|Additional information on the business card

## <a name="FieldGroupType"></a>[FieldGroupType](./UI.xml#L155:~:text=<ComplexType%20Name="-,FieldGroupType,-")


Property|Type|Description
:-------|:---|:----------
[Label](./UI.xml#L156:~:text=<ComplexType%20Name="-,FieldGroupType,-")|String?|Label for the field group
[Data](./UI.xml#L160:~:text=<ComplexType%20Name="-,FieldGroupType,-")|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

## <a name="ConnectedFieldsType"></a>[ConnectedFieldsType](./UI.xml#L192:~:text=<ComplexType%20Name="-,ConnectedFieldsType,-")
Group of semantically connected fields with a representation template and an optional label

Property|Type|Description
:-------|:---|:----------
[Label](./UI.xml#L194:~:text=<ComplexType%20Name="-,ConnectedFieldsType,-")|String?|Label for the connected fields
[Template](./UI.xml#L198:~:text=<ComplexType%20Name="-,ConnectedFieldsType,-")|String|Template for representing the connected fields<br>Template variables are identifiers enclosed in curly braces, e.g. `{MaterialName} - {MaterialClassName}`. The `Data` collection assigns values to the template variables.
[Data](./UI.xml#L203:~:text=<ComplexType%20Name="-,ConnectedFieldsType,-")|[Dictionary](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Dictionary)|Dictionary of template variables<br>Each template variable used in `Template` must be assigned a value here. The value must be of type [DataFieldAbstract](#DataFieldAbstract)

## <a name="GeoLocationType"></a>[GeoLocationType](./UI.xml#L238:~:text=<ComplexType%20Name="-,GeoLocationType,-")
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
[Latitude](./UI.xml#L240:~:text=<ComplexType%20Name="-,GeoLocationType,-")|Double?|Geographic latitude
[Longitude](./UI.xml#L243:~:text=<ComplexType%20Name="-,GeoLocationType,-")|Double?|Geographic longitude
[Location](./UI.xml#L246:~:text=<ComplexType%20Name="-,GeoLocationType,-")|GeographyPoint?|A point in a round-earth coordinate system
[Address](./UI.xml#L249:~:text=<ComplexType%20Name="-,GeoLocationType,-")|[AddressType?](Communication.md#AddressType)|vCard-style address

## <a name="MediaResourceType"></a>[MediaResourceType](./UI.xml#L269:~:text=<ComplexType%20Name="-,MediaResourceType,-")


Property|Type|Description
:-------|:---|:----------
[Url](./UI.xml#L270:~:text=<ComplexType%20Name="-,MediaResourceType,-")|URL|URL of media resource
[ContentType](./UI.xml#L274:~:text=<ComplexType%20Name="-,MediaResourceType,-")|MediaType?|Content type, such as application/pdf, video/x-flv, image/jpeg
[ByteSize](./UI.xml#L278:~:text=<ComplexType%20Name="-,MediaResourceType,-")|Int64?|Resource size in bytes
[ChangedAt](./UI.xml#L281:~:text=<ComplexType%20Name="-,MediaResourceType,-")|DateTimeOffset?|Date of last change
[Thumbnail](./UI.xml#L284:~:text=<ComplexType%20Name="-,MediaResourceType,-")|[ImageType?](#ImageType)|Thumbnail image
[Title](./UI.xml#L287:~:text=<ComplexType%20Name="-,MediaResourceType,-")|[DataField](#DataField)|Resource title
[Description](./UI.xml#L290:~:text=<ComplexType%20Name="-,MediaResourceType,-")|[DataField?](#DataField)|Resource description

## <a name="ImageType"></a>[ImageType](./UI.xml#L294:~:text=<ComplexType%20Name="-,ImageType,-")


Property|Type|Description
:-------|:---|:----------
[Url](./UI.xml#L295:~:text=<ComplexType%20Name="-,ImageType,-")|URL|URL of image
[Width](./UI.xml#L299:~:text=<ComplexType%20Name="-,ImageType,-")|String?|Width of image
[Height](./UI.xml#L302:~:text=<ComplexType%20Name="-,ImageType,-")|String?|Height of image

## <a name="DataPointType"></a>[DataPointType](./UI.xml#L323:~:text=<ComplexType%20Name="-,DataPointType,-")


Property|Type|Description
:-------|:---|:----------
[Title](./UI.xml#L329:~:text=<ComplexType%20Name="-,DataPointType,-")|String?|Title of the data point
[Description](./UI.xml#L333:~:text=<ComplexType%20Name="-,DataPointType,-")|String?|Short description
[LongDescription](./UI.xml#L337:~:text=<ComplexType%20Name="-,DataPointType,-")|String?|Full description
[Value](./UI.xml#L341:~:text=<ComplexType%20Name="-,DataPointType,-")|PrimitiveType|Numeric value<br>The value is typically provided via a `Path` construct. The path MUST lead to a direct property of the same entity type or a property of a complex property (recursively) of that entity type, navigation segments are not allowed.<br/>It could be annotated with either `UoM.ISOCurrency` or `UoM.Unit`. Percentage values are annotated with `UoM.Unit = '%'`. A renderer should take an optional `Common.Text` annotation into consideration.
[TargetValue](./UI.xml#L353:~:text=<ComplexType%20Name="-,DataPointType,-")|PrimitiveType?|Target value
[ForecastValue](./UI.xml#L356:~:text=<ComplexType%20Name="-,DataPointType,-")|PrimitiveType?|Forecast value
[MinimumValue](./UI.xml#L359:~:text=<ComplexType%20Name="-,DataPointType,-")|Decimal?|Minimum value (for output rendering)
[MaximumValue](./UI.xml#L362:~:text=<ComplexType%20Name="-,DataPointType,-")|Decimal?|Maximum value (for output rendering)
[ValueFormat](./UI.xml#L365:~:text=<ComplexType%20Name="-,DataPointType,-")|[NumberFormat?](#NumberFormat)|Number format
[Visualization](./UI.xml#L368:~:text=<ComplexType%20Name="-,DataPointType,-")|[VisualizationType?](#VisualizationType)|Preferred visualization
[SampleSize](./UI.xml#L371:~:text=<ComplexType%20Name="-,DataPointType,-")|PrimitiveType?|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
[ReferencePeriod](./UI.xml#L378:~:text=<ComplexType%20Name="-,DataPointType,-")|[ReferencePeriod?](#ReferencePeriod)|Reference period
[Criticality](./UI.xml#L381:~:text=<ComplexType%20Name="-,DataPointType,-")|[CriticalityType?](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
[CriticalityLabels](./UI.xml#L384:~:text=<ComplexType%20Name="-,DataPointType,-")|AnnotationPath?|Custom labels for the criticality legend. Annotation path MUST end in UI.CriticalityLabels<br>Allowed terms:<br>- [CriticalityLabels](#CriticalityLabels)
[CriticalityRepresentation](./UI.xml#L392:~:text=<ComplexType%20Name="-,DataPointType,-") *([Experimental](Common.md#Experimental))*|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[CriticalityCalculation](./UI.xml#L396:~:text=<ComplexType%20Name="-,DataPointType,-")|[CriticalityCalculationType?](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
[Trend](./UI.xml#L399:~:text=<ComplexType%20Name="-,DataPointType,-")|[TrendType?](#TrendType)|Service-calculated trend, alternative to TrendCalculation
[TrendCalculation](./UI.xml#L402:~:text=<ComplexType%20Name="-,DataPointType,-")|[TrendCalculationType?](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
[Responsible](./UI.xml#L405:~:text=<ComplexType%20Name="-,DataPointType,-")|[ContactType?](Communication.md#ContactType)|Contact person

**Applicable Annotation Terms:**

- [Hidden](#Hidden)

## <a name="NumberFormat"></a>[NumberFormat](./UI.xml#L410:~:text=<ComplexType%20Name="-,NumberFormat,-")
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
[ScaleFactor](./UI.xml#L412:~:text=<ComplexType%20Name="-,NumberFormat,-")|Decimal?|Display value in *ScaleFactor* units, e.g. 1000 for k (kilo), 1e6 for M (Mega)
[NumberOfFractionalDigits](./UI.xml#L415:~:text=<ComplexType%20Name="-,NumberFormat,-")|Byte?|Number of fractional digits of the scaled value to be visualized

## <a name="VisualizationType"></a>[VisualizationType](./UI.xml#L420:~:text=<EnumType%20Name="-,VisualizationType,-")


Member|Value|Description
:-----|----:|:----------
[Number](./UI.xml#L421:~:text=<EnumType%20Name="-,VisualizationType,-")|0|Visualize as a number
[BulletChart](./UI.xml#L424:~:text=<EnumType%20Name="-,VisualizationType,-")|1|Visualize as bullet chart - requires TargetValue
[Progress](./UI.xml#L427:~:text=<EnumType%20Name="-,VisualizationType,-")|2|Visualize as progress indicator - requires TargetValue
[Rating](./UI.xml#L430:~:text=<EnumType%20Name="-,VisualizationType,-")|3|Visualize as partially or completely filled stars/hearts/... - requires TargetValue
[Donut](./UI.xml#L433:~:text=<EnumType%20Name="-,VisualizationType,-")|4|Visualize as donut, optionally with missing segment - requires TargetValue
[DeltaBulletChart](./UI.xml#L436:~:text=<EnumType%20Name="-,VisualizationType,-")|5|Visualize as delta bullet chart - requires TargetValue

## <a name="ReferencePeriod"></a>[ReferencePeriod](./UI.xml#L441:~:text=<ComplexType%20Name="-,ReferencePeriod,-")
Reference period

Property|Type|Description
:-------|:---|:----------
[Description](./UI.xml#L443:~:text=<ComplexType%20Name="-,ReferencePeriod,-")|String?|Short description of the reference period
[Start](./UI.xml#L447:~:text=<ComplexType%20Name="-,ReferencePeriod,-")|DateTimeOffset?|Start of the reference period
[End](./UI.xml#L450:~:text=<ComplexType%20Name="-,ReferencePeriod,-")|DateTimeOffset?|End of the reference period

## <a name="CriticalityType"></a>[CriticalityType](./UI.xml#L455:~:text=<EnumType%20Name="-,CriticalityType,-")
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
[VeryNegative](./UI.xml#L457:~:text=<EnumType%20Name="-,CriticalityType,-") *([Experimental](Common.md#Experimental))*|-1|Very negative / dark-red status - risk - out of stock - late
[Neutral](./UI.xml#L461:~:text=<EnumType%20Name="-,CriticalityType,-")|0|Neutral / grey status - inactive - open - in progress
[Negative](./UI.xml#L464:~:text=<EnumType%20Name="-,CriticalityType,-")|1|Negative / red status - attention - overload - alert
[Critical](./UI.xml#L467:~:text=<EnumType%20Name="-,CriticalityType,-")|2|Critical / orange status - warning
[Positive](./UI.xml#L470:~:text=<EnumType%20Name="-,CriticalityType,-")|3|Positive / green status - completed - available - on track - acceptable
[VeryPositive](./UI.xml#L473:~:text=<EnumType%20Name="-,CriticalityType,-") *([Experimental](Common.md#Experimental))*|4|Very positive - above max stock - excess
[Information](./UI.xml#L477:~:text=<EnumType%20Name="-,CriticalityType,-") *([Experimental](Common.md#Experimental))*|5|Information - noticable - informative

## <a name="CriticalityCalculationType"></a>[CriticalityCalculationType](./UI.xml#L483:~:text=<ComplexType%20Name="-,CriticalityCalculationType,-"): [CriticalityThresholdsType](#CriticalityThresholdsType)
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
[*AcceptanceRangeLowValue*](./UI.xml#L538:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](./UI.xml#L541:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Highest value that is considered positive
[*ToleranceRangeLowValue*](./UI.xml#L544:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](./UI.xml#L547:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Highest value that is considered neutral
[*DeviationRangeLowValue*](./UI.xml#L550:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Lowest value that is considered critical
[*DeviationRangeHighValue*](./UI.xml#L553:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Highest value that is considered critical
[ReferenceValue](./UI.xml#L518:~:text=<ComplexType%20Name="-,CriticalityCalculationType,-") *([Experimental](Common.md#Experimental))*|PrimitiveType?|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](./UI.xml#L522:~:text=<ComplexType%20Name="-,CriticalityCalculationType,-") *([Experimental](Common.md#Experimental))*|Boolean|Calculate with a relative difference
[ImprovementDirection](./UI.xml#L526:~:text=<ComplexType%20Name="-,CriticalityCalculationType,-")|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
[ConstantThresholds](./UI.xml#L529:~:text=<ComplexType%20Name="-,CriticalityCalculationType,-") *([Experimental](Common.md#Experimental))*|\[[LevelThresholdsType](#LevelThresholdsType)\]|List of thresholds depending on the aggregation level as a set of constant values<br>Constant thresholds shall only be used in order to refine constant values given for the data point overall (aggregation level with empty collection of property paths), but not if the thresholds are based on other measure elements.

## <a name="CriticalityThresholdsType"></a>[CriticalityThresholdsType](./UI.xml#L536:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")
Thresholds for calculating the criticality of a value

**Derived Types:**
- [CriticalityCalculationType](#CriticalityCalculationType)
- [LevelThresholdsType](#LevelThresholdsType)

Property|Type|Description
:-------|:---|:----------
[AcceptanceRangeLowValue](./UI.xml#L538:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Lowest value that is considered positive
[AcceptanceRangeHighValue](./UI.xml#L541:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Highest value that is considered positive
[ToleranceRangeLowValue](./UI.xml#L544:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Lowest value that is considered neutral
[ToleranceRangeHighValue](./UI.xml#L547:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Highest value that is considered neutral
[DeviationRangeLowValue](./UI.xml#L550:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Lowest value that is considered critical
[DeviationRangeHighValue](./UI.xml#L553:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Highest value that is considered critical

## <a name="ImprovementDirectionType"></a>[ImprovementDirectionType](./UI.xml#L558:~:text=<EnumType%20Name="-,ImprovementDirectionType,-")
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
[Minimize](./UI.xml#L560:~:text=<EnumType%20Name="-,ImprovementDirectionType,-")|1|Lower is better
[Target](./UI.xml#L563:~:text=<EnumType%20Name="-,ImprovementDirectionType,-")|2|Closer to the target is better
[Maximize](./UI.xml#L566:~:text=<EnumType%20Name="-,ImprovementDirectionType,-")|3|Higher is better

## <a name="LevelThresholdsType"></a>[LevelThresholdsType](./UI.xml#L571:~:text=<ComplexType%20Name="-,LevelThresholdsType,-"): [CriticalityThresholdsType](#CriticalityThresholdsType) *([Experimental](Common.md#Experimental))*
Thresholds for an aggregation level

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](./UI.xml#L538:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](./UI.xml#L541:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Highest value that is considered positive
[*ToleranceRangeLowValue*](./UI.xml#L544:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](./UI.xml#L547:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Highest value that is considered neutral
[*DeviationRangeLowValue*](./UI.xml#L550:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Lowest value that is considered critical
[*DeviationRangeHighValue*](./UI.xml#L553:~:text=<ComplexType%20Name="-,CriticalityThresholdsType,-")|PrimitiveType?|Highest value that is considered critical
[AggregationLevel](./UI.xml#L574:~:text=<ComplexType%20Name="-,LevelThresholdsType,-")|\[PropertyPath\]|An unordered tuple of dimensions, i.e. properties which are intended to be used for grouping in aggregating requests. In analytical UIs, e.g. an analytical chart, the aggregation level typically corresponds to the visible dimensions.

## <a name="TrendType"></a>[TrendType](./UI.xml#L579:~:text=<EnumType%20Name="-,TrendType,-")
The trend of a value

Member|Value|Description
:-----|----:|:----------
[StrongUp](./UI.xml#L581:~:text=<EnumType%20Name="-,TrendType,-")|1|Value grows strongly
[Up](./UI.xml#L584:~:text=<EnumType%20Name="-,TrendType,-")|2|Value grows
[Sideways](./UI.xml#L587:~:text=<EnumType%20Name="-,TrendType,-")|3|Value does not significantly grow or shrink
[Down](./UI.xml#L590:~:text=<EnumType%20Name="-,TrendType,-")|4|Value shrinks
[StrongDown](./UI.xml#L593:~:text=<EnumType%20Name="-,TrendType,-")|5|Value shrinks strongly

## <a name="TrendCalculationType"></a>[TrendCalculationType](./UI.xml#L598:~:text=<ComplexType%20Name="-,TrendCalculationType,-")
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
[ReferenceValue](./UI.xml#L612:~:text=<ComplexType%20Name="-,TrendCalculationType,-")|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](./UI.xml#L615:~:text=<ComplexType%20Name="-,TrendCalculationType,-")|Boolean|Calculate with a relative difference
[UpDifference](./UI.xml#L618:~:text=<ComplexType%20Name="-,TrendCalculationType,-")|Decimal|Threshold for Up
[StrongUpDifference](./UI.xml#L621:~:text=<ComplexType%20Name="-,TrendCalculationType,-")|Decimal|Threshold for StrongUp
[DownDifference](./UI.xml#L624:~:text=<ComplexType%20Name="-,TrendCalculationType,-")|Decimal|Threshold for Down
[StrongDownDifference](./UI.xml#L627:~:text=<ComplexType%20Name="-,TrendCalculationType,-")|Decimal|Threshold for StrongDown

## <a name="KPIType"></a>[KPIType](./UI.xml#L638:~:text=<ComplexType%20Name="-,KPIType,-")


Property|Type|Description
:-------|:---|:----------
[ID](./UI.xml#L639:~:text=<ComplexType%20Name="-,KPIType,-")|String?|Optional identifier to reference this instance from an external context
[ShortDescription](./UI.xml#L644:~:text=<ComplexType%20Name="-,KPIType,-") *([Experimental](Common.md#Experimental))*|String?|Very short description
[SelectionVariant](./UI.xml#L649:~:text=<ComplexType%20Name="-,KPIType,-")|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[DataPoint](./UI.xml#L652:~:text=<ComplexType%20Name="-,KPIType,-")|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
[AdditionalDataPoints](./UI.xml#L655:~:text=<ComplexType%20Name="-,KPIType,-")|\[[DataPointType](#DataPointType)\]|Additional data points, either specified inline or referencing another annotation via Path<br>Additional data points are typically related to the main data point and provide complementing information or could be used for comparisons
[Detail](./UI.xml#L659:~:text=<ComplexType%20Name="-,KPIType,-")|[KPIDetailType?](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

## <a name="KPIDetailType"></a>[KPIDetailType](./UI.xml#L663:~:text=<ComplexType%20Name="-,KPIDetailType,-")


Property|Type|Description
:-------|:---|:----------
[DefaultPresentationVariant](./UI.xml#L664:~:text=<ComplexType%20Name="-,KPIDetailType,-")|[PresentationVariantType?](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
[AlternativePresentationVariants](./UI.xml#L667:~:text=<ComplexType%20Name="-,KPIDetailType,-")|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path
[SemanticObject](./UI.xml#L670:~:text=<ComplexType%20Name="-,KPIDetailType,-")|String?|Name of the Semantic Object. If not specified, use Semantic Object annotated at the property referenced in KPI/DataPoint/Value
[Action](./UI.xml#L673:~:text=<ComplexType%20Name="-,KPIDetailType,-")|String?|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="ChartDefinitionType"></a>[ChartDefinitionType](./UI.xml#L682:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")


Property|Type|Description
:-------|:---|:----------
[Title](./UI.xml#L683:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")|String?|Title of the chart
[Description](./UI.xml#L687:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")|String?|Short description
[ChartType](./UI.xml#L691:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")|[ChartType](#ChartType)|Chart type
[AxisScaling](./UI.xml#L694:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")|[ChartAxisScalingType?](#ChartAxisScalingType)|Describes the scale of the chart value axes
[Measures](./UI.xml#L697:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
[DynamicMeasures](./UI.xml#L701:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")|\[AnnotationPath\]|Dynamic properties introduced by annotations and used as measures of the chart<br>If the annotation referenced by an annotation path does not apply to the same collection of entities as the one being visualized according to the `UI.Chart` annotation, the annotation path MUST be silently ignored.<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](#CustomAggregate)
[MeasureAttributes](./UI.xml#L714:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
[Dimensions](./UI.xml#L719:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
[DimensionAttributes](./UI.xml#L722:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
[Actions](./UI.xml#L727:~:text=<ComplexType%20Name="-,ChartDefinitionType,-")|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

## <a name="ChartType"></a>[ChartType](./UI.xml#L732:~:text=<EnumType%20Name="-,ChartType,-")


Member|Value|Description
:-----|----:|:----------
[Column](./UI.xml#L733:~:text=<EnumType%20Name="-,ChartType,-")|0|
[ColumnStacked](./UI.xml#L734:~:text=<EnumType%20Name="-,ChartType,-")|1|
[ColumnDual](./UI.xml#L735:~:text=<EnumType%20Name="-,ChartType,-")|2|
[ColumnStackedDual](./UI.xml#L736:~:text=<EnumType%20Name="-,ChartType,-")|3|
[ColumnStacked100](./UI.xml#L737:~:text=<EnumType%20Name="-,ChartType,-")|4|
[ColumnStackedDual100](./UI.xml#L738:~:text=<EnumType%20Name="-,ChartType,-")|5|
[Bar](./UI.xml#L739:~:text=<EnumType%20Name="-,ChartType,-")|6|
[BarStacked](./UI.xml#L740:~:text=<EnumType%20Name="-,ChartType,-")|7|
[BarDual](./UI.xml#L741:~:text=<EnumType%20Name="-,ChartType,-")|8|
[BarStackedDual](./UI.xml#L742:~:text=<EnumType%20Name="-,ChartType,-")|9|
[BarStacked100](./UI.xml#L743:~:text=<EnumType%20Name="-,ChartType,-")|10|
[BarStackedDual100](./UI.xml#L744:~:text=<EnumType%20Name="-,ChartType,-")|11|
[Area](./UI.xml#L745:~:text=<EnumType%20Name="-,ChartType,-")|12|
[AreaStacked](./UI.xml#L746:~:text=<EnumType%20Name="-,ChartType,-")|13|
[AreaStacked100](./UI.xml#L747:~:text=<EnumType%20Name="-,ChartType,-")|14|
[HorizontalArea](./UI.xml#L748:~:text=<EnumType%20Name="-,ChartType,-")|15|
[HorizontalAreaStacked](./UI.xml#L749:~:text=<EnumType%20Name="-,ChartType,-")|16|
[HorizontalAreaStacked100](./UI.xml#L750:~:text=<EnumType%20Name="-,ChartType,-")|17|
[Line](./UI.xml#L751:~:text=<EnumType%20Name="-,ChartType,-")|18|
[LineDual](./UI.xml#L752:~:text=<EnumType%20Name="-,ChartType,-")|19|
[Combination](./UI.xml#L753:~:text=<EnumType%20Name="-,ChartType,-")|20|
[CombinationStacked](./UI.xml#L754:~:text=<EnumType%20Name="-,ChartType,-")|21|
[CombinationDual](./UI.xml#L755:~:text=<EnumType%20Name="-,ChartType,-")|22|
[CombinationStackedDual](./UI.xml#L756:~:text=<EnumType%20Name="-,ChartType,-")|23|
[HorizontalCombinationStacked](./UI.xml#L757:~:text=<EnumType%20Name="-,ChartType,-")|24|
[Pie](./UI.xml#L758:~:text=<EnumType%20Name="-,ChartType,-")|25|
[Donut](./UI.xml#L759:~:text=<EnumType%20Name="-,ChartType,-")|26|
[Scatter](./UI.xml#L760:~:text=<EnumType%20Name="-,ChartType,-")|27|
[Bubble](./UI.xml#L761:~:text=<EnumType%20Name="-,ChartType,-")|28|
[Radar](./UI.xml#L762:~:text=<EnumType%20Name="-,ChartType,-")|29|
[HeatMap](./UI.xml#L763:~:text=<EnumType%20Name="-,ChartType,-")|30|
[TreeMap](./UI.xml#L764:~:text=<EnumType%20Name="-,ChartType,-")|31|
[Waterfall](./UI.xml#L765:~:text=<EnumType%20Name="-,ChartType,-")|32|
[Bullet](./UI.xml#L766:~:text=<EnumType%20Name="-,ChartType,-")|33|
[VerticalBullet](./UI.xml#L767:~:text=<EnumType%20Name="-,ChartType,-")|34|
[HorizontalWaterfall](./UI.xml#L768:~:text=<EnumType%20Name="-,ChartType,-")|35|
[HorizontalCombinationDual](./UI.xml#L769:~:text=<EnumType%20Name="-,ChartType,-")|36|
[HorizontalCombinationStackedDual](./UI.xml#L770:~:text=<EnumType%20Name="-,ChartType,-")|37|
[Donut100](./UI.xml#L771:~:text=<EnumType%20Name="-,ChartType,-") *([Experimental](Common.md#Experimental))*|38|

## <a name="ChartAxisScalingType"></a>[ChartAxisScalingType](./UI.xml#L777:~:text=<ComplexType%20Name="-,ChartAxisScalingType,-")


Property|Type|Description
:-------|:---|:----------
[ScaleBehavior](./UI.xml#L778:~:text=<ComplexType%20Name="-,ChartAxisScalingType,-")|[ChartAxisScaleBehaviorType](#ChartAxisScaleBehaviorType)|Scale is fixed or adapts automatically to rendered values
[AutoScaleBehavior](./UI.xml#L781:~:text=<ComplexType%20Name="-,ChartAxisScalingType,-")|[ChartAxisAutoScaleBehaviorType?](#ChartAxisAutoScaleBehaviorType)|Settings for automatic scaling
[FixedScaleMultipleStackedMeasuresBoundaryValues](./UI.xml#L784:~:text=<ComplexType%20Name="-,ChartAxisScalingType,-")|[FixedScaleMultipleStackedMeasuresBoundaryValuesType?](#FixedScaleMultipleStackedMeasuresBoundaryValuesType)|Boundary values for fixed scaling of a stacking chart type with multiple measures

## <a name="ChartAxisScaleBehaviorType"></a>[ChartAxisScaleBehaviorType](./UI.xml#L789:~:text=<EnumType%20Name="-,ChartAxisScaleBehaviorType,-")


Member|Value|Description
:-----|----:|:----------
[AutoScale](./UI.xml#L790:~:text=<EnumType%20Name="-,ChartAxisScaleBehaviorType,-")|0|Value axes scale automatically
[FixedScale](./UI.xml#L793:~:text=<EnumType%20Name="-,ChartAxisScaleBehaviorType,-")|1|Fixed minimum and maximum values are applied, which are derived from the @UI.MeasureAttributes.DataPoint/MinimumValue and .../MaximumValue annotation by default. For stacking chart types with multiple measures, they are taken from ChartAxisScalingType/FixedScaleMultipleStackedMeasuresBoundaryValues.

## <a name="ChartAxisAutoScaleBehaviorType"></a>[ChartAxisAutoScaleBehaviorType](./UI.xml#L802:~:text=<ComplexType%20Name="-,ChartAxisAutoScaleBehaviorType,-")


Property|Type|Description
:-------|:---|:----------
[ZeroAlwaysVisible](./UI.xml#L803:~:text=<ComplexType%20Name="-,ChartAxisAutoScaleBehaviorType,-")|Boolean|Forces the value axis to always display the zero value
[DataScope](./UI.xml#L806:~:text=<ComplexType%20Name="-,ChartAxisAutoScaleBehaviorType,-")|[ChartAxisAutoScaleDataScopeType](#ChartAxisAutoScaleDataScopeType)|Determines the automatic scaling

## <a name="ChartAxisAutoScaleDataScopeType"></a>[ChartAxisAutoScaleDataScopeType](./UI.xml#L811:~:text=<EnumType%20Name="-,ChartAxisAutoScaleDataScopeType,-")


Member|Value|Description
:-----|----:|:----------
[DataSet](./UI.xml#L812:~:text=<EnumType%20Name="-,ChartAxisAutoScaleDataScopeType,-")|0|Minimum and maximum axes values are determined from the entire data set
[VisibleData](./UI.xml#L815:~:text=<EnumType%20Name="-,ChartAxisAutoScaleDataScopeType,-")|1|Minimum and maximum axes values are determined from the currently visible data. Scrolling will change the scale.

## <a name="FixedScaleMultipleStackedMeasuresBoundaryValuesType"></a>[FixedScaleMultipleStackedMeasuresBoundaryValuesType](./UI.xml#L820:~:text=<ComplexType%20Name="-,FixedScaleMultipleStackedMeasuresBoundaryValuesType,-")


Property|Type|Description
:-------|:---|:----------
[MinimumValue](./UI.xml#L821:~:text=<ComplexType%20Name="-,FixedScaleMultipleStackedMeasuresBoundaryValuesType,-")|Decimal|Minimum value on value axes
[MaximumValue](./UI.xml#L824:~:text=<ComplexType%20Name="-,FixedScaleMultipleStackedMeasuresBoundaryValuesType,-")|Decimal|Maximum value on value axes

## <a name="ChartDimensionAttributeType"></a>[ChartDimensionAttributeType](./UI.xml#L829:~:text=<ComplexType%20Name="-,ChartDimensionAttributeType,-")


Property|Type|Description
:-------|:---|:----------
[Dimension](./UI.xml#L830:~:text=<ComplexType%20Name="-,ChartDimensionAttributeType,-")|PropertyPath?|
[Role](./UI.xml#L831:~:text=<ComplexType%20Name="-,ChartDimensionAttributeType,-")|[ChartDimensionRoleType?](#ChartDimensionRoleType)|
[HierarchyLevel](./UI.xml#L832:~:text=<ComplexType%20Name="-,ChartDimensionAttributeType,-") *([Experimental](Common.md#Experimental))*|Int32?|For a dimension with a hierarchy, members are selected from this level. The root node of the hierarchy is at level 0.
[ValuesForSequentialColorLevels](./UI.xml#L836:~:text=<ComplexType%20Name="-,ChartDimensionAttributeType,-") *([Experimental](Common.md#Experimental))*|\[String\]|All values in this collection should be assigned to levels of the same color.
[EmphasizedValues](./UI.xml#L840:~:text=<ComplexType%20Name="-,ChartDimensionAttributeType,-") *([Experimental](Common.md#Experimental))*|\[String\]|All values in this collection should be emphasized.
[EmphasisLabels](./UI.xml#L844:~:text=<ComplexType%20Name="-,ChartDimensionAttributeType,-") *([Experimental](Common.md#Experimental))*|[EmphasisLabelType?](#EmphasisLabelType)|Assign a label to values with an emphasized representation. This is required, if more than one emphasized value has been specified.

## <a name="ChartMeasureAttributeType"></a>[ChartMeasureAttributeType](./UI.xml#L850:~:text=<ComplexType%20Name="-,ChartMeasureAttributeType,-")
Exactly one of `Measure` and `DynamicMeasure` must be present

Property|Type|Description
:-------|:---|:----------
[Measure](./UI.xml#L852:~:text=<ComplexType%20Name="-,ChartMeasureAttributeType,-")|PropertyPath?|
[DynamicMeasure](./UI.xml#L855:~:text=<ComplexType%20Name="-,ChartMeasureAttributeType,-")|AnnotationPath?|Dynamic property introduced by an annotation and used as a measure in a chart<br>If the annotation referenced by an annotation path does not apply to the same collection of entities as the one being visualized according to the `UI.Chart` annotation, the annotation path MUST be silently ignored.<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](#CustomAggregate)
[Role](./UI.xml#L868:~:text=<ComplexType%20Name="-,ChartMeasureAttributeType,-")|[ChartMeasureRoleType?](#ChartMeasureRoleType)|
[DataPoint](./UI.xml#L869:~:text=<ComplexType%20Name="-,ChartMeasureAttributeType,-")|AnnotationPath?|Annotation path MUST end in @UI.DataPoint and the data point's Value MUST be the same property as in Measure<br>Allowed terms:<br>- [DataPoint](#DataPoint)
[UseSequentialColorLevels](./UI.xml#L877:~:text=<ComplexType%20Name="-,ChartMeasureAttributeType,-") *([Experimental](Common.md#Experimental))*|Boolean|All measures for which this setting is true should be assigned to levels of the same color.

## <a name="ChartDimensionRoleType"></a>[ChartDimensionRoleType](./UI.xml#L883:~:text=<EnumType%20Name="-,ChartDimensionRoleType,-")


Member|Value|Description
:-----|----:|:----------
[Category](./UI.xml#L884:~:text=<EnumType%20Name="-,ChartDimensionRoleType,-")|0|
[Series](./UI.xml#L885:~:text=<EnumType%20Name="-,ChartDimensionRoleType,-")|1|
[Category2](./UI.xml#L886:~:text=<EnumType%20Name="-,ChartDimensionRoleType,-")|2|

## <a name="ChartMeasureRoleType"></a>[ChartMeasureRoleType](./UI.xml#L889:~:text=<EnumType%20Name="-,ChartMeasureRoleType,-")


Member|Value|Description
:-----|----:|:----------
[Axis1](./UI.xml#L890:~:text=<EnumType%20Name="-,ChartMeasureRoleType,-")|0|
[Axis2](./UI.xml#L891:~:text=<EnumType%20Name="-,ChartMeasureRoleType,-")|1|
[Axis3](./UI.xml#L892:~:text=<EnumType%20Name="-,ChartMeasureRoleType,-")|2|

## <a name="EmphasisLabelType"></a>[EmphasisLabelType](./UI.xml#L895:~:text=<ComplexType%20Name="-,EmphasisLabelType,-") *([Experimental](Common.md#Experimental))*
Assigns a label to the set of emphasized values and optionally also for non-emphasized values. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[EmphasizedValuesLabel](./UI.xml#L898:~:text=<ComplexType%20Name="-,EmphasisLabelType,-")|String|
[NonEmphasizedValuesLabel](./UI.xml#L899:~:text=<ComplexType%20Name="-,EmphasisLabelType,-")|String?|

## <a name="ValueCriticalityType"></a>[ValueCriticalityType](./UI.xml#L906:~:text=<ComplexType%20Name="-,ValueCriticalityType,-") *([Experimental](Common.md#Experimental))*
Assigns a fixed criticality to a primitive value. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Value](./UI.xml#L909:~:text=<ComplexType%20Name="-,ValueCriticalityType,-")|PrimitiveType?|MUST be a fixed value of primitive type
[Criticality](./UI.xml#L912:~:text=<ComplexType%20Name="-,ValueCriticalityType,-")|[CriticalityType?](#CriticalityType)|

## <a name="CriticalityLabelType"></a>[CriticalityLabelType](./UI.xml#L926:~:text=<ComplexType%20Name="-,CriticalityLabelType,-") *([Experimental](Common.md#Experimental))*
Assigns a label to a criticality. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Criticality](./UI.xml#L929:~:text=<ComplexType%20Name="-,CriticalityLabelType,-")|[CriticalityType](#CriticalityType)|
[Label](./UI.xml#L930:~:text=<ComplexType%20Name="-,CriticalityLabelType,-")|String|Criticality label

## <a name="Facet"></a>[*Facet*](./UI.xml#L964:~:text=<ComplexType%20Name="-,Facet,-")
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
[Label](./UI.xml#L972:~:text=<ComplexType%20Name="-,Facet,-")|String?|Facet label
[ID](./UI.xml#L976:~:text=<ComplexType%20Name="-,Facet,-")|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [PartOfPreview](#PartOfPreview)

## <a name="CollectionFacet"></a>[CollectionFacet](./UI.xml#L980:~:text=<ComplexType%20Name="-,CollectionFacet,-"): [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L972:~:text=<ComplexType%20Name="-,Facet,-")|String?|Facet label
[*ID*](./UI.xml#L976:~:text=<ComplexType%20Name="-,Facet,-")|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Facets](./UI.xml#L982:~:text=<ComplexType%20Name="-,CollectionFacet,-")|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [PartOfPreview](#PartOfPreview)

## <a name="ReferenceFacet"></a>[ReferenceFacet](./UI.xml#L986:~:text=<ComplexType%20Name="-,ReferenceFacet,-"): [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L972:~:text=<ComplexType%20Name="-,Facet,-")|String?|Facet label
[*ID*](./UI.xml#L976:~:text=<ComplexType%20Name="-,Facet,-")|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Target](./UI.xml#L988:~:text=<ComplexType%20Name="-,ReferenceFacet,-")|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge<br>Allowed terms:<br>- [Address](Communication.md#Address)<br>- [Contact](Communication.md#Contact)<br>- [Badge](#Badge)<br>- [Chart](#Chart)<br>- [Contacts](#Contacts)<br>- [DataPoint](#DataPoint)<br>- [FieldGroup](#FieldGroup)<br>- [GeoLocation](#GeoLocation)<br>- [GeoLocations](#GeoLocations)<br>- [HeaderInfo](#HeaderInfo)<br>- [Identification](#Identification)<br>- [KPI](#KPI)<br>- [LineItem](#LineItem)<br>- [MediaResource](#MediaResource)<br>- [PresentationVariant](#PresentationVariant)<br>- [SelectionFields](#SelectionFields)<br>- [SelectionPresentationVariant](#SelectionPresentationVariant)<br>- [StatusInfo](#StatusInfo)

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [PartOfPreview](#PartOfPreview)

## <a name="ReferenceURLFacet"></a>[ReferenceURLFacet](./UI.xml#L1014:~:text=<ComplexType%20Name="-,ReferenceURLFacet,-"): [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L972:~:text=<ComplexType%20Name="-,Facet,-")|String?|Facet label
[*ID*](./UI.xml#L976:~:text=<ComplexType%20Name="-,Facet,-")|String?|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Url](./UI.xml#L1016:~:text=<ComplexType%20Name="-,ReferenceURLFacet,-")|URL|URL of referenced information
[UrlContentType](./UI.xml#L1020:~:text=<ComplexType%20Name="-,ReferenceURLFacet,-")|MediaType?|Media type of referenced information

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [PartOfPreview](#PartOfPreview)

## <a name="SelectionPresentationVariantType"></a>[SelectionPresentationVariantType](./UI.xml#L1033:~:text=<ComplexType%20Name="-,SelectionPresentationVariantType,-")


Property|Type|Description
:-------|:---|:----------
[ID](./UI.xml#L1034:~:text=<ComplexType%20Name="-,SelectionPresentationVariantType,-")|String?|Optional identifier to reference this variant from an external context
[Text](./UI.xml#L1039:~:text=<ComplexType%20Name="-,SelectionPresentationVariantType,-")|String?|Name of the bundling variant
[SelectionVariant](./UI.xml#L1043:~:text=<ComplexType%20Name="-,SelectionPresentationVariantType,-")|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[PresentationVariant](./UI.xml#L1046:~:text=<ComplexType%20Name="-,SelectionPresentationVariantType,-")|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

## <a name="PresentationVariantType"></a>[PresentationVariantType](./UI.xml#L1057:~:text=<ComplexType%20Name="-,PresentationVariantType,-")


Property|Type|Description
:-------|:---|:----------
[ID](./UI.xml#L1058:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|String?|Optional identifier to reference this variant from an external context
[Text](./UI.xml#L1061:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|String?|Name of the presentation variant
[MaxItems](./UI.xml#L1065:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|Int32?|Maximum number of items that should be included in the result
[SortOrder](./UI.xml#L1068:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
[GroupBy](./UI.xml#L1071:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with `InitialExpansionLevel`.
[TotalBy](./UI.xml#L1080:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
[Total](./UI.xml#L1087:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
[DynamicTotal](./UI.xml#L1093:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|\[AnnotationPath\]|Dynamic properties introduced by annotations for which aggregated values should be provided for the additional aggregation levels specified in TotalBy<br>If the annotation referenced by an annotation path does not apply to the same collection of entities as the one being presented according to the `UI.PresentationVariant` annotation, the annotation path MUST be silently ignored.<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](#CustomAggregate)
[IncludeGrandTotal](./UI.xml#L1106:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|Boolean|Result should include a grand total for the properties specified in Total
[InitialExpansionLevel](./UI.xml#L1109:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|Int32|Level up to which the hierarchy defined for the queried collection should be expanded initially. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
[Visualizations](./UI.xml#L1115:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|\[AnnotationPath\]|Lists available visualization types. Currently supported types are `UI.LineItem`, `UI.Chart`, and `UI.DataPoint`. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different presentation variants. A reference to `UI.Lineitem` should always be part of the collection (least common denominator for renderers). The first entry of the collection is the default visualization.<br>Allowed terms:<br>- [Chart](#Chart)<br>- [DataPoint](#DataPoint)<br>- [LineItem](#LineItem)
[RequestAtLeast](./UI.xml#L1132:~:text=<ComplexType%20Name="-,PresentationVariantType,-")|\[PropertyPath\]|Properties that should always be included in the result of the queried collection<br>Properties in `RequestAtLeast` must occur either in the `$select` clause of an OData request or among the grouping properties in an `$apply=groupby((grouping properties),...)` clause of an aggregating OData request.
[SelectionFields](./UI.xml#L1155:~:text=<ComplexType%20Name="-,PresentationVariantType,-") *([Experimental](Common.md#Experimental))*|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a `UI.SelectionFields` annotation via Path.

## <a name="SelectionVariantType"></a>[SelectionVariantType](./UI.xml#L1169:~:text=<ComplexType%20Name="-,SelectionVariantType,-")


Property|Type|Description
:-------|:---|:----------
[ID](./UI.xml#L1170:~:text=<ComplexType%20Name="-,SelectionVariantType,-")|String?|May contain identifier to reference this instance from an external context
[Text](./UI.xml#L1175:~:text=<ComplexType%20Name="-,SelectionVariantType,-")|String?|Name of the selection variant
[Parameters](./UI.xml#L1179:~:text=<ComplexType%20Name="-,SelectionVariantType,-")|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
[FilterExpression](./UI.xml#L1182:~:text=<ComplexType%20Name="-,SelectionVariantType,-")|String?|Filter string for query part of URL, without `$filter=`
[SelectOptions](./UI.xml#L1187:~:text=<ComplexType%20Name="-,SelectionVariantType,-")|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>[*ParameterAbstract*](./UI.xml#L1194:~:text=<ComplexType%20Name="-,ParameterAbstract,-")
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

## <a name="Parameter"></a>[Parameter](./UI.xml#L1197:~:text=<ComplexType%20Name="-,Parameter,-"): [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
[PropertyName](./UI.xml#L1199:~:text=<ComplexType%20Name="-,Parameter,-")|PropertyPath|Path to a key property of a parameter entity type
[PropertyValue](./UI.xml#L1202:~:text=<ComplexType%20Name="-,Parameter,-")|PrimitiveType|Value for the key property

## <a name="IntervalParameter"></a>[IntervalParameter](./UI.xml#L1206:~:text=<ComplexType%20Name="-,IntervalParameter,-"): [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
[PropertyNameFrom](./UI.xml#L1208:~:text=<ComplexType%20Name="-,IntervalParameter,-")|PropertyPath|Path to the 'from' property of a parameter entity type
[PropertyValueFrom](./UI.xml#L1211:~:text=<ComplexType%20Name="-,IntervalParameter,-")|PrimitiveType|Value for the 'from' property
[PropertyNameTo](./UI.xml#L1214:~:text=<ComplexType%20Name="-,IntervalParameter,-")|PropertyPath|Path to the 'to' property of a parameter entity type
[PropertyValueTo](./UI.xml#L1217:~:text=<ComplexType%20Name="-,IntervalParameter,-")|PrimitiveType|Value for the 'to' property

## <a name="SelectOptionType"></a>[SelectOptionType](./UI.xml#L1222:~:text=<ComplexType%20Name="-,SelectOptionType,-")
List of value ranges for a single property

Exactly one of `PropertyName` and `DynamicPropertyName` must be present

Property|Type|Description
:-------|:---|:----------
[PropertyName](./UI.xml#L1225:~:text=<ComplexType%20Name="-,SelectOptionType,-")|PropertyPath?|Path to the property
[DynamicPropertyName](./UI.xml#L1237:~:text=<ComplexType%20Name="-,SelectOptionType,-")|AnnotationPath?|Dynamic property introduced by annotations for which value ranges are specified<br>If the annotation referenced by the annotation path does not apply to the same collection of entities as the one being filtered according to the `UI.SelectionVariant` annotation, this instance of `UI.SelectionVariant/SelectOptions` MUST be silently ignored. For an example, see the `UI.SelectionVariant` annotation in the [example](../examples/DynamicProperties-sample.xml).<br>Allowed terms:<br>- [AggregatedProperty](#AggregatedProperty)<br>- [CustomAggregate](#CustomAggregate)
[Ranges](./UI.xml#L1251:~:text=<ComplexType%20Name="-,SelectOptionType,-")|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

## <a name="SelectionRangeType"></a>[SelectionRangeType](./UI.xml#L1256:~:text=<ComplexType%20Name="-,SelectionRangeType,-")
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
[Sign](./UI.xml#L1260:~:text=<ComplexType%20Name="-,SelectionRangeType,-")|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
[Option](./UI.xml#L1263:~:text=<ComplexType%20Name="-,SelectionRangeType,-")|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
[Low](./UI.xml#L1266:~:text=<ComplexType%20Name="-,SelectionRangeType,-")|PrimitiveType|Single value or lower interval boundary
[High](./UI.xml#L1269:~:text=<ComplexType%20Name="-,SelectionRangeType,-")|PrimitiveType?|Upper interval boundary

## <a name="SelectionRangeSignType"></a>[SelectionRangeSignType](./UI.xml#L1274:~:text=<EnumType%20Name="-,SelectionRangeSignType,-")


Member|Value|Description
:-----|----:|:----------
[I](./UI.xml#L1275:~:text=<EnumType%20Name="-,SelectionRangeSignType,-")|0|Inclusive
[E](./UI.xml#L1278:~:text=<EnumType%20Name="-,SelectionRangeSignType,-")|1|Exclusive

## <a name="SelectionRangeOptionType"></a>[SelectionRangeOptionType](./UI.xml#L1283:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")
Comparison operator

Member|Value|Description
:-----|----:|:----------
[EQ](./UI.xml#L1285:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")|0|Equal to
[BT](./UI.xml#L1288:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")|1|Between
[CP](./UI.xml#L1291:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")|2|Contains pattern
[LE](./UI.xml#L1294:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")|3|Less than or equal to
[GE](./UI.xml#L1297:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")|4|Greater than or equal to
[NE](./UI.xml#L1300:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")|5|Not equal to
[NB](./UI.xml#L1303:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")|6|Not between
[NP](./UI.xml#L1306:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")|7|Does not contain pattern
[GT](./UI.xml#L1309:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")|8|Greater than
[LT](./UI.xml#L1312:~:text=<EnumType%20Name="-,SelectionRangeOptionType,-")|9|Less than

## <a name="TextArrangementType"></a>[TextArrangementType](./UI.xml#L1376:~:text=<EnumType%20Name="-,TextArrangementType,-")


Member|Value|Description
:-----|----:|:----------
[TextFirst](./UI.xml#L1377:~:text=<EnumType%20Name="-,TextArrangementType,-")|0|Text is first, followed by the code/ID (e.g. in parentheses)
[TextLast](./UI.xml#L1380:~:text=<EnumType%20Name="-,TextArrangementType,-")|1|Code/ID is first, followed by the text (e.g. separated by a dash)
[TextSeparate](./UI.xml#L1383:~:text=<EnumType%20Name="-,TextArrangementType,-")|2|Code/ID and text are represented separately (code/ID will be shown and text can be visualized in a separate place)
[TextOnly](./UI.xml#L1386:~:text=<EnumType%20Name="-,TextArrangementType,-")|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

## <a name="ImportanceType"></a>[ImportanceType](./UI.xml#L1394:~:text=<EnumType%20Name="-,ImportanceType,-")


Member|Value|Description
:-----|----:|:----------
[High](./UI.xml#L1395:~:text=<EnumType%20Name="-,ImportanceType,-")|0|High importance
[Medium](./UI.xml#L1398:~:text=<EnumType%20Name="-,ImportanceType,-")|1|Medium importance
[Low](./UI.xml#L1401:~:text=<EnumType%20Name="-,ImportanceType,-")|2|Low importance

## <a name="DataFieldAbstract"></a>[*DataFieldAbstract*](./UI.xml#L1443:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")
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
[Label](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[Criticality](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[CriticalityRepresentation](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[IconUrl](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="CriticalityRepresentationType"></a>[CriticalityRepresentationType](./UI.xml#L1473:~:text=<EnumType%20Name="-,CriticalityRepresentationType,-")


Member|Value|Description
:-----|----:|:----------
[WithIcon](./UI.xml#L1474:~:text=<EnumType%20Name="-,CriticalityRepresentationType,-")|0|Criticality is represented with an icon
[WithoutIcon](./UI.xml#L1477:~:text=<EnumType%20Name="-,CriticalityRepresentationType,-")|1|Criticality is represented without icon, e.g. only via text color
[OnlyIcon](./UI.xml#L1480:~:text=<EnumType%20Name="-,CriticalityRepresentationType,-") *([Experimental](Common.md#Experimental))*|2|Criticality is represented only by using an icon

## <a name="DataFieldForAnnotation"></a>[DataFieldForAnnotation](./UI.xml#L1486:~:text=<ComplexType%20Name="-,DataFieldForAnnotation,-"): [DataFieldAbstract](#DataFieldAbstract)
A structured piece of data described by an annotation

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[Target](./UI.xml#L1488:~:text=<ComplexType%20Name="-,DataFieldForAnnotation,-")|AnnotationPath|Target MUST reference an annotation of terms Communication.Contact, Communication.Address, UI.DataPoint, UI.Chart, UI.FieldGroup, or UI.ConnectedFields<br>Allowed terms:<br>- [Address](Communication.md#Address)<br>- [Contact](Communication.md#Contact)<br>- [Chart](#Chart)<br>- [ConnectedFields](#ConnectedFields)<br>- [DataPoint](#DataPoint)<br>- [FieldGroup](#FieldGroup)

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldForActionAbstract"></a>[*DataFieldForActionAbstract*](./UI.xml#L1503:~:text=<ComplexType%20Name="-,DataFieldForActionAbstract,-"): [DataFieldAbstract](#DataFieldAbstract)
Triggers an action

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[Inline](./UI.xml#L1505:~:text=<ComplexType%20Name="-,DataFieldForActionAbstract,-")|Boolean|Action should be placed close to (or even inside) the visualized term
[Determining](./UI.xml#L1508:~:text=<ComplexType%20Name="-,DataFieldForActionAbstract,-")|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldForAction"></a>[DataFieldForAction](./UI.xml#L1513:~:text=<ComplexType%20Name="-,DataFieldForAction,-"): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
Triggers an OData action

The action is NOT tied to a data value (in contrast to [DataFieldWithAction](#DataFieldWithAction)).

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[*Inline*](./UI.xml#L1505:~:text=<ComplexType%20Name="-,DataFieldForActionAbstract,-")|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](./UI.xml#L1508:~:text=<ComplexType%20Name="-,DataFieldForActionAbstract,-")|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[Action](./UI.xml#L1516:~:text=<ComplexType%20Name="-,DataFieldForAction,-")|[ActionOverload](Common.md#ActionOverload)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
[InvocationGrouping](./UI.xml#L1519:~:text=<ComplexType%20Name="-,DataFieldForAction,-")|[OperationGroupingType?](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="OperationGroupingType"></a>[OperationGroupingType](./UI.xml#L1523:~:text=<EnumType%20Name="-,OperationGroupingType,-")


Member|Value|Description
:-----|----:|:----------
[Isolated](./UI.xml#L1524:~:text=<EnumType%20Name="-,OperationGroupingType,-")|0|Invoke each action in isolation from other actions
[ChangeSet](./UI.xml#L1527:~:text=<EnumType%20Name="-,OperationGroupingType,-")|1|Group all actions into a single change set

## <a name="DataFieldForIntentBasedNavigation"></a>[DataFieldForIntentBasedNavigation](./UI.xml#L1532:~:text=<ComplexType%20Name="-,DataFieldForIntentBasedNavigation,-"): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
Triggers intent-based UI navigation

The navigation intent is is expressed as a Semantic Object and optionally an Action on that object.

It is NOT tied to a data value (in contrast to [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation))."

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[*Inline*](./UI.xml#L1505:~:text=<ComplexType%20Name="-,DataFieldForActionAbstract,-")|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](./UI.xml#L1508:~:text=<ComplexType%20Name="-,DataFieldForActionAbstract,-")|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[SemanticObject](./UI.xml#L1539:~:text=<ComplexType%20Name="-,DataFieldForIntentBasedNavigation,-")|String|Name of the Semantic Object
[Action](./UI.xml#L1542:~:text=<ComplexType%20Name="-,DataFieldForIntentBasedNavigation,-")|String?|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[NavigationAvailable](./UI.xml#L1545:~:text=<ComplexType%20Name="-,DataFieldForIntentBasedNavigation,-")|Boolean|The navigation intent is for that user with the selected context and parameters available
[RequiresContext](./UI.xml#L1548:~:text=<ComplexType%20Name="-,DataFieldForIntentBasedNavigation,-")|Boolean|Determines whether a context needs to be passed to the target of this navigation.
[Mapping](./UI.xml#L1551:~:text=<ComplexType%20Name="-,DataFieldForIntentBasedNavigation,-")|\[[SemanticObjectMappingType](Common.md#SemanticObjectMappingType)\]|Maps properties of the annotated entity type to properties of the Semantic Object

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldForActionGroup"></a>[DataFieldForActionGroup](./UI.xml#L1556:~:text=<ComplexType%20Name="-,DataFieldForActionGroup,-"): [DataFieldAbstract](#DataFieldAbstract) *([Experimental](Common.md#Experimental))*
Collection of OData actions and intent based navigations

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[Actions](./UI.xml#L1559:~:text=<ComplexType%20Name="-,DataFieldForActionGroup,-")|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Collection of data fields that refer to actions or intent based navigations

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataField"></a>[DataField](./UI.xml#L1564:~:text=<ComplexType%20Name="-,DataField,-"): [DataFieldAbstract](#DataFieldAbstract)
A piece of data

**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)
- [DataFieldWithActionGroup](#DataFieldWithActionGroup)

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[Value](./UI.xml#L1566:~:text=<ComplexType%20Name="-,DataField,-")|Untyped|The data field's value

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithAction"></a>[DataFieldWithAction](./UI.xml#L1593:~:text=<ComplexType%20Name="-,DataFieldWithAction,-"): [DataField](#DataField)
A piece of data that allows triggering an OData action

The action is tied to a data value which should be rendered as a hyperlink. This is in contrast to [DataFieldForAction](#DataFieldForAction)) which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[*Value*](./UI.xml#L1566:~:text=<ComplexType%20Name="-,DataField,-")|Untyped|The data field's value
[Value](./UI.xml#L1596:~:text=<ComplexType%20Name="-,DataFieldWithAction,-")|PrimitiveType|
[Action](./UI.xml#L1597:~:text=<ComplexType%20Name="-,DataFieldWithAction,-")|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithIntentBasedNavigation"></a>[DataFieldWithIntentBasedNavigation](./UI.xml#L1602:~:text=<ComplexType%20Name="-,DataFieldWithIntentBasedNavigation,-"): [DataField](#DataField)
A piece of data that allows triggering intent-based UI navigation

The navigation intent is is expressed as a Semantic Object and optionally an Action on that object.

It is tied to a data value which should be rendered as a hyperlink.
This is in contrast to [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation) which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[*Value*](./UI.xml#L1566:~:text=<ComplexType%20Name="-,DataField,-")|Untyped|The data field's value
[Value](./UI.xml#L1610:~:text=<ComplexType%20Name="-,DataFieldWithIntentBasedNavigation,-")|PrimitiveType|
[SemanticObject](./UI.xml#L1611:~:text=<ComplexType%20Name="-,DataFieldWithIntentBasedNavigation,-")|String|Name of the Semantic Object
[Action](./UI.xml#L1614:~:text=<ComplexType%20Name="-,DataFieldWithIntentBasedNavigation,-")|String?|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[Mapping](./UI.xml#L1617:~:text=<ComplexType%20Name="-,DataFieldWithIntentBasedNavigation,-")|\[[SemanticObjectMappingType](Common.md#SemanticObjectMappingType)\]|Maps properties of the annotated entity type to properties of the Semantic Object

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithNavigationPath"></a>[DataFieldWithNavigationPath](./UI.xml#L1622:~:text=<ComplexType%20Name="-,DataFieldWithNavigationPath,-"): [DataField](#DataField)
A piece of data that allows navigating to related data

It should be rendered as a hyperlink

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[*Value*](./UI.xml#L1566:~:text=<ComplexType%20Name="-,DataField,-")|Untyped|The data field's value
[Value](./UI.xml#L1625:~:text=<ComplexType%20Name="-,DataFieldWithNavigationPath,-")|PrimitiveType|
[Target](./UI.xml#L1626:~:text=<ComplexType%20Name="-,DataFieldWithNavigationPath,-")|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithUrl"></a>[DataFieldWithUrl](./UI.xml#L1633:~:text=<ComplexType%20Name="-,DataFieldWithUrl,-"): [DataField](#DataField)
A piece of data that allows navigating to other information on the Web

It should be rendered as a hyperlink

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[*Value*](./UI.xml#L1566:~:text=<ComplexType%20Name="-,DataField,-")|Untyped|The data field's value
[Value](./UI.xml#L1636:~:text=<ComplexType%20Name="-,DataFieldWithUrl,-")|PrimitiveType|
[Url](./UI.xml#L1637:~:text=<ComplexType%20Name="-,DataFieldWithUrl,-")|URL|Target of the hyperlink
[UrlContentType](./UI.xml#L1641:~:text=<ComplexType%20Name="-,DataFieldWithUrl,-")|MediaType?|Media type of the hyperlink target, e.g. `video/mp4`

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithActionGroup"></a>[DataFieldWithActionGroup](./UI.xml#L1647:~:text=<ComplexType%20Name="-,DataFieldWithActionGroup,-"): [DataField](#DataField) *([Experimental](Common.md#Experimental))*
Collection of OData actions and intent based navigations

Property|Type|Description
:-------|:---|:----------
[*Label*](./UI.xml#L1457:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|String?|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](./UI.xml#L1461:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityType?](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](./UI.xml#L1464:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|[CriticalityRepresentationType?](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](./UI.xml#L1467:~:text=<ComplexType%20Name="-,DataFieldAbstract,-")|URL?|Optional icon
[*Value*](./UI.xml#L1566:~:text=<ComplexType%20Name="-,DataField,-")|Untyped|The data field's value
[Value](./UI.xml#L1650:~:text=<ComplexType%20Name="-,DataFieldWithActionGroup,-")|PrimitiveType|
[Actions](./UI.xml#L1651:~:text=<ComplexType%20Name="-,DataFieldWithActionGroup,-")|\[[DataField](#DataField)\]|Collection of data fields that are either DataFieldWithAction](#DataFieldWithAction), [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation), [DataFieldWithNavigationPath](#DataFieldWithNavigationPath), or [DataFieldWithUrl](#DataFieldWithUrl)

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [PartOfPreview](#PartOfPreview)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="RecommendationStateType"></a>[RecommendationStateType](./UI.xml#L1689:~:text=<TypeDefinition%20Name="-,RecommendationStateType,-")
**Type:** Byte

Indicates whether a field contains or has a recommended value

Editable fields for which a recommendation has been pre-filled or that have recommendations that differ from existing human input need to be highlighted.

Allowed Value|Description
:------------|:----------
[0](./UI.xml#L1696:~:text=<TypeDefinition%20Name="-,RecommendationStateType,-")|regular - with human or default input, no recommendation
[1](./UI.xml#L1700:~:text=<TypeDefinition%20Name="-,RecommendationStateType,-")|highlighted - without human input and with recommendation
[2](./UI.xml#L1704:~:text=<TypeDefinition%20Name="-,RecommendationStateType,-")|warning - with human or default input and with recommendation

## <a name="RecommendationListType"></a>[RecommendationListType](./UI.xml#L1719:~:text=<ComplexType%20Name="-,RecommendationListType,-")
Reference to a recommendation list

A recommendation consists of one or more values for editable fields plus a rank between 0.0 and 9.9, with 9.9 being the best recommendation.

Property|Type|Description
:-------|:---|:----------
[CollectionPath](./UI.xml#L1724:~:text=<ComplexType%20Name="-,RecommendationListType,-")|String|Resource path of a collection of recommended values
[RankProperty](./UI.xml#L1727:~:text=<ComplexType%20Name="-,RecommendationListType,-")|String|Name of the property within the collection of recommended values that describes the rank of the recommendation
[Binding](./UI.xml#L1730:~:text=<ComplexType%20Name="-,RecommendationListType,-")|\[[RecommendationBinding](#RecommendationBinding)\]|List of pairs of a local property and recommended value property

## <a name="RecommendationBinding"></a>[RecommendationBinding](./UI.xml#L1735:~:text=<ComplexType%20Name="-,RecommendationBinding,-")


Property|Type|Description
:-------|:---|:----------
[LocalDataProperty](./UI.xml#L1736:~:text=<ComplexType%20Name="-,RecommendationBinding,-")|PropertyPath|Path to editable property for which recommended values exist
[ValueListProperty](./UI.xml#L1739:~:text=<ComplexType%20Name="-,RecommendationBinding,-")|String|Path to property in the collection of recommended values. Format is identical to PropertyPath annotations.
