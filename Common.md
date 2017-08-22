# Common Vocabulary
**Namespace: [com.sap.vocabularies.Common.v1](Common.xml)**

Common terms for all SAP vocabularies

Term|Type|Description
:---|:---|:----------
[Experimental](Common.xml#L26) *(Experimental)*|String|<a name="Experimental"></a>Terms, types, and properties annotated with this term are experimental and can be changed or removed any time without prior warning
[ServiceVersion](Common.xml#L34)|Int32|<a name="ServiceVersion"></a>1 for first version of a service, incremented when schema changes incompatibly and service is published with a different URI
[ServiceSchemaVersion](Common.xml#L38)|Int32|<a name="ServiceSchemaVersion"></a>0 for first schema version within a service version, incremented when schema changes compatibly
[Label](Common.xml#L44)|String|<a name="Label"></a>A short, human-readable text suitable for labels and captions in UIs
[Heading](Common.xml#L49)|String|<a name="Heading"></a>A short, human-readable text suitable for column headings in UIs
[QuickInfo](Common.xml#L54)|String|<a name="QuickInfo"></a>A short, human-readable text suitable for tool tips in UIs
[Text](Common.xml#L59)|String|<a name="Text"></a>A descriptive text for values of the annotated property. Value MUST be a dynamic expression when used as metadata annotation.
[TextFormat](Common.xml#L65)|[TextFormatType](#TextFormatType)|<a name="TextFormat"></a>Human-readable text that may contain formatting information
[IsDigitSequence](Common.xml#L124)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDigitSequence"></a>Contains only digits
[IsUpperCase](Common.xml#L129)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUpperCase"></a>Contains just uppercase characters
[IsCurrencyCode](Common.xml#L134) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCurrencyCode"></a>Contains a currency code
[IsUnitOfMeasure](Common.xml#L140) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUnitOfMeasure"></a>Contains a unit of measure
[DefaultScale](Common.xml#L146) *(Experimental)*|Byte|<a name="DefaultScale"></a>The number of fractional decimal digits of a currency amount or measured quantity<p>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default scale of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of fractional digits captured by that device.</p>
[DefaultPrecision](Common.xml#L153) *(Experimental)*|Byte|<a name="DefaultPrecision"></a>The number of significant decimal digits of a currency amount or measured quantity<p>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default precision of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of significant digits captured by that device.</p>
[SecondaryKey](Common.xml#L160)|\[PropertyPath\]|<a name="SecondaryKey"></a>The listed properties form a secondary key. Multiple secondary keys are possible using different qualifiers.
[MinOccurs](Common.xml#L165)|Int64|<a name="MinOccurs"></a>The annotated set or collection contains at least this number of items
[MaxOccurs](Common.xml#L169)|Int64|<a name="MaxOccurs"></a>The annotated set or collection contains at most this number of items
[AssociationEntity](Common.xml#L173)|\[NavigationPropertyPath\]|<a name="AssociationEntity"></a>Entity representing an n:m association with attributes
[DerivedNavigation](Common.xml#L180)|NavigationPropertyPath|<a name="DerivedNavigation"></a>Shortcut for a multi-segment navigation, contains the long path with all its segments
[Masked](Common.xml#L186) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Masked"></a>Use term Common.Masking instead
[Masking](Common.xml#L201) *(Experimental)*|[MaskingType](#MaskingType)|<a name="Masking"></a>Property contains sensitive data that should be masked on UIs
[SemanticObject](Common.xml#L217)|String|<a name="SemanticObject"></a>Name of the Semantic Object represented as this entity type or identified by this property
[SemanticObjectMapping](Common.xml#L222)|\[[SemanticObjectMappingType](#SemanticObjectMappingType)\]|<a name="SemanticObjectMapping"></a>Maps properties of the annotated entity type or sibling properties of the annotated property to properties of the Semantic Object
[SemanticObjectAvailableActions](Common.xml#L236) *(Experimental)*|\[String\]|<a name="SemanticObjectAvailableActions"></a>List of actions that are available in the current state of the instance of the Semantic Object
[IsInstanceAnnotation](Common.xml#L242)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsInstanceAnnotation"></a>Term can also be used as instance annotation; AppliesTo of this term specifies where it can be applied
[Insertable](Common.xml#L247)|Boolean|<a name="Insertable"></a>Specifies whether the service allows to create an entity by sending a POST request to the navigation link URL (in this case the created entity is automatically linked to the entity containing the navigation link)
[Updatable](Common.xml#L254)|Boolean|<a name="Updatable"></a>Specifies whether the annotated entity can be updated
[Deletable](Common.xml#L261)|Boolean|<a name="Deletable"></a>Specifies whether the annotated entity can be deleted
[FilterExpressionRestrictions](Common.xml#L268) *(Deprecated)*|\[[FilterExpressionRestrictionType](#FilterExpressionRestrictionType)\]|<a name="FilterExpressionRestrictions"></a>Use term Capabilities.FilterRestrictions instead
[FieldControl](Common.xml#L296)|[FieldControlType](#FieldControlType)|<a name="FieldControl"></a>Control state of a property
[ExceptionCategory](Common.xml#L318) *(Experimental)*|String|<a name="ExceptionCategory"></a>A machine-readable exception category
[Application](Common.xml#L323) *(Experimental)*|[ApplicationType](#ApplicationType)|<a name="Application"></a>...
[Timestamp](Common.xml#L343) *(Experimental)*|DateTimeOffset|<a name="Timestamp"></a>...
[TransactionId](Common.xml#L348) *(Experimental)*|String|<a name="TransactionId"></a>...
[ErrorResolution](Common.xml#L353) *(Experimental)*|[ErrorResolutionType](#ErrorResolutionType)|<a name="ErrorResolution"></a>Hints for resolving this error
[Severity](Common.xml#L371) *(Experimental)*|String|<a name="Severity"></a>Classifies a notification as info, success, warning, or error
[IsActionCritical](Common.xml#L393)|Boolean|<a name="IsActionCritical"></a>Criticality of the function or action to enforce a warning or similar before it's executed
[Attributes](Common.xml#L397)|\[PropertyPath\]|<a name="Attributes"></a>Attributes related to this property, which may occur in denormalized entity types
[RelatedRecursiveHierarchy](Common.xml#L401)|AnnotationPath|<a name="RelatedRecursiveHierarchy"></a>A recursive hierarchy related to this property. The annotation path must end in Aggregation.RecursiveHierarchy.
[Interval](Common.xml#L406)|[IntervalType](#IntervalType)|<a name="Interval"></a>An interval with lower and upper boundaries described by two properties
[ResultContext](Common.xml#L424)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ResultContext"></a>The annotated entity type has one or more containment navigation properties. An instance of the annotated entity type provides the context required for determining the target entity sets reached by these containment navigation properties.
[ValueList](Common.xml#L434)|[ValueListType](#ValueListType)|<a name="ValueList"></a>Specifies how to get a list of acceptable values for a property or parameter<p>The value list can be based on user input that is passed in the value list request. The value list can be used for type-ahead and classical pick lists.</p>
[ValueListWithFixedValues](Common.xml#L480)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ValueListWithFixedValues"></a>If specified as true, there's only one value list mapping and its value list consists of a small number of fixed values
[ValueListReferences](Common.xml#L485)|\[URL\]|<a name="ValueListReferences"></a>A list of URLs of CSDL documents containing value list mappings for this parameter or property
[ValueListMapping](Common.xml#L491)|[ValueListMappingType](#ValueListMappingType)|<a name="ValueListMapping"></a>Specifies the mapping between data service properties and value list properties<p>The value list can be filtered based on user input. It can be used for type-ahead and classical pick lists. There may be many alternative mappings with different qualifiers. The qualifier-less mapping is the default value list.</p>
[IsCalendarYear](Common.xml#L544)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYear"></a>Property encodes a year number as string following the logical pattern (-?)YYYY(Y*) consisting of an optional minus sign for years B.C. followed by at least four digits. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})
[IsCalendarHalfyear](Common.xml#L553)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarHalfyear"></a>Property encodes a halfyear number as string following the logical pattern H consisting of a single digit. The string matches the regex pattern [1-2]
[IsCalendarQuarter](Common.xml#L562)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarQuarter"></a>Property encodes a calendar quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsCalendarMonth](Common.xml#L571)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarMonth"></a>Property encodes a calendar month number as string following the logical pattern MM consisting of two digits. The string matches the regex pattern 0[1-9]\|1[0-2]
[IsCalendarWeek](Common.xml#L580)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarWeek"></a>Property encodes a calendar week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[2-3]
[IsDayOfCalendarMonth](Common.xml#L589)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarMonth"></a>Day number relative to a calendar month. Valid values are between 1 and 31.
[IsDayOfCalendarYear](Common.xml#L597)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarYear"></a>Day number relative to a calendar year. Valid values are between 1 and 366.
[IsCalendarYearHalfyear](Common.xml#L605)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearHalfyear"></a>Property encodes a calendar year and halfyear as string following the logical pattern (-?)YYYY(Y*)H consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the halfyear. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-2]
[IsCalendarYearQuarter](Common.xml#L615)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearQuarter"></a>Property encodes a calendar year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsCalendarYearMonth](Common.xml#L625)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearMonth"></a>Property encodes a calendar year and month as string following the logical pattern (-?)YYYY(Y*)MM consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent the months January to December. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])
[IsCalendarYearWeek](Common.xml#L635)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearWeek"></a>Property encodes a calendar year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[2-3])
[IsCalendarDate](Common.xml#L645)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarDate"></a>Property encodes a calendar date: year, month and day as string following the logical pattern (-?)YYYY(Y*)MMDD consisting of an optional minus sign for years B.C. followed by at least eight digits, where the last four digits represent the months January to December (MM) and the day of the month (DD). The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])(0[1-9]\|[12][0-9]\|3[01]) The regex pattern does not reflect the additional constraint for "Day-of-month Values": The day value must be no more than 30 if month is one of 04, 06, 09, or 11, no more than 28 if month is 02 and year is not divisible by 4, or is divisible by 100 but not by 400, and no more than 29 if month is 02 and year is divisible by 400, or by 4 but not by 100.
[IsFiscalYear](Common.xml#L662)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYear"></a>Property encodes a fiscal year number as string following the logical pattern YYYY(Y*) consisting of at least four digits. The string matches the regex pattern [1-9][0-9]{3,}
[IsFiscalPeriod](Common.xml#L671)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalPeriod"></a>Property encodes a fiscal period as string following the logical pattern PPP consisting of three digits. The string matches the regex pattern [0-9]{3}
[IsFiscalYearPeriod](Common.xml#L680)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearPeriod"></a>Property encodes a fiscal year and period as string following the logical pattern YYYY(Y*)PPP consisting of at least seven digits, where the last three digits represent the fiscal period in the year. The string matches the regex pattern ([1-9][0-9]{3,})([0-9]{3})
[IsFiscalYearVariant](Common.xml#L690)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearVariant"></a>Property encodes a fiscal year variant
[MutuallyExclusiveTerm](Common.xml#L698)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MutuallyExclusiveTerm"></a>Only one term of the group identified with the Qualifier attribute can be applied
[DraftRoot](Common.xml#L704)|[DraftRootType](#DraftRootType)|<a name="DraftRoot"></a>Root entities of business documents that support the draft pattern
[DraftNode](Common.xml#L722)|[DraftNodeType](#DraftNodeType)|<a name="DraftNode"></a>Entities in this set are parts of business documents that support the draft pattern
[DraftActivationVia](Common.xml#L736)|\[[SimpleIdentifier](#SimpleIdentifier)\]|<a name="DraftActivationVia"></a>Draft entities in this set are indirectly activated via draft entities in the referenced entity sets
[SemanticKey](Common.xml#L749)|\[PropertyPath\]|<a name="SemanticKey"></a>The listed properties form the semantic key, i.e. they are unique modulo IsActiveEntity
[SideEffects](Common.xml#L753)|[SideEffectsType](#SideEffectsType)|<a name="SideEffects"></a>Describes side-effects of modification operations
[DerivedDefaultValue](Common.xml#L828)|String|<a name="DerivedDefaultValue"></a>Function import to derive a default value for the property from a given context.<p>             Function import has two parameters of complex types:<br/>            - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/>            - `properties`, a structure resembling the type of the entity set of the annotated property<br/>            The return type must be of the same type as the annotated property.<br/>            Arguments passed to the function import are used as context for deriving the default value.              The function import returns this default value, or null in case such a value could not be determined.           </p>
[FilterDefaultValue](Common.xml#L849)|PrimitiveType|<a name="FilterDefaultValue"></a>A default value for the property to be used in filter expressions.
[DerivedFilterDefaultValue](Common.xml#L853)|String|<a name="DerivedFilterDefaultValue"></a>Function import to derive a default value for the property from a given context in order to use it in filter expressions.<p>             Function import has two parameters of complex types:<br/>            - `parameters`, a structure resembling the entity type the parameter             entity set related to the entity set of the annotated property<br/>            - `properties`, a structure resembling the             type of the entity set of the annotated property<br/>            The return type must be of the same type as the annotated             property.<br/>            Arguments passed to the function import are used as context for deriving the default value.             The function import returns this default value, or null in case such a value could not be determined.           </p>
[SortOrder](Common.xml#L877)|\[[SortOrderType](#SortOrderType)\]|<a name="SortOrder"></a>List of sort criteria<p>The items of the annotated entity set or the items of the            collection of the annotated entity type are sorted by the first entry of the SortOrder collection.            Items with same value for this first sort criteria are sorted by the second entry of the SortOrder collection, and so on. </p>
[RecursiveHierarchy](Common.xml#L909)|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy.
[CreatedAt](Common.xml#L941)|DateTimeOffset|<a name="CreatedAt"></a>Creation timestamp
[CreatedBy](Common.xml#L945)|[UserID](#UserID)|<a name="CreatedBy"></a>First editor
[ChangedAt](Common.xml#L949)|DateTimeOffset|<a name="ChangedAt"></a>Last modification timestamp
[ChangedBy](Common.xml#L953)|[UserID](#UserID)|<a name="ChangedBy"></a>Last editor

## <a name="TextFormatType"></a>[TextFormatType](Common.xml#L69)


Member|Value|Description
:-----|----:|:----------
[plain](Common.xml#L70)|0|Plain text, line breaks represented as the character 0x0A
[html](Common.xml#L73)|1|Plain text with markup that can validly appear directly within an HTML DIV element

## <a name="MaskingType"></a>[MaskingType](Common.xml#L205) *(Experimental)*
Describes masking behavior for sensitive data

Property|Type|Description
:-------|:---|:----------
[Value](Common.xml#L208)|PrimitiveType|Replacement value that should be visible on a UI instead of the actual value of the masked property
[Always](Common.xml#L212)|Boolean|If false, the property value is initially masked and can be unmasked on user interaction

## <a name="SemanticObjectMappingType"></a>[SemanticObjectMappingType](Common.xml#L226)
Maps a property of the annotated entity type or a sibling property of the annotated property to a property of the Semantic Object

Property|Type|Description
:-------|:---|:----------
[LocalProperty](Common.xml#L229)|PropertyPath|Path to a local property that provides the value for the Semantic Object property
[SemanticObjectProperty](Common.xml#L232)|String|Name of the Semantic Object property

## <a name="FilterExpressionRestrictionType"></a>[FilterExpressionRestrictionType](Common.xml#L279)


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L280)|PropertyPath|
[AllowedExpressions](Common.xml#L281)|[FilterExpressionType](#FilterExpressionType)|

## <a name="FilterExpressionType"></a>[FilterExpressionType](Common.xml#L283)


Member|Value|Description
:-----|----:|:----------
[SingleValue](Common.xml#L284)|0|a single 'eq' clause
[MultiValue](Common.xml#L287)|1|one or more 'eq' clauses, separated by 'or'
[SingleInterval](Common.xml#L290)|2|at most one 'ge' and one 'le' clause, separated by 'and', alternatively a single 'eq' clause

## <a name="FieldControlType"></a>[FieldControlType](Common.xml#L300)


Member|Value|Description
:-----|----:|:----------
[Mandatory](Common.xml#L301)|7|Property must have a non-null value
[Optional](Common.xml#L304)|3|Property may have a value or be null
[ReadOnly](Common.xml#L307)|1|Property value cannot be changed
[Inapplicable](Common.xml#L310)|0|Property has no meaning in the current entity state
[Hidden](Common.xml#L313)|0|Deprecated synonymn for Inapplicable, do not use

## <a name="ApplicationType"></a>[ApplicationType](Common.xml#L328) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[Component](Common.xml#L330)|String|Software component of service implementation
[ServiceRepository](Common.xml#L333)|String|...
[ServiceId](Common.xml#L336)|String|...
[ServiceVersion](Common.xml#L339)|String|...

## <a name="ErrorResolutionType"></a>[ErrorResolutionType](Common.xml#L358) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[Analysis](Common.xml#L360)|String|Short hint on how to analyze this error
[Note](Common.xml#L363)|String|Note for error resolution
[AdditionalNote](Common.xml#L366)|String|Additional note for error resolution

## <a name="IntervalType"></a>[IntervalType](Common.xml#L409)


Property|Type|Description
:-------|:---|:----------
[LowerBoundary](Common.xml#L410)|PropertyPath|Property holding the lower interval boundary
[LowerBoundaryIncluded](Common.xml#L413)|Boolean|The lower boundary value is included in the interval
[UpperBoundary](Common.xml#L416)|PropertyPath|Property holding the upper interval boundary
[UpperBoundaryIncluded](Common.xml#L419)|Boolean|The upper boundary value is included in the interval

## <a name="ValueListType"></a>[ValueListType](Common.xml#L439)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L455)|String|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L459)|String|Resource path of an OData collection with possible values, relative to CollectionRoot
[CollectionRoot](Common.xml#L462)|String|Service root of the value list collection; not specified means local to the document containing the annotation
[SearchSupported](Common.xml#L466)|Boolean|Value list supports the $search query option<p>The value of the target property is used as the search expression instead of in $filter</p>
[PresentationVariantQualifier](Common.xml#L470)|[SimpleIdentifier](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<p>Qualifier for annotation with term com.sap.vocabularies.UI.v1.PresentationVariant on the entity set identified via CollectionPath</p>
[Parameters](Common.xml#L475)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

## <a name="ValueListMappingType"></a>[ValueListMappingType](Common.xml#L496)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L497)|String|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L501)|String|Resource path of an OData collection with possible values, relative to the document containing the value list mapping
[PresentationVariantQualifier](Common.xml#L505)|[SimpleIdentifier](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<p>Qualifier for annotation with term com.sap.vocabularies.UI.v1.PresentationVariant on the value list entity set identified via CollectionPath in the ValueListReference annotation</p>
[Parameters](Common.xml#L510)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

## <a name="ValueListParameter"></a>[*ValueListParameter*](Common.xml#L515)


**Derived Types:**
- [ValueListParameterIn](#ValueListParameterIn)
- [ValueListParameterInOut](#ValueListParameterInOut)
- [ValueListParameterOut](#ValueListParameterOut)
- [ValueListParameterDisplayOnly](#ValueListParameterDisplayOnly)
- [ValueListParameterFilterOnly](#ValueListParameterFilterOnly)

Property|Type|Description
:-------|:---|:----------
[ValueListProperty](Common.xml#L516)|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="ValueListParameterIn"></a>[ValueListParameterIn](Common.xml#L520): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L516)|String|Path to property in response structure. Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L521)|PropertyPath|Path to property that is used to filter/search the value list

## <a name="ValueListParameterInOut"></a>[ValueListParameterInOut](Common.xml#L525): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L516)|String|Path to property in response structure. Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L526)|PropertyPath|Path to property that is used to filter/search the value list or filled from response

## <a name="ValueListParameterOut"></a>[ValueListParameterOut](Common.xml#L530): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L516)|String|Path to property in response structure. Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L531)|PropertyPath|Path to property that is filled from response

## <a name="ValueListParameterDisplayOnly"></a>[ValueListParameterDisplayOnly](Common.xml#L535): [ValueListParameter](#ValueListParameter)
Value list property that is not used to fill the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L516)|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="ValueListParameterFilterOnly"></a>[ValueListParameterFilterOnly](Common.xml#L538): [ValueListParameter](#ValueListParameter)
Value list property that is used to filter the value list, not connected to the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L516)|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="DraftRootType"></a>[DraftRootType](Common.xml#L709): [DraftNodeType](#DraftNodeType)


Property|Type|Description
:-------|:---|:----------
[*PreparationAction*](Common.xml#L728)|[QualifiedName](#QualifiedName)|Action that prepares a draft document for later activation
[*ValidationFunction*](Common.xml#L731)|[QualifiedName](#QualifiedName)|Function that validates whether a draft document is ready for activation
[ActivationAction](Common.xml#L710)|[QualifiedName](#QualifiedName)|Action that activates a draft document
[EditAction](Common.xml#L713)|[QualifiedName](#QualifiedName)|Action that creates an edit draft
[NewAction](Common.xml#L716)|[QualifiedName](#QualifiedName)|Action that creates a new draft. It may have overloads that allow referencing other business documents that are used to pre-fill the new draft

## <a name="DraftNodeType"></a>[DraftNodeType](Common.xml#L727)


**Derived Types:**
- [DraftRootType](#DraftRootType)

Property|Type|Description
:-------|:---|:----------
[PreparationAction](Common.xml#L728)|[QualifiedName](#QualifiedName)|Action that prepares a draft document for later activation
[ValidationFunction](Common.xml#L731)|[QualifiedName](#QualifiedName)|Function that validates whether a draft document is ready for activation

## <a name="SimpleIdentifier"></a>[SimpleIdentifier](Common.xml#L741)
**Type:** String

The SimpleIdentifier of an OData construct in scope

## <a name="QualifiedName"></a>[QualifiedName](Common.xml#L745)
**Type:** String

The QualifiedName of an OData construct in scope

## <a name="SideEffectsType"></a>[SideEffectsType](Common.xml#L756)
Changes to the source properties or source entities may have side-effects on the target properties or entities.

If neither TargetProperties nor TargetEntities are specified, a change to the source property values may have unforeseeable side-effects.
An empty NavigationPropertyPath may be used in TargetEntities to specify that any property of the annotated entity type may be affected.
            
Special case "Actions": here the change trigger is the action invocation, so SourceProperties and SourceEntities have no meaning, 
only TargetProperties and TargetEntities are relevant. They are addressed via the binding parameter of the action.

Property|Type|Description
:-------|:---|:----------
[SourceProperties](Common.xml#L766)|\[PropertyPath\]|Changes to the values of one or more of these properties will affect the targets
[SourceEntities](Common.xml#L769)|\[NavigationPropertyPath\]|Changes to one or more of these entities will affect the targets. An empty path means the annotation target.
[TargetProperties](Common.xml#L773)|\[PropertyPath\]|These properties will be affected if the value of one of the sources changes
[TargetEntities](Common.xml#L776)|\[NavigationPropertyPath\]|These entities will be affected if the value of one of the sources changes. An empty path means the annotation target.
[EffectTypes](Common.xml#L780)|[EffectType](#EffectType)|One or more of the targets may show these effects. If not specified, any effect is possible.

## <a name="EffectType"></a>[EffectType](Common.xml#L785)


Flag Member|Value|Description
:-----|----:|:----------
[ValidationMessage](Common.xml#L786)|1|Validation messages are assigned to a target<p>This side effect type indicates that validation messages may result from changes of source properties or entities.  Thus, a validation request can be sent either in conjunction with or separately after a modifying request.  Validation messages shall be persisted with the draft and immediately available in a subsequent request without repeating the validation logic.</p>
[ValueChange](Common.xml#L794)|2|The value of a target changes<p>This side effect type declares that changes to source properties or entities may impact the values of any, one or multiple target properties or entities. Upon modification preparation logic is performed that determines additional values to be stored in the draft document.</p>
[FieldControlChange](Common.xml#L801)|4|The value of the Common.FieldControl annotation of a target changes<p>This side effect type specifies that source properties or entities may impact the dynamic field control state of any, one or multiple target properties or entities. Upon modification field control logic is invoked so that meta-information like hidden or read-only is determined.</p>
[OperationControlChange](Common.xml#L808) *(Experimental)*|8|The operation control changes<p>This side effect type specifies that source properties or entities may impact the dynamic function or action (operations) control state of any,  one or multiple target properties (v2) or annotation of target entities (v4). Upon modification operation control logic is invoked so that meta-information like  operation enabled or disabled is determined.</p>
[PermissionChange](Common.xml#L817) *(Experimental)*|16|The method permissions change<p>This side effect type specifies that source properties or entities may impact the dynamic method permission state (creatable, updatable, deletable) of any,  one or multiple target properties (v2) or annotation of target entities (v4). Upon modification permission logic is invoked so that meta-information is determined.</p>

## <a name="SortOrderType"></a>[SortOrderType](Common.xml#L885)


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L886)|PropertyPath|Sort property
[Descending](Common.xml#L889)|Boolean|Sort direction ; default is ascending

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](Common.xml#L914)


Property|Type|Description
:-------|:---|:----------
[ExternalNodeKeyProperty](Common.xml#L915)|PropertyPath|Property holding the external human-readable key identifying the node
[NodeDescendantCountProperty](Common.xml#L918)|PropertyPath|Property holding the descendant count for a hierarchy node. The descendant count of a node is the number of its descendants in the hierarchy structure of the result considering only those nodes matching any specified $filter and $search. A property holding descendant counts has an integer data type.
[NodeDrillStateProperty](Common.xml#L926)|PropertyPath|Property holding the drill state of a hierarchy node. The drill state is indicated by one of the following string values: collapsed, expanded, or leaf. For an expanded node, its children are included in the result collection. For a collapsed node, the children are included in the entity set, but they are not part of the result collection. Retrieving them requires a relaxed filter expression or a separate request filtering on the parent node ID with the ID of the collapsed node. A leaf does not have any child in the entity set.

## <a name="UserID"></a>[UserID](Common.xml#L957)
**Type:** String

User ID
