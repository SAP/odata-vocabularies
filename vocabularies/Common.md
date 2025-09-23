# Common Vocabulary
**Namespace: [com.sap.vocabularies.Common.v1](Common.xml)**

Common terms for all SAP vocabularies


## Terms

Term|Type|Description
:---|:---|:----------
[Experimental](Common.xml#L43)|String?|<a name="Experimental"></a>Terms, types, and properties annotated with this term are experimental and can be changed incompatibly or removed completely any time without prior warning.<br>Do not use or rely on experimental terms, types, and properties in production environments.
[ServiceVersion](Common.xml#L54)|Int32|<a name="ServiceVersion"></a>1 for first version of a service, incremented when schema changes incompatibly and service is published with a different URI
[ServiceSchemaVersion](Common.xml#L57)|Int32|<a name="ServiceSchemaVersion"></a>0 for first schema version within a service version, incremented when schema changes compatibly
[Label](Common.xml#L62)|String|<a name="Label"></a>A short, human-readable text suitable for labels and captions in UIs
[Heading](Common.xml#L67)|String|<a name="Heading"></a>A short, human-readable text suitable for column headings in UIs
[QuickInfo](Common.xml#L72)|String|<a name="QuickInfo"></a>A short, human-readable text suitable for tool tips in UIs
[DocumentationRef](Common.xml#L77) *([Experimental](Common.md#Experimental))*|String|<a name="DocumentationRef"></a>A URI referencing language-dependent documentation for the annotated model element ([Example](Common.xml#L80))
[Text](Common.xml#L91)|String?|<a name="Text"></a>A descriptive text for values of the annotated property. Value MUST be a dynamic expression when used as metadata annotation.<br>Applicable Annotation Terms:<ul><li>[TextArrangement](UI.md#TextArrangement)</li></ul>
[TextFor](Common.xml#L101) *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="TextFor"></a>The annotated property contains a descriptive text for values of the referenced property.
[ExternalID](Common.xml#L107) *([Experimental](Common.md#Experimental))*|PrimitiveType?|<a name="ExternalID"></a>A human readable identifier for values of the annotated property or parameter. Value MUST be a dynamic expression when used as metadata annotation.<br>If the annotated property is (part of) a foreign key of a resource, the external id is a human readable (part of an) identifier of this resource. There is a one-to-one relationship between each possible value of the annotated property and the corresponding external id. The annotation of a parameter refers to a property of the operation binding parameter.
[IsLanguageIdentifier](Common.xml#L125) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsLanguageIdentifier"></a>An identifier to distinguish multiple texts in different languages for the same entity
[TextFormat](Common.xml#L130)|[TextFormatType](#TextFormatType)|<a name="TextFormat"></a>The annotated property, parameter, or return type contains human-readable text that may contain formatting information
[Timezone](Common.xml#L143)|String?|<a name="Timezone"></a>The point in time represented by the annotated property or parameter shall be interpreted in the given time zone<br>Time zones shall be specified according to the [IANA](https://www.iana.org/time-zones) standard. If this annotation is absent or null or an empty string, points in time are typically interpreted in the current user's or default time zone. The annotation value can be a path expression resolving to a property that may be tagged with [`IsTimezone`](#IsTimezone).
[IsTimezone](Common.xml#L152)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsTimezone"></a>Annotated property or parameter is a time zone
[IsDigitSequence](Common.xml#L202)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDigitSequence"></a>Contains only digits
[IsUpperCase](Common.xml#L207)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUpperCase"></a>Contains just uppercase characters
[IsCurrency](Common.xml#L212)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCurrency"></a>Annotated property or parameter is a currency code
[IsUnit](Common.xml#L217)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUnit"></a>Annotated property or parameter is a unit of measure
[UnitSpecificScale](Common.xml#L221)|PrimitiveType|<a name="UnitSpecificScale"></a>The number of fractional decimal digits of a currency amount or measured quantity<br>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default scale of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of fractional digits captured by that device.
[UnitSpecificPrecision](Common.xml#L226) *([Experimental](Common.md#Experimental))*|PrimitiveType|<a name="UnitSpecificPrecision"></a>The number of significant decimal digits of a currency amount or measured quantity<br>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default precision of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of significant digits captured by that device.
[SecondaryKey](Common.xml#L232)|\[PropertyPath\]|<a name="SecondaryKey"></a>The listed properties form a secondary key<br>Multiple secondary keys are possible using different qualifiers. Unlike [`Core.AlternateKeys`](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#AlternateKeys), secondary keys need not support addressing an entity in a resource path.
[MinOccurs](Common.xml#L241)|Int64|<a name="MinOccurs"></a>The annotated set or collection contains at least this number of items
[MaxOccurs](Common.xml#L245)|Int64|<a name="MaxOccurs"></a>The annotated set or collection contains at most this number of items
[AssociationEntity](Common.xml#L249)|\[NavigationPropertyPath\]|<a name="AssociationEntity"></a>Entity representing an n:m association with attributes
[DerivedNavigation](Common.xml#L256)|NavigationPropertyPath|<a name="DerivedNavigation"></a>Shortcut for a multi-segment navigation, contains the long path with all its segments
[Masked](Common.xml#L262)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Masked"></a>Property contains sensitive data that should by default be masked on a UI and clear-text visible only upon user interaction<br>This tag affects only the presentation to the user. The data are still transmitted in the response and can hence be observed using browser tools.
[MaskedValue](Common.xml#L281) *([Experimental](Common.md#Experimental))*|String?|<a name="MaskedValue"></a>Property contains sensitive data that is by default not transferred<br>By default a masked property is excluded from responses and instead an instance annotation with this term is sent, containing a masked value that can be rendered by user interfaces.
[RevealOnDemand](Common.xml#L290) *([Experimental](Common.md#Experimental))*|Boolean|<a name="RevealOnDemand"></a>Unmasked data for this property can be requested with custom query option `masked-values=false`
[SemanticObject](Common.xml#L296)|String?|<a name="SemanticObject"></a>Name of the Semantic Object represented as this entity type or identified by this property
[SemanticObjectMapping](Common.xml#L299)|\[[SemanticObjectMappingAbstract](#SemanticObjectMappingAbstract)\]|<a name="SemanticObjectMapping"></a>Maps properties of the annotated entity type or sibling properties of the annotated property to properties of the Semantic Object<br>This allows "renaming" of properties in the current context to match property names of the Semantic Object, e.g. `SenderPartyID` to `PartyID`. Only properties explicitly listed in the mapping are renamed, all other properties are available for intent-based navigation with their "local" name.
[SemanticObjectUnavailableActions](Common.xml#L320)|\[String\]|<a name="SemanticObjectUnavailableActions"></a>List of actions that are not available in the current state of the instance of the Semantic Object
[IsInstanceAnnotation](Common.xml#L324)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsInstanceAnnotation"></a>Term can also be used as instance annotation; AppliesTo of this term specifies where it can be applied
[FilterExpressionRestrictions](Common.xml#L354) *(Deprecated)*|\[[FilterExpressionRestrictionType](#FilterExpressionRestrictionType)\]|<a name="FilterExpressionRestrictions"></a>Use term Capabilities.FilterRestrictions instead
[FieldControl](Common.xml#L397)|[FieldControlType?](#FieldControlType)|<a name="FieldControl"></a>Control state of a property, parameter, or the media stream of a media entity<br>This term can be used for static field control, providing an enumeration member value in $metadata, as well as dynamically, providing a `Path` expression.<br>In the dynamic case the property referenced by the `Path` expression MUST be of type `Edm.Byte` to accommodate OData V2 services as well as V4 infrastructures that don't support enumeration types.
[ExceptionCategory](Common.xml#L454) *([Experimental](Common.md#Experimental))*|String|<a name="ExceptionCategory"></a>A machine-readable exception category
[Application](Common.xml#L459) *([Experimental](Common.md#Experimental))*|[ApplicationType](#ApplicationType)|<a name="Application"></a>...
[Timestamp](Common.xml#L479) *([Experimental](Common.md#Experimental))*|DateTimeOffset|<a name="Timestamp"></a>...
[TransactionId](Common.xml#L484) *([Experimental](Common.md#Experimental))*|String|<a name="TransactionId"></a>...
[ErrorResolution](Common.xml#L489) *([Experimental](Common.md#Experimental))*|[ErrorResolutionType](#ErrorResolutionType)|<a name="ErrorResolution"></a>Hints for resolving this error
[Messages](Common.xml#L507)|\[ComplexType\]|<a name="Messages"></a>Collection of end-user messages<br><p>The name of the message type is service-specific, its structure components are identified by naming convention, following the names of the OData error response structure.</p> <p>The minimum structure is</p> <ul> <li><code>code: Edm.String</code></li> <li><code>message: Edm.String</code></li> <li><code>target: Edm.String nullable</code></li> <li><code>additionalTargets: Collection(Edm.String)</code></li> <li><code>transition: Edm.Boolean</code></li> <li><code>numericSeverity: Edm.Byte</code></li> <li><code>longtextUrl: Edm.String nullable</code></li> </ul> 
[additionalTargets](Common.xml#L523) *([Experimental](Common.md#Experimental))*|\[String\]|<a name="additionalTargets"></a>Additional targets for the message<br>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response
[longtextUrl](Common.xml#L529)|URL|<a name="longtextUrl"></a>Location of the message long text<br>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response
[numericSeverity](Common.xml#L535)|[NumericMessageSeverityType](#NumericMessageSeverityType)|<a name="numericSeverity"></a>Classifies an end-user message as info, success, warning, or error<br>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response
[MaximumNumericMessageSeverity](Common.xml#L540) *([Experimental](Common.md#Experimental))*|[NumericMessageSeverityType?](#NumericMessageSeverityType)|<a name="MaximumNumericMessageSeverity"></a>The maximum severity of all end-user messages attached to an entity, null if no messages are attached<br>This metadata annotation can be applied to entity types that are also annotated with term [`Common.Messages`](#Messages)
[IsActionCritical](Common.xml#L569)|Boolean|<a name="IsActionCritical"></a>Criticality of the function or action to enforce a warning or similar before it's executed
[Attributes](Common.xml#L573)|\[PropertyPath\]|<a name="Attributes"></a>Attributes related to this property, which may occur in denormalized entity types
[RelatedRecursiveHierarchy](Common.xml#L577)|AnnotationPath|<a name="RelatedRecursiveHierarchy"></a>A recursive hierarchy related to this property. The annotation path must end in Aggregation.RecursiveHierarchy.
[Interval](Common.xml#L581)|[IntervalType](#IntervalType)|<a name="Interval"></a>An interval with lower and upper boundaries described by two properties
[ResultContext](Common.xml#L604)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ResultContext"></a>The annotated entity type has one or more containment navigation properties. An instance of the annotated entity type provides the context required for determining the target entity sets reached by these containment navigation properties.
[SAPObjectNodeType](Common.xml#L612) *([Experimental](Common.md#Experimental))*|[SAPObjectNodeTypeType](#SAPObjectNodeTypeType)|<a name="SAPObjectNodeType"></a>The SAP Object Node Type represented by the annotated entity type<br>SAP Object Node Types define the structure of SAP Object Types, which are a generalization of Business Object, Technical Object, Configuration Object, and Analytical Object.
[Composition](Common.xml#L628) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Composition"></a>The annotated navigation property represents a logical composition, even though it is non-containment<br>The entities related via this navigation property have an existential dependency on their composition parent. The entity set of the composition parent MUST contain a NavigationPropertyBinding for this navigation property.
[SAPObjectNodeTypeReference](Common.xml#L637) *([Experimental](Common.md#Experimental))*|String|<a name="SAPObjectNodeTypeReference"></a>The entity referenced by the annotated property has the [`SAPObjectNodeType`](#SAPObjectNodeType) with this name<br>The entity containing the property and the entity referenced by it will in general have different SAP Object Node Types.
[IsNaturalPerson](Common.xml#L645)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsNaturalPerson"></a>The annotated entity type (e.g. `Employee`) or annotation (e.g. `IsImageUrl`) represents a natural person
[ValueList](Common.xml#L651)|[ValueListType](#ValueListType)|<a name="ValueList"></a>Specifies how to get a list of acceptable values for a property or parameter<br>The value list can be based on user input that is passed in the value list request. The value list can be used for type-ahead and classical pick lists.
[ValueListRelevantQualifiers](Common.xml#L732)|\[[SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)\]|<a name="ValueListRelevantQualifiers"></a>List of qualifiers of relevant ValueList annotations<br>The value of this annotation is a dynamic expression for calculating the qualifiers of relevant value lists depending on the values of one or more other properties.
[ValueListWithFixedValues](Common.xml#L737)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ValueListWithFixedValues"></a>If specified as true, there's only one value list mapping and its value list consists of a small number of fixed values<br>Applicable Annotation Terms:<ul><li>[ValueListShowValuesImmediately](#ValueListShowValuesImmediately)</li></ul>
[ValueListShowValuesImmediately](Common.xml#L746) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ValueListShowValuesImmediately"></a>A value list with a very small number of fixed values, can decide to show all values immediately
[ValueListForValidation](Common.xml#L751)|String|<a name="ValueListForValidation"></a>Contains the qualifier of the ValueList or ValueListMapping that should be used for validation<br>An empty string identifies the ValueList or ValueListMapping without a qualifier.
[ValueListReferences](Common.xml#L756)|\[URL\]|<a name="ValueListReferences"></a>A list of URLs of CSDL documents containing value list mappings for this parameter or property
[ValueListMapping](Common.xml#L761)|[ValueListMappingType](#ValueListMappingType)|<a name="ValueListMapping"></a>Specifies the mapping between data service properties and value list properties<br>The value list can be filtered based on user input. It can be used for type-ahead and classical pick lists. There may be many alternative mappings with different qualifiers.
[IsCalendarYear](Common.xml#L873)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYear"></a>Property encodes a year number as string following the logical pattern (-?)YYYY(Y*) consisting of an optional minus sign for years B.C. followed by at least four digits. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})
[IsCalendarHalfyear](Common.xml#L882)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarHalfyear"></a>Property encodes a halfyear number as string following the logical pattern H consisting of a single digit. The string matches the regex pattern [1-2]
[IsCalendarQuarter](Common.xml#L891)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarQuarter"></a>Property encodes a calendar quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsCalendarMonth](Common.xml#L900)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarMonth"></a>Property encodes a calendar month number as string following the logical pattern MM consisting of two digits. The string matches the regex pattern 0[1-9]\|1[0-2]
[IsCalendarWeek](Common.xml#L909)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarWeek"></a>Property encodes a calendar week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsDayOfCalendarMonth](Common.xml#L918)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarMonth"></a>Day number relative to a calendar month. Valid values are between 1 and 31.
[IsDayOfCalendarYear](Common.xml#L926)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarYear"></a>Day number relative to a calendar year. Valid values are between 1 and 366.
[IsCalendarYearHalfyear](Common.xml#L934)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearHalfyear"></a>Property encodes a calendar year and halfyear as string following the logical pattern (-?)YYYY(Y*)H consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the halfyear. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-2]
[IsCalendarYearQuarter](Common.xml#L944)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearQuarter"></a>Property encodes a calendar year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsCalendarYearMonth](Common.xml#L954)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearMonth"></a>Property encodes a calendar year and month as string following the logical pattern (-?)YYYY(Y*)MM consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent the months January to December. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])
[IsCalendarYearWeek](Common.xml#L965)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearWeek"></a>Property encodes a calendar year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsCalendarDate](Common.xml#L975)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarDate"></a>Property encodes a calendar date: year, month and day as string following the logical pattern (-?)YYYY(Y*)MMDD consisting of an optional minus sign for years B.C. followed by at least eight digits, where the last four digits represent the months January to December (MM) and the day of the month (DD). The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])(0[1-9]\|[12][0-9]\|3[01]) The regex pattern does not reflect the additional constraint for "Day-of-month Values": The day value must be no more than 30 if month is one of 04, 06, 09, or 11, no more than 28 if month is 02 and year is not divisible by 4, or is divisible by 100 but not by 400, and no more than 29 if month is 02 and year is divisible by 400, or by 4 but not by 100.
[IsFiscalYear](Common.xml#L992)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYear"></a>Property encodes a fiscal year number as string following the logical pattern YYYY consisting of four digits. The string matches the regex pattern [1-9][0-9]{3}
[IsFiscalPeriod](Common.xml#L1001)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalPeriod"></a>Property encodes a fiscal period as string following the logical pattern PPP consisting of three digits. The string matches the regex pattern [0-9]{3}
[IsFiscalYearPeriod](Common.xml#L1010)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearPeriod"></a>Property encodes a fiscal year and period as string following the logical pattern YYYYPPP consisting of seven digits, where the last three digits represent the fiscal period in the year. The string matches the regex pattern ([1-9][0-9]{3})([0-9]{3})
[IsFiscalQuarter](Common.xml#L1020)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalQuarter"></a>Property encodes a fiscal quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsFiscalYearQuarter](Common.xml#L1028)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearQuarter"></a>Property encodes a fiscal year and quarter as string following the logical pattern YYYYQ consisting of five digits, where the last digit represents the quarter. The string matches the regex pattern [1-9][0-9]{3}[1-4]
[IsFiscalWeek](Common.xml#L1037)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalWeek"></a>Property encodes a fiscal week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsFiscalYearWeek](Common.xml#L1045)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearWeek"></a>Property encodes a fiscal year and week as string following the logical pattern YYYYWW consisting of six digits, where the last two digits represent the week number in the year. The string matches the regex pattern [1-9][0-9]{3}(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsDayOfFiscalYear](Common.xml#L1054)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfFiscalYear"></a>Day number relative to a fiscal year. Valid values are between 1 and 371.
[IsFiscalYearVariant](Common.xml#L1061)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearVariant"></a>Property encodes a fiscal year variant
[MutuallyExclusiveTerm](Common.xml#L1069)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MutuallyExclusiveTerm"></a>Only one term of the group identified with the Qualifier attribute can be applied
[OperationTemplate](Common.xml#L1073) *([Experimental](Common.md#Experimental))*|[QualifiedName](#QualifiedName)|<a name="OperationTemplate"></a>Qualified name of an operation that serves as template for the operation described by the annotated term or term property<br>Operations named in this annotation cannot themselves be invoked.
[DraftRoot](Common.xml#L1082)|[DraftRootType](#DraftRootType)|<a name="DraftRoot"></a>Root entities of business documents that support the draft pattern
[DraftNode](Common.xml#L1223) *(Deprecated)*|[DraftNodeType](#DraftNodeType)|<a name="DraftNode"></a>Draft nodes are marked with [`DraftActivationVia`](#DraftActivationVia)
[DraftActivationVia](Common.xml#L1270)|[SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|<a name="DraftActivationVia"></a>Draft entities in this set are indirectly activated via draft entities in the referenced entity set
[EditableFieldFor](Common.xml#L1274)|PropertyPath|<a name="EditableFieldFor"></a>The annotated property is an editable field for the referenced key property
[SemanticKey](Common.xml#L1304)|\[PropertyPath\]|<a name="SemanticKey"></a>The listed properties form the semantic key, i.e. they are unique modulo IsActiveEntity
[SideEffects](Common.xml#L1308)|[SideEffectsType](#SideEffectsType)|<a name="SideEffects"></a>Describes side-effects of modification operations
[DefaultValuesFunction](Common.xml#L1395)|[QualifiedName](#QualifiedName)|<a name="DefaultValuesFunction"></a>Function to calculate default values based on user input that is only known to the client and "context information" that is already available to the service<br><p>The default values function must have a bound overload whose binding parameter type matches the annotation target</p> <ul> <li>for an entity set: collection of entity type of entity set</li> <li>for a navigation property: identical to the type of the navigation property (single- or collection-valued)</li> <li>for a bound action/function: identical to the binding parameter type of the annotated action/function</li> </ul> <p>In addition the overload can have non-binding parameters for values that the user has already entered:</p> <ul> <li>for an entity set or navigation property: each non-binding parameter name and type must match the name and type of a property of the entity to be created</li> <li>for an action or function: each non-binding parameter name and type must match the name and type of a non-binding parameter of the action or function to be called</li> </ul> <p>The result type of the default values function is a complex type whose properties correspond in name and type to a subset of</p> <ul> <li>the properties of the entity to create, or</li> <li>the parameters of the action or function to call</li> </ul> 
[DerivedDefaultValue](Common.xml#L1415) *([Experimental](Common.md#Experimental))*|String|<a name="DerivedDefaultValue"></a>Function import to derive a default value for the property from a given context.<br><p>Function import has two parameters of complex types:</p> <ul> <li><code>parameters</code>, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property</li> <li><code>properties</code>, a structure resembling the type of the entity set of the annotated property</li> </ul> <p>The return type must be of the same type as the annotated property.</p> <p>Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.</p> 
[FilterDefaultValue](Common.xml#L1432)|PrimitiveType?|<a name="FilterDefaultValue"></a>A default value for the property to be used in filter expressions.
[FilterDefaultValueHigh](Common.xml#L1436) *([Experimental](Common.md#Experimental))*|PrimitiveType?|<a name="FilterDefaultValueHigh"></a>A default upper limit for the property to be used in 'less than or equal' filter expressions.
[DerivedFilterDefaultValue](Common.xml#L1441) *([Experimental](Common.md#Experimental))*|String|<a name="DerivedFilterDefaultValue"></a>Function import to derive a default value for the property from a given context in order to use it in filter expressions.<br><p>Function import has two parameters of complex types:</p> <ul> <li><code>parameters</code>, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property</li> <li><code>properties</code>, a structure resembling the type of the entity set of the annotated property</li> </ul> <p>The return type must be of the same type as the annotated property.</p> <p>Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.</p> 
[SortOrder](Common.xml#L1461)|\[[SortOrderType](#SortOrderType)\]|<a name="SortOrder"></a>List of sort criteria<br>The items of the annotated entity set or the items of the collection of the annotated entity type are sorted by the first entry of the SortOrder collection. Items with same value for this first sort criteria are sorted by the second entry of the SortOrder collection, and so on.
[RecursiveHierarchy](Common.xml#L1521) *(Deprecated)*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Use terms [Aggregation.RecursiveHierarchy](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#RecursiveHierarchy) and [Hierarchy.RecursiveHierarchy](https://github.com/SAP/odata-vocabularies/blob/main/vocabularies/Hierarchy.md#RecursiveHierarchy) instead
[CreatedAt](Common.xml#L1569)|DateTimeOffset?|<a name="CreatedAt"></a>Creation timestamp
[CreatedBy](Common.xml#L1573)|[UserID?](#UserID)|<a name="CreatedBy"></a>First editor
[ChangedAt](Common.xml#L1577)|DateTimeOffset?|<a name="ChangedAt"></a>Last modification timestamp
[ChangedBy](Common.xml#L1581)|[UserID?](#UserID)|<a name="ChangedBy"></a>Last editor
[OriginalProtocolVersion](Common.xml#L1593)|String|<a name="OriginalProtocolVersion"></a>Original protocol version of a converted (V4) CSDL document, allowed values `2.0` and `3.0`
[ApplyMultiUnitBehaviorForSortingAndFiltering](Common.xml#L1598)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ApplyMultiUnitBehaviorForSortingAndFiltering"></a>Sorting and filtering of amounts in multiple currencies needs special consideration<br>TODO: add link to UX documentation on https://experience.sap.com/fiori-design/
[mediaUploadLink](Common.xml#L1603) *([Experimental](Common.md#Experimental))*|URL|<a name="mediaUploadLink"></a>URL for uploading new media content to a Document Management Service<br>In contrast to the `@odata.mediaEditLink` this URL allows to upload new media content without directly changing a stream property or media resource. The upload request typically uses HTTP POST with `Content-Type: multipart/form-data` following RFC 7578. The upload request must contain one multipart representing the content of the file. The `name` parameter in the `Content-Disposition` header (as described in RFC 7578) is irrelevant, but the `filename` parameter is expected. If the request succeeds the response will contain a JSON body of `Content-Type: application/json` with a JSON property `readLink`. The newly uploaded media resource can be linked to the stream property by changing the `@odata.mediaReadLink` to the value of this `readLink` in a subsequent PATCH request to the OData entity.
[PrimitivePropertyPath](Common.xml#L1618) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PrimitivePropertyPath"></a>A term or term property with this tag whose type is (a collection of) `Edm.PropertyPath` MUST resolve to a primitive structural property
[WebSocketBaseURL](Common.xml#L1623) *([Experimental](Common.md#Experimental))*|URL|<a name="WebSocketBaseURL"></a>Base URL for WebSocket connections<br>This annotation MUST be unqualified.
[WebSocketChannel](Common.xml#L1631) *([Experimental](Common.md#Experimental))*|String?|<a name="WebSocketChannel"></a>Channel for WebSocket connections<br><p>Messages sent over the channel follow the <a href="https://community.sap.com/t5/application-development-blog-posts/specification-of-the-push-channel-protocol-pcp/ba-p/13137541">ABAP Push Channel Protocol</a>. To consume a channel, the client opens a web socket connection at the <a href="#WebSocketBaseURL"><code>WebSocketBaseURL</code></a> followed by URL parameters</p> <ul> <li>parameter name = annotation qualifier, parameter value = channel ID (see below)</li> <li>parameter name = <code>relatedService</code>, parameter value = base URL (relative to server root) of the OData service of the app</li> </ul> <p>Supported qualifiers and channel IDs:</p> <dl> <dt>`sideEffects` <dd>Notifications about side effects to be triggered by the client (channel ID = non-null annotation value) </dl> 
[AddressViaNavigationPath](Common.xml#L1648)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="AddressViaNavigationPath"></a>Service prefers requests to use a resource path with navigation properties<br>Use this tag on services that do not restrict requests to certain resource paths via [`Capabilities`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Capabilities.V1.html) or [`Core.RequiresExplicitBinding`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Core.V1.html#RequiresExplicitBinding) annotations, but that prefer requests with a resource path that contains the navigation properties reflecting the UI structure.<br>For example, entering a cancellation fee into an order item field bound to `CancellationItem/Fee` leads to a `PATCH Orders(23)/Items(5)/CancellationItem` request with `{"Fee": ...}` payload.
[ReferentialConstraint](Common.xml#L1663) *([Experimental](Common.md#Experimental))*|\[[ReferentialConstraintType](#ReferentialConstraintType)\]|<a name="ReferentialConstraint"></a>[Referential constraints](https://oasis-tcs.github.io/odata-specs/odata-csdl-xml/odata-csdl-xml.html#ReferentialConstraint) without nullability requirement

<a name="TextFormatType"></a>
## [TextFormatType](Common.xml#L134)


Member|Value|Description
:-----|----:|:----------
[plain](Common.xml#L135)|0|Plain text, line breaks represented as the character 0x0A
[html](Common.xml#L138)|1|Plain text with markup that can validly appear directly within an HTML DIV element

<a name="SemanticObjectMappingAbstract"></a>
## [*SemanticObjectMappingAbstract*](Common.xml#L303)
Maps a property of the Semantic Object to a property of the annotated entity type or a sibling property of the annotated property or a constant value

**Derived Types:**
- [SemanticObjectMappingType](#SemanticObjectMappingType)
- [SemanticObjectMappingConstant](#SemanticObjectMappingConstant)

Property|Type|Description
:-------|:---|:----------
[SemanticObjectProperty](Common.xml#L305)|String|Name of the Semantic Object property

<a name="SemanticObjectMappingType"></a>
## [SemanticObjectMappingType](Common.xml#L309): [SemanticObjectMappingAbstract](#SemanticObjectMappingAbstract)


Property|Type|Description
:-------|:---|:----------
[*SemanticObjectProperty*](Common.xml#L305)|String|Name of the Semantic Object property
[LocalProperty](Common.xml#L310)|PropertyPath|Path to a local property that provides the value for the Semantic Object property

<a name="SemanticObjectMappingConstant"></a>
## [SemanticObjectMappingConstant](Common.xml#L314): [SemanticObjectMappingAbstract](#SemanticObjectMappingAbstract) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[*SemanticObjectProperty*](Common.xml#L305)|String|Name of the Semantic Object property
[Constant](Common.xml#L316)|PrimitiveType|Constant value for the Semantic Object property

<a name="FilterExpressionRestrictionType"></a>
## [FilterExpressionRestrictionType](Common.xml#L365) *(Deprecated)*
Use term Capabilities.FilterRestrictions instead

<a name="FilterExpressionType"></a>
## [FilterExpressionType](Common.xml#L377) *(Deprecated)*
Use term Capabilities.FilterRestrictions instead

<a name="FieldControlType"></a>
## [FieldControlType](Common.xml#L402)
Control state of a property

When changes are requested, the value of this annotation in the before-image or after-image
          of the request plays a role. These may differ if the value is given dynamically in the metadata.

Member|Value|Description
:-----|----:|:----------
[Mandatory](Common.xml#L408)|7|Property is mandatory from a business perspective<br><p>A request that</p> <ul> <li>sets the property to null or an empty value or</li> <li>creates a non-<a href="#DraftRoot">draft</a> entity and omits the property or</li> <li>activates a draft entity while the property is null or empty</li> </ul> <p>fails entirely if this annotation is <code>Mandatory</code> in the after-image of the request. The empty string is an empty value. Service-specific rules may consider other values, also of non-string type, empty. Values in draft entities are never considered empty. Mandatory properties SHOULD be decorated in the UI with an asterisk. Null or empty values can also be disallowed by restricting the property value range with the standard type facet <code>Nullable</code> or terms from the <a href="https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Validation.V1.md">Validation vocabulary</a>.</p> 
[Optional](Common.xml#L424)|3|Property may have a value<br>This value does not make sense as a static annotation value.
[ReadOnly](Common.xml#L428)|1|Property value cannot be changed<br>A request to change the property to a value that differs from the before-image fails entirely according to [OData-Protocol, section 11.4.3](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_UpdateanEntity) if this annotation is given dynamically as `ReadOnly` in the before-image of the request.<br> To statically mark a property as read-only use term [Core.Computed](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Computed) instead.
[Inapplicable](Common.xml#L438)|0|Property has no meaning in the current entity state<br>A request that sets the property to a non-initial non-null value fails entirely if this annotation is `Inapplicable` in the after-image of the request.<br> This value does not make sense as a static annotation value.<br>Example for dynamic use: in a travel expense report the property `DestinationCountry` is inapplicable if trip type is domestic, and mandatory if trip type is international.
[Hidden](Common.xml#L448)|0|Deprecated synonym for Inapplicable, do not use<br>To statically hide a property on a UI use [UI.Hidden](UI.md#Hidden) instead

<a name="ApplicationType"></a>
## [ApplicationType](Common.xml#L464) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Component](Common.xml#L466)|String?|Software component of service implementation
[ServiceRepository](Common.xml#L469)|String?|...
[ServiceId](Common.xml#L472)|String?|...
[ServiceVersion](Common.xml#L475)|String?|...

<a name="ErrorResolutionType"></a>
## [ErrorResolutionType](Common.xml#L494) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Analysis](Common.xml#L496)|String?|Short hint on how to analyze this error
[Note](Common.xml#L499)|String?|Note for error resolution
[AdditionalNote](Common.xml#L502)|String?|Additional note for error resolution

<a name="NumericMessageSeverityType"></a>
## [NumericMessageSeverityType](Common.xml#L545)
**Type:** Byte

Classifies an end-user message as info, success, warning, or error

Allowed Value|Description
:------------|:----------
[1](Common.xml#L549)|Success - no action required
[2](Common.xml#L553)|Information - no action required
[3](Common.xml#L557)|Warning - action may be required
[4](Common.xml#L561)|Error - action is required

<a name="IntervalType"></a>
## [IntervalType](Common.xml#L584)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L585) *([Experimental](Common.md#Experimental))*|String?|A short, human-readable text suitable for labels and captions in UIs
[LowerBoundary](Common.xml#L590)|PropertyPath|Property holding the lower interval boundary
[LowerBoundaryIncluded](Common.xml#L593)|Boolean|The lower boundary value is included in the interval
[UpperBoundary](Common.xml#L596)|PropertyPath|Property holding the upper interval boundary
[UpperBoundaryIncluded](Common.xml#L599)|Boolean|The upper boundary value is included in the interval

<a name="SAPObjectNodeTypeType"></a>
## [SAPObjectNodeTypeType](Common.xml#L620) *([Experimental](Common.md#Experimental))*
Information about an SAP Object Node Type

Property|Type|Description
:-------|:---|:----------
[Name](Common.xml#L623)|String|The name of the SAP Object Node Type

<a name="ValueListType"></a>
## [ValueListType](Common.xml#L655)
Exactly one of `CollectionPath` and `RelativeCollectionPath` must be provided.

Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L676)|String?|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L680)|String?|Resource path of an OData collection with possible values, relative to CollectionRoot
[RelativeCollectionPath](Common.xml#L683)|NavigationPropertyPath?|Navigation property path of an OData collection with possible values, relative to the annotation target
[CollectionRoot](Common.xml#L686)|String?|Service root of the value list collection; not specified means local to the document containing the annotation<br>`CollectionRoot` must not be specified unless `CollectionPath` is provided.
[DistinctValuesSupported](Common.xml#L692)|Boolean|Indicates that the value list supports a 'distinct' aggregation on the value list properties defined via ValueListParameterInOut and ValueListParameterOut
[SearchSupported](Common.xml#L695)|Boolean|Value list supports the $search query option<br>The value of the target property is used as the search expression instead of in $filter
[FetchValues](Common.xml#L699)|[FetchValuesType?](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](Common.xml#L702)|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<br>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the entity set identified via CollectionPath
[SelectionVariantQualifier](Common.xml#L706)|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<br>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath
[Parameters](Common.xml#L710)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

**Applicable Annotation Terms:**

- [QuickInfo](#QuickInfo)

<a name="FetchValuesType"></a>
## [FetchValuesType](Common.xml#L716)
**Type:** Byte

Hint on when to fetch values

Allowed Value|Description
:------------|:----------
[1](Common.xml#L720)|Fetch values immediately without filter
[2](Common.xml#L724)|Fetch values with a filter

<a name="ValueListMappingType"></a>
## [ValueListMappingType](Common.xml#L765)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L771)|String?|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L775)|String|Resource path of an OData collection with possible values, relative to the document containing the value list mapping
[DistinctValuesSupported](Common.xml#L778)|Boolean|Indicates that the value list supports a 'distinct' aggregation on the value list properties defined via ValueListParameterInOut and ValueListParameterOut
[FetchValues](Common.xml#L781)|[FetchValuesType?](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](Common.xml#L784)|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<br>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the value list entity set identified via CollectionPath in the ValueListReference annotation
[SelectionVariantQualifier](Common.xml#L788)|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<br>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath
[Parameters](Common.xml#L792)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

**Applicable Annotation Terms:**

- [QuickInfo](#QuickInfo)

<a name="ValueListParameter"></a>
## [*ValueListParameter*](Common.xml#L797)


**Derived Types:**
- [ValueListParameterIn](#ValueListParameterIn)
- [ValueListParameterConstant](#ValueListParameterConstant)
- [ValueListParameterConstants](#ValueListParameterConstants)
- [ValueListParameterInOut](#ValueListParameterInOut)
- [ValueListParameterOut](#ValueListParameterOut)
- [ValueListParameterDisplayOnly](#ValueListParameterDisplayOnly)
- [ValueListParameterFilterOnly](#ValueListParameterFilterOnly)

Property|Type|Description
:-------|:---|:----------
[ValueListProperty](Common.xml#L798)|String|Path to property in the value list . Format is identical to PropertyPath annotations.

<a name="ValueListParameterIn"></a>
## [ValueListParameterIn](Common.xml#L802): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L798)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L803)|PropertyPath|Path to property that is used to filter the value list with `eq` comparison<br>In case the property path contains a collection-based navigation or structural property, the filter is a set of `eq` comparisons connected by `or` operators
[InitialValueIsSignificant](Common.xml#L807)|Boolean|Initial value, e.g. empty string, is a valid and significant value

<a name="ValueListParameterConstant"></a>
## [ValueListParameterConstant](Common.xml#L811): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L798)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[Constant](Common.xml#L812)|PrimitiveType|Constant value that is used to filter the value list with `eq` comparison, using the same representation as property default values, see [CSDL XML, 7.2.7 Default Value](https://docs.oasis-open.org/odata/odata-csdl-xml/v4.01/odata-csdl-xml-v4.01.html#sec_DefaultValue)
[InitialValueIsSignificant](Common.xml#L815) *([Experimental](Common.md#Experimental))*|Boolean|Initial value, e.g. empty string, is a valid and significant value

<a name="ValueListParameterConstants"></a>
## [ValueListParameterConstants](Common.xml#L820): [ValueListParameter](#ValueListParameter) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L798)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[Constants](Common.xml#L822)|\[PrimitiveType\]|List of constant values that are used to filter the value list with `eq` comparisons connected by `or` operators, using the same representation as property default values, see [CSDL XML, 7.2.7 Default Value](https://docs.oasis-open.org/odata/odata-csdl-xml/v4.01/odata-csdl-xml-v4.01.html#sec_DefaultValue). Initial values are significant.<br>An empty list means a vacuous filter condition

<a name="ValueListParameterInOut"></a>
## [ValueListParameterInOut](Common.xml#L829): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L798)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L830)|PropertyPath|Path to property that is used to filter the value list with `startswith` comparison and filled from the picked value list item
[InitialValueIsSignificant](Common.xml#L833)|Boolean|Initial value, e.g. empty string, is a valid and significant value

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

<a name="ValueListParameterOut"></a>
## [ValueListParameterOut](Common.xml#L842): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L798)|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L843)|PropertyPath|Path to property that is filled from response

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

<a name="ValueListParameterDisplayOnly"></a>
## [ValueListParameterDisplayOnly](Common.xml#L852): [ValueListParameter](#ValueListParameter)
Value list property that is not used to fill the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L798)|String|Path to property in the value list . Format is identical to PropertyPath annotations.

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

<a name="ValueListParameterFilterOnly"></a>
## [ValueListParameterFilterOnly](Common.xml#L860): [ValueListParameter](#ValueListParameter) *(Deprecated)*
All filterable properties of the value list can be used to filter

<a name="DraftRootType"></a>
## [DraftRootType](Common.xml#L1087): [DraftNodeType](#DraftNodeType)


Property|Type|Description
:-------|:---|:----------
[*ValidationFunction*](Common.xml#L1257) *(Deprecated)*|[QualifiedName?](#QualifiedName)|Separate validation without side-effects is not useful
[PreparationAction](Common.xml#L1088)|[QualifiedName?](#QualifiedName)|Action that prepares a draft document for later activation<br>The action is bound to the draft document root and has no parameters.
[ActivationAction](Common.xml#L1094)|[QualifiedName](#QualifiedName)|Action that activates a draft document<br>The action is bound to the draft document root and has no parameters.
[DiscardAction](Common.xml#L1100)|[QualifiedName?](#QualifiedName)|Action that discards a draft document<br>The action is bound to the draft document root and has no parameters.
[EditAction](Common.xml#L1106)|[QualifiedName?](#QualifiedName)|Action that creates an edit draft<br>The action is bound to the active document root node and has the signature of [`Template_EditAction`](#Template_EditAction).
[ResumeAction](Common.xml#L1113) *([Experimental](Common.md#Experimental))*|[QualifiedName?](#QualifiedName)|Action that resumes a draft document. The action re-acquires the exclusive lock if needed and checks if the related active document was not changed concurrently<br>The action is bound to the draft document root and has no parameters.
[NewAction](Common.xml#L1120)|[QualifiedName?](#QualifiedName)|Action that creates a new draft<br>The action is bound to the draft document root entity set and has the signature of [`Template_NewAction`](#Template_NewAction).<br>New drafts may also be created by POSTing an entity with property `IsActiveEntity` = `false` (default) to the entity set.
[AdditionalNewActions](Common.xml#L1129)|\[[QualifiedName](#QualifiedName)\]|Additional actions beside the default POST or standard `NewAction`that create a new draft<br>The actions are bound to the draft document root entity set and have the signature of [`Template_NewAction`](#Template_NewAction).
[ShareAction](Common.xml#L1136)|[QualifiedName?](#QualifiedName)|Action that shares a draft document with other users and restricts access to the listed users in their specified roles<br><p>The action is bound to the draft document root node and has the signature of <a href="#Template_ShareAction"><code>Template_ShareAction</code></a>. It restricts access to the listed users in their specified roles.</p> <p>If this action is present, the client can receive notifications about changes to the collaborative draft by opening a web socket connection at the <a href="#WebSocketBaseURL"><code>WebSocketBaseURL</code></a> followed by URL parameters</p> <ul> <li><code>relatedService</code> = base URL (relative to server root) of the OData service of the app</li> <li><code>draft</code> = draft UUID.</li> </ul> 

<a name="DraftNodeType"></a>
## [DraftNodeType](Common.xml#L1237) *(Deprecated)*
The deprecated term [`DraftNode`](#DraftNode) effectively only tags the entity set, its value is an empty record

<a name="SimpleIdentifier"></a>
## [SimpleIdentifier](Common.xml#L1278) *(Deprecated)*
Use type [Core.SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier) instead

<a name="QualifiedName"></a>
## [QualifiedName](Common.xml#L1290)
**Type:** String

The namespace-qualified name of an OData construct in scope

Alias-qualified names are not fully supported, and the use of namespace-qualified names is strongly recommended.

<a name="ActionOverload"></a>
## [ActionOverload](Common.xml#L1295)
**Type:** String

The namespace-qualified name of an action with an optional overload

The namespace-qualified name of an action, optionally followed by parentheses
            containing the binding parameter type of a bound action overload to identify that bound overload,
            or by empty parentheses to identify the unbound overload, like in the `Target` attribute of an `Annotation`.

<a name="SideEffectsType"></a>
## [SideEffectsType](Common.xml#L1311)
Changes to the source properties or source entities may have side-effects on the target properties or entities.

If neither TargetProperties nor TargetEntities are specified, a change to the source property values may have unforeseeable side-effects.
An empty NavigationPropertyPath may be used in TargetEntities to specify that any property of the annotated entity type may be affected.

Side effects without a `TriggerAction` happen immediately when modifying one of the source properties or source entities. Side effects with a `TriggerAction` are deferred until explicitly triggered via the `TriggerAction`.

Special case where the side effect is annotated on an action: here the change trigger is the action invocation, so `SourceProperties` and `SourceEntities` have no meaning,
only `TargetProperties` and `TargetEntities` are relevant. They are addressed via the binding parameter of the action, e.g. if the binding parameter is named `_it`, all paths have to start with `_it/`.
This can also be used with OData V2 services: the annotation target is a function import that is marked with [`sap:action-for`](https://wiki.scn.sap.com/wiki/display/EmTech/SAP+Annotations+for+OData+Version+2.0#SAPAnnotationsforODataVersion2.0-Elementedm:FunctionImport), and all paths have to start with `_it/`.

Property|Type|Description
:-------|:---|:----------
[SourceProperties](Common.xml#L1323)|\[PropertyPath\]|Changes to the values of one or more of these structural properties may affect the targets
[SourceEntities](Common.xml#L1326)|\[NavigationPropertyPath\]|Changes to one or more of these entities may affect the targets. An empty path means the annotation target.
[SourceEvents](Common.xml#L1329) *([Experimental](Common.md#Experimental))*|\[String\]|When the service raises one or more of these "events for side effects", the targets may be affected
[TargetProperties](Common.xml#L1333)|\[String\]|These structural properties may be affected if the value of one of the sources changes<br>The syntax follows closely the syntax rules for `Edm.PropertyPath`, with the addition of `*` as the last path segment meaning all structural properties directly reached via the preceding path
[TargetEntities](Common.xml#L1337)|\[NavigationPropertyPath\]|These entities will be affected if the value of one of the sources changes. All affected entities need to be explicitly listed. An empty path means the annotation target.
[EffectTypes](Common.xml#L1340) *(Deprecated)*|[EffectType?](#EffectType)|All side effects are essentially value changes, differentiation not needed.
[TriggerAction](Common.xml#L1351)|[QualifiedName?](#QualifiedName)|Bound action to trigger side-effects after modifying an entity<br>Binding parameter type of the trigger action is the entity type annotated with `SideEffects`. The action does not have any additional parameters and does not return anything. It either succeeds with `204 No Content` or it fails with `4xx` or `5xx`.
[Discretionary](Common.xml#L1355) *([Experimental](Common.md#Experimental))*|Boolean|Indicates whether the client can decide if a side-effect should be triggered or not<br>The value of this property typically a static boolean value. It can be used by clients (e.g. by asking the end user) to decide if the side effect should be triggered or not. This indicator is only allowed in case a trigger action is given as only then the execution control of the side effect is provided to the client.

<a name="EffectType"></a>
## [EffectType](Common.xml#L1361) *(Deprecated)*
All side effects are essentially value changes, differentiation not needed.

<a name="SortOrderType"></a>
## [SortOrderType](Common.xml#L1469)
Exactly one of `Property`, `DynamicProperty` and `Expression` must be present

Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L1471)|PropertyPath?|Sort property
[DynamicProperty](Common.xml#L1483)|AnnotationPath?|Dynamic property introduced by an annotation and used as sort property<br>If the annotation referenced by the annotation path does not apply to the same collection of entities as the one being sorted according to the [`UI.PresentationVariant`](UI.md#PresentationVariant) or `Common.SortOrder` annotation, this instance of `UI.PresentationVariant/SortOrder` or `Common.SortOrder` MUST be silently ignored.<br>Allowed Terms:<ul><li>[AggregatedProperty](Analytics.md#AggregatedProperty)</li><li>[CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)</li></ul>
[Expression](Common.xml#L1497) *([Experimental](Common.md#Experimental))*|PrimitiveType?|Dynamic expression whose primitive result value is used to sort the instances
[Descending](Common.xml#L1501)|Boolean?|Sort direction, ascending if not specified otherwise

<a name="RecursiveHierarchyType"></a>
## [RecursiveHierarchyType](Common.xml#L1534) *(Deprecated)*
Use terms [Aggregation.RecursiveHierarchy](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#RecursiveHierarchy) and [Hierarchy.RecursiveHierarchy](https://github.com/SAP/odata-vocabularies/blob/main/vocabularies/Hierarchy.md#RecursiveHierarchy) instead

<a name="UserID"></a>
## [UserID](Common.xml#L1585)
**Type:** String

User ID

<a name="ReferentialConstraintType"></a>
## [ReferentialConstraintType](Common.xml#L1667) *([Experimental](Common.md#Experimental))*
A record that behaves like the standard referential constraint on the navigation property targeted by a [`ReferentialConstraint`](#ReferentialConstraint) annotation, but the nullability requirement for the dependent property is lifted. It asserts that the principal property _of an existing related entity_ must have the same value as the dependent property.

Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L1675)|PropertyPath|The path to the property is evaluated relative to the type containing the navigation property
[ReferencedProperty](Common.xml#L1678)|PropertyPath|The path to the referenced property MUST start with a segment containing the navigation property
