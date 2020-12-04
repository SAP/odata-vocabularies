# Common Vocabulary
**Namespace: [com.sap.vocabularies.Common.v1](Common.xml)**

Common terms for all SAP vocabularies


## Terms

Term|Type|Description
:---|:---|:----------
[Experimental](Common.xml#L40)|String?|<a name="Experimental"></a>Terms, types, and properties annotated with this term are experimental and can be changed incompatibly or removed completely any time without prior warning.<p>Do not use or rely on experimental terms, types, and properties in production environments.</p>
[ServiceVersion](Common.xml#L50)|Int32?|<a name="ServiceVersion"></a>1 for first version of a service, incremented when schema changes incompatibly and service is published with a different URI
[ServiceSchemaVersion](Common.xml#L53)|Int32?|<a name="ServiceSchemaVersion"></a>0 for first schema version within a service version, incremented when schema changes compatibly
[Label](Common.xml#L58)|String?|<a name="Label"></a>A short, human-readable text suitable for labels and captions in UIs
[Heading](Common.xml#L63)|String?|<a name="Heading"></a>A short, human-readable text suitable for column headings in UIs
[QuickInfo](Common.xml#L68)|String?|<a name="QuickInfo"></a>A short, human-readable text suitable for tool tips in UIs
[Text](Common.xml#L73)|String?|<a name="Text"></a>A descriptive text for values of the annotated property. Value MUST be a dynamic expression when used as metadata annotation.
[TextFor](Common.xml#L78) *([Experimental](Common.md#Experimental))*|PropertyPath?|<a name="TextFor"></a>The annotated property contains a descriptive text for values of the referenced property.
[IsLanguageIdentifier](Common.xml#L84) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsLanguageIdentifier"></a>An identifier to distinguish multiple texts in different languages for the same entity
[TextFormat](Common.xml#L89)|[TextFormatType?](#TextFormatType)|<a name="TextFormat"></a>Human-readable text that may contain formatting information
[IsDigitSequence](Common.xml#L148)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDigitSequence"></a>Contains only digits
[IsUpperCase](Common.xml#L153)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUpperCase"></a>Contains just uppercase characters
[IsCurrency](Common.xml#L158)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCurrency"></a>Annotated property or parameter is a currency code
[IsUnit](Common.xml#L163)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUnit"></a>Annotated property or parameter is a unit of measure
[UnitSpecificScale](Common.xml#L167)|PrimitiveType?|<a name="UnitSpecificScale"></a>The number of fractional decimal digits of a currency amount or measured quantity<p>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default scale of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of fractional digits captured by that device.</p>
[UnitSpecificPrecision](Common.xml#L172) *([Experimental](Common.md#Experimental))*|PrimitiveType?|<a name="UnitSpecificPrecision"></a>The number of significant decimal digits of a currency amount or measured quantity<p>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default precision of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of significant digits captured by that device.</p>
[SecondaryKey](Common.xml#L178) *(Deprecated)*|\[PropertyPath\]|<a name="SecondaryKey"></a>Use term `AlternateKeys` from the OASIS Core vocabulary instead
[MinOccurs](Common.xml#L190)|Int64?|<a name="MinOccurs"></a>The annotated set or collection contains at least this number of items
[MaxOccurs](Common.xml#L194)|Int64?|<a name="MaxOccurs"></a>The annotated set or collection contains at most this number of items
[AssociationEntity](Common.xml#L198)|\[NavigationPropertyPath\]|<a name="AssociationEntity"></a>Entity representing an n:m association with attributes
[DerivedNavigation](Common.xml#L205)|NavigationPropertyPath?|<a name="DerivedNavigation"></a>Shortcut for a multi-segment navigation, contains the long path with all its segments
[Masked](Common.xml#L211) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Masked"></a>Use terms `MaskedValue` and `MaskedAlways` instead
[MaskedValue](Common.xml#L226) *([Experimental](Common.md#Experimental))*|String?|<a name="MaskedValue"></a>Property contains sensitive data that is by default not transferred<p>By default a masked property is excluded from responses and instead an instance annotation with this term is sent, containing a masked value that can be rendered by user interfaces.</p>
[MaskedAlways](Common.xml#L235) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MaskedAlways"></a>Property contains sensitive data that is by default not transferred<p>If the annotation evaluates to true, the unmasked property value is never transferred in responses.<br/>If the annotation evaluates to false, the unmasked property value can be requested with the custom query option `masked-values=false`.</p>
[SemanticObject](Common.xml#L245)|String?|<a name="SemanticObject"></a>Name of the Semantic Object represented as this entity type or identified by this property
[SemanticObjectMapping](Common.xml#L248)|\[[SemanticObjectMappingType](#SemanticObjectMappingType)\]|<a name="SemanticObjectMapping"></a>Maps properties of the annotated entity type or sibling properties of the annotated property to properties of the Semantic Object<p>This allows "renaming" of properties in the current context to match property names of the Semantic Object, e.g. `SenderPartyID` to `PartyID`. Only properties explicitly listed in the mapping are renamed, all other properties are available for intent-based navigation with their "local" name.</p>
[SemanticObjectUnavailableActions](Common.xml#L261)|\[String\]|<a name="SemanticObjectUnavailableActions"></a>List of actions that are not available in the current state of the instance of the Semantic Object
[IsInstanceAnnotation](Common.xml#L265)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsInstanceAnnotation"></a>Term can also be used as instance annotation; AppliesTo of this term specifies where it can be applied
[FilterExpressionRestrictions](Common.xml#L295) *(Deprecated)*|\[[FilterExpressionRestrictionType](#FilterExpressionRestrictionType)\]|<a name="FilterExpressionRestrictions"></a>Use term Capabilities.FilterRestrictions instead
[FieldControl](Common.xml#L338)|[FieldControlType?](#FieldControlType)|<a name="FieldControl"></a>Control state of a property<p>This term can be used for static field control, providing an enumeration member value in $metadata, as well as dynamically, providing a `Path` expression.<br/>In the dynamic case the property referenced by the `Path` expression MUST be of type `Edm.Byte` to accommodate OData V2 services as well as V4 infrastructures that don't support enumeration types.</p>
[ExceptionCategory](Common.xml#L371) *([Experimental](Common.md#Experimental))*|String?|<a name="ExceptionCategory"></a>A machine-readable exception category
[Application](Common.xml#L376) *([Experimental](Common.md#Experimental))*|[ApplicationType?](#ApplicationType)|<a name="Application"></a>...
[Timestamp](Common.xml#L396) *([Experimental](Common.md#Experimental))*|DateTimeOffset?|<a name="Timestamp"></a>...
[TransactionId](Common.xml#L401) *([Experimental](Common.md#Experimental))*|String?|<a name="TransactionId"></a>...
[ErrorResolution](Common.xml#L406) *([Experimental](Common.md#Experimental))*|[ErrorResolutionType?](#ErrorResolutionType)|<a name="ErrorResolution"></a>Hints for resolving this error
[Messages](Common.xml#L424)|\[ComplexType\]|<a name="Messages"></a>Collection of end-user messages<p>The name of the message type is service-specific, its structure components are identified by naming convention, following the names of the OData error response structure.<br/>The minimum structure is<br/>- `code: Edm.String`<br/>- `message: Edm.String`<br/>- `target: Edm.String nullable`<br/>- `additionalTargets: Collection(Edm.String)`<br/>- `transition: Edm.Boolean`<br/>- `numericSeverity: Edm.Byte`<br/>- `longtextUrl: Edm.String nullable`</p>
[additionalTargets](Common.xml#L447) *([Experimental](Common.md#Experimental))*|\[String\]|<a name="additionalTargets"></a>Additional targets for the message<p>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response</p>
[longtextUrl](Common.xml#L453) *([Experimental](Common.md#Experimental))*|URL|<a name="longtextUrl"></a>Location of the message long text<p>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response</p>
[numericSeverity](Common.xml#L460) *([Experimental](Common.md#Experimental))*|[NumericMessageSeverityType](#NumericMessageSeverityType)|<a name="numericSeverity"></a>Classifies an end-user message as info, success, warning, or error<p>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response</p>
[MaximumNumericMessageSeverity](Common.xml#L466) *([Experimental](Common.md#Experimental))*|[NumericMessageSeverityType?](#NumericMessageSeverityType)|<a name="MaximumNumericMessageSeverity"></a>The maximum severity of all end-user messages attached to an entity, null if no messages are attached<p>This metadata annotation can be applied to entity types that are also annotated with term [`Common.Messages`](#Messages)</p>
[IsActionCritical](Common.xml#L496)|Boolean|<a name="IsActionCritical"></a>Criticality of the function or action to enforce a warning or similar before it's executed
[Attributes](Common.xml#L500)|\[PropertyPath\]|<a name="Attributes"></a>Attributes related to this property, which may occur in denormalized entity types
[RelatedRecursiveHierarchy](Common.xml#L504)|AnnotationPath?|<a name="RelatedRecursiveHierarchy"></a>A recursive hierarchy related to this property. The annotation path must end in Aggregation.RecursiveHierarchy.
[Interval](Common.xml#L508)|[IntervalType?](#IntervalType)|<a name="Interval"></a>An interval with lower and upper boundaries described by two properties
[ResultContext](Common.xml#L526)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ResultContext"></a>The annotated entity type has one or more containment navigation properties. An instance of the annotated entity type provides the context required for determining the target entity sets reached by these containment navigation properties.
[WeakReferentialConstraint](Common.xml#L534) *([Experimental](Common.md#Experimental))*|[WeakReferentialConstraintType?](#WeakReferentialConstraintType)|<a name="WeakReferentialConstraint"></a>A referential constraint to a reference set that is not reachable via a navigation property<p>A weak referential constraint can be used in cases where the reference service cannot be located at design-time</p>
[IsNaturalPerson](Common.xml#L562)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsNaturalPerson"></a>The annotated entity type (e.g. `Employee`) or annotation (e.g. `IsImageUrl`) represents a natural person
[ValueList](Common.xml#L568)|[ValueListType?](#ValueListType)|<a name="ValueList"></a>Specifies how to get a list of acceptable values for a property or parameter<p>The value list can be based on user input that is passed in the value list request. The value list can be used for type-ahead and classical pick lists.</p>
[ValueListRelevantQualifiers](Common.xml#L639) *([Experimental](Common.md#Experimental))*|\[[SimpleIdentifier](#SimpleIdentifier)\]|<a name="ValueListRelevantQualifiers"></a>List of qualifiers of relevant ValueList annotations<p>The value of this annotation is a dynamic expression for calculating the qualifiers of relevant value lists depending on the values of one or more other properties.</p>
[ValueListWithFixedValues](Common.xml#L645)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ValueListWithFixedValues"></a>If specified as true, there's only one value list mapping and its value list consists of a small number of fixed values
[ValueListForValidation](Common.xml#L649) *([Experimental](Common.md#Experimental))*|String|<a name="ValueListForValidation"></a>Contains the qualifier of the ValueList or ValueListMapping that should be used for validation
[ValueListReferences](Common.xml#L654)|\[URL\]|<a name="ValueListReferences"></a>A list of URLs of CSDL documents containing value list mappings for this parameter or property
[ValueListMapping](Common.xml#L659)|[ValueListMappingType?](#ValueListMappingType)|<a name="ValueListMapping"></a>Specifies the mapping between data service properties and value list properties<p>The value list can be filtered based on user input. It can be used for type-ahead and classical pick lists. There may be many alternative mappings with different qualifiers.</p>
[IsCalendarYear](Common.xml#L757)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYear"></a>Property encodes a year number as string following the logical pattern (-?)YYYY(Y*) consisting of an optional minus sign for years B.C. followed by at least four digits. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})
[IsCalendarHalfyear](Common.xml#L766)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarHalfyear"></a>Property encodes a halfyear number as string following the logical pattern H consisting of a single digit. The string matches the regex pattern [1-2]
[IsCalendarQuarter](Common.xml#L775)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarQuarter"></a>Property encodes a calendar quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsCalendarMonth](Common.xml#L784)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarMonth"></a>Property encodes a calendar month number as string following the logical pattern MM consisting of two digits. The string matches the regex pattern 0[1-9]\|1[0-2]
[IsCalendarWeek](Common.xml#L793)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarWeek"></a>Property encodes a calendar week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsDayOfCalendarMonth](Common.xml#L802)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarMonth"></a>Day number relative to a calendar month. Valid values are between 1 and 31.
[IsDayOfCalendarYear](Common.xml#L810)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarYear"></a>Day number relative to a calendar year. Valid values are between 1 and 366.
[IsCalendarYearHalfyear](Common.xml#L818)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearHalfyear"></a>Property encodes a calendar year and halfyear as string following the logical pattern (-?)YYYY(Y*)H consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the halfyear. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-2]
[IsCalendarYearQuarter](Common.xml#L828)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearQuarter"></a>Property encodes a calendar year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsCalendarYearMonth](Common.xml#L838)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearMonth"></a>Property encodes a calendar year and month as string following the logical pattern (-?)YYYY(Y*)MM consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent the months January to December. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])
[IsCalendarYearWeek](Common.xml#L849)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearWeek"></a>Property encodes a calendar year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsCalendarDate](Common.xml#L859)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarDate"></a>Property encodes a calendar date: year, month and day as string following the logical pattern (-?)YYYY(Y*)MMDD consisting of an optional minus sign for years B.C. followed by at least eight digits, where the last four digits represent the months January to December (MM) and the day of the month (DD). The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])(0[1-9]\|[12][0-9]\|3[01]) The regex pattern does not reflect the additional constraint for "Day-of-month Values": The day value must be no more than 30 if month is one of 04, 06, 09, or 11, no more than 28 if month is 02 and year is not divisible by 4, or is divisible by 100 but not by 400, and no more than 29 if month is 02 and year is divisible by 400, or by 4 but not by 100.
[IsFiscalYear](Common.xml#L876)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYear"></a>Property encodes a fiscal year number as string following the logical pattern YYYY(Y*) consisting of at least four digits. The string matches the regex pattern [1-9][0-9]{3,}
[IsFiscalPeriod](Common.xml#L885)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalPeriod"></a>Property encodes a fiscal period as string following the logical pattern PPP consisting of three digits. The string matches the regex pattern [0-9]{3}
[IsFiscalYearPeriod](Common.xml#L894)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearPeriod"></a>Property encodes a fiscal year and period as string following the logical pattern YYYY(Y*)PPP consisting of at least seven digits, where the last three digits represent the fiscal period in the year. The string matches the regex pattern ([1-9][0-9]{3,})([0-9]{3})
[IsFiscalQuarter](Common.xml#L904)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalQuarter"></a>Property encodes a fiscal quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsFiscalYearQuarter](Common.xml#L912)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearQuarter"></a>Property encodes a fiscal year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsFiscalWeek](Common.xml#L921)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalWeek"></a>Property encodes a fiscal week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsFiscalYearWeek](Common.xml#L929)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearWeek"></a>Property encodes a fiscal year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsDayOfFiscalYear](Common.xml#L938)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfFiscalYear"></a>Day number relative to a fiscal year. Valid values are between 1 and 371.
[IsFiscalYearVariant](Common.xml#L945)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearVariant"></a>Property encodes a fiscal year variant
[MutuallyExclusiveTerm](Common.xml#L953)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MutuallyExclusiveTerm"></a>Only one term of the group identified with the Qualifier attribute can be applied
[DraftRoot](Common.xml#L959)|[DraftRootType?](#DraftRootType)|<a name="DraftRoot"></a>Root entities of business documents that support the draft pattern
[DraftNode](Common.xml#L986)|[DraftNodeType?](#DraftNodeType)|<a name="DraftNode"></a>Entities in this set are parts of business documents that support the draft pattern
[DraftActivationVia](Common.xml#L1016)|\[[SimpleIdentifier](#SimpleIdentifier)\]|<a name="DraftActivationVia"></a>Draft entities in this set are indirectly activated via draft entities in the referenced entity sets
[EditableFieldFor](Common.xml#L1020)|PropertyPath?|<a name="EditableFieldFor"></a>The annotated property is an editable field for the referenced key property
[SemanticKey](Common.xml#L1042)|\[PropertyPath\]|<a name="SemanticKey"></a>The listed properties form the semantic key, i.e. they are unique modulo IsActiveEntity
[SideEffects](Common.xml#L1046)|[SideEffectsType?](#SideEffectsType)|<a name="SideEffects"></a>Describes side-effects of modification operations
[DefaultValuesFunction](Common.xml#L1156) *([Experimental](Common.md#Experimental))*|[QualifiedName?](#QualifiedName)|<a name="DefaultValuesFunction"></a>Function to calculate default values based on user input that is only known to the client and "context information" that is already available to the service<p>The default values function must have a bound overload whose binding parameter type matches the annotation target<br/> - for an entity set: collection of entity type of entity set<br/> - for a navigation property: identical to the type of the navigation property (single- or collection-valued)<br/> - for a bound action/function: identical to the binding parameter type of the annotated action/function<br/> In addition the overload can have non-binding parameters for values that the user has already entered:<br/> - for an entity set or navigation property: each non-binding parameter name and type must match the name and type of a property of the entity to be created<br/> - for an action or function: each non-binding parameter name and type must match the name and type of a non-binding parameter of the action or function to be called<br/> The result type of the default values function is a complex type whose properties correspond in name and type to a subset of<br/> - the properties of the entity to create, or<br/> - the parameters of the action or function to call</p>
[DerivedDefaultValue](Common.xml#L1186) *([Experimental](Common.md#Experimental))*|String?|<a name="DerivedDefaultValue"></a>Function import to derive a default value for the property from a given context.<p>Function import has two parameters of complex types:<br/> - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/> - `properties`, a structure resembling the type of the entity set of the annotated property<br/> The return type must be of the same type as the annotated property.<br/> Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.</p>
[FilterDefaultValue](Common.xml#L1207)|PrimitiveType?|<a name="FilterDefaultValue"></a>A default value for the property to be used in filter expressions.
[FilterDefaultValueHigh](Common.xml#L1211) *([Experimental](Common.md#Experimental))*|PrimitiveType?|<a name="FilterDefaultValueHigh"></a>A default upper limit for the property to be used in 'less than or equal' filter expressions.
[DerivedFilterDefaultValue](Common.xml#L1216) *([Experimental](Common.md#Experimental))*|String?|<a name="DerivedFilterDefaultValue"></a>Function import to derive a default value for the property from a given context in order to use it in filter expressions.<p>Function import has two parameters of complex types:<br/> - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/> - `properties`, a structure resembling the type of the entity set of the annotated property<br/> The return type must be of the same type as the annotated property.<br/> Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.</p>
[SortOrder](Common.xml#L1240)|\[[SortOrderType](#SortOrderType)\]|<a name="SortOrder"></a>List of sort criteria<p>The items of the annotated entity set or the items of the collection of the annotated entity type are sorted by the first entry of the SortOrder collection. Items with same value for this first sort criteria are sorted by the second entry of the SortOrder collection, and so on.</p>
[RecursiveHierarchy](Common.xml#L1272)|[RecursiveHierarchyType?](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy.
[CreatedAt](Common.xml#L1304)|DateTimeOffset?|<a name="CreatedAt"></a>Creation timestamp
[CreatedBy](Common.xml#L1308)|[UserID?](#UserID)|<a name="CreatedBy"></a>First editor
[ChangedAt](Common.xml#L1312)|DateTimeOffset?|<a name="ChangedAt"></a>Last modification timestamp
[ChangedBy](Common.xml#L1316)|[UserID?](#UserID)|<a name="ChangedBy"></a>Last editor
[OriginalProtocolVersion](Common.xml#L1328)|String?|<a name="OriginalProtocolVersion"></a>Original protocol version of a converted (V4) CSDL document, allowed values `2.0` and `3.0`
[ApplyMultiUnitBehaviorForSortingAndFiltering](Common.xml#L1333) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ApplyMultiUnitBehaviorForSortingAndFiltering"></a>Sorting and filtering of amounts in multiple currencies needs special consideration<p>TODO: add link to UX documentation on https://experience.sap.com/fiori-design/</p>

## <a name="TextFormatType"></a>[TextFormatType](Common.xml#L93)


Member|Value|Description
:-----|----:|:----------
[plain](Common.xml#L94)|0|Plain text, line breaks represented as the character 0x0A
[html](Common.xml#L97)|1|Plain text with markup that can validly appear directly within an HTML DIV element

## <a name="SemanticObjectMappingType"></a>[SemanticObjectMappingType](Common.xml#L252)
Maps a property of the annotated entity type or a sibling property of the annotated property to a property of the Semantic Object

Property|Type|Description
:-------|:---|:----------
[LocalProperty](Common.xml#L254)|PropertyPath|Path to a local property that provides the value for the Semantic Object property
[SemanticObjectProperty](Common.xml#L257)|String|Name of the Semantic Object property

## <a name="FilterExpressionRestrictionType"></a>[FilterExpressionRestrictionType](Common.xml#L306) *(Deprecated)*


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L315)|PropertyPath?|
[AllowedExpressions](Common.xml#L316)|[FilterExpressionType?](#FilterExpressionType)|

## <a name="FilterExpressionType"></a>[FilterExpressionType](Common.xml#L318) *(Deprecated)*


Member|Value|Description
:-----|----:|:----------
[SingleValue](Common.xml#L327)|0|a single 'eq' clause
[MultiValue](Common.xml#L330)|1|one or more 'eq' clauses, separated by 'or'
[SingleInterval](Common.xml#L333)|2|at most one 'ge' and one 'le' clause, separated by 'and', alternatively a single 'eq' clause

## <a name="FieldControlType"></a>[FieldControlType](Common.xml#L343)
Control state of a property

Member|Value|Description
:-----|----:|:----------
[Mandatory](Common.xml#L345)|7|Property is mandatory from a business perspective<p>This annotation value does not imply any restrictions on the value range of the property. For restricting the value range use e.g. the standard type facet `Nullable` with a value of `false` to exclude the `null` value, or terms from the [Validation vocabulary](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Validation.V1.md).</p>
[Optional](Common.xml#L349)|3|Property may have a value<p>This value does not make sense as a static annotation value.</p>
[ReadOnly](Common.xml#L353)|1|Property value cannot be changed<p>To statically mark a property as read-only use term [Core.Computed](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Computed) instead</p>
[Inapplicable](Common.xml#L357)|0|Property has no meaning in the current entity state<p>This value does not make sense as a static annotation value.<br/>Example for dynamic use: in a travel expense report the property `DestinationCountry` is inapplicable if trip type is domestic, and mandatory if trip type is international.</p>
[Hidden](Common.xml#L365)|0|Deprecated synonymn for Inapplicable, do not use<p>To statically hide a property on a UI use [UI.Hidden](UI.md#Hidden) instead</p>

## <a name="ApplicationType"></a>[ApplicationType](Common.xml#L381) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Component](Common.xml#L383)|String?|Software component of service implementation
[ServiceRepository](Common.xml#L386)|String?|...
[ServiceId](Common.xml#L389)|String?|...
[ServiceVersion](Common.xml#L392)|String?|...

## <a name="ErrorResolutionType"></a>[ErrorResolutionType](Common.xml#L411) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Analysis](Common.xml#L413)|String?|Short hint on how to analyze this error
[Note](Common.xml#L416)|String?|Note for error resolution
[AdditionalNote](Common.xml#L419)|String?|Additional note for error resolution

## <a name="NumericMessageSeverityType"></a>[NumericMessageSeverityType](Common.xml#L471) *([Experimental](Common.md#Experimental))*
**Type:** Byte

Classifies an end-user message as info, success, warning, or error

Allowed Value|Description
:------------|:----------
[1](Common.xml#L476)|Success - no action required
[2](Common.xml#L480)|Information - no action required
[3](Common.xml#L484)|Warning - action may be required
[4](Common.xml#L488)|Error - action is required

## <a name="IntervalType"></a>[IntervalType](Common.xml#L511)


Property|Type|Description
:-------|:---|:----------
[LowerBoundary](Common.xml#L512)|PropertyPath|Property holding the lower interval boundary
[LowerBoundaryIncluded](Common.xml#L515)|Boolean|The lower boundary value is included in the interval
[UpperBoundary](Common.xml#L518)|PropertyPath|Property holding the upper interval boundary
[UpperBoundaryIncluded](Common.xml#L521)|Boolean|The upper boundary value is included in the interval

## <a name="WeakReferentialConstraintType"></a>[WeakReferentialConstraintType](Common.xml#L539) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[ReferenceRoot](Common.xml#L541)|String|URI of the service containing the reference set<p>Need not be a uniform resource locator, for cases where the actual location of the reference service is not static or not known at design-time.</p>
[ReferencePath](Common.xml#L545)|String|Resource path of an OData collection with reference values, relative to ReferenceRoot
[ForeignKeys](Common.xml#L548)|\[[ForeignKeyType](#ForeignKeyType)\]|Instructions on how to construct the value list request and consume response properties

## <a name="ForeignKeyType"></a>[ForeignKeyType](Common.xml#L552) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L554)|PropertyPath|Path to property of the annotated entity set
[ReferencedProperty](Common.xml#L557)|String|Path to property in reference set, format is identical to PropertyPath annotations

## <a name="ValueListType"></a>[ValueListType](Common.xml#L572)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L593)|String?|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L597)|String|Resource path of an OData collection with possible values, relative to CollectionRoot
[CollectionRoot](Common.xml#L600)|String?|Service root of the value list collection; not specified means local to the document containing the annotation
[SearchSupported](Common.xml#L603)|Boolean|Value list supports the $search query option<p>The value of the target property is used as the search expression instead of in $filter</p>
[FetchValues](Common.xml#L607)|[FetchValuesType?](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](Common.xml#L610)|[SimpleIdentifier?](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<p>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the entity set identified via CollectionPath</p>
[SelectionVariantQualifier](Common.xml#L614)|[SimpleIdentifier?](#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<p>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath</p>
[Parameters](Common.xml#L618)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

**Applicable Annotation Terms:**

- [QuickInfo](#QuickInfo)

## <a name="FetchValuesType"></a>[FetchValuesType](Common.xml#L623)
**Type:** Byte

Hint on when to fetch values

Allowed Value|Description
:------------|:----------
[1](Common.xml#L627)|Fetch values immediately without filter
[2](Common.xml#L631)|Fetch values with a filter

## <a name="ValueListMappingType"></a>[ValueListMappingType](Common.xml#L663)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L669)|String?|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L673)|String|Resource path of an OData collection with possible values, relative to the document containing the value list mapping
[FetchValues](Common.xml#L676)|[FetchValuesType?](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](Common.xml#L679)|[SimpleIdentifier?](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<p>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the value list entity set identified via CollectionPath in the ValueListReference annotation</p>
[SelectionVariantQualifier](Common.xml#L683)|[SimpleIdentifier?](#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<p>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath</p>
[Parameters](Common.xml#L687)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

**Applicable Annotation Terms:**

- [QuickInfo](#QuickInfo)

## <a name="ValueListParameter"></a>[*ValueListParameter*](Common.xml#L692)


**Derived Types:**
- [ValueListParameterIn](#ValueListParameterIn)
- [ValueListParameterConstant](#ValueListParameterConstant)
- [ValueListParameterInOut](#ValueListParameterInOut)
- [ValueListParameterOut](#ValueListParameterOut)
- [ValueListParameterDisplayOnly](#ValueListParameterDisplayOnly)
- [ValueListParameterFilterOnly](#ValueListParameterFilterOnly)

Property|Type|Description
:-------|:---|:----------
[ValueListProperty](Common.xml#L693)|String|Path to property in the value list . Format is identical to PropertyPath annotations.

## <a name="ValueListParameterIn"></a>[ValueListParameterIn](Common.xml#L697): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L693)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L698)|PropertyPath|Path to property that is used to filter the value list with `eq` comparison
[InitialValueIsSignificant](Common.xml#L701) *([Experimental](Common.md#Experimental))*|Boolean|Initial value, e.g. empty string, is a valid and significant value

## <a name="ValueListParameterConstant"></a>[ValueListParameterConstant](Common.xml#L706): [ValueListParameter](#ValueListParameter) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L693)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[Constant](Common.xml#L708)|PrimitiveType|Constant value that is used to filter the value list with `eq` comparison, using the same representation as property default values, see [CSDL XML, 7.2.7 Default Value](https://docs.oasis-open.org/odata/odata-csdl-xml/v4.01/odata-csdl-xml-v4.01.html#sec_DefaultValue)

## <a name="ValueListParameterInOut"></a>[ValueListParameterInOut](Common.xml#L712): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L693)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L713)|PropertyPath|Path to property that is used to filter the value list with `startswith` comparison and filled from the picked value list item
[InitialValueIsSignificant](Common.xml#L716) *([Experimental](Common.md#Experimental))*|Boolean|Initial value, e.g. empty string, is a valid and significant value

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

## <a name="ValueListParameterOut"></a>[ValueListParameterOut](Common.xml#L726): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L693)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L727)|PropertyPath|Path to property that is filled from response

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

## <a name="ValueListParameterDisplayOnly"></a>[ValueListParameterDisplayOnly](Common.xml#L736): [ValueListParameter](#ValueListParameter)
Value list property that is not used to fill the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L693)|String|Path to property in the value list . Format is identical to PropertyPath annotations.

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

## <a name="ValueListParameterFilterOnly"></a>[ValueListParameterFilterOnly](Common.xml#L744): [ValueListParameter](#ValueListParameter) *(Deprecated)*
Value list property that is used to filter the value list, not connected to the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L693)|String|Path to property in the value list . Format is identical to PropertyPath annotations.

## <a name="DraftRootType"></a>[DraftRootType](Common.xml#L964): [DraftNodeType](#DraftNodeType)


Property|Type|Description
:-------|:---|:----------
[*PreparationAction*](Common.xml#L992) *(Deprecated)*|[QualifiedName?](#QualifiedName)|Use `TriggerAction` of [`SideEffects` annotation](#SideEffects) instead
[*ValidationFunction*](Common.xml#L1003) *(Deprecated)*|[QualifiedName?](#QualifiedName)|Separate validation without side-effects is not useful
[ActivationAction](Common.xml#L965)|[QualifiedName](#QualifiedName)|Action that activates a draft document
[DiscardAction](Common.xml#L968) *([Experimental](Common.md#Experimental))*|[QualifiedName?](#QualifiedName)|Action that discards a draft document
[EditAction](Common.xml#L972)|[QualifiedName?](#QualifiedName)|Action that creates an edit draft
[NewAction](Common.xml#L975)|[QualifiedName?](#QualifiedName)|Action that creates a new draft<p>New drafts may also be created by POSTing an empty entity without any properties to the entity set.</p>
[AdditionalNewActions](Common.xml#L979) *([Experimental](Common.md#Experimental))*|\[[QualifiedName](#QualifiedName)\]|Additional actions that create a new draft<p>Additional actions beside the default POST or standard `NewAction` that create a new draft.</p>

## <a name="DraftNodeType"></a>[DraftNodeType](Common.xml#L991)


**Derived Types:**
- [DraftRootType](#DraftRootType)

Property|Type|Description
:-------|:---|:----------
[PreparationAction](Common.xml#L992) *(Deprecated)*|[QualifiedName?](#QualifiedName)|Use `TriggerAction` of [`SideEffects` annotation](#SideEffects) instead
[ValidationFunction](Common.xml#L1003) *(Deprecated)*|[QualifiedName?](#QualifiedName)|Separate validation without side-effects is not useful

## <a name="SimpleIdentifier"></a>[SimpleIdentifier](Common.xml#L1024)
**Type:** String

The SimpleIdentifier of an OData construct in scope

## <a name="QualifiedName"></a>[QualifiedName](Common.xml#L1028)
**Type:** String

The QualifiedName of an OData construct in scope

## <a name="ActionOverload"></a>[ActionOverload](Common.xml#L1032)
**Type:** String

The qualified name of an action with an optional overload

The qualified name of an action optionally followed by parentheses 
            containing the binding parameter type of a bound action overload to identify that bound overload, 
            or by empty parentheses to identify the unbound overload.

## <a name="SideEffectsType"></a>[SideEffectsType](Common.xml#L1049)
Changes to the source properties or source entities may have side-effects on the target properties or entities.

If neither TargetProperties nor TargetEntities are specified, a change to the source property values may have unforeseeable side-effects.
An empty NavigationPropertyPath may be used in TargetEntities to specify that any property of the annotated entity type may be affected.

Side effects without a `TriggerAction` happen immediately when modifying one of the source properties, source entities or source facets. Side effects with a `TriggerAction` are deferred until explicitly triggered via the `TriggerAction`.

Special case where the side effect is annotated on an action: here the change trigger is the action invocation, so `SourceProperties`, `SourceEntities` and `SourceFacets` have no meaning, 
only `TargetProperties` and `TargetEntities` are relevant. They are addressed via the binding parameter of the action, e.g. if the binding parameter is named `_it`, all paths have to start with `_it/`.

Property|Type|Description
:-------|:---|:----------
[SourceProperties](Common.xml#L1060)|\[PropertyPath\]|Changes to the values of one or more of these structural properties may affect the targets
[SourceEntities](Common.xml#L1063)|\[NavigationPropertyPath\]|Changes to one or more of these entities may affect the targets. An empty path means the annotation target.
[SourcePerspective](Common.xml#L1066)|\[AnnotationPath\]|A collection of annotation paths that reference a UI perspective. The side effect targets may be affected by changes to the values of one or more of the structural properties that make up the referenced UI perspectives.
[TargetProperties](Common.xml#L1094)|\[String\]|These structural properties may be affected if the value of one of the sources changes<p>The syntax follows closely the syntax rules for `Edm.PropertyPath`, with the addition of `*` as the last path segment meaning all structural properties directly reached via the preceding path</p>
[TargetEntities](Common.xml#L1098)|\[NavigationPropertyPath\]|These entities will be affected if the value of one of the sources changes. All affected entities need to be explicitly listed. An empty path means the annotation target.
[EffectTypes](Common.xml#L1101) *(Deprecated)*|[EffectType?](#EffectType)|All side effects are essentially value changes, differentiation not needed.
[TriggerAction](Common.xml#L1112)|[QualifiedName?](#QualifiedName)|Bound action to trigger side-effects after modifying an entity<p>Binding parameter type of the trigger action is the entity type annotated with `SideEffects`. The action does not have any additional parameters and does not return anything. It either succeeds with `204 No Content` or it fails with `4xx` or `5xx`.</p>
[TriggeredIndicator](Common.xml#L1116) *([Experimental](Common.md#Experimental))*|Boolean?|Indicates whether the side-effect has already happened<p>The value of this property typically is a Path expression pointing to a boolean property. It can be used by clients to defer expensive refresh calls until they are actually needed and instead just request the referenced indicator property. Servers can choose to return indicator properties even if not explicitly requested.</p>

## <a name="EffectType"></a>[EffectType](Common.xml#L1122) *(Deprecated)*


Flag Member|Value|Description
:-----|----:|:----------
[ValidationMessage](Common.xml#L1131)|1|Validation messages are assigned to a target<p>This side effect type indicates that validation messages may result from changes of source properties or entities. Thus, a validation request can be sent either in conjunction with or separately after a modifying request. Validation messages shall be persisted with the draft and immediately available in a subsequent request without repeating the validation logic.</p>
[ValueChange](Common.xml#L1139)|2|The value of a target changes<p>This side effect type declares that changes to source properties or entities may impact the values of any, one or multiple target properties or entities. Upon modification preparation logic is performed that determines additional values to be stored in the draft document.</p>
[FieldControlChange](Common.xml#L1146)|4|The value of the Common.FieldControl annotation of a target changes<p>This side effect type specifies that source properties or entities may impact the dynamic field control state of any, one or multiple target properties or entities. Upon modification field control logic is invoked so that meta-information like hidden or read-only is determined.</p>

## <a name="SortOrderType"></a>[SortOrderType](Common.xml#L1248)


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L1249)|PropertyPath|Sort property
[Descending](Common.xml#L1252)|Boolean?|Sort direction, ascending if not specified otherwise

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](Common.xml#L1277)


Property|Type|Description
:-------|:---|:----------
[ExternalNodeKeyProperty](Common.xml#L1278)|PropertyPath?|Property holding the external human-readable key identifying the node
[NodeDescendantCountProperty](Common.xml#L1281)|PropertyPath?|Property holding the descendant count for a hierarchy node. The descendant count of a node is the number of its descendants in the hierarchy structure of the result considering only those nodes matching any specified $filter and $search. A property holding descendant counts has an integer data type.
[NodeDrillStateProperty](Common.xml#L1289)|PropertyPath?|Property holding the drill state of a hierarchy node. The drill state is indicated by one of the following string values: collapsed, expanded, or leaf. For an expanded node, its children are included in the result collection. For a collapsed node, the children are included in the entity set, but they are not part of the result collection. Retrieving them requires a relaxed filter expression or a separate request filtering on the parent node ID with the ID of the collapsed node. A leaf does not have any child in the entity set.

## <a name="UserID"></a>[UserID](Common.xml#L1320)
**Type:** String

User ID
