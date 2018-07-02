# Common Vocabulary
**Namespace: [com.sap.vocabularies.Common.v1](Common.xml)**

Common terms for all SAP vocabularies


## Terms

Term|Type|Description
:---|:---|:----------
[Experimental](Common.xml#L34) *(Experimental)*|String|<a name="Experimental"></a>Terms, types, and properties annotated with this term are experimental and can be changed or removed any time without prior warning
[ServiceVersion](Common.xml#L42)|Int32|<a name="ServiceVersion"></a>1 for first version of a service, incremented when schema changes incompatibly and service is published with a different URI
[ServiceSchemaVersion](Common.xml#L46)|Int32|<a name="ServiceSchemaVersion"></a>0 for first schema version within a service version, incremented when schema changes compatibly
[Label](Common.xml#L52)|String|<a name="Label"></a>A short, human-readable text suitable for labels and captions in UIs
[Heading](Common.xml#L57)|String|<a name="Heading"></a>A short, human-readable text suitable for column headings in UIs
[QuickInfo](Common.xml#L62)|String|<a name="QuickInfo"></a>A short, human-readable text suitable for tool tips in UIs
[Text](Common.xml#L67)|String|<a name="Text"></a>A descriptive text for values of the annotated property. Value MUST be a dynamic expression when used as metadata annotation.
[TextFor](Common.xml#L73) *(Experimental)*|PropertyPath|<a name="TextFor"></a>The annotated property contains a descriptive text for values of the referenced property.
[IsLanguageIdentifier](Common.xml#L80) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsLanguageIdentifier"></a>An identifier to distinguish multiple texts in different languages for the same entity
[TextFormat](Common.xml#L86)|[TextFormatType](#TextFormatType)|<a name="TextFormat"></a>Human-readable text that may contain formatting information
[IsDigitSequence](Common.xml#L146)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDigitSequence"></a>Contains only digits
[IsUpperCase](Common.xml#L151)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUpperCase"></a>Contains just uppercase characters
[IsCurrencyCode](Common.xml#L156) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCurrencyCode"></a>Contains a currency code
[IsUnitOfMeasure](Common.xml#L162) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUnitOfMeasure"></a>Contains a unit of measure
[UnitSpecificScale](Common.xml#L168) *(Experimental)*|Byte|<a name="UnitSpecificScale"></a>The number of fractional decimal digits of a currency amount or measured quantity<p>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default scale of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of fractional digits captured by that device.</p>
[UnitSpecificPrecision](Common.xml#L176) *(Experimental)*|Byte|<a name="UnitSpecificPrecision"></a>The number of significant decimal digits of a currency amount or measured quantity<p>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default precision of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of significant digits captured by that device.</p>
[SecondaryKey](Common.xml#L184)|\[PropertyPath\]|<a name="SecondaryKey"></a>The listed properties form a secondary key. Multiple secondary keys are possible using different qualifiers.
[MinOccurs](Common.xml#L189)|Int64|<a name="MinOccurs"></a>The annotated set or collection contains at least this number of items
[MaxOccurs](Common.xml#L193)|Int64|<a name="MaxOccurs"></a>The annotated set or collection contains at most this number of items
[AssociationEntity](Common.xml#L197)|\[NavigationPropertyPath\]|<a name="AssociationEntity"></a>Entity representing an n:m association with attributes
[DerivedNavigation](Common.xml#L204)|NavigationPropertyPath|<a name="DerivedNavigation"></a>Shortcut for a multi-segment navigation, contains the long path with all its segments
[Masked](Common.xml#L210) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Masked"></a>Use terms `MaskedValue` and `MaskedAlways` instead
[Masking](Common.xml#L225) *(Experimental)* *(Deprecated)*|[MaskingType](#MaskingType)|<a name="Masking"></a>Use terms `MaskedValue` and `MaskedAlways` instead
[MaskedValue](Common.xml#L250) *(Experimental)*|String|<a name="MaskedValue"></a>Property contains sensitive data that is by default not transferred<p>By default a masked property is excluded from responses and instead an instance annotation with this term is sent, containing a masked value that can be rendered by user interfaces.</p>
[MaskedAlways](Common.xml#L259) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MaskedAlways"></a>Property contains sensitive data that is by default not transferred<p>If the annotation evaluates to true, the unmasked property value is never transferred in responses.<br/>If the annotation evaluates to false, the unmasked property value can be requested with the custom query option `masked-values=false`.</p>
[SemanticObject](Common.xml#L269)|String|<a name="SemanticObject"></a>Name of the Semantic Object represented as this entity type or identified by this property
[SemanticObjectMapping](Common.xml#L275)|\[[SemanticObjectMappingType](#SemanticObjectMappingType)\]|<a name="SemanticObjectMapping"></a>Maps properties of the annotated entity type or sibling properties of the annotated property to properties of the Semantic Object<p>This allows "renaming" of properties in the current context to match property names of the Semantic Object, e.g. `SenderPartyID` to `PartyID`. Only properties explicitly listed in the mapping are renamed, all other properties are available for intent-based navigation with their "local" name.</p>
[SemanticObjectUnavailableActions](Common.xml#L294) *(Experimental)*|\[String\]|<a name="SemanticObjectUnavailableActions"></a>List of actions that are not available in the current state of the instance of the Semantic Object
[IsInstanceAnnotation](Common.xml#L300)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsInstanceAnnotation"></a>Term can also be used as instance annotation; AppliesTo of this term specifies where it can be applied
[Insertable](Common.xml#L305)|Boolean|<a name="Insertable"></a>Specifies whether the service allows to create an entity by sending a POST request to the navigation link URL (in this case the created entity is automatically linked to the entity containing the navigation link)
[Updatable](Common.xml#L312)|Boolean|<a name="Updatable"></a>Specifies whether the annotated entity can be updated
[Deletable](Common.xml#L319)|Boolean|<a name="Deletable"></a>Specifies whether the annotated entity can be deleted
[FilterExpressionRestrictions](Common.xml#L328) *(Deprecated)*|\[[FilterExpressionRestrictionType](#FilterExpressionRestrictionType)\]|<a name="FilterExpressionRestrictions"></a>Use term Capabilities.FilterRestrictions instead
[FieldControl](Common.xml#L356)|[FieldControlType](#FieldControlType)|<a name="FieldControl"></a>Control state of a property
[ExceptionCategory](Common.xml#L379) *(Experimental)*|String|<a name="ExceptionCategory"></a>A machine-readable exception category
[Application](Common.xml#L384) *(Experimental)*|[ApplicationType](#ApplicationType)|<a name="Application"></a>...
[Timestamp](Common.xml#L404) *(Experimental)*|DateTimeOffset|<a name="Timestamp"></a>...
[TransactionId](Common.xml#L409) *(Experimental)*|String|<a name="TransactionId"></a>...
[ErrorResolution](Common.xml#L414) *(Experimental)*|[ErrorResolutionType](#ErrorResolutionType)|<a name="ErrorResolution"></a>Hints for resolving this error
[Messages](Common.xml#L432) *(Experimental)*|\[ComplexType\]|<a name="Messages"></a>Collection of end-user messages<p>The name of the message type is service-specific, its structure components are identified by naming convention, following the names of the OData error response structure.<br/>The minimum structure is  <br/>- code: Edm.String <br/>- message: Edm.String <br/>- target: Edm.String nullable  <br/>- transient: Edm.Boolean<br/>- numericSeverity: Edm.Byte<br/>- longtextUrl: Edm.String nullable             </p>
[transient](Common.xml#L454) *(Experimental)*|Boolean|<a name="transient"></a>Classifies an end-user message as transient<p>This instance annotation can be applied to the `error` object of an OData error response</p>
[longtextUrl](Common.xml#L461) *(Experimental)*|URL|<a name="longtextUrl"></a>Location of the message long text<p>This instance annotation can be applied to the `error` object of an OData error response</p>
[numericSeverity](Common.xml#L469) *(Experimental)*|[NumericMessageSeverityType](#NumericMessageSeverityType)|<a name="numericSeverity"></a>Classifies an end-user message as info, success, warning, or error<p>This instance annotation can be applied to the `error` object of an OData error response</p>
[MaximumNumericMessageSeverity](Common.xml#L478) *(Experimental)*|[NumericMessageSeverityType](#NumericMessageSeverityType)|<a name="MaximumNumericMessageSeverity"></a>The maximum severity of all end-user messages attached to an entity, null if no messages are attached<p>This metadata annotation can be applied to entity types that are also annotated with term [`Common.Messages`](#Messages)</p>
[IsActionCritical](Common.xml#L510)|Boolean|<a name="IsActionCritical"></a>Criticality of the function or action to enforce a warning or similar before it's executed
[Attributes](Common.xml#L515)|\[PropertyPath\]|<a name="Attributes"></a>Attributes related to this property, which may occur in denormalized entity types
[RelatedRecursiveHierarchy](Common.xml#L520)|AnnotationPath|<a name="RelatedRecursiveHierarchy"></a>A recursive hierarchy related to this property. The annotation path must end in Aggregation.RecursiveHierarchy.
[Interval](Common.xml#L525)|[IntervalType](#IntervalType)|<a name="Interval"></a>An interval with lower and upper boundaries described by two properties
[ResultContext](Common.xml#L543)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ResultContext"></a>The annotated entity type has one or more containment navigation properties. An instance of the annotated entity type provides the context required for determining the target entity sets reached by these containment navigation properties.
[ValueList](Common.xml#L553)|[ValueListType](#ValueListType)|<a name="ValueList"></a>Specifies how to get a list of acceptable values for a property or parameter<p>The value list can be based on user input that is passed in the value list request. The value list can be used for type-ahead and classical pick lists.</p>
[ValueListWithFixedValues](Common.xml#L610)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ValueListWithFixedValues"></a>If specified as true, there's only one value list mapping and its value list consists of a small number of fixed values
[ValueListReferences](Common.xml#L615)|\[URL\]|<a name="ValueListReferences"></a>A list of URLs of CSDL documents containing value list mappings for this parameter or property
[ValueListMapping](Common.xml#L621)|[ValueListMappingType](#ValueListMappingType)|<a name="ValueListMapping"></a>Specifies the mapping between data service properties and value list properties<p>The value list can be filtered based on user input. It can be used for type-ahead and classical pick lists. There may be many alternative mappings with different qualifiers.</p>
[IsCalendarYear](Common.xml#L694)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYear"></a>Property encodes a year number as string following the logical pattern (-?)YYYY(Y*) consisting of an optional minus sign for years B.C. followed by at least four digits. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})
[IsCalendarHalfyear](Common.xml#L703)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarHalfyear"></a>Property encodes a halfyear number as string following the logical pattern H consisting of a single digit. The string matches the regex pattern [1-2]
[IsCalendarQuarter](Common.xml#L712)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarQuarter"></a>Property encodes a calendar quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsCalendarMonth](Common.xml#L721)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarMonth"></a>Property encodes a calendar month number as string following the logical pattern MM consisting of two digits. The string matches the regex pattern 0[1-9]\|1[0-2]
[IsCalendarWeek](Common.xml#L730)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarWeek"></a>Property encodes a calendar week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsDayOfCalendarMonth](Common.xml#L739)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarMonth"></a>Day number relative to a calendar month. Valid values are between 1 and 31.
[IsDayOfCalendarYear](Common.xml#L747)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarYear"></a>Day number relative to a calendar year. Valid values are between 1 and 366.
[IsCalendarYearHalfyear](Common.xml#L755)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearHalfyear"></a>Property encodes a calendar year and halfyear as string following the logical pattern (-?)YYYY(Y*)H consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the halfyear. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-2]
[IsCalendarYearQuarter](Common.xml#L765)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearQuarter"></a>Property encodes a calendar year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsCalendarYearMonth](Common.xml#L775)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearMonth"></a>Property encodes a calendar year and month as string following the logical pattern (-?)YYYY(Y*)MM consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent the months January to December. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])
[IsCalendarYearWeek](Common.xml#L786)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearWeek"></a>Property encodes a calendar year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsCalendarDate](Common.xml#L796)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarDate"></a>Property encodes a calendar date: year, month and day as string following the logical pattern (-?)YYYY(Y*)MMDD consisting of an optional minus sign for years B.C. followed by at least eight digits, where the last four digits represent the months January to December (MM) and the day of the month (DD). The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])(0[1-9]\|[12][0-9]\|3[01]) The regex pattern does not reflect the additional constraint for "Day-of-month Values": The day value must be no more than 30 if month is one of 04, 06, 09, or 11, no more than 28 if month is 02 and year is not divisible by 4, or is divisible by 100 but not by 400, and no more than 29 if month is 02 and year is divisible by 400, or by 4 but not by 100.
[IsFiscalYear](Common.xml#L813)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYear"></a>Property encodes a fiscal year number as string following the logical pattern YYYY(Y*) consisting of at least four digits. The string matches the regex pattern [1-9][0-9]{3,}
[IsFiscalPeriod](Common.xml#L822)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalPeriod"></a>Property encodes a fiscal period as string following the logical pattern PPP consisting of three digits. The string matches the regex pattern [0-9]{3}
[IsFiscalYearPeriod](Common.xml#L831)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearPeriod"></a>Property encodes a fiscal year and period as string following the logical pattern YYYY(Y*)PPP consisting of at least seven digits, where the last three digits represent the fiscal period in the year. The string matches the regex pattern ([1-9][0-9]{3,})([0-9]{3})
[IsFiscalQuarter](Common.xml#L841) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalQuarter"></a>Property encodes a fiscal quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsFiscalYearQuarter](Common.xml#L850) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearQuarter"></a>Property encodes a fiscal year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsFiscalWeek](Common.xml#L860) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalWeek"></a>Property encodes a fiscal week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsFiscalYearWeek](Common.xml#L869) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearWeek"></a>Property encodes a fiscal year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsDayOfFiscalYear](Common.xml#L879) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfFiscalYear"></a>Day number relative to a fiscal year. Valid values are between 1 and 371.
[IsFiscalYearVariant](Common.xml#L887)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearVariant"></a>Property encodes a fiscal year variant
[MutuallyExclusiveTerm](Common.xml#L895)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MutuallyExclusiveTerm"></a>Only one term of the group identified with the Qualifier attribute can be applied
[DraftRoot](Common.xml#L902)|[DraftRootType](#DraftRootType)|<a name="DraftRoot"></a>Root entities of business documents that support the draft pattern
[DraftNode](Common.xml#L920)|[DraftNodeType](#DraftNodeType)|<a name="DraftNode"></a>Entities in this set are parts of business documents that support the draft pattern
[DraftActivationVia](Common.xml#L944)|\[[SimpleIdentifier](#SimpleIdentifier)\]|<a name="DraftActivationVia"></a>Draft entities in this set are indirectly activated via draft entities in the referenced entity sets
[SemanticKey](Common.xml#L957)|\[PropertyPath\]|<a name="SemanticKey"></a>The listed properties form the semantic key, i.e. they are unique modulo IsActiveEntity
[SideEffects](Common.xml#L962)|[SideEffectsType](#SideEffectsType)|<a name="SideEffects"></a>Describes side-effects of modification operations
[DerivedDefaultValue](Common.xml#L1063)|String|<a name="DerivedDefaultValue"></a>Function import to derive a default value for the property from a given context.<p>             Function import has two parameters of complex types:<br/>            - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/>            - `properties`, a structure resembling the type of the entity set of the annotated property<br/>            The return type must be of the same type as the annotated property.<br/>            Arguments passed to the function import are used as context for deriving the default value.              The function import returns this default value, or null in case such a value could not be determined.           </p>
[FilterDefaultValue](Common.xml#L1084)|PrimitiveType|<a name="FilterDefaultValue"></a>A default value for the property to be used in filter expressions.
[FilterDefaultValueHigh](Common.xml#L1088) *(Experimental)*|PrimitiveType|<a name="FilterDefaultValueHigh"></a>A default upper limit for the property to be used in 'less than or equal' filter expressions.
[DerivedFilterDefaultValue](Common.xml#L1095)|String|<a name="DerivedFilterDefaultValue"></a>Function import to derive a default value for the property from a given context in order to use it in filter expressions.<p>             Function import has two parameters of complex types:<br/>            - `parameters`, a structure resembling the entity type the parameter             entity set related to the entity set of the annotated property<br/>            - `properties`, a structure resembling the             type of the entity set of the annotated property<br/>            The return type must be of the same type as the annotated             property.<br/>            Arguments passed to the function import are used as context for deriving the default value.             The function import returns this default value, or null in case such a value could not be determined.           </p>
[SortOrder](Common.xml#L1119)|\[[SortOrderType](#SortOrderType)\]|<a name="SortOrder"></a>List of sort criteria<p>The items of the annotated entity set or the items of the            collection of the annotated entity type are sorted by the first entry of the SortOrder collection.            Items with same value for this first sort criteria are sorted by the second entry of the SortOrder collection, and so on. </p>
[RecursiveHierarchy](Common.xml#L1151)|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy.
[CreatedAt](Common.xml#L1183)|DateTimeOffset|<a name="CreatedAt"></a>Creation timestamp
[CreatedBy](Common.xml#L1187)|[UserID](#UserID)|<a name="CreatedBy"></a>First editor
[ChangedAt](Common.xml#L1191)|DateTimeOffset|<a name="ChangedAt"></a>Last modification timestamp
[ChangedBy](Common.xml#L1195)|[UserID](#UserID)|<a name="ChangedBy"></a>Last editor

## <a name="TextFormatType"></a>[TextFormatType](Common.xml#L90)


Member|Value|Description
:-----|----:|:----------
[plain](Common.xml#L91)|0|Plain text, line breaks represented as the character 0x0A
[html](Common.xml#L94)|1|Plain text with markup that can validly appear directly within an HTML DIV element

## <a name="MaskingType"></a>[MaskingType](Common.xml#L237) *(Experimental)*
Describes masking behavior for sensitive data

Property|Type|Description
:-------|:---|:----------
[Value](Common.xml#L240)|PrimitiveType|Replacement value that should be visible on a UI instead of the actual value of the masked property
[Always](Common.xml#L244)|Boolean|If false, the property value is initially masked and can be unmasked on user interaction

## <a name="SemanticObjectMappingType"></a>[SemanticObjectMappingType](Common.xml#L281)
Maps a property of the annotated entity type or a sibling property of the annotated property to a property of the Semantic Object

Property|Type|Description
:-------|:---|:----------
[LocalProperty](Common.xml#L284)|PropertyPath|Path to a local property that provides the value for the Semantic Object property
[SemanticObjectProperty](Common.xml#L288)|String|Name of the Semantic Object property

## <a name="FilterExpressionRestrictionType"></a>[FilterExpressionRestrictionType](Common.xml#L339)


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L340)|PropertyPath|
[AllowedExpressions](Common.xml#L341)|[FilterExpressionType](#FilterExpressionType)|

## <a name="FilterExpressionType"></a>[FilterExpressionType](Common.xml#L343)


Member|Value|Description
:-----|----:|:----------
[SingleValue](Common.xml#L344)|0|a single 'eq' clause
[MultiValue](Common.xml#L347)|1|one or more 'eq' clauses, separated by 'or'
[SingleInterval](Common.xml#L350)|2|at most one 'ge' and one 'le' clause, separated by 'and', alternatively a single 'eq' clause

## <a name="FieldControlType"></a>[FieldControlType](Common.xml#L360)


Member|Value|Description
:-----|----:|:----------
[Mandatory](Common.xml#L361)|7|Property must have a non-null value
[Optional](Common.xml#L364)|3|Property may have a value or be null
[ReadOnly](Common.xml#L367)|1|Property value cannot be changed
[Inapplicable](Common.xml#L370)|0|Property has no meaning in the current entity state
[Hidden](Common.xml#L373)|0|Deprecated synonymn for Inapplicable, do not use<p>To statically hide a property on a UI use `UI.Hidden` instead</p>

## <a name="ApplicationType"></a>[ApplicationType](Common.xml#L389) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[Component](Common.xml#L391)|String|Software component of service implementation
[ServiceRepository](Common.xml#L394)|String|...
[ServiceId](Common.xml#L397)|String|...
[ServiceVersion](Common.xml#L400)|String|...

## <a name="ErrorResolutionType"></a>[ErrorResolutionType](Common.xml#L419) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[Analysis](Common.xml#L421)|String|Short hint on how to analyze this error
[Note](Common.xml#L424)|String|Note for error resolution
[AdditionalNote](Common.xml#L427)|String|Additional note for error resolution

## <a name="NumericMessageSeverityType"></a>[NumericMessageSeverityType](Common.xml#L485) *(Experimental)*
**Type:** Byte

Classifies an end-user message as info, success, warning, or error

Allowed Value|Description
:------------|:----------
[1](Common.xml#L490)|Success - no action required
[2](Common.xml#L494)|Information - no action required
[3](Common.xml#L498)|Warning - action may be required
[4](Common.xml#L502)|Error - action is required

## <a name="IntervalType"></a>[IntervalType](Common.xml#L528)


Property|Type|Description
:-------|:---|:----------
[LowerBoundary](Common.xml#L529)|PropertyPath|Property holding the lower interval boundary
[LowerBoundaryIncluded](Common.xml#L532)|Boolean|The lower boundary value is included in the interval
[UpperBoundary](Common.xml#L535)|PropertyPath|Property holding the upper interval boundary
[UpperBoundaryIncluded](Common.xml#L538)|Boolean|The upper boundary value is included in the interval

## <a name="ValueListType"></a>[ValueListType](Common.xml#L558)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L574)|String|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L579)|String|Resource path of an OData collection with possible values, relative to CollectionRoot
[CollectionRoot](Common.xml#L583)|String|Service root of the value list collection; not specified means local to the document containing the annotation
[SearchSupported](Common.xml#L587)|Boolean|Value list supports the $search query option<p>The value of the target property is used as the search expression instead of in $filter</p>
[PresentationVariantQualifier](Common.xml#L592)|[SimpleIdentifier](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<p>Qualifier for annotation with term com.sap.vocabularies.UI.v1.PresentationVariant on the entity set identified via CollectionPath</p>
[SelectionVariantQualifier](Common.xml#L597) *(Experimental)*|[SimpleIdentifier](#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<p>Qualifier for annotation with term com.sap.vocabularies.UI.v1.SelectionVariant on the entity set identified via CollectionPath</p>
[Parameters](Common.xml#L604)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

## <a name="ValueListMappingType"></a>[ValueListMappingType](Common.xml#L627)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L628)|String|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L633)|String|Resource path of an OData collection with possible values, relative to the document containing the value list mapping
[PresentationVariantQualifier](Common.xml#L637)|[SimpleIdentifier](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<p>Qualifier for annotation with term com.sap.vocabularies.UI.v1.PresentationVariant on the value list entity set identified via CollectionPath in the ValueListReference annotation</p>
[SelectionVariantQualifier](Common.xml#L642) *(Experimental)*|[SimpleIdentifier](#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<p>Qualifier for annotation with term com.sap.vocabularies.UI.v1.SelectionVariant on the entity set identified via CollectionPath</p>
[Parameters](Common.xml#L649)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

## <a name="ValueListParameter"></a>[*ValueListParameter*](Common.xml#L655)


**Derived Types:**
- [ValueListParameterIn](#ValueListParameterIn)
- [ValueListParameterInOut](#ValueListParameterInOut)
- [ValueListParameterOut](#ValueListParameterOut)
- [ValueListParameterDisplayOnly](#ValueListParameterDisplayOnly)
- [ValueListParameterFilterOnly](#ValueListParameterFilterOnly)

Property|Type|Description
:-------|:---|:----------
[ValueListProperty](Common.xml#L656)|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="ValueListParameterIn"></a>[ValueListParameterIn](Common.xml#L661): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L656)|String|Path to property in response structure. Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L662)|PropertyPath|Path to property that is used to filter/search the value list

## <a name="ValueListParameterInOut"></a>[ValueListParameterInOut](Common.xml#L666): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L656)|String|Path to property in response structure. Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L667)|PropertyPath|Path to property that is used to filter/search the value list or filled from response

## <a name="ValueListParameterOut"></a>[ValueListParameterOut](Common.xml#L672): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L656)|String|Path to property in response structure. Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L673)|PropertyPath|Path to property that is filled from response

## <a name="ValueListParameterDisplayOnly"></a>[ValueListParameterDisplayOnly](Common.xml#L677): [ValueListParameter](#ValueListParameter)
Value list property that is not used to fill the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L656)|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="ValueListParameterFilterOnly"></a>[ValueListParameterFilterOnly](Common.xml#L680): [ValueListParameter](#ValueListParameter) *(Deprecated)*
Value list property that is used to filter the value list, not connected to the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L656)|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="DraftRootType"></a>[DraftRootType](Common.xml#L907): [DraftNodeType](#DraftNodeType)


Property|Type|Description
:-------|:---|:----------
[*PreparationAction*](Common.xml#L926)|[QualifiedName](#QualifiedName)|Action that prepares a draft document for later activation
[*ValidationFunction*](Common.xml#L929) *(Deprecated)*|[QualifiedName](#QualifiedName)|Use `PreparationAction` instead which can as a side-effect auto-fill missing information
[ActivationAction](Common.xml#L908)|[QualifiedName](#QualifiedName)|Action that activates a draft document
[EditAction](Common.xml#L911)|[QualifiedName](#QualifiedName)|Action that creates an edit draft
[NewAction](Common.xml#L914)|[QualifiedName](#QualifiedName)|Action that creates a new draft. It may have overloads that allow referencing other business documents that are used to pre-fill the new draft

## <a name="DraftNodeType"></a>[DraftNodeType](Common.xml#L925)


**Derived Types:**
- [DraftRootType](#DraftRootType)

Property|Type|Description
:-------|:---|:----------
[PreparationAction](Common.xml#L926)|[QualifiedName](#QualifiedName)|Action that prepares a draft document for later activation
[ValidationFunction](Common.xml#L929) *(Deprecated)*|[QualifiedName](#QualifiedName)|Use `PreparationAction` instead which can as a side-effect auto-fill missing information

## <a name="SimpleIdentifier"></a>[SimpleIdentifier](Common.xml#L949)
**Type:** String

The SimpleIdentifier of an OData construct in scope

## <a name="QualifiedName"></a>[QualifiedName](Common.xml#L953)
**Type:** String

The QualifiedName of an OData construct in scope

## <a name="SideEffectsType"></a>[SideEffectsType](Common.xml#L965)
Changes to the source properties or source entities may have side-effects on the target properties or entities.

If neither TargetProperties nor TargetEntities are specified, a change to the source property values may have unforeseeable side-effects.
An empty NavigationPropertyPath may be used in TargetEntities to specify that any property of the annotated entity type may be affected.
            
Special case "Actions": here the change trigger is the action invocation, so SourceProperties and SourceEntities have no meaning, 
only TargetProperties and TargetEntities are relevant. They are addressed via the binding parameter of the action.

Property|Type|Description
:-------|:---|:----------
[SourceProperties](Common.xml#L975)|\[PropertyPath\]|Changes to the values of one or more of these properties will affect the targets
[SourceEntities](Common.xml#L979)|\[NavigationPropertyPath\]|Changes to one or more of these entities will affect the targets. An empty path means the annotation target.
[TargetProperties](Common.xml#L983)|\[PropertyPath\]|These properties will be affected if the value of one of the sources changes
[TargetEntities](Common.xml#L987)|\[NavigationPropertyPath\]|These entities will be affected if the value of one of the sources changes. An empty path means the annotation target.
[EffectTypes](Common.xml#L991) *(Deprecated)*|[EffectType](#EffectType)|All side effects are essentially value changes, differentiation not needed. Do not use together with `OnPreparation`.
[OnPreparation](Common.xml#L1005) *(Experimental)*|Boolean|This side effect is deferred until invoking the Preparation action

## <a name="EffectType"></a>[EffectType](Common.xml#L1010) *(Deprecated)*


Flag Member|Value|Description
:-----|----:|:----------
[ValidationMessage](Common.xml#L1020) *(Deprecated)*|1|Use `ValueChange` instead
[ValueChange](Common.xml#L1037)|2|The value of a target changes<p>This side effect type declares that changes to source properties or entities may impact the values of any, one or multiple target properties or entities.   Upon modification preparation logic is performed that determines additional values to be stored in the draft document.</p>
[FieldControlChange](Common.xml#L1044) *(Deprecated)*|4|Use `ValueChange` instead

## <a name="SortOrderType"></a>[SortOrderType](Common.xml#L1127)


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L1128)|PropertyPath|Sort property
[Descending](Common.xml#L1131)|Boolean|Sort direction ; default is ascending

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](Common.xml#L1156)


Property|Type|Description
:-------|:---|:----------
[ExternalNodeKeyProperty](Common.xml#L1157)|PropertyPath|Property holding the external human-readable key identifying the node
[NodeDescendantCountProperty](Common.xml#L1160)|PropertyPath|Property holding the descendant count for a hierarchy node. The descendant count of a node is the number of its descendants in the hierarchy structure of the result considering only those nodes matching any specified $filter and $search. A property holding descendant counts has an integer data type.
[NodeDrillStateProperty](Common.xml#L1168)|PropertyPath|Property holding the drill state of a hierarchy node. The drill state is indicated by one of the following string values: collapsed, expanded, or leaf. For an expanded node, its children are included in the result collection. For a collapsed node, the children are included in the entity set, but they are not part of the result collection. Retrieving them requires a relaxed filter expression or a separate request filtering on the parent node ID with the ID of the collapsed node. A leaf does not have any child in the entity set.

## <a name="UserID"></a>[UserID](Common.xml#L1199)
**Type:** String

User ID
