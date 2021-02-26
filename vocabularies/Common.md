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
[ExternalID](Common.xml#L84) *([Experimental](Common.md#Experimental))*|String?|<a name="ExternalID"></a>A human readable identifier for values of the annotated property. Value MUST be a dynamic expression when used as metadata annotation.<p>If the annotated property is (part of) a foreign key of a resource, the external id is a human readable (part of an) identifier of this resource. There is a one-to-one relationship between each possible value of the annotated property and the corresponding external id.</p>
[IsLanguageIdentifier](Common.xml#L98) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsLanguageIdentifier"></a>An identifier to distinguish multiple texts in different languages for the same entity
[TextFormat](Common.xml#L103)|[TextFormatType?](#TextFormatType)|<a name="TextFormat"></a>Human-readable text that may contain formatting information
[IsDigitSequence](Common.xml#L162)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDigitSequence"></a>Contains only digits
[IsUpperCase](Common.xml#L167)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUpperCase"></a>Contains just uppercase characters
[IsCurrency](Common.xml#L172)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCurrency"></a>Annotated property or parameter is a currency code
[IsUnit](Common.xml#L177)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUnit"></a>Annotated property or parameter is a unit of measure
[UnitSpecificScale](Common.xml#L181)|PrimitiveType?|<a name="UnitSpecificScale"></a>The number of fractional decimal digits of a currency amount or measured quantity<p>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default scale of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of fractional digits captured by that device.</p>
[UnitSpecificPrecision](Common.xml#L186) *([Experimental](Common.md#Experimental))*|PrimitiveType?|<a name="UnitSpecificPrecision"></a>The number of significant decimal digits of a currency amount or measured quantity<p>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default precision of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of significant digits captured by that device.</p>
[SecondaryKey](Common.xml#L192) *(Deprecated)*|\[PropertyPath\]|<a name="SecondaryKey"></a>Use term `AlternateKeys` from the OASIS Core vocabulary instead
[MinOccurs](Common.xml#L204)|Int64?|<a name="MinOccurs"></a>The annotated set or collection contains at least this number of items
[MaxOccurs](Common.xml#L208)|Int64?|<a name="MaxOccurs"></a>The annotated set or collection contains at most this number of items
[AssociationEntity](Common.xml#L212)|\[NavigationPropertyPath\]|<a name="AssociationEntity"></a>Entity representing an n:m association with attributes
[DerivedNavigation](Common.xml#L219)|NavigationPropertyPath?|<a name="DerivedNavigation"></a>Shortcut for a multi-segment navigation, contains the long path with all its segments
[Masked](Common.xml#L225) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Masked"></a>Use terms `MaskedValue` and `MaskedAlways` instead
[MaskedValue](Common.xml#L240) *([Experimental](Common.md#Experimental))*|String?|<a name="MaskedValue"></a>Property contains sensitive data that is by default not transferred<p>By default a masked property is excluded from responses and instead an instance annotation with this term is sent, containing a masked value that can be rendered by user interfaces.</p>
[MaskedAlways](Common.xml#L249) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MaskedAlways"></a>Property contains sensitive data that is by default not transferred<p>If the annotation evaluates to true, the unmasked property value is never transferred in responses.<br/>If the annotation evaluates to false, the unmasked property value can be requested with the custom query option `masked-values=false`.</p>
[SemanticObject](Common.xml#L259)|String?|<a name="SemanticObject"></a>Name of the Semantic Object represented as this entity type or identified by this property
[SemanticObjectMapping](Common.xml#L262)|\[[SemanticObjectMappingType](#SemanticObjectMappingType)\]|<a name="SemanticObjectMapping"></a>Maps properties of the annotated entity type or sibling properties of the annotated property to properties of the Semantic Object<p>This allows "renaming" of properties in the current context to match property names of the Semantic Object, e.g. `SenderPartyID` to `PartyID`. Only properties explicitly listed in the mapping are renamed, all other properties are available for intent-based navigation with their "local" name.</p>
[SemanticObjectUnavailableActions](Common.xml#L275)|\[String\]|<a name="SemanticObjectUnavailableActions"></a>List of actions that are not available in the current state of the instance of the Semantic Object
[IsInstanceAnnotation](Common.xml#L279)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsInstanceAnnotation"></a>Term can also be used as instance annotation; AppliesTo of this term specifies where it can be applied
[FilterExpressionRestrictions](Common.xml#L309) *(Deprecated)*|\[[FilterExpressionRestrictionType](#FilterExpressionRestrictionType)\]|<a name="FilterExpressionRestrictions"></a>Use term Capabilities.FilterRestrictions instead
[FieldControl](Common.xml#L352)|[FieldControlType?](#FieldControlType)|<a name="FieldControl"></a>Control state of a property<p>This term can be used for static field control, providing an enumeration member value in $metadata, as well as dynamically, providing a `Path` expression.<br/>In the dynamic case the property referenced by the `Path` expression MUST be of type `Edm.Byte` to accommodate OData V2 services as well as V4 infrastructures that don't support enumeration types.</p>
[ExceptionCategory](Common.xml#L385) *([Experimental](Common.md#Experimental))*|String?|<a name="ExceptionCategory"></a>A machine-readable exception category
[Application](Common.xml#L390) *([Experimental](Common.md#Experimental))*|[ApplicationType?](#ApplicationType)|<a name="Application"></a>...
[Timestamp](Common.xml#L410) *([Experimental](Common.md#Experimental))*|DateTimeOffset?|<a name="Timestamp"></a>...
[TransactionId](Common.xml#L415) *([Experimental](Common.md#Experimental))*|String?|<a name="TransactionId"></a>...
[ErrorResolution](Common.xml#L420) *([Experimental](Common.md#Experimental))*|[ErrorResolutionType?](#ErrorResolutionType)|<a name="ErrorResolution"></a>Hints for resolving this error
[Messages](Common.xml#L438)|\[ComplexType\]|<a name="Messages"></a>Collection of end-user messages<p>The name of the message type is service-specific, its structure components are identified by naming convention, following the names of the OData error response structure.<br/>The minimum structure is<br/>- `code: Edm.String`<br/>- `message: Edm.String`<br/>- `target: Edm.String nullable`<br/>- `additionalTargets: Collection(Edm.String)`<br/>- `transition: Edm.Boolean`<br/>- `numericSeverity: Edm.Byte`<br/>- `longtextUrl: Edm.String nullable`</p>
[additionalTargets](Common.xml#L461) *([Experimental](Common.md#Experimental))*|\[String\]|<a name="additionalTargets"></a>Additional targets for the message<p>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response</p>
[longtextUrl](Common.xml#L467)|URL|<a name="longtextUrl"></a>Location of the message long text<p>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response</p>
[numericSeverity](Common.xml#L473)|[NumericMessageSeverityType](#NumericMessageSeverityType)|<a name="numericSeverity"></a>Classifies an end-user message as info, success, warning, or error<p>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response</p>
[MaximumNumericMessageSeverity](Common.xml#L478) *([Experimental](Common.md#Experimental))*|[NumericMessageSeverityType?](#NumericMessageSeverityType)|<a name="MaximumNumericMessageSeverity"></a>The maximum severity of all end-user messages attached to an entity, null if no messages are attached<p>This metadata annotation can be applied to entity types that are also annotated with term [`Common.Messages`](#Messages)</p>
[IsActionCritical](Common.xml#L507)|Boolean|<a name="IsActionCritical"></a>Criticality of the function or action to enforce a warning or similar before it's executed
[Attributes](Common.xml#L511)|\[PropertyPath\]|<a name="Attributes"></a>Attributes related to this property, which may occur in denormalized entity types
[RelatedRecursiveHierarchy](Common.xml#L515)|AnnotationPath?|<a name="RelatedRecursiveHierarchy"></a>A recursive hierarchy related to this property. The annotation path must end in Aggregation.RecursiveHierarchy.
[Interval](Common.xml#L519)|[IntervalType?](#IntervalType)|<a name="Interval"></a>An interval with lower and upper boundaries described by two properties
[ResultContext](Common.xml#L537)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ResultContext"></a>The annotated entity type has one or more containment navigation properties. An instance of the annotated entity type provides the context required for determining the target entity sets reached by these containment navigation properties.
[WeakReferentialConstraint](Common.xml#L545) *([Experimental](Common.md#Experimental))*|[WeakReferentialConstraintType?](#WeakReferentialConstraintType)|<a name="WeakReferentialConstraint"></a>A referential constraint to a reference set that is not reachable via a navigation property<p>A weak referential constraint can be used in cases where the reference service cannot be located at design-time</p>
[IsNaturalPerson](Common.xml#L573)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsNaturalPerson"></a>The annotated entity type (e.g. `Employee`) or annotation (e.g. `IsImageUrl`) represents a natural person
[ValueList](Common.xml#L579)|[ValueListType?](#ValueListType)|<a name="ValueList"></a>Specifies how to get a list of acceptable values for a property or parameter<p>The value list can be based on user input that is passed in the value list request. The value list can be used for type-ahead and classical pick lists.</p>
[ValueListRelevantQualifiers](Common.xml#L650) *([Experimental](Common.md#Experimental))*|\[[SimpleIdentifier](#SimpleIdentifier)\]|<a name="ValueListRelevantQualifiers"></a>List of qualifiers of relevant ValueList annotations<p>The value of this annotation is a dynamic expression for calculating the qualifiers of relevant value lists depending on the values of one or more other properties.</p>
[ValueListWithFixedValues](Common.xml#L656)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ValueListWithFixedValues"></a>If specified as true, there's only one value list mapping and its value list consists of a small number of fixed values
[ValueListForValidation](Common.xml#L660) *([Experimental](Common.md#Experimental))*|String|<a name="ValueListForValidation"></a>Contains the qualifier of the ValueList or ValueListMapping that should be used for validation
[ValueListReferences](Common.xml#L665)|\[URL\]|<a name="ValueListReferences"></a>A list of URLs of CSDL documents containing value list mappings for this parameter or property
[ValueListMapping](Common.xml#L670)|[ValueListMappingType?](#ValueListMappingType)|<a name="ValueListMapping"></a>Specifies the mapping between data service properties and value list properties<p>The value list can be filtered based on user input. It can be used for type-ahead and classical pick lists. There may be many alternative mappings with different qualifiers.</p>
[IsCalendarYear](Common.xml#L768)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYear"></a>Property encodes a year number as string following the logical pattern (-?)YYYY(Y*) consisting of an optional minus sign for years B.C. followed by at least four digits. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})
[IsCalendarHalfyear](Common.xml#L777)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarHalfyear"></a>Property encodes a halfyear number as string following the logical pattern H consisting of a single digit. The string matches the regex pattern [1-2]
[IsCalendarQuarter](Common.xml#L786)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarQuarter"></a>Property encodes a calendar quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsCalendarMonth](Common.xml#L795)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarMonth"></a>Property encodes a calendar month number as string following the logical pattern MM consisting of two digits. The string matches the regex pattern 0[1-9]\|1[0-2]
[IsCalendarWeek](Common.xml#L804)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarWeek"></a>Property encodes a calendar week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsDayOfCalendarMonth](Common.xml#L813)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarMonth"></a>Day number relative to a calendar month. Valid values are between 1 and 31.
[IsDayOfCalendarYear](Common.xml#L821)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarYear"></a>Day number relative to a calendar year. Valid values are between 1 and 366.
[IsCalendarYearHalfyear](Common.xml#L829)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearHalfyear"></a>Property encodes a calendar year and halfyear as string following the logical pattern (-?)YYYY(Y*)H consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the halfyear. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-2]
[IsCalendarYearQuarter](Common.xml#L839)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearQuarter"></a>Property encodes a calendar year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsCalendarYearMonth](Common.xml#L849)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearMonth"></a>Property encodes a calendar year and month as string following the logical pattern (-?)YYYY(Y*)MM consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent the months January to December. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])
[IsCalendarYearWeek](Common.xml#L860)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearWeek"></a>Property encodes a calendar year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsCalendarDate](Common.xml#L870)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarDate"></a>Property encodes a calendar date: year, month and day as string following the logical pattern (-?)YYYY(Y*)MMDD consisting of an optional minus sign for years B.C. followed by at least eight digits, where the last four digits represent the months January to December (MM) and the day of the month (DD). The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])(0[1-9]\|[12][0-9]\|3[01]) The regex pattern does not reflect the additional constraint for "Day-of-month Values": The day value must be no more than 30 if month is one of 04, 06, 09, or 11, no more than 28 if month is 02 and year is not divisible by 4, or is divisible by 100 but not by 400, and no more than 29 if month is 02 and year is divisible by 400, or by 4 but not by 100.
[IsFiscalYear](Common.xml#L887)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYear"></a>Property encodes a fiscal year number as string following the logical pattern YYYY(Y*) consisting of at least four digits. The string matches the regex pattern [1-9][0-9]{3,}
[IsFiscalPeriod](Common.xml#L896)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalPeriod"></a>Property encodes a fiscal period as string following the logical pattern PPP consisting of three digits. The string matches the regex pattern [0-9]{3}
[IsFiscalYearPeriod](Common.xml#L905)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearPeriod"></a>Property encodes a fiscal year and period as string following the logical pattern YYYY(Y*)PPP consisting of at least seven digits, where the last three digits represent the fiscal period in the year. The string matches the regex pattern ([1-9][0-9]{3,})([0-9]{3})
[IsFiscalQuarter](Common.xml#L915)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalQuarter"></a>Property encodes a fiscal quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsFiscalYearQuarter](Common.xml#L923)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearQuarter"></a>Property encodes a fiscal year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsFiscalWeek](Common.xml#L932)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalWeek"></a>Property encodes a fiscal week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsFiscalYearWeek](Common.xml#L940)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearWeek"></a>Property encodes a fiscal year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsDayOfFiscalYear](Common.xml#L949)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfFiscalYear"></a>Day number relative to a fiscal year. Valid values are between 1 and 371.
[IsFiscalYearVariant](Common.xml#L956)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearVariant"></a>Property encodes a fiscal year variant
[MutuallyExclusiveTerm](Common.xml#L964)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MutuallyExclusiveTerm"></a>Only one term of the group identified with the Qualifier attribute can be applied
[DraftRoot](Common.xml#L970)|[DraftRootType?](#DraftRootType)|<a name="DraftRoot"></a>Root entities of business documents that support the draft pattern
[DraftNode](Common.xml#L997)|[DraftNodeType?](#DraftNodeType)|<a name="DraftNode"></a>Entities in this set are parts of business documents that support the draft pattern
[DraftActivationVia](Common.xml#L1027)|\[[SimpleIdentifier](#SimpleIdentifier)\]|<a name="DraftActivationVia"></a>Draft entities in this set are indirectly activated via draft entities in the referenced entity sets
[EditableFieldFor](Common.xml#L1031)|PropertyPath?|<a name="EditableFieldFor"></a>The annotated property is an editable field for the referenced key property
[SemanticKey](Common.xml#L1053)|\[PropertyPath\]|<a name="SemanticKey"></a>The listed properties form the semantic key, i.e. they are unique modulo IsActiveEntity
[SideEffects](Common.xml#L1057)|[SideEffectsType?](#SideEffectsType)|<a name="SideEffects"></a>Describes side-effects of modification operations
[DefaultValuesFunction](Common.xml#L1139) *([Experimental](Common.md#Experimental))*|[QualifiedName?](#QualifiedName)|<a name="DefaultValuesFunction"></a>Function to calculate default values based on user input that is only known to the client and "context information" that is already available to the service<p>The default values function must have a bound overload whose binding parameter type matches the annotation target<br/> - for an entity set: collection of entity type of entity set<br/> - for a navigation property: identical to the type of the navigation property (single- or collection-valued)<br/> - for a bound action/function: identical to the binding parameter type of the annotated action/function<br/> In addition the overload can have non-binding parameters for values that the user has already entered:<br/> - for an entity set or navigation property: each non-binding parameter name and type must match the name and type of a property of the entity to be created<br/> - for an action or function: each non-binding parameter name and type must match the name and type of a non-binding parameter of the action or function to be called<br/> The result type of the default values function is a complex type whose properties correspond in name and type to a subset of<br/> - the properties of the entity to create, or<br/> - the parameters of the action or function to call</p>
[DerivedDefaultValue](Common.xml#L1169) *([Experimental](Common.md#Experimental))*|String?|<a name="DerivedDefaultValue"></a>Function import to derive a default value for the property from a given context.<p>Function import has two parameters of complex types:<br/> - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/> - `properties`, a structure resembling the type of the entity set of the annotated property<br/> The return type must be of the same type as the annotated property.<br/> Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.</p>
[FilterDefaultValue](Common.xml#L1190)|PrimitiveType?|<a name="FilterDefaultValue"></a>A default value for the property to be used in filter expressions.
[FilterDefaultValueHigh](Common.xml#L1194) *([Experimental](Common.md#Experimental))*|PrimitiveType?|<a name="FilterDefaultValueHigh"></a>A default upper limit for the property to be used in 'less than or equal' filter expressions.
[DerivedFilterDefaultValue](Common.xml#L1199) *([Experimental](Common.md#Experimental))*|String?|<a name="DerivedFilterDefaultValue"></a>Function import to derive a default value for the property from a given context in order to use it in filter expressions.<p>Function import has two parameters of complex types:<br/> - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/> - `properties`, a structure resembling the type of the entity set of the annotated property<br/> The return type must be of the same type as the annotated property.<br/> Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.</p>
[SortOrder](Common.xml#L1223)|\[[SortOrderType](#SortOrderType)\]|<a name="SortOrder"></a>List of sort criteria<p>The items of the annotated entity set or the items of the collection of the annotated entity type are sorted by the first entry of the SortOrder collection. Items with same value for this first sort criteria are sorted by the second entry of the SortOrder collection, and so on.</p>
[RecursiveHierarchy](Common.xml#L1255)|[RecursiveHierarchyType?](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy.
[CreatedAt](Common.xml#L1287)|DateTimeOffset?|<a name="CreatedAt"></a>Creation timestamp
[CreatedBy](Common.xml#L1291)|[UserID?](#UserID)|<a name="CreatedBy"></a>First editor
[ChangedAt](Common.xml#L1295)|DateTimeOffset?|<a name="ChangedAt"></a>Last modification timestamp
[ChangedBy](Common.xml#L1299)|[UserID?](#UserID)|<a name="ChangedBy"></a>Last editor
[OriginalProtocolVersion](Common.xml#L1311)|String?|<a name="OriginalProtocolVersion"></a>Original protocol version of a converted (V4) CSDL document, allowed values `2.0` and `3.0`
[ApplyMultiUnitBehaviorForSortingAndFiltering](Common.xml#L1316) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ApplyMultiUnitBehaviorForSortingAndFiltering"></a>Sorting and filtering of amounts in multiple currencies needs special consideration<p>TODO: add link to UX documentation on https://experience.sap.com/fiori-design/</p>
[mediaUploadLink](Common.xml#L1322) *([Experimental](Common.md#Experimental))*|URL|<a name="mediaUploadLink"></a>URL for uploading new media content to a Document Management Service<p>In contrast to the `@odata.mediaEditLink` this URL allows to upload new media content without directly changing a stream property. The upload request typically uses HTTP POST with `Content-Type: multipart/form-data` following RFC 7578. The upload request must contain one multipart representing the content of the file. The `name` parameter in the `Content-Disposition` header (as described in RFC 7578) is irrelevant, but the `filename` parameter is expected. If the request succeeds the response will contain a JSON body of `Content-Type: application/json` with a JSON property `readLink`. The newly uploaded media resource can be linked to the stream property by changing the `@odata.mediaReadLink` to the value of this `readLink` in a subsequent PATCH request to the OData entity.</p>

## <a name="TextFormatType"></a>[TextFormatType](Common.xml#L107)


Member|Value|Description
:-----|----:|:----------
[plain](Common.xml#L108)|0|Plain text, line breaks represented as the character 0x0A
[html](Common.xml#L111)|1|Plain text with markup that can validly appear directly within an HTML DIV element

## <a name="SemanticObjectMappingType"></a>[SemanticObjectMappingType](Common.xml#L266)
Maps a property of the annotated entity type or a sibling property of the annotated property to a property of the Semantic Object

Property|Type|Description
:-------|:---|:----------
[LocalProperty](Common.xml#L268)|PropertyPath|Path to a local property that provides the value for the Semantic Object property
[SemanticObjectProperty](Common.xml#L271)|String|Name of the Semantic Object property

## <a name="FilterExpressionRestrictionType"></a>[FilterExpressionRestrictionType](Common.xml#L320) *(Deprecated)*
Use term Capabilities.FilterRestrictions instead

## <a name="FilterExpressionType"></a>[FilterExpressionType](Common.xml#L332) *(Deprecated)*
Use term Capabilities.FilterRestrictions instead

## <a name="FieldControlType"></a>[FieldControlType](Common.xml#L357)
Control state of a property

Member|Value|Description
:-----|----:|:----------
[Mandatory](Common.xml#L359)|7|Property is mandatory from a business perspective<p>This annotation value does not imply any restrictions on the value range of the property. For restricting the value range use e.g. the standard type facet `Nullable` with a value of `false` to exclude the `null` value, or terms from the [Validation vocabulary](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Validation.V1.md).</p>
[Optional](Common.xml#L363)|3|Property may have a value<p>This value does not make sense as a static annotation value.</p>
[ReadOnly](Common.xml#L367)|1|Property value cannot be changed<p>To statically mark a property as read-only use term [Core.Computed](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Computed) instead</p>
[Inapplicable](Common.xml#L371)|0|Property has no meaning in the current entity state<p>This value does not make sense as a static annotation value.<br/>Example for dynamic use: in a travel expense report the property `DestinationCountry` is inapplicable if trip type is domestic, and mandatory if trip type is international.</p>
[Hidden](Common.xml#L379)|0|Deprecated synonymn for Inapplicable, do not use<p>To statically hide a property on a UI use [UI.Hidden](UI.md#Hidden) instead</p>

## <a name="ApplicationType"></a>[ApplicationType](Common.xml#L395) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Component](Common.xml#L397)|String?|Software component of service implementation
[ServiceRepository](Common.xml#L400)|String?|...
[ServiceId](Common.xml#L403)|String?|...
[ServiceVersion](Common.xml#L406)|String?|...

## <a name="ErrorResolutionType"></a>[ErrorResolutionType](Common.xml#L425) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Analysis](Common.xml#L427)|String?|Short hint on how to analyze this error
[Note](Common.xml#L430)|String?|Note for error resolution
[AdditionalNote](Common.xml#L433)|String?|Additional note for error resolution

## <a name="NumericMessageSeverityType"></a>[NumericMessageSeverityType](Common.xml#L483)
**Type:** Byte

Classifies an end-user message as info, success, warning, or error

Allowed Value|Description
:------------|:----------
[1](Common.xml#L487)|Success - no action required
[2](Common.xml#L491)|Information - no action required
[3](Common.xml#L495)|Warning - action may be required
[4](Common.xml#L499)|Error - action is required

## <a name="IntervalType"></a>[IntervalType](Common.xml#L522)


Property|Type|Description
:-------|:---|:----------
[LowerBoundary](Common.xml#L523)|PropertyPath|Property holding the lower interval boundary
[LowerBoundaryIncluded](Common.xml#L526)|Boolean|The lower boundary value is included in the interval
[UpperBoundary](Common.xml#L529)|PropertyPath|Property holding the upper interval boundary
[UpperBoundaryIncluded](Common.xml#L532)|Boolean|The upper boundary value is included in the interval

## <a name="WeakReferentialConstraintType"></a>[WeakReferentialConstraintType](Common.xml#L550) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[ReferenceRoot](Common.xml#L552)|String|URI of the service containing the reference set<p>Need not be a uniform resource locator, for cases where the actual location of the reference service is not static or not known at design-time.</p>
[ReferencePath](Common.xml#L556)|String|Resource path of an OData collection with reference values, relative to ReferenceRoot
[ForeignKeys](Common.xml#L559)|\[[ForeignKeyType](#ForeignKeyType)\]|Instructions on how to construct the value list request and consume response properties

## <a name="ForeignKeyType"></a>[ForeignKeyType](Common.xml#L563) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L565)|PropertyPath|Path to property of the annotated entity set
[ReferencedProperty](Common.xml#L568)|String|Path to property in reference set, format is identical to PropertyPath annotations

## <a name="ValueListType"></a>[ValueListType](Common.xml#L583)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L604)|String?|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L608)|String|Resource path of an OData collection with possible values, relative to CollectionRoot
[CollectionRoot](Common.xml#L611)|String?|Service root of the value list collection; not specified means local to the document containing the annotation
[SearchSupported](Common.xml#L614)|Boolean|Value list supports the $search query option<p>The value of the target property is used as the search expression instead of in $filter</p>
[FetchValues](Common.xml#L618)|[FetchValuesType?](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](Common.xml#L621)|[SimpleIdentifier?](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<p>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the entity set identified via CollectionPath</p>
[SelectionVariantQualifier](Common.xml#L625)|[SimpleIdentifier?](#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<p>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath</p>
[Parameters](Common.xml#L629)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

**Applicable Annotation Terms:**

- [QuickInfo](#QuickInfo)

## <a name="FetchValuesType"></a>[FetchValuesType](Common.xml#L634)
**Type:** Byte

Hint on when to fetch values

Allowed Value|Description
:------------|:----------
[1](Common.xml#L638)|Fetch values immediately without filter
[2](Common.xml#L642)|Fetch values with a filter

## <a name="ValueListMappingType"></a>[ValueListMappingType](Common.xml#L674)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L680)|String?|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L684)|String|Resource path of an OData collection with possible values, relative to the document containing the value list mapping
[FetchValues](Common.xml#L687)|[FetchValuesType?](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](Common.xml#L690)|[SimpleIdentifier?](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<p>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the value list entity set identified via CollectionPath in the ValueListReference annotation</p>
[SelectionVariantQualifier](Common.xml#L694)|[SimpleIdentifier?](#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<p>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath</p>
[Parameters](Common.xml#L698)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

**Applicable Annotation Terms:**

- [QuickInfo](#QuickInfo)

## <a name="ValueListParameter"></a>[*ValueListParameter*](Common.xml#L703)


**Derived Types:**
- [ValueListParameterIn](#ValueListParameterIn)
- [ValueListParameterConstant](#ValueListParameterConstant)
- [ValueListParameterInOut](#ValueListParameterInOut)
- [ValueListParameterOut](#ValueListParameterOut)
- [ValueListParameterDisplayOnly](#ValueListParameterDisplayOnly)
- [ValueListParameterFilterOnly](#ValueListParameterFilterOnly)

Property|Type|Description
:-------|:---|:----------
[ValueListProperty](Common.xml#L704)|String|Path to property in the value list . Format is identical to PropertyPath annotations.

## <a name="ValueListParameterIn"></a>[ValueListParameterIn](Common.xml#L708): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L704)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L709)|PropertyPath|Path to property that is used to filter the value list with `eq` comparison
[InitialValueIsSignificant](Common.xml#L712) *([Experimental](Common.md#Experimental))*|Boolean|Initial value, e.g. empty string, is a valid and significant value

## <a name="ValueListParameterConstant"></a>[ValueListParameterConstant](Common.xml#L717): [ValueListParameter](#ValueListParameter) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L704)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[Constant](Common.xml#L719)|PrimitiveType|Constant value that is used to filter the value list with `eq` comparison, using the same representation as property default values, see [CSDL XML, 7.2.7 Default Value](https://docs.oasis-open.org/odata/odata-csdl-xml/v4.01/odata-csdl-xml-v4.01.html#sec_DefaultValue)

## <a name="ValueListParameterInOut"></a>[ValueListParameterInOut](Common.xml#L723): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L704)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L724)|PropertyPath|Path to property that is used to filter the value list with `startswith` comparison and filled from the picked value list item
[InitialValueIsSignificant](Common.xml#L727) *([Experimental](Common.md#Experimental))*|Boolean|Initial value, e.g. empty string, is a valid and significant value

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

## <a name="ValueListParameterOut"></a>[ValueListParameterOut](Common.xml#L737): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L704)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L738)|PropertyPath|Path to property that is filled from response

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

## <a name="ValueListParameterDisplayOnly"></a>[ValueListParameterDisplayOnly](Common.xml#L747): [ValueListParameter](#ValueListParameter)
Value list property that is not used to fill the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L704)|String|Path to property in the value list . Format is identical to PropertyPath annotations.

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

## <a name="ValueListParameterFilterOnly"></a>[ValueListParameterFilterOnly](Common.xml#L755): [ValueListParameter](#ValueListParameter) *(Deprecated)*
All filterable properties of the value list can be used to filter

## <a name="DraftRootType"></a>[DraftRootType](Common.xml#L975): [DraftNodeType](#DraftNodeType)


Property|Type|Description
:-------|:---|:----------
[*PreparationAction*](Common.xml#L1003) *(Deprecated)*|[QualifiedName?](#QualifiedName)|Use `TriggerAction` of [`SideEffects` annotation](#SideEffects) instead
[*ValidationFunction*](Common.xml#L1014) *(Deprecated)*|[QualifiedName?](#QualifiedName)|Separate validation without side-effects is not useful
[ActivationAction](Common.xml#L976)|[QualifiedName](#QualifiedName)|Action that activates a draft document
[DiscardAction](Common.xml#L979) *([Experimental](Common.md#Experimental))*|[QualifiedName?](#QualifiedName)|Action that discards a draft document
[EditAction](Common.xml#L983)|[QualifiedName?](#QualifiedName)|Action that creates an edit draft
[NewAction](Common.xml#L986)|[QualifiedName?](#QualifiedName)|Action that creates a new draft<p>New drafts may also be created by POSTing an empty entity without any properties to the entity set.</p>
[AdditionalNewActions](Common.xml#L990) *([Experimental](Common.md#Experimental))*|\[[QualifiedName](#QualifiedName)\]|Additional actions that create a new draft<p>Additional actions beside the default POST or standard `NewAction` that create a new draft.</p>

## <a name="DraftNodeType"></a>[DraftNodeType](Common.xml#L1002)


**Derived Types:**
- [DraftRootType](#DraftRootType)

Property|Type|Description
:-------|:---|:----------
[PreparationAction](Common.xml#L1003) *(Deprecated)*|[QualifiedName?](#QualifiedName)|Use `TriggerAction` of [`SideEffects` annotation](#SideEffects) instead
[ValidationFunction](Common.xml#L1014) *(Deprecated)*|[QualifiedName?](#QualifiedName)|Separate validation without side-effects is not useful

## <a name="SimpleIdentifier"></a>[SimpleIdentifier](Common.xml#L1035)
**Type:** String

The SimpleIdentifier of an OData construct in scope

## <a name="QualifiedName"></a>[QualifiedName](Common.xml#L1039)
**Type:** String

The QualifiedName of an OData construct in scope

## <a name="ActionOverload"></a>[ActionOverload](Common.xml#L1043)
**Type:** String

The qualified name of an action with an optional overload

The qualified name of an action followed by parentheses 
            containing the binding parameter type of a bound action overload to identify that bound overload, 
            or by empty parentheses to identify the unbound overload, like in the `Target` attribute of an `Annotation`.

## <a name="SideEffectsType"></a>[SideEffectsType](Common.xml#L1060)
Changes to the source properties or source entities may have side-effects on the target properties or entities.

If neither TargetProperties nor TargetEntities are specified, a change to the source property values may have unforeseeable side-effects.
An empty NavigationPropertyPath may be used in TargetEntities to specify that any property of the annotated entity type may be affected.

Side effects without a `TriggerAction` happen immediately when modifying one of the source properties or source entities. Side effects with a `TriggerAction` are deferred until explicitly triggered via the `TriggerAction`.

Special case where the side effect is annotated on an action: here the change trigger is the action invocation, so `SourceProperties` and `SourceEntities` have no meaning, 
only `TargetProperties` and `TargetEntities` are relevant. They are addressed via the binding parameter of the action, e.g. if the binding parameter is named `_it`, all paths have to start with `_it/`.

Property|Type|Description
:-------|:---|:----------
[SourceProperties](Common.xml#L1071)|\[PropertyPath\]|Changes to the values of one or more of these structural properties may affect the targets
[SourceEntities](Common.xml#L1074)|\[NavigationPropertyPath\]|Changes to one or more of these entities may affect the targets. An empty path means the annotation target.
[TargetProperties](Common.xml#L1077)|\[String\]|These structural properties may be affected if the value of one of the sources changes<p>The syntax follows closely the syntax rules for `Edm.PropertyPath`, with the addition of `*` as the last path segment meaning all structural properties directly reached via the preceding path</p>
[TargetEntities](Common.xml#L1081)|\[NavigationPropertyPath\]|These entities will be affected if the value of one of the sources changes. All affected entities need to be explicitly listed. An empty path means the annotation target.
[EffectTypes](Common.xml#L1084) *(Deprecated)*|[EffectType?](#EffectType)|All side effects are essentially value changes, differentiation not needed.
[TriggerAction](Common.xml#L1095)|[QualifiedName?](#QualifiedName)|Bound action to trigger side-effects after modifying an entity<p>Binding parameter type of the trigger action is the entity type annotated with `SideEffects`. The action does not have any additional parameters and does not return anything. It either succeeds with `204 No Content` or it fails with `4xx` or `5xx`.</p>
[TriggeredIndicator](Common.xml#L1099) *([Experimental](Common.md#Experimental))*|Boolean?|Indicates whether the side-effect has already happened<p>The value of this property typically is a Path expression pointing to a boolean property. It can be used by clients to defer expensive refresh calls until they are actually needed and instead just request the referenced indicator property. Servers can choose to return indicator properties even if not explicitly requested.</p>

## <a name="EffectType"></a>[EffectType](Common.xml#L1105) *(Deprecated)*
All side effects are essentially value changes, differentiation not needed.

## <a name="SortOrderType"></a>[SortOrderType](Common.xml#L1231)


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L1232)|PropertyPath|Sort property
[Descending](Common.xml#L1235)|Boolean?|Sort direction, ascending if not specified otherwise

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](Common.xml#L1260)


Property|Type|Description
:-------|:---|:----------
[ExternalNodeKeyProperty](Common.xml#L1261)|PropertyPath?|Property holding the external human-readable key identifying the node
[NodeDescendantCountProperty](Common.xml#L1264)|PropertyPath?|Property holding the descendant count for a hierarchy node. The descendant count of a node is the number of its descendants in the hierarchy structure of the result considering only those nodes matching any specified $filter and $search. A property holding descendant counts has an integer data type.
[NodeDrillStateProperty](Common.xml#L1272)|PropertyPath?|Property holding the drill state of a hierarchy node. The drill state is indicated by one of the following string values: collapsed, expanded, or leaf. For an expanded node, its children are included in the result collection. For a collapsed node, the children are included in the entity set, but they are not part of the result collection. Retrieving them requires a relaxed filter expression or a separate request filtering on the parent node ID with the ID of the collapsed node. A leaf does not have any child in the entity set.

## <a name="UserID"></a>[UserID](Common.xml#L1303)
**Type:** String

User ID
