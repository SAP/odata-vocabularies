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
[HeaderInfo](UI.xml#L58)|[HeaderInfoType](#HeaderInfoType)|<a name="HeaderInfo"></a>Information for the header area of an entity representation. HeaderInfo is mandatory for main entity types of the model
[Identification](UI.xml#L105)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="Identification"></a>Collection of fields identifying the object
[Badge](UI.xml#L110)|[BadgeType](#BadgeType)|<a name="Badge"></a>Information usually displayed in the form of a business card
[LineItem](UI.xml#L137)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="LineItem"></a>Collection of data fields for representation in a table or list
[StatusInfo](UI.xml#L142)|\[[DataFieldAbstract](#DataFieldAbstract)\]|<a name="StatusInfo"></a>Collection of data fields describing the status of an entity
[FieldGroup](UI.xml#L147)|[FieldGroupType](#FieldGroupType)|<a name="FieldGroup"></a>Group of fields with an optional label
[ConnectedFields](UI.xml#L161)|[ConnectedFieldsType](#ConnectedFieldsType)|<a name="ConnectedFields"></a>Group of semantically connected fields with a representation template and an optional label ([Example](UI.xml#L163))
[GeoLocations](UI.xml#L226)|\[[GeoLocationType](#GeoLocationType)\]|<a name="GeoLocations"></a>Collection of geographic locations
[GeoLocation](UI.xml#L230)|[GeoLocationType](#GeoLocationType)|<a name="GeoLocation"></a>Geographic location
[Contacts](UI.xml#L250)|\[AnnotationPath\]|<a name="Contacts"></a>Collection of contacts<p>Each collection item MUST reference an annotation of a Communication.Contact</p>
[MediaResource](UI.xml#L261)|[MediaResourceType](#MediaResourceType)|<a name="MediaResource"></a>Properties that describe a media resource
[DataPoint](UI.xml#L315)|[DataPointType](#DataPointType)|<a name="DataPoint"></a>Visualization of a single point of data, typically a number; may also be textual, e.g. a status value
[KPI](UI.xml#L619)|[KPIType](#KPIType)|<a name="KPI"></a>A Key Performance Indicator (KPI) bundles a SelectionVariant and a DataPoint, and provides details for progressive disclosure
[Chart](UI.xml#L665)|[ChartDefinitionType](#ChartDefinitionType)|<a name="Chart"></a>Visualization of multiple data points
[ValueCriticality](UI.xml#L859) *([Experimental](Common.md#Experimental))*|\[[ValueCriticalityType](#ValueCriticalityType)\]|<a name="ValueCriticality"></a>Assign criticalities to primitive values. This information can be used for semantic coloring.
[CriticalityLabels](UI.xml#L872) *([Experimental](Common.md#Experimental))*|\[[CriticalityLabelType](#CriticalityLabelType)\]|<a name="CriticalityLabels"></a>Assign labels to criticalities. This information can be used for semantic coloring. When applied to a property, a label for a criticality must be provided, if more than one value of the annotated property has been assigned to the same criticality. There must be no more than one label per criticality.
[SelectionFields](UI.xml#L893)|\[PropertyPath\]|<a name="SelectionFields"></a>Properties that might be relevant for filtering a collection of entities of this type
[Facets](UI.xml#L901)|\[[Facet](#Facet)\]|<a name="Facets"></a>Collection of facets
[HeaderFacets](UI.xml#L905)|\[[Facet](#Facet)\]|<a name="HeaderFacets"></a>Facets for additional object header information
[QuickViewFacets](UI.xml#L909)|\[[Facet](#Facet)\]|<a name="QuickViewFacets"></a>Facets that may be used for a quick overview of the object
[QuickCreateFacets](UI.xml#L913)|\[[Facet](#Facet)\]|<a name="QuickCreateFacets"></a>Facets that may be used for a (quick) create of the object
[FilterFacets](UI.xml#L917)|\[[ReferenceFacet](#ReferenceFacet)\]|<a name="FilterFacets"></a>Facets that reference UI.FieldGroup annotations to group filterable fields
[SelectionPresentationVariant](UI.xml#L978)|[SelectionPresentationVariantType](#SelectionPresentationVariantType)|<a name="SelectionPresentationVariant"></a>A SelectionPresentationVariant bundles a Selection Variant and a Presentation Variant
[PresentationVariant](UI.xml#L1002)|[PresentationVariantType](#PresentationVariantType)|<a name="PresentationVariant"></a>Defines how the result of a queried collection of entities is shaped and how this result is displayed
[SelectionVariant](UI.xml#L1081)|[SelectionVariantType](#SelectionVariantType)|<a name="SelectionVariant"></a>A SelectionVariant denotes a combination of parameters and filters to query the annotated entity set
[ThingPerspective](UI.xml#L1213)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ThingPerspective"></a>The annotated term is a Thing Perspective
[IsSummary](UI.xml#L1216)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSummary"></a>This Facet and all included Facets are the summary of the thing. At most one Facet of a thing can be tagged with this term
[PartOfPreview](UI.xml#L1220)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PartOfPreview"></a>This Facet and all included Facets are part of the Thing preview
[Map](UI.xml#L1224)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Map"></a>Target MUST reference a UI.GeoLocation, Communication.Address or a collection of these
[Gallery](UI.xml#L1228)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Gallery"></a>Target MUST reference a UI.MediaResource
[IsImageURL](UI.xml#L1233)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImageURL"></a>Properties and terms annotated with this term MUST contain a valid URL referencing an resource with a MIME type image<p>Can be annotated with:<ul><li>[IsNaturalPerson](Common.md#IsNaturalPerson)</li></ul></p>
[IsImage](UI.xml#L1243) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsImage"></a>Properties annotated with this term MUST be a stream property annotated with a MIME type image<p>Can be annotated with:<ul><li>[IsNaturalPerson](Common.md#IsNaturalPerson)</li></ul></p>
[MultiLineText](UI.xml#L1254)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MultiLineText"></a>Properties annotated with this annotation should be rendered as multi-line text (e.g. text area)
[Placeholder](UI.xml#L1259) *([Experimental](Common.md#Experimental))*|String|<a name="Placeholder"></a>A short, human-readable text that gives a hint or an example to help the user with data entry
[TextArrangement](UI.xml#L1265)|[TextArrangementType](#TextArrangementType)|<a name="TextArrangement"></a>Describes the arrangement of a code or ID value and its text<p>If used for a single property the Common.Text annotation is annotated</p>
[Importance](UI.xml#L1292)|[ImportanceType](#ImportanceType)|<a name="Importance"></a>Expresses the importance of e.g. a DataField or an annotation
[Hidden](UI.xml#L1307)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Hidden"></a>Properties or facets (see UI.Facet) annotated with this term will not be rendered if the annotation evaluates to true.<p>Hidden properties usually carry technical information that is used for application control and is of no direct interest to end users. The annotation value may be an expression to dynamically hide or render the annotated feature. If a navigation property is annotated with `Hidden` true, all subsequent parts are hidden - independent of their own potential `Hidden` annotations.</p>
[CreateHidden](UI.xml#L1315)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="CreateHidden"></a>EntitySets annotated with this term can control the visibility of the Create operation dynamically<p>The annotation value should be a path to another property from a related entity.</p>
[UpdateHidden](UI.xml#L1320)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="UpdateHidden"></a>EntitySets annotated with this term can control the visibility of the Edit/Save operation dynamically<p>The annotation value should be a path to another property from the same or a related entity.</p>
[DeleteHidden](UI.xml#L1325)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="DeleteHidden"></a>EntitySets annotated with this term can control the visibility of the Delete operation dynamically<p>The annotation value should be a path to another property from the same or a related entity.</p>
[HiddenFilter](UI.xml#L1330)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="HiddenFilter"></a>Properties annotated with this term will not be rendered as filter criteria if the annotation evaluates to true.<p>Properties annotated with `HiddenFilter` are intended as parts of a `$filter` expression that cannot be directly influenced by end users. The properties will be rendered in all other places, e.g. table columns or form fields. This is in contrast to properties annotated with [Hidden](#Hidden) that are not rendered at all. If a navigation property is annotated with `HiddenFilter` true, all subsequent parts are hidden in filter - independent of their own potential `HiddenFilter` annotations.</p>
[DataFieldDefault](UI.xml#L1339)|[DataFieldAbstract](#DataFieldAbstract)|<a name="DataFieldDefault"></a>Default representation of a property as a datafield, e.g. when the property is added as a table column or form field via personalization<p>Only concrete subtypes of [DataFieldAbstract](#DataFieldAbstract) can be used for a DataFieldDefault. For type [DataField](#DataField) and its subtypes the annotation target SHOULD be the same property that is referenced via a path expression in the `Value` of the datafield.</p>
[Criticality](UI.xml#L1523)|[CriticalityType](#CriticalityType)|<a name="Criticality"></a>Service-calculated criticality, alternative to UI.CriticalityCalculation
[CriticalityCalculation](UI.xml#L1527)|[CriticalityCalculationType](#CriticalityCalculationType)|<a name="CriticalityCalculation"></a>Parameters for client-calculated criticality, alternative to UI.Criticality
[OrderBy](UI.xml#L1531) *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="OrderBy"></a>Sort by the referenced property instead of by the annotated property<p>Example: annotated property `SizeCode` has string values XS, S, M, L, XL, referenced property SizeOrder has numeric values -2, -1, 0, 1, 2. Numeric ordering by SizeOrder will be more understandable than lexicographic ordering by SizeCode.</p>
[ParameterDefaultValue](UI.xml#L1537) *([Experimental](Common.md#Experimental))*|PrimitiveType|<a name="ParameterDefaultValue"></a>Define default values for action parameters<p>For unbound actions the default value can either be a constant expression, or a dynamic expression using absolute paths, e.g. singletons or function import results. Whereas for bound actions the bound entity and its properties and associated properties can be used as default values</p>
[RecommendationState](UI.xml#L1544)|[RecommendationStateType](#RecommendationStateType)|<a name="RecommendationState"></a>Indicates whether a field contains or has a recommended value<p>Intelligent systems can help users by recommending input the user may "prefer".</p>
[RecommendationList](UI.xml#L1574)|[RecommendationListType](#RecommendationListType)|<a name="RecommendationList"></a>Specifies how to get a list of recommended values for a property or parameter<p>Intelligent systems can help users by recommending input the user may "prefer".</p>
[ExcludeFromNavigationContext](UI.xml#L1606)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ExcludeFromNavigationContext"></a>The contents of this property must not be propagated to the app-to-app navigation context

## <a name="HeaderInfoType"></a>[HeaderInfoType](UI.xml#L62)


Property|Type|Description
:-------|:---|:----------
[TypeName](UI.xml#L63)|String|Name of the main entity type
[TypeNamePlural](UI.xml#L67)|String|Plural form of the name of the main entity type
[Title](UI.xml#L71)|[DataFieldAbstract](#DataFieldAbstract)|Title, e.g. for overview pages<p>This can be a [DataField](#DataField) and any of its children, or a [DataFieldForAnnotation](#DataFieldForAnnotation) targeting [ConnectedFields](#ConnectedFields).</p>
[Description](UI.xml#L81)|[DataFieldAbstract](#DataFieldAbstract)|Description, e.g. for overview pages<p>This can be a [DataField](#DataField) and any of its children, or a [DataFieldForAnnotation](#DataFieldForAnnotation) targeting [ConnectedFields](#ConnectedFields).</p>
[ImageUrl](UI.xml#L91)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L95)|URL|Image URL for the entity type
[Initials](UI.xml#L99) *([Experimental](Common.md#Experimental))*|String|Latin letters to be used in case no ImageUrl or TypeImageUrl is present

## <a name="BadgeType"></a>[BadgeType](UI.xml#L114)


Property|Type|Description
:-------|:---|:----------
[HeadLine](UI.xml#L115)|[DataField](#DataField)|Headline
[Title](UI.xml#L118)|[DataField](#DataField)|Title
[ImageUrl](UI.xml#L121)|URL|Image URL for an instance of the entity type. If the property ImageUrl has a valid value, it can be used for the visualization of the instance. If it is not available or not valid the property TypeImageUrl can be used instead.
[TypeImageUrl](UI.xml#L125)|URL|Image URL for the entity type
[MainInfo](UI.xml#L129)|[DataField](#DataField)|Main information on the business card
[SecondaryInfo](UI.xml#L132)|[DataField](#DataField)|Additional information on the business card

## <a name="FieldGroupType"></a>[FieldGroupType](UI.xml#L151)


Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L152)|String|Label for the field group
[Data](UI.xml#L156)|\[[DataFieldAbstract](#DataFieldAbstract)\]|Collection of data fields

## <a name="ConnectedFieldsType"></a>[ConnectedFieldsType](UI.xml#L188)
Group of semantically connected fields with a representation template and an optional label

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L190)|String|Label for the connected fields
[Template](UI.xml#L194)|String|Template for representing the connected fields<p>Template variables are identifiers enclosed in curly braces, e.g. `{MaterialName} - {MaterialClassName}`. The `Data` collection assigns values to the template variables.</p>
[Data](UI.xml#L199)|[Dictionary](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Dictionary)|Dictionary of template variables<p>Each template variable used in `Template` must be assigned a value here. The value must be of type [DataFieldAbstract](#DataFieldAbstract)</p>

## <a name="GeoLocationType"></a>[GeoLocationType](UI.xml#L234)
Properties that define a geographic location

Property|Type|Description
:-------|:---|:----------
[Latitude](UI.xml#L236)|Double|Geographic latitude
[Longitude](UI.xml#L239)|Double|Geographic longitude
[Location](UI.xml#L242)|GeographyPoint|A point in a round-earth coordinate system
[Address](UI.xml#L245)|[AddressType](Communication.md#AddressType)|vCard-style address

## <a name="MediaResourceType"></a>[MediaResourceType](UI.xml#L265)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L266)|URL|URL of media resource
[ContentType](UI.xml#L270)|MediaType|Content type, such as application/pdf, video/x-flv, image/jpeg
[ByteSize](UI.xml#L274)|Int64|Resource size in bytes
[ChangedAt](UI.xml#L277)|DateTimeOffset|Date of last change
[Thumbnail](UI.xml#L280)|[ImageType](#ImageType)|Thumbnail image
[Title](UI.xml#L283)|[DataField](#DataField)|Resource title
[Description](UI.xml#L286)|[DataField](#DataField)|Resource description

## <a name="ImageType"></a>[ImageType](UI.xml#L290)


Property|Type|Description
:-------|:---|:----------
[Url](UI.xml#L291)|URL|URL of image
[Width](UI.xml#L295)|String|Width of image
[Height](UI.xml#L298)|String|Height of image

## <a name="DataPointType"></a>[DataPointType](UI.xml#L319)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L320)|String|Title of the data point
[Description](UI.xml#L324)|String|Short description
[LongDescription](UI.xml#L328)|String|Full description
[Value](UI.xml#L332)|PrimitiveType|Numeric value<p>The value is typically provided via a `Path` construct. The path MUST lead to a direct property of the same entity type or a property of a complex property (recursively) of that entity type, navigation segments are not allowed.<br/>It could be annotated with either `UoM.ISOCurrency` or `UoM.Unit`. Percentage values are annotated with `UoM.Unit = '%'`. A renderer should take an optional `Common.Text` annotation into consideration.</p>
[TargetValue](UI.xml#L344)|PrimitiveType|Target value
[ForecastValue](UI.xml#L347)|PrimitiveType|Forecast value
[MinimumValue](UI.xml#L350)|Decimal|Minimum value (for output rendering)
[MaximumValue](UI.xml#L353)|Decimal|Maximum value (for output rendering)
[ValueFormat](UI.xml#L356)|[NumberFormat](#NumberFormat)|Number format
[Visualization](UI.xml#L359)|[VisualizationType](#VisualizationType)|Preferred visualization
[SampleSize](UI.xml#L362)|PrimitiveType|Sample size used for the determination of the data point; should contain just integer value as Edm.Byte, Edm.SByte, Edm.Intxx, and Edm.Decimal with scale 0.
[ReferencePeriod](UI.xml#L369)|[ReferencePeriod](#ReferencePeriod)|Reference period
[Criticality](UI.xml#L372)|[CriticalityType](#CriticalityType)|Service-calculated criticality, alternative to CriticalityCalculation
[CriticalityLabels](UI.xml#L375)|AnnotationPath|Custom labels for the criticality legend. Annotation path MUST end in UI.CriticalityLabels
[CriticalityRepresentation](UI.xml#L383) *([Experimental](Common.md#Experimental))*|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[CriticalityCalculation](UI.xml#L387)|[CriticalityCalculationType](#CriticalityCalculationType)|Parameters for client-calculated criticality, alternative to Criticality
[Trend](UI.xml#L390)|[TrendType](#TrendType)|Service-calculated trend, alternative to TrendCalculation
[TrendCalculation](UI.xml#L393)|[TrendCalculationType](#TrendCalculationType)|Parameters for client-calculated trend, alternative to Trend
[Responsible](UI.xml#L396)|[ContactType](Communication.md#ContactType)|Contact person

## <a name="NumberFormat"></a>[NumberFormat](UI.xml#L401)
Describes how to visualise a number

Property|Type|Description
:-------|:---|:----------
[ScaleFactor](UI.xml#L403)|Decimal|Display value in *ScaleFactor* units, e.g. 1000 for k (kilo), 1e6 for M (Mega)
[NumberOfFractionalDigits](UI.xml#L406)|Byte|Number of fractional digits of the scaled value to be visualized

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
[Description](UI.xml#L434)|String|Short description of the reference period
[Start](UI.xml#L438)|DateTimeOffset|Start of the reference period
[End](UI.xml#L441)|DateTimeOffset|End of the reference period

## <a name="CriticalityType"></a>[CriticalityType](UI.xml#L446)
Criticality of a value or status, represented e.g. via semantic colors (https://experience.sap.com/fiori-design-web/foundation/colors/#semantic-colors)

Member|Value|Description
:-----|----:|:----------
[VeryNegative](UI.xml#L448) *([Experimental](Common.md#Experimental))*|-1|Very negative / dark-red status - risk - out of stock - late
[Neutral](UI.xml#L452)|0|Neutral / grey status - inactive - open - in progress
[Negative](UI.xml#L455)|1|Negative / red status - attention - overload - alert
[Critical](UI.xml#L458)|2|Critical / orange status - warning
[Positive](UI.xml#L461)|3|Positive / green status - completed - available - on track - acceptable
[VeryPositive](UI.xml#L464) *([Experimental](Common.md#Experimental))*|4|Very positive / blue status - above max stock - excess

## <a name="CriticalityCalculationType"></a>[CriticalityCalculationType](UI.xml#L470): [CriticalityThresholdsType](#CriticalityThresholdsType)
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
[*AcceptanceRangeLowValue*](UI.xml#L525)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L528)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L531)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L534)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L537)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L540)|PrimitiveType|Highest value that is considered critical
[ReferenceValue](UI.xml#L505) *([Experimental](Common.md#Experimental))*|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L509) *([Experimental](Common.md#Experimental))*|Boolean|Calculate with a relative difference
[ImprovementDirection](UI.xml#L513)|[ImprovementDirectionType](#ImprovementDirectionType)|Describes in which direction the value improves
[ConstantThresholds](UI.xml#L516) *([Experimental](Common.md#Experimental))*|\[[LevelThresholdsType](#LevelThresholdsType)\]|List of thresholds depending on the aggregation level as a set of constant values<p>Constant thresholds shall only be used in order to refine constant values given for the data point overall (aggregation level with empty collection of property paths), but not if the thresholds are based on other measure elements.</p>

## <a name="CriticalityThresholdsType"></a>[CriticalityThresholdsType](UI.xml#L523)
Thresholds for calculating the criticality of a value

**Derived Types:**
- [CriticalityCalculationType](#CriticalityCalculationType)
- [LevelThresholdsType](#LevelThresholdsType)

Property|Type|Description
:-------|:---|:----------
[AcceptanceRangeLowValue](UI.xml#L525)|PrimitiveType|Lowest value that is considered positive
[AcceptanceRangeHighValue](UI.xml#L528)|PrimitiveType|Highest value that is considered positive
[ToleranceRangeLowValue](UI.xml#L531)|PrimitiveType|Lowest value that is considered neutral
[ToleranceRangeHighValue](UI.xml#L534)|PrimitiveType|Highest value that is considered neutral
[DeviationRangeLowValue](UI.xml#L537)|PrimitiveType|Lowest value that is considered critical
[DeviationRangeHighValue](UI.xml#L540)|PrimitiveType|Highest value that is considered critical

## <a name="ImprovementDirectionType"></a>[ImprovementDirectionType](UI.xml#L545)
Describes which direction of a value change is seen as an improvement

Member|Value|Description
:-----|----:|:----------
[Minimize](UI.xml#L547)|1|Lower is better
[Target](UI.xml#L550)|2|Closer to the target is better
[Maximize](UI.xml#L553)|3|Higher is better

## <a name="LevelThresholdsType"></a>[LevelThresholdsType](UI.xml#L558): [CriticalityThresholdsType](#CriticalityThresholdsType) *([Experimental](Common.md#Experimental))*
Thresholds for an aggregation level

Property|Type|Description
:-------|:---|:----------
[*AcceptanceRangeLowValue*](UI.xml#L525)|PrimitiveType|Lowest value that is considered positive
[*AcceptanceRangeHighValue*](UI.xml#L528)|PrimitiveType|Highest value that is considered positive
[*ToleranceRangeLowValue*](UI.xml#L531)|PrimitiveType|Lowest value that is considered neutral
[*ToleranceRangeHighValue*](UI.xml#L534)|PrimitiveType|Highest value that is considered neutral
[*DeviationRangeLowValue*](UI.xml#L537)|PrimitiveType|Lowest value that is considered critical
[*DeviationRangeHighValue*](UI.xml#L540)|PrimitiveType|Highest value that is considered critical
[AggregationLevel](UI.xml#L561)|\[PropertyPath\]|An unordered tuple of dimensions, i.e. properties which are intended to be used for grouping in aggregating requests. In analytical UIs, e.g. an analytical chart, the aggregation level typically corresponds to the visible dimensions.

## <a name="TrendType"></a>[TrendType](UI.xml#L566)
The trend of a value

Member|Value|Description
:-----|----:|:----------
[StrongUp](UI.xml#L568)|1|Value grows strongly
[Up](UI.xml#L571)|2|Value grows
[Sideways](UI.xml#L574)|3|Value does not significantly grow or shrink
[Down](UI.xml#L577)|4|Value shrinks
[StrongDown](UI.xml#L580)|5|Value shrinks strongly

## <a name="TrendCalculationType"></a>[TrendCalculationType](UI.xml#L585)
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
[ReferenceValue](UI.xml#L599)|PrimitiveType|Reference value for the calculation, e.g. number of sales for the last year
[IsRelativeDifference](UI.xml#L602)|Boolean|Calculate with a relative difference
[UpDifference](UI.xml#L605)|Decimal|Threshold for Up
[StrongUpDifference](UI.xml#L608)|Decimal|Threshold for StrongUp
[DownDifference](UI.xml#L611)|Decimal|Threshold for Down
[StrongDownDifference](UI.xml#L614)|Decimal|Threshold for StrongDown

## <a name="KPIType"></a>[KPIType](UI.xml#L625)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L626)|String|Optional identifier to reference this instance from an external context
[ShortDescription](UI.xml#L631) *([Experimental](Common.md#Experimental))*|String|Very short description
[SelectionVariant](UI.xml#L636)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[DataPoint](UI.xml#L639)|[DataPointType](#DataPointType)|Data point, either specified inline or referencing another annotation via Path
[AdditionalDataPoints](UI.xml#L642)|\[[DataPointType](#DataPointType)\]|Additional data points, either specified inline or referencing another annotation via Path<p>Additional data points are typically related to the main data point and provide complementing information or could be used for comparisons</p>
[Detail](UI.xml#L646)|[KPIDetailType](#KPIDetailType)|Contains information about KPI details, especially drill-down presentations

## <a name="KPIDetailType"></a>[KPIDetailType](UI.xml#L650)


Property|Type|Description
:-------|:---|:----------
[DefaultPresentationVariant](UI.xml#L651)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path
[AlternativePresentationVariants](UI.xml#L654)|\[[PresentationVariantType](#PresentationVariantType)\]|A list of alternative presentation variants, either specified inline or referencing another annotation via Path
[SemanticObject](UI.xml#L657)|String|Name of the Semantic Object. If not specified, use Semantic Object annotated at the property referenced in KPI/DataPoint/Value
[Action](UI.xml#L660)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.

## <a name="ChartDefinitionType"></a>[ChartDefinitionType](UI.xml#L669)


Property|Type|Description
:-------|:---|:----------
[Title](UI.xml#L670)|String|Title of the chart
[Description](UI.xml#L674)|String|Short description
[ChartType](UI.xml#L678)|[ChartType](#ChartType)|Chart type
[AxisScaling](UI.xml#L681)|[ChartAxisScalingType](#ChartAxisScalingType)|Describes the scale of the chart value axes
[Measures](UI.xml#L684)|\[PropertyPath\]|Measures of the chart, e.g. size and color in a bubble chart
[MeasureAttributes](UI.xml#L687)|\[[ChartMeasureAttributeType](#ChartMeasureAttributeType)\]|Describes Attributes for Measures. All Measures used in this collection must also be part of the Measures Property.
[Dimensions](UI.xml#L692)|\[PropertyPath\]|Dimensions of the chart, e.g. x- and y-axis of a bubble chart
[DimensionAttributes](UI.xml#L695)|\[[ChartDimensionAttributeType](#ChartDimensionAttributeType)\]|Describes Attributes for Dimensions. All Dimensions used in this collection must also be part of the Dimensions Property.
[Actions](UI.xml#L700)|\[[DataFieldForActionAbstract](#DataFieldForActionAbstract)\]|Available actions

## <a name="ChartType"></a>[ChartType](UI.xml#L705)


Member|Value|Description
:-----|----:|:----------
[Column](UI.xml#L706)|0|
[ColumnStacked](UI.xml#L707)|1|
[ColumnDual](UI.xml#L708)|2|
[ColumnStackedDual](UI.xml#L709)|3|
[ColumnStacked100](UI.xml#L710)|4|
[ColumnStackedDual100](UI.xml#L711)|5|
[Bar](UI.xml#L712)|6|
[BarStacked](UI.xml#L713)|7|
[BarDual](UI.xml#L714)|8|
[BarStackedDual](UI.xml#L715)|9|
[BarStacked100](UI.xml#L716)|10|
[BarStackedDual100](UI.xml#L717)|11|
[Area](UI.xml#L718)|12|
[AreaStacked](UI.xml#L719)|13|
[AreaStacked100](UI.xml#L720)|14|
[HorizontalArea](UI.xml#L721)|15|
[HorizontalAreaStacked](UI.xml#L722)|16|
[HorizontalAreaStacked100](UI.xml#L723)|17|
[Line](UI.xml#L724)|18|
[LineDual](UI.xml#L725)|19|
[Combination](UI.xml#L726)|20|
[CombinationStacked](UI.xml#L727)|21|
[CombinationDual](UI.xml#L728)|22|
[CombinationStackedDual](UI.xml#L729)|23|
[HorizontalCombinationStacked](UI.xml#L730)|24|
[Pie](UI.xml#L731)|25|
[Donut](UI.xml#L732)|26|
[Scatter](UI.xml#L733)|27|
[Bubble](UI.xml#L734)|28|
[Radar](UI.xml#L735)|29|
[HeatMap](UI.xml#L736)|30|
[TreeMap](UI.xml#L737)|31|
[Waterfall](UI.xml#L738)|32|
[Bullet](UI.xml#L739)|33|
[VerticalBullet](UI.xml#L740)|34|
[HorizontalWaterfall](UI.xml#L741)|35|
[HorizontalCombinationDual](UI.xml#L742)|36|
[HorizontalCombinationStackedDual](UI.xml#L743)|37|
[Donut100](UI.xml#L744) *([Experimental](Common.md#Experimental))*|38|

## <a name="ChartAxisScalingType"></a>[ChartAxisScalingType](UI.xml#L750)


Property|Type|Description
:-------|:---|:----------
[ScaleBehavior](UI.xml#L751)|[ChartAxisScaleBehaviorType](#ChartAxisScaleBehaviorType)|Scale is fixed or adapts automatically to rendered values
[AutoScaleBehavior](UI.xml#L754)|[ChartAxisAutoScaleBehaviorType](#ChartAxisAutoScaleBehaviorType)|Settings for automatic scaling
[FixedScaleMultipleStackedMeasuresBoundaryValues](UI.xml#L757)|[FixedScaleMultipleStackedMeasuresBoundaryValuesType](#FixedScaleMultipleStackedMeasuresBoundaryValuesType)|Boundary values for fixed scaling of a stacking chart type with multiple measures

## <a name="ChartAxisScaleBehaviorType"></a>[ChartAxisScaleBehaviorType](UI.xml#L762)


Member|Value|Description
:-----|----:|:----------
[AutoScale](UI.xml#L763)|0|Value axes scale automatically
[FixedScale](UI.xml#L766)|1|Fixed minimum and maximum values are applied, which are derived from the @UI.MeasureAttributes.DataPoint/MinimumValue and .../MaximumValue annotation by default. For stacking chart types with multiple measures, they are taken from ChartAxisScalingType/FixedScaleMultipleStackedMeasuresBoundaryValues.

## <a name="ChartAxisAutoScaleBehaviorType"></a>[ChartAxisAutoScaleBehaviorType](UI.xml#L775)


Property|Type|Description
:-------|:---|:----------
[ZeroAlwaysVisible](UI.xml#L776)|Boolean|Forces the value axis to always display the zero value
[DataScope](UI.xml#L779)|[ChartAxisAutoScaleDataScopeType](#ChartAxisAutoScaleDataScopeType)|Determines the automatic scaling

## <a name="ChartAxisAutoScaleDataScopeType"></a>[ChartAxisAutoScaleDataScopeType](UI.xml#L784)


Member|Value|Description
:-----|----:|:----------
[DataSet](UI.xml#L785)|0|Minimum and maximum axes values are determined from the entire data set
[VisibleData](UI.xml#L788)|1|Minimum and maximum axes values are determined from the currently visible data. Scrolling will change the scale.

## <a name="FixedScaleMultipleStackedMeasuresBoundaryValuesType"></a>[FixedScaleMultipleStackedMeasuresBoundaryValuesType](UI.xml#L793)


Property|Type|Description
:-------|:---|:----------
[MinimumValue](UI.xml#L794)|Decimal|Minimum value on value axes
[MaximumValue](UI.xml#L797)|Decimal|Maximum value on value axes

## <a name="ChartDimensionAttributeType"></a>[ChartDimensionAttributeType](UI.xml#L802)


Property|Type|Description
:-------|:---|:----------
[Dimension](UI.xml#L803)|PropertyPath|
[Role](UI.xml#L804)|[ChartDimensionRoleType](#ChartDimensionRoleType)|
[HierarchyLevel](UI.xml#L805) *([Experimental](Common.md#Experimental))*|Int32|For a dimension with a hierarchy, members are selected from this level. The root node of the hierarchy is at level 0.
[ValuesForSequentialColorLevels](UI.xml#L809) *([Experimental](Common.md#Experimental))*|\[String\]|All values in this collection should be assigned to levels of the same color.
[EmphasizedValues](UI.xml#L813) *([Experimental](Common.md#Experimental))*|\[String\]|All values in this collection should be emphasized.
[EmphasisLabels](UI.xml#L817) *([Experimental](Common.md#Experimental))*|[EmphasisLabelType](#EmphasisLabelType)|Assign a label to values with an emphasized representation. This is required, if more than one emphasized value has been specified.

## <a name="ChartMeasureAttributeType"></a>[ChartMeasureAttributeType](UI.xml#L823)


Property|Type|Description
:-------|:---|:----------
[Measure](UI.xml#L824)|PropertyPath|
[Role](UI.xml#L825)|[ChartMeasureRoleType](#ChartMeasureRoleType)|
[DataPoint](UI.xml#L826)|AnnotationPath|Annotation path MUST end in @UI.DataPoint and the data point's Value MUST be the same property as in Measure
[UseSequentialColorLevels](UI.xml#L834) *([Experimental](Common.md#Experimental))*|Boolean|All measures for which this setting is true should be assigned to levels of the same color.

## <a name="ChartDimensionRoleType"></a>[ChartDimensionRoleType](UI.xml#L840)


Member|Value|Description
:-----|----:|:----------
[Category](UI.xml#L841)|0|
[Series](UI.xml#L842)|1|
[Category2](UI.xml#L843)|2|

## <a name="ChartMeasureRoleType"></a>[ChartMeasureRoleType](UI.xml#L846)


Member|Value|Description
:-----|----:|:----------
[Axis1](UI.xml#L847)|0|
[Axis2](UI.xml#L848)|1|
[Axis3](UI.xml#L849)|2|

## <a name="EmphasisLabelType"></a>[EmphasisLabelType](UI.xml#L852) *([Experimental](Common.md#Experimental))*
Assigns a label to the set of emphasized values and optionally also for non-emphasized values. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[EmphasizedValuesLabel](UI.xml#L855)|String|
[NonEmphasizedValuesLabel](UI.xml#L856)|String|

## <a name="ValueCriticalityType"></a>[ValueCriticalityType](UI.xml#L863) *([Experimental](Common.md#Experimental))*
Assigns a fixed criticality to a primitive value. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Value](UI.xml#L866)|PrimitiveType|MUST be a fixed value of primitive type
[Criticality](UI.xml#L869)|[CriticalityType](#CriticalityType)|

## <a name="CriticalityLabelType"></a>[CriticalityLabelType](UI.xml#L883) *([Experimental](Common.md#Experimental))*
Assigns a label to a criticality. This information can be used for semantic coloring.

Property|Type|Description
:-------|:---|:----------
[Criticality](UI.xml#L886)|[CriticalityType](#CriticalityType)|
[Label](UI.xml#L887)|String|Criticality label

## <a name="Facet"></a>[*Facet*](UI.xml#L921)
Abstract base type for facets

**Derived Types:**
- [CollectionFacet](#CollectionFacet)
- [ReferenceFacet](#ReferenceFacet)
- [ReferenceURLFacet](#ReferenceURLFacet)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L923)|String|Facet label
[ID](UI.xml#L927)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.

## <a name="CollectionFacet"></a>[CollectionFacet](UI.xml#L931): [Facet](#Facet)
Collection of facets

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L923)|String|Facet label
[*ID*](UI.xml#L927)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Facets](UI.xml#L933)|\[[Facet](#Facet)\]|Nested facets. An empty collection may be used as a placeholder for content added via extension points.

## <a name="ReferenceFacet"></a>[ReferenceFacet](UI.xml#L937): [Facet](#Facet)
Facet that refers to a thing perspective, e.g. LineItem

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L923)|String|Facet label
[*ID*](UI.xml#L927)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Target](UI.xml#L939)|AnnotationPath|Referenced information: Communication.Contact, Communication.Address, or a term that is tagged with UI.ThingPerspective, e.g. UI.StatusInfo, UI.LineItem, UI.Identification, UI.FieldGroup, UI.Badge

## <a name="ReferenceURLFacet"></a>[ReferenceURLFacet](UI.xml#L965): [Facet](#Facet)
Facet that refers to a URL

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L923)|String|Facet label
[*ID*](UI.xml#L927)|String|Unique identifier of a facet. ID should be stable, as long as the perceived semantics of the facet is unchanged.
[Url](UI.xml#L967)|URL|URL of referenced information
[UrlContentType](UI.xml#L971)|MediaType|Media type of referenced information

## <a name="SelectionPresentationVariantType"></a>[SelectionPresentationVariantType](UI.xml#L984)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L985)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L990)|String|Name of the bundling variant
[SelectionVariant](UI.xml#L994)|[SelectionVariantType](#SelectionVariantType)|Selection variant, either specified inline or referencing another annotation via Path
[PresentationVariant](UI.xml#L997)|[PresentationVariantType](#PresentationVariantType)|Presentation variant, either specified inline or referencing another annotation via Path

## <a name="PresentationVariantType"></a>[PresentationVariantType](UI.xml#L1008)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1009)|String|Optional identifier to reference this variant from an external context
[Text](UI.xml#L1012)|String|Name of the presentation variant
[MaxItems](UI.xml#L1016)|Int32|Maximum number of items that should be included in the result
[SortOrder](UI.xml#L1019)|\[[SortOrderType](Common.md#SortOrderType)\]|Collection can be provided inline or as a reference to a Common.SortOrder annotation via Path
[GroupBy](UI.xml#L1022)|\[PropertyPath\]|Sequence of groupable properties p1, p2, ... defining how the result is composed of instances representing groups, one for each combination of value properties in the queried collection. The sequence specifies a certain level of aggregation for the queried collection, and every group instance will provide aggregated values for properties that are aggregatable. Moreover, the series of sub-sequences (p1), (p1, p2), ... forms a leveled hierarchy, which may become relevant in combination with `InitialExpansionLevel`.
[TotalBy](UI.xml#L1031)|\[PropertyPath\]|Sub-sequence q1, q2, ... of properties p1, p2, ... specified in GroupBy. With this, additional levels of aggregation are requested in addition to the most granular level defined by GroupBy: Every element in the series of sub-sequences (q1), (q1, q2), ... introduces an additional aggregation level included in the result.
[Total](UI.xml#L1038)|\[PropertyPath\]|Aggregatable properties for which aggregated values should be provided for the additional aggregation levels specified in TotalBy.
[IncludeGrandTotal](UI.xml#L1043)|Boolean|Result should include a grand total for the properties specified in Total
[InitialExpansionLevel](UI.xml#L1046)|Int32|Level up to which the hierarchy defined for the queried collection should be expanded initially. The hierarchy may be implicitly imposed by the sequence of the GroupBy, or by an explicit hierarchy annotation.
[Visualizations](UI.xml#L1052)|\[AnnotationPath\]|Lists available visualization types. Currently supported types are `UI.LineItem`, `UI.Chart`, and `UI.DataPoint`. For each type, no more than a single annotation is meaningful. Multiple instances of the same visualization type shall be modeled with different presentation variants. A reference to `UI.Lineitem` should always be part of the collection (least common denominator for renderers). The first entry of the collection is the default visualization.
[RequestAtLeast](UI.xml#L1069)|\[PropertyPath\]|Properties that should always be included in the result of the queried collection
[SelectionFields](UI.xml#L1072) *([Experimental](Common.md#Experimental))*|\[PropertyPath\]|Properties that should be presented for filtering a collection of entities. Can be provided inline or as a reference to a `UI.SelectionFields` annotation via Path.

## <a name="SelectionVariantType"></a>[SelectionVariantType](UI.xml#L1086)


Property|Type|Description
:-------|:---|:----------
[ID](UI.xml#L1087)|String|May contain identifier to reference this instance from an external context
[Text](UI.xml#L1092)|String|Name of the selection variant
[Parameters](UI.xml#L1096)|\[[ParameterAbstract](#ParameterAbstract)\]|Parameters of the selection variant
[FilterExpression](UI.xml#L1099)|String|Filter string for query part of URL, without `$filter=`
[SelectOptions](UI.xml#L1104)|\[[SelectOptionType](#SelectOptionType)\]|ABAP Select Options Pattern

## <a name="ParameterAbstract"></a>[*ParameterAbstract*](UI.xml#L1111)
Key property of a parameter entity type

**Derived Types:**
- [Parameter](#Parameter)
- [IntervalParameter](#IntervalParameter)

## <a name="Parameter"></a>[Parameter](UI.xml#L1114): [ParameterAbstract](#ParameterAbstract)
Single-valued parameter

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1116)|PropertyPath|Path to a key property of a parameter entity type
[PropertyValue](UI.xml#L1119)|PrimitiveType|Value for the key property

## <a name="IntervalParameter"></a>[IntervalParameter](UI.xml#L1123): [ParameterAbstract](#ParameterAbstract)
Interval parameter formed with a 'from' and a 'to' property

Property|Type|Description
:-------|:---|:----------
[PropertyNameFrom](UI.xml#L1125)|PropertyPath|Path to the 'from' property of a parameter entity type
[PropertyValueFrom](UI.xml#L1128)|PrimitiveType|Value for the 'from' property
[PropertyNameTo](UI.xml#L1131)|PropertyPath|Path to the 'to' property of a parameter entity type
[PropertyValueTo](UI.xml#L1134)|PrimitiveType|Value for the 'to' property

## <a name="SelectOptionType"></a>[SelectOptionType](UI.xml#L1139)
List of value ranges for a single property

Property|Type|Description
:-------|:---|:----------
[PropertyName](UI.xml#L1141)|PropertyPath|Path to the property
[Ranges](UI.xml#L1144)|\[[SelectionRangeType](#SelectionRangeType)\]|List of value ranges

## <a name="SelectionRangeType"></a>[SelectionRangeType](UI.xml#L1149)
Value range. If the range option only requires a single value, the value must be in the property Low

Property|Type|Description
:-------|:---|:----------
[Sign](UI.xml#L1153)|[SelectionRangeSignType](#SelectionRangeSignType)|Include or exclude values
[Option](UI.xml#L1156)|[SelectionRangeOptionType](#SelectionRangeOptionType)|Comparison operator
[Low](UI.xml#L1159)|PrimitiveType|Single value or lower interval boundary
[High](UI.xml#L1162)|PrimitiveType|Upper interval boundary

## <a name="SelectionRangeSignType"></a>[SelectionRangeSignType](UI.xml#L1167)


Member|Value|Description
:-----|----:|:----------
[I](UI.xml#L1168)|0|Inclusive
[E](UI.xml#L1171)|1|Exclusive

## <a name="SelectionRangeOptionType"></a>[SelectionRangeOptionType](UI.xml#L1176)
Comparison operator

Member|Value|Description
:-----|----:|:----------
[EQ](UI.xml#L1178)|0|Equal to
[BT](UI.xml#L1181)|1|Between
[CP](UI.xml#L1184)|2|Contains pattern
[LE](UI.xml#L1187)|3|Less than or equal to
[GE](UI.xml#L1190)|4|Greater than or equal to
[NE](UI.xml#L1193)|5|Not equal to
[NB](UI.xml#L1196)|6|Not between
[NP](UI.xml#L1199)|7|Does not contain pattern
[GT](UI.xml#L1202)|8|Greater than
[LT](UI.xml#L1205)|9|Less than

## <a name="TextArrangementType"></a>[TextArrangementType](UI.xml#L1269)


Member|Value|Description
:-----|----:|:----------
[TextFirst](UI.xml#L1270)|0|Text is first, followed by the code/ID (e.g. in parentheses)
[TextLast](UI.xml#L1273)|1|Code/ID is first, followed by the text (e.g. separated by a dash)
[TextSeparate](UI.xml#L1276)|2|Code/ID and text are represented separately
[TextOnly](UI.xml#L1279)|3|Only text is represented, code/ID is hidden (e.g. for UUIDs)

## <a name="ImportanceType"></a>[ImportanceType](UI.xml#L1295)


Member|Value|Description
:-----|----:|:----------
[High](UI.xml#L1296)|0|High importance
[Medium](UI.xml#L1299)|1|Medium importance
[Low](UI.xml#L1302)|2|Low importance

## <a name="DataFieldAbstract"></a>[*DataFieldAbstract*](UI.xml#L1344)
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
    - [DataFieldWithValueFunction](#DataFieldWithValueFunction)
  - [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
  - [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
  - [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
[Label](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[Criticality](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[CriticalityRepresentation](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[IconUrl](UI.xml#L1367)|URL|Optional icon

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="CriticalityRepresentationType"></a>[CriticalityRepresentationType](UI.xml#L1373)


Member|Value|Description
:-----|----:|:----------
[WithIcon](UI.xml#L1374)|0|Criticality is represented with an icon
[WithoutIcon](UI.xml#L1377)|1|Criticality is represented without icon, e.g. only via text color
[OnlyIcon](UI.xml#L1380) *([Experimental](Common.md#Experimental))*|2|Criticality is represented only by using an icon

## <a name="DataFieldForAnnotation"></a>[DataFieldForAnnotation](UI.xml#L1386): [DataFieldAbstract](#DataFieldAbstract)
A structured piece of data described by an annotation

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1367)|URL|Optional icon
[Target](UI.xml#L1388)|AnnotationPath|Target MUST reference an annotation of terms Communication.Contact, Communication.Address, UI.DataPoint, UI.Chart, UI.FieldGroup, or UI.ConnectedFields

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldForActionAbstract"></a>[*DataFieldForActionAbstract*](UI.xml#L1403): [DataFieldAbstract](#DataFieldAbstract)
Triggers an action

**Derived Types:**
- [DataFieldForAction](#DataFieldForAction)
- [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1367)|URL|Optional icon
[Inline](UI.xml#L1405)|Boolean|Action should be placed close to (or even inside) the visualized term
[Determining](UI.xml#L1408)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldForAction"></a>[DataFieldForAction](UI.xml#L1413): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
Triggers an OData action

The action is NOT tied to a data value (in contrast to [DataFieldWithAction](#DataFieldWithAction)).

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1367)|URL|Optional icon
[*Inline*](UI.xml#L1405)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1408)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[Action](UI.xml#L1416)|[ActionOverload](Common.md#ActionOverload)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope
[InvocationGrouping](UI.xml#L1419)|[OperationGroupingType](#OperationGroupingType)|Expresses how invocations of this action on multiple instances should be grouped

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="OperationGroupingType"></a>[OperationGroupingType](UI.xml#L1423)


Member|Value|Description
:-----|----:|:----------
[Isolated](UI.xml#L1424)|0|Invoke each action in isolation from other actions
[ChangeSet](UI.xml#L1427)|1|Group all actions into a single change set

## <a name="DataFieldForIntentBasedNavigation"></a>[DataFieldForIntentBasedNavigation](UI.xml#L1432): [DataFieldForActionAbstract](#DataFieldForActionAbstract)
Triggers intent-based UI navigation

The navigation intent is is expressed as a Semantic Object and optionally an Action on that object.

It is NOT tied to a data value (in contrast to [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation))."

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1367)|URL|Optional icon
[*Inline*](UI.xml#L1405)|Boolean|Action should be placed close to (or even inside) the visualized term
[*Determining*](UI.xml#L1408)|Boolean|Determines whether the action completes a process step (e.g. approve, reject).
[SemanticObject](UI.xml#L1439)|String|Name of the Semantic Object
[Action](UI.xml#L1442)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[RequiresContext](UI.xml#L1445)|Boolean|Determines whether a context needs to be passed to the target of this navigation.
[Mapping](UI.xml#L1448)|\[[SemanticObjectMappingType](Common.md#SemanticObjectMappingType)\]|Maps properties of the annotated entity type to properties of the Semantic Object

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataField"></a>[DataField](UI.xml#L1453): [DataFieldAbstract](#DataFieldAbstract)
A piece of data

**Derived Types:**
- [DataFieldWithAction](#DataFieldWithAction)
  - [DataFieldWithValueFunction](#DataFieldWithValueFunction)
- [DataFieldWithIntentBasedNavigation](#DataFieldWithIntentBasedNavigation)
- [DataFieldWithNavigationPath](#DataFieldWithNavigationPath)
- [DataFieldWithUrl](#DataFieldWithUrl)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1367)|URL|Optional icon
[Value](UI.xml#L1455)|PrimitiveType|The data field's value

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithAction"></a>[DataFieldWithAction](UI.xml#L1461): [DataField](#DataField)
A piece of data that allows triggering an OData action

The action is tied to a data value which should be rendered as a hyperlink. This is in contrast to [DataFieldForAction](#DataFieldForAction)) which is not tied to a specific data value.

**Derived Types:**
- [DataFieldWithValueFunction](#DataFieldWithValueFunction)

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1367)|URL|Optional icon
[*Value*](UI.xml#L1455)|PrimitiveType|The data field's value
[Action](UI.xml#L1464)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithValueFunction"></a>[DataFieldWithValueFunction](UI.xml#L1469): [DataFieldWithAction](#DataFieldWithAction)
A data field whose value can be computed through an OData function on the OData server

The `Action` is an OData Function or FunctionImport which is triggered on the server during the processing of an OData request, e.g.,
          - because the function occurs in a `$filter` clause for this data field
          - or because the function occurs in a parameter alias if the data field is a key property of an entity set.
          Input fields (e.g., in a filter bar) for this data field should be rendered with an additional input help.
          Unlike a [value list](Common.md#ValueList), such an input help does not yield a literal (`PostingDate eq '2020-08-01'`)
          but a function expression (`PostingDate eq SAP.today()`) which is re-evaluated per request execution even if the request URL has been bookmarked.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1367)|URL|Optional icon
[*Value*](UI.xml#L1455)|PrimitiveType|The data field's value
[*Action*](UI.xml#L1464)|[QualifiedName](Common.md#QualifiedName)|Qualified name of an Action, Function, ActionImport or FunctionImport in scope

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithIntentBasedNavigation"></a>[DataFieldWithIntentBasedNavigation](UI.xml#L1481): [DataField](#DataField)
A piece of data that allows triggering intent-based UI navigation

The navigation intent is is expressed as a Semantic Object and optionally an Action on that object.

It is tied to a data value which should be rendered as a hyperlink.
This is in contrast to [DataFieldForIntentBasedNavigation](#DataFieldForIntentBasedNavigation) which is not tied to a specific data value.

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1367)|URL|Optional icon
[*Value*](UI.xml#L1455)|PrimitiveType|The data field's value
[SemanticObject](UI.xml#L1489)|String|Name of the Semantic Object
[Action](UI.xml#L1492)|String|Name of the Action on the Semantic Object. If not specified, let user choose which of the available actions to trigger.
[Mapping](UI.xml#L1495)|\[[SemanticObjectMappingType](Common.md#SemanticObjectMappingType)\]|Maps properties of the annotated entity type to properties of the Semantic Object

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithNavigationPath"></a>[DataFieldWithNavigationPath](UI.xml#L1500): [DataField](#DataField)
A piece of data that allows navigating to related data

It should be rendered as a hyperlink

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1367)|URL|Optional icon
[*Value*](UI.xml#L1455)|PrimitiveType|The data field's value
[Target](UI.xml#L1503)|NavigationPropertyPath|Contains either a navigation property or a term cast, where term is of type Edm.EntityType or a concrete entity type or a collection of these types

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="DataFieldWithUrl"></a>[DataFieldWithUrl](UI.xml#L1510): [DataField](#DataField)
A piece of data that allows navigating to other information on the Web

It should be rendered as a hyperlink

Property|Type|Description
:-------|:---|:----------
[*Label*](UI.xml#L1357)|String|A short, human-readable text suitable for labels and captions in UIs
[*Criticality*](UI.xml#L1361)|[CriticalityType](#CriticalityType)|Criticality of the data field value
[*CriticalityRepresentation*](UI.xml#L1364)|[CriticalityRepresentationType](#CriticalityRepresentationType)|Decides if criticality is visualized in addition by means of an icon
[*IconUrl*](UI.xml#L1367)|URL|Optional icon
[*Value*](UI.xml#L1455)|PrimitiveType|The data field's value
[Url](UI.xml#L1513)|URL|Target of the hyperlink
[UrlContentType](UI.xml#L1517)|MediaType|Media type of the hyperlink target, e.g. `video/mp4`

**Applicable Annotation Terms:**

- [Hidden](#Hidden)
- [Importance](#Importance)
- [CssDefaults](HTML5.md#CssDefaults)

## <a name="RecommendationStateType"></a>[RecommendationStateType](UI.xml#L1551)
**Type:** Byte

Indicates whether a field contains or has a recommended value

Editable fields for which a recommendation has been pre-filled or that have recommendations that differ from existing human input need to be highlighted.

Allowed Value|Description
:------------|:----------
[0](UI.xml#L1558)|regular - with human or default input, no recommendation
[1](UI.xml#L1562)|highlighted - without human input and with recommendation
[2](UI.xml#L1566)|warning - with human or default input and with recommendation

## <a name="RecommendationListType"></a>[RecommendationListType](UI.xml#L1581)
Reference to a recommendation list

A recommendation consists of one or more values for editable fields plus a rank between 0.0 and 9.9, with 9.9 being the best recommendation.

Property|Type|Description
:-------|:---|:----------
[CollectionPath](UI.xml#L1586)|String|Resource path of a collection of recommended values
[RankProperty](UI.xml#L1589)|String|Name of the property within the collection of recommended values that describes the rank of the recommendation
[Binding](UI.xml#L1592)|\[[RecommendationBinding](#RecommendationBinding)\]|List of pairs of a local property and recommended value property

## <a name="RecommendationBinding"></a>[RecommendationBinding](UI.xml#L1597)


Property|Type|Description
:-------|:---|:----------
[LocalDataProperty](UI.xml#L1598)|PropertyPath|Path to editable property for which recommended values exist
[ValueListProperty](UI.xml#L1601)|String|Path to property in the collection of recommended values. Format is identical to PropertyPath annotations.
