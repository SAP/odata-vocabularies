# Common Vocabulary
**Namespace: [com.sap.vocabularies.Common.v1](Common.xml)**

Common terms for all SAP vocabularies


## Terms

Term|Type|Description
:---|:---|:----------
[Experimental](./Common.xml#L43:~:text=<Term%20Name="-,Experimental,-")|String?|<a name="Experimental"></a>Terms, types, and properties annotated with this term are experimental and can be changed incompatibly or removed completely any time without prior warning.<br>Do not use or rely on experimental terms, types, and properties in production environments.
[ServiceVersion](./Common.xml#L54:~:text=<Term%20Name="-,ServiceVersion,-")|Int32|<a name="ServiceVersion"></a>1 for first version of a service, incremented when schema changes incompatibly and service is published with a different URI
[ServiceSchemaVersion](./Common.xml#L57:~:text=<Term%20Name="-,ServiceSchemaVersion,-")|Int32|<a name="ServiceSchemaVersion"></a>0 for first schema version within a service version, incremented when schema changes compatibly
[Label](./Common.xml#L62:~:text=<Term%20Name="-,Label,-")|String|<a name="Label"></a>A short, human-readable text suitable for labels and captions in UIs
[Heading](./Common.xml#L67:~:text=<Term%20Name="-,Heading,-")|String|<a name="Heading"></a>A short, human-readable text suitable for column headings in UIs
[QuickInfo](./Common.xml#L72:~:text=<Term%20Name="-,QuickInfo,-")|String|<a name="QuickInfo"></a>A short, human-readable text suitable for tool tips in UIs
[Text](./Common.xml#L77:~:text=<Term%20Name="-,Text,-")|String?|<a name="Text"></a>A descriptive text for values of the annotated property. Value MUST be a dynamic expression when used as metadata annotation.<br>Can be annotated with:<br>- [TextArrangement](UI.md#TextArrangement)
[TextFor](./Common.xml#L87:~:text=<Term%20Name="-,TextFor,-") *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="TextFor"></a>The annotated property contains a descriptive text for values of the referenced property.
[ExternalID](./Common.xml#L93:~:text=<Term%20Name="-,ExternalID,-") *([Experimental](Common.md#Experimental))*|String?|<a name="ExternalID"></a>A human readable identifier for values of the annotated property or parameter. Value MUST be a dynamic expression when used as metadata annotation.<br>If the annotated property is (part of) a foreign key of a resource, the external id is a human readable (part of an) identifier of this resource. There is a one-to-one relationship between each possible value of the annotated property and the corresponding external id. The annotation of a parameter refers to a property of the operation binding parameter.
[IsLanguageIdentifier](./Common.xml#L111:~:text=<Term%20Name="-,IsLanguageIdentifier,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsLanguageIdentifier"></a>An identifier to distinguish multiple texts in different languages for the same entity
[TextFormat](./Common.xml#L116:~:text=<Term%20Name="-,TextFormat,-")|[TextFormatType](#TextFormatType)|<a name="TextFormat"></a>The annotated property, parameter, or return type contains human-readable text that may contain formatting information
[Timezone](./Common.xml#L129:~:text=<Term%20Name="-,Timezone,-") *([Experimental](Common.md#Experimental))*|String?|<a name="Timezone"></a>The point in time represented by the annotated property or parameter shall be interpreted in the given time zone<br>Time zones shall be specified according to the [IANA](https://www.iana.org/time-zones) standard. If this annotation is absent or null or an empty string, points in time are typically interpreted in the current user's or default time zone. The annotation value can be a path expression resolving to a property that may be tagged with [`IsTimezone`](#IsTimezone).
[IsTimezone](./Common.xml#L139:~:text=<Term%20Name="-,IsTimezone,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsTimezone"></a>Annotated property or parameter is a time zone
[IsDigitSequence](./Common.xml#L190:~:text=<Term%20Name="-,IsDigitSequence,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDigitSequence"></a>Contains only digits
[IsUpperCase](./Common.xml#L195:~:text=<Term%20Name="-,IsUpperCase,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUpperCase"></a>Contains just uppercase characters
[IsCurrency](./Common.xml#L200:~:text=<Term%20Name="-,IsCurrency,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCurrency"></a>Annotated property or parameter is a currency code
[IsUnit](./Common.xml#L205:~:text=<Term%20Name="-,IsUnit,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUnit"></a>Annotated property or parameter is a unit of measure
[UnitSpecificScale](./Common.xml#L209:~:text=<Term%20Name="-,UnitSpecificScale,-")|PrimitiveType|<a name="UnitSpecificScale"></a>The number of fractional decimal digits of a currency amount or measured quantity<br>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default scale of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of fractional digits captured by that device.
[UnitSpecificPrecision](./Common.xml#L214:~:text=<Term%20Name="-,UnitSpecificPrecision,-") *([Experimental](Common.md#Experimental))*|PrimitiveType|<a name="UnitSpecificPrecision"></a>The number of significant decimal digits of a currency amount or measured quantity<br>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default precision of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of significant digits captured by that device.
[SecondaryKey](./Common.xml#L220:~:text=<Term%20Name="-,SecondaryKey,-") *(Deprecated)*|\[PropertyPath\]|<a name="SecondaryKey"></a>Use term `AlternateKeys` from the OASIS Core vocabulary instead
[MinOccurs](./Common.xml#L232:~:text=<Term%20Name="-,MinOccurs,-")|Int64|<a name="MinOccurs"></a>The annotated set or collection contains at least this number of items
[MaxOccurs](./Common.xml#L236:~:text=<Term%20Name="-,MaxOccurs,-")|Int64|<a name="MaxOccurs"></a>The annotated set or collection contains at most this number of items
[AssociationEntity](./Common.xml#L240:~:text=<Term%20Name="-,AssociationEntity,-")|\[NavigationPropertyPath\]|<a name="AssociationEntity"></a>Entity representing an n:m association with attributes
[DerivedNavigation](./Common.xml#L247:~:text=<Term%20Name="-,DerivedNavigation,-")|NavigationPropertyPath|<a name="DerivedNavigation"></a>Shortcut for a multi-segment navigation, contains the long path with all its segments
[Masked](./Common.xml#L253:~:text=<Term%20Name="-,Masked,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Masked"></a>Use terms `MaskedValue` instead
[MaskedValue](./Common.xml#L268:~:text=<Term%20Name="-,MaskedValue,-") *([Experimental](Common.md#Experimental))*|String?|<a name="MaskedValue"></a>Property contains sensitive data that is by default not transferred<br>By default a masked property is excluded from responses and instead an instance annotation with this term is sent, containing a masked value that can be rendered by user interfaces.
[RevealOnDemand](./Common.xml#L277:~:text=<Term%20Name="-,RevealOnDemand,-") *([Experimental](Common.md#Experimental))*|Boolean|<a name="RevealOnDemand"></a>Unmasked data for this property can be requested with custom query option `masked-values=false`
[SemanticObject](./Common.xml#L283:~:text=<Term%20Name="-,SemanticObject,-")|String?|<a name="SemanticObject"></a>Name of the Semantic Object represented as this entity type or identified by this property
[SemanticObjectMapping](./Common.xml#L286:~:text=<Term%20Name="-,SemanticObjectMapping,-")|\[[SemanticObjectMappingType](#SemanticObjectMappingType)\]|<a name="SemanticObjectMapping"></a>Maps properties of the annotated entity type or sibling properties of the annotated property to properties of the Semantic Object<br>This allows "renaming" of properties in the current context to match property names of the Semantic Object, e.g. `SenderPartyID` to `PartyID`. Only properties explicitly listed in the mapping are renamed, all other properties are available for intent-based navigation with their "local" name.
[SemanticObjectUnavailableActions](./Common.xml#L299:~:text=<Term%20Name="-,SemanticObjectUnavailableActions,-")|\[String\]|<a name="SemanticObjectUnavailableActions"></a>List of actions that are not available in the current state of the instance of the Semantic Object
[IsInstanceAnnotation](./Common.xml#L303:~:text=<Term%20Name="-,IsInstanceAnnotation,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsInstanceAnnotation"></a>Term can also be used as instance annotation; AppliesTo of this term specifies where it can be applied
[FilterExpressionRestrictions](./Common.xml#L333:~:text=<Term%20Name="-,FilterExpressionRestrictions,-") *(Deprecated)*|\[[FilterExpressionRestrictionType](#FilterExpressionRestrictionType)\]|<a name="FilterExpressionRestrictions"></a>Use term Capabilities.FilterRestrictions instead
[FieldControl](./Common.xml#L376:~:text=<Term%20Name="-,FieldControl,-")|[FieldControlType?](#FieldControlType)|<a name="FieldControl"></a>Control state of a property, parameter, or the media stream of a media entity<br>This term can be used for static field control, providing an enumeration member value in $metadata, as well as dynamically, providing a `Path` expression.<br/>In the dynamic case the property referenced by the `Path` expression MUST be of type `Edm.Byte` to accommodate OData V2 services as well as V4 infrastructures that don't support enumeration types.
[ExceptionCategory](./Common.xml#L425:~:text=<Term%20Name="-,ExceptionCategory,-") *([Experimental](Common.md#Experimental))*|String|<a name="ExceptionCategory"></a>A machine-readable exception category
[Application](./Common.xml#L430:~:text=<Term%20Name="-,Application,-") *([Experimental](Common.md#Experimental))*|[ApplicationType](#ApplicationType)|<a name="Application"></a>...
[Timestamp](./Common.xml#L450:~:text=<Term%20Name="-,Timestamp,-") *([Experimental](Common.md#Experimental))*|DateTimeOffset|<a name="Timestamp"></a>...
[TransactionId](./Common.xml#L455:~:text=<Term%20Name="-,TransactionId,-") *([Experimental](Common.md#Experimental))*|String|<a name="TransactionId"></a>...
[ErrorResolution](./Common.xml#L460:~:text=<Term%20Name="-,ErrorResolution,-") *([Experimental](Common.md#Experimental))*|[ErrorResolutionType](#ErrorResolutionType)|<a name="ErrorResolution"></a>Hints for resolving this error
[Messages](./Common.xml#L478:~:text=<Term%20Name="-,Messages,-")|\[ComplexType\]|<a name="Messages"></a>Collection of end-user messages<br>The name of the message type is service-specific, its structure components are identified by naming convention, following the names of the OData error response structure.<br/>The minimum structure is<br/>- `code: Edm.String`<br/>- `message: Edm.String`<br/>- `target: Edm.String nullable`<br/>- `additionalTargets: Collection(Edm.String)`<br/>- `transition: Edm.Boolean`<br/>- `numericSeverity: Edm.Byte`<br/>- `longtextUrl: Edm.String nullable`
[additionalTargets](./Common.xml#L501:~:text=<Term%20Name="-,additionalTargets,-") *([Experimental](Common.md#Experimental))*|\[String\]|<a name="additionalTargets"></a>Additional targets for the message<br>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response
[longtextUrl](./Common.xml#L507:~:text=<Term%20Name="-,longtextUrl,-")|URL|<a name="longtextUrl"></a>Location of the message long text<br>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response
[numericSeverity](./Common.xml#L513:~:text=<Term%20Name="-,numericSeverity,-")|[NumericMessageSeverityType](#NumericMessageSeverityType)|<a name="numericSeverity"></a>Classifies an end-user message as info, success, warning, or error<br>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response
[MaximumNumericMessageSeverity](./Common.xml#L518:~:text=<Term%20Name="-,MaximumNumericMessageSeverity,-") *([Experimental](Common.md#Experimental))*|[NumericMessageSeverityType?](#NumericMessageSeverityType)|<a name="MaximumNumericMessageSeverity"></a>The maximum severity of all end-user messages attached to an entity, null if no messages are attached<br>This metadata annotation can be applied to entity types that are also annotated with term [`Common.Messages`](#Messages)
[IsActionCritical](./Common.xml#L547:~:text=<Term%20Name="-,IsActionCritical,-")|Boolean|<a name="IsActionCritical"></a>Criticality of the function or action to enforce a warning or similar before it's executed
[Attributes](./Common.xml#L551:~:text=<Term%20Name="-,Attributes,-")|\[PropertyPath\]|<a name="Attributes"></a>Attributes related to this property, which may occur in denormalized entity types
[RelatedRecursiveHierarchy](./Common.xml#L555:~:text=<Term%20Name="-,RelatedRecursiveHierarchy,-")|AnnotationPath|<a name="RelatedRecursiveHierarchy"></a>A recursive hierarchy related to this property. The annotation path must end in Aggregation.RecursiveHierarchy.
[Interval](./Common.xml#L559:~:text=<Term%20Name="-,Interval,-")|[IntervalType](#IntervalType)|<a name="Interval"></a>An interval with lower and upper boundaries described by two properties
[ResultContext](./Common.xml#L577:~:text=<Term%20Name="-,ResultContext,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ResultContext"></a>The annotated entity type has one or more containment navigation properties. An instance of the annotated entity type provides the context required for determining the target entity sets reached by these containment navigation properties.
[SAPObjectNodeType](./Common.xml#L585:~:text=<Term%20Name="-,SAPObjectNodeType,-") *([Experimental](Common.md#Experimental))*|[SAPObjectNodeTypeType](#SAPObjectNodeTypeType)|<a name="SAPObjectNodeType"></a>The SAP Object Node Type represented by the annotated entity type<br>SAP Object Node Types define the structure of SAP Object Types, which are a generalization of Business Object, Technical Object, Configuration Object, and Analytical Object.
[Composition](./Common.xml#L601:~:text=<Term%20Name="-,Composition,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Composition"></a>The annotated navigation property represents a logical composition, even though it is non-containment<br>The entities related via this navigation property have an existential dependency on their composition parent. The entity set of the composition parent MUST contain a NavigationPropertyBinding for this navigation property.
[SAPObjectNodeTypeReference](./Common.xml#L610:~:text=<Term%20Name="-,SAPObjectNodeTypeReference,-") *([Experimental](Common.md#Experimental))*|String|<a name="SAPObjectNodeTypeReference"></a>The entity referenced by the annotated property has the [`SAPObjectNodeType`](#SAPObjectNodeType) with this name<br>The entity containing the property and the entity referenced by it will in general have different SAP Object Node Types.
[IsNaturalPerson](./Common.xml#L618:~:text=<Term%20Name="-,IsNaturalPerson,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsNaturalPerson"></a>The annotated entity type (e.g. `Employee`) or annotation (e.g. `IsImageUrl`) represents a natural person
[ValueList](./Common.xml#L624:~:text=<Term%20Name="-,ValueList,-")|[ValueListType](#ValueListType)|<a name="ValueList"></a>Specifies how to get a list of acceptable values for a property or parameter<br>The value list can be based on user input that is passed in the value list request. The value list can be used for type-ahead and classical pick lists.
[ValueListRelevantQualifiers](./Common.xml#L698:~:text=<Term%20Name="-,ValueListRelevantQualifiers,-")|\[[SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)\]|<a name="ValueListRelevantQualifiers"></a>List of qualifiers of relevant ValueList annotations<br>The value of this annotation is a dynamic expression for calculating the qualifiers of relevant value lists depending on the values of one or more other properties.
[ValueListWithFixedValues](./Common.xml#L703:~:text=<Term%20Name="-,ValueListWithFixedValues,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ValueListWithFixedValues"></a>If specified as true, there's only one value list mapping and its value list consists of a small number of fixed values
[ValueListForValidation](./Common.xml#L707:~:text=<Term%20Name="-,ValueListForValidation,-")|String|<a name="ValueListForValidation"></a>Contains the qualifier of the ValueList or ValueListMapping that should be used for validation
[ValueListReferences](./Common.xml#L711:~:text=<Term%20Name="-,ValueListReferences,-")|\[URL\]|<a name="ValueListReferences"></a>A list of URLs of CSDL documents containing value list mappings for this parameter or property
[ValueListMapping](./Common.xml#L716:~:text=<Term%20Name="-,ValueListMapping,-")|[ValueListMappingType](#ValueListMappingType)|<a name="ValueListMapping"></a>Specifies the mapping between data service properties and value list properties<br>The value list can be filtered based on user input. It can be used for type-ahead and classical pick lists. There may be many alternative mappings with different qualifiers.
[IsCalendarYear](./Common.xml#L818:~:text=<Term%20Name="-,IsCalendarYear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYear"></a>Property encodes a year number as string following the logical pattern (-?)YYYY(Y*) consisting of an optional minus sign for years B.C. followed by at least four digits. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})
[IsCalendarHalfyear](./Common.xml#L827:~:text=<Term%20Name="-,IsCalendarHalfyear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarHalfyear"></a>Property encodes a halfyear number as string following the logical pattern H consisting of a single digit. The string matches the regex pattern [1-2]
[IsCalendarQuarter](./Common.xml#L836:~:text=<Term%20Name="-,IsCalendarQuarter,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarQuarter"></a>Property encodes a calendar quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsCalendarMonth](./Common.xml#L845:~:text=<Term%20Name="-,IsCalendarMonth,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarMonth"></a>Property encodes a calendar month number as string following the logical pattern MM consisting of two digits. The string matches the regex pattern 0[1-9]\|1[0-2]
[IsCalendarWeek](./Common.xml#L854:~:text=<Term%20Name="-,IsCalendarWeek,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarWeek"></a>Property encodes a calendar week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsDayOfCalendarMonth](./Common.xml#L863:~:text=<Term%20Name="-,IsDayOfCalendarMonth,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarMonth"></a>Day number relative to a calendar month. Valid values are between 1 and 31.
[IsDayOfCalendarYear](./Common.xml#L871:~:text=<Term%20Name="-,IsDayOfCalendarYear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarYear"></a>Day number relative to a calendar year. Valid values are between 1 and 366.
[IsCalendarYearHalfyear](./Common.xml#L879:~:text=<Term%20Name="-,IsCalendarYearHalfyear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearHalfyear"></a>Property encodes a calendar year and halfyear as string following the logical pattern (-?)YYYY(Y*)H consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the halfyear. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-2]
[IsCalendarYearQuarter](./Common.xml#L889:~:text=<Term%20Name="-,IsCalendarYearQuarter,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearQuarter"></a>Property encodes a calendar year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsCalendarYearMonth](./Common.xml#L899:~:text=<Term%20Name="-,IsCalendarYearMonth,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearMonth"></a>Property encodes a calendar year and month as string following the logical pattern (-?)YYYY(Y*)MM consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent the months January to December. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])
[IsCalendarYearWeek](./Common.xml#L910:~:text=<Term%20Name="-,IsCalendarYearWeek,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearWeek"></a>Property encodes a calendar year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsCalendarDate](./Common.xml#L920:~:text=<Term%20Name="-,IsCalendarDate,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarDate"></a>Property encodes a calendar date: year, month and day as string following the logical pattern (-?)YYYY(Y*)MMDD consisting of an optional minus sign for years B.C. followed by at least eight digits, where the last four digits represent the months January to December (MM) and the day of the month (DD). The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])(0[1-9]\|[12][0-9]\|3[01]) The regex pattern does not reflect the additional constraint for "Day-of-month Values": The day value must be no more than 30 if month is one of 04, 06, 09, or 11, no more than 28 if month is 02 and year is not divisible by 4, or is divisible by 100 but not by 400, and no more than 29 if month is 02 and year is divisible by 400, or by 4 but not by 100.
[IsFiscalYear](./Common.xml#L937:~:text=<Term%20Name="-,IsFiscalYear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYear"></a>Property encodes a fiscal year number as string following the logical pattern YYYY consisting of four digits. The string matches the regex pattern [1-9][0-9]{3}
[IsFiscalPeriod](./Common.xml#L946:~:text=<Term%20Name="-,IsFiscalPeriod,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalPeriod"></a>Property encodes a fiscal period as string following the logical pattern PPP consisting of three digits. The string matches the regex pattern [0-9]{3}
[IsFiscalYearPeriod](./Common.xml#L955:~:text=<Term%20Name="-,IsFiscalYearPeriod,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearPeriod"></a>Property encodes a fiscal year and period as string following the logical pattern YYYYPPP consisting of seven digits, where the last three digits represent the fiscal period in the year. The string matches the regex pattern ([1-9][0-9]{3})([0-9]{3})
[IsFiscalQuarter](./Common.xml#L965:~:text=<Term%20Name="-,IsFiscalQuarter,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalQuarter"></a>Property encodes a fiscal quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsFiscalYearQuarter](./Common.xml#L973:~:text=<Term%20Name="-,IsFiscalYearQuarter,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearQuarter"></a>Property encodes a fiscal year and quarter as string following the logical pattern YYYYQ consisting of five digits, where the last digit represents the quarter. The string matches the regex pattern [1-9][0-9]{3}[1-4]
[IsFiscalWeek](./Common.xml#L982:~:text=<Term%20Name="-,IsFiscalWeek,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalWeek"></a>Property encodes a fiscal week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsFiscalYearWeek](./Common.xml#L990:~:text=<Term%20Name="-,IsFiscalYearWeek,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearWeek"></a>Property encodes a fiscal year and week as string following the logical pattern YYYYWW consisting of six digits, where the last two digits represent the week number in the year. The string matches the regex pattern [1-9][0-9]{3}(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsDayOfFiscalYear](./Common.xml#L999:~:text=<Term%20Name="-,IsDayOfFiscalYear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfFiscalYear"></a>Day number relative to a fiscal year. Valid values are between 1 and 371.
[IsFiscalYearVariant](./Common.xml#L1006:~:text=<Term%20Name="-,IsFiscalYearVariant,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearVariant"></a>Property encodes a fiscal year variant
[MutuallyExclusiveTerm](./Common.xml#L1014:~:text=<Term%20Name="-,MutuallyExclusiveTerm,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MutuallyExclusiveTerm"></a>Only one term of the group identified with the Qualifier attribute can be applied
[DraftRoot](./Common.xml#L1020:~:text=<Term%20Name="-,DraftRoot,-")|[DraftRootType](#DraftRootType)|<a name="DraftRoot"></a>Root entities of business documents that support the draft pattern
[DraftNode](./Common.xml#L1061:~:text=<Term%20Name="-,DraftNode,-")|[DraftNodeType](#DraftNodeType)|<a name="DraftNode"></a>Entities in this set are parts of business documents that support the draft pattern
[DraftActivationVia](./Common.xml#L1083:~:text=<Term%20Name="-,DraftActivationVia,-")|\[[SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)\]|<a name="DraftActivationVia"></a>Draft entities in this set are indirectly activated via draft entities in the referenced entity sets
[EditableFieldFor](./Common.xml#L1087:~:text=<Term%20Name="-,EditableFieldFor,-")|PropertyPath|<a name="EditableFieldFor"></a>The annotated property is an editable field for the referenced key property
[SemanticKey](./Common.xml#L1117:~:text=<Term%20Name="-,SemanticKey,-")|\[PropertyPath\]|<a name="SemanticKey"></a>The listed properties form the semantic key, i.e. they are unique modulo IsActiveEntity
[SideEffects](./Common.xml#L1121:~:text=<Term%20Name="-,SideEffects,-")|[SideEffectsType](#SideEffectsType)|<a name="SideEffects"></a>Describes side-effects of modification operations
[DefaultValuesFunction](./Common.xml#L1209:~:text=<Term%20Name="-,DefaultValuesFunction,-")|[QualifiedName](#QualifiedName)|<a name="DefaultValuesFunction"></a>Function to calculate default values based on user input that is only known to the client and "context information" that is already available to the service<br>The default values function must have a bound overload whose binding parameter type matches the annotation target<br/> - for an entity set: collection of entity type of entity set<br/> - for a navigation property: identical to the type of the navigation property (single- or collection-valued)<br/> - for a bound action/function: identical to the binding parameter type of the annotated action/function<br/> In addition the overload can have non-binding parameters for values that the user has already entered:<br/> - for an entity set or navigation property: each non-binding parameter name and type must match the name and type of a property of the entity to be created<br/> - for an action or function: each non-binding parameter name and type must match the name and type of a non-binding parameter of the action or function to be called<br/> The result type of the default values function is a complex type whose properties correspond in name and type to a subset of<br/> - the properties of the entity to create, or<br/> - the parameters of the action or function to call
[DerivedDefaultValue](./Common.xml#L1238:~:text=<Term%20Name="-,DerivedDefaultValue,-") *([Experimental](Common.md#Experimental))*|String|<a name="DerivedDefaultValue"></a>Function import to derive a default value for the property from a given context.<br>Function import has two parameters of complex types:<br/> - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/> - `properties`, a structure resembling the type of the entity set of the annotated property<br/> The return type must be of the same type as the annotated property.<br/> Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.
[FilterDefaultValue](./Common.xml#L1259:~:text=<Term%20Name="-,FilterDefaultValue,-")|PrimitiveType?|<a name="FilterDefaultValue"></a>A default value for the property to be used in filter expressions.
[FilterDefaultValueHigh](./Common.xml#L1263:~:text=<Term%20Name="-,FilterDefaultValueHigh,-") *([Experimental](Common.md#Experimental))*|PrimitiveType?|<a name="FilterDefaultValueHigh"></a>A default upper limit for the property to be used in 'less than or equal' filter expressions.
[DerivedFilterDefaultValue](./Common.xml#L1268:~:text=<Term%20Name="-,DerivedFilterDefaultValue,-") *([Experimental](Common.md#Experimental))*|String|<a name="DerivedFilterDefaultValue"></a>Function import to derive a default value for the property from a given context in order to use it in filter expressions.<br>Function import has two parameters of complex types:<br/> - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/> - `properties`, a structure resembling the type of the entity set of the annotated property<br/> The return type must be of the same type as the annotated property.<br/> Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.
[SortOrder](./Common.xml#L1292:~:text=<Term%20Name="-,SortOrder,-")|\[[SortOrderType](#SortOrderType)\]|<a name="SortOrder"></a>List of sort criteria<br>The items of the annotated entity set or the items of the collection of the annotated entity type are sorted by the first entry of the SortOrder collection. Items with same value for this first sort criteria are sorted by the second entry of the SortOrder collection, and so on.
[RecursiveHierarchy](./Common.xml#L1348:~:text=<Term%20Name="-,RecursiveHierarchy,-") *(Deprecated)*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Use terms [Aggregation.RecursiveHierarchy](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#RecursiveHierarchy) and [Hierarchy.RecursiveHierarchy](https://github.com/SAP/odata-vocabularies/blob/main/vocabularies/Hierarchy.md#RecursiveHierarchy) instead
[CreatedAt](./Common.xml#L1396:~:text=<Term%20Name="-,CreatedAt,-")|DateTimeOffset?|<a name="CreatedAt"></a>Creation timestamp
[CreatedBy](./Common.xml#L1400:~:text=<Term%20Name="-,CreatedBy,-")|[UserID?](#UserID)|<a name="CreatedBy"></a>First editor
[ChangedAt](./Common.xml#L1404:~:text=<Term%20Name="-,ChangedAt,-")|DateTimeOffset?|<a name="ChangedAt"></a>Last modification timestamp
[ChangedBy](./Common.xml#L1408:~:text=<Term%20Name="-,ChangedBy,-")|[UserID?](#UserID)|<a name="ChangedBy"></a>Last editor
[OriginalProtocolVersion](./Common.xml#L1420:~:text=<Term%20Name="-,OriginalProtocolVersion,-")|String|<a name="OriginalProtocolVersion"></a>Original protocol version of a converted (V4) CSDL document, allowed values `2.0` and `3.0`
[ApplyMultiUnitBehaviorForSortingAndFiltering](./Common.xml#L1425:~:text=<Term%20Name="-,ApplyMultiUnitBehaviorForSortingAndFiltering,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ApplyMultiUnitBehaviorForSortingAndFiltering"></a>Sorting and filtering of amounts in multiple currencies needs special consideration<br>TODO: add link to UX documentation on https://experience.sap.com/fiori-design/
[mediaUploadLink](./Common.xml#L1431:~:text=<Term%20Name="-,mediaUploadLink,-") *([Experimental](Common.md#Experimental))*|URL|<a name="mediaUploadLink"></a>URL for uploading new media content to a Document Management Service<br>In contrast to the `@odata.mediaEditLink` this URL allows to upload new media content without directly changing a stream property or media resource. The upload request typically uses HTTP POST with `Content-Type: multipart/form-data` following RFC 7578. The upload request must contain one multipart representing the content of the file. The `name` parameter in the `Content-Disposition` header (as described in RFC 7578) is irrelevant, but the `filename` parameter is expected. If the request succeeds the response will contain a JSON body of `Content-Type: application/json` with a JSON property `readLink`. The newly uploaded media resource can be linked to the stream property by changing the `@odata.mediaReadLink` to the value of this `readLink` in a subsequent PATCH request to the OData entity.
[PrimitivePropertyPath](./Common.xml#L1446:~:text=<Term%20Name="-,PrimitivePropertyPath,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PrimitivePropertyPath"></a>A term or term property with this tag whose type is (a collection of) `Edm.PropertyPath` MUST resolve to a primitive structural property
[WebSocketBaseURL](./Common.xml#L1451:~:text=<Term%20Name="-,WebSocketBaseURL,-") *([Experimental](Common.md#Experimental))*|URL|<a name="WebSocketBaseURL"></a>Base URL for WebSocket connections
[RecommendationsFunction](./Common.xml#L1457:~:text=<Term%20Name="-,RecommendationsFunction,-") *([Experimental](Common.md#Experimental))*|[QualifiedName](#QualifiedName)|<a name="RecommendationsFunction"></a>Qualified name of a function that computes AI-based recommendations for entities of the annotated type (see [template](#Template_RecommendationsFunction) and [template for asynchronous OData requests](#Template_AsyncRecommendationsFunction))
[RecommendationsRole](./Common.xml#L1541:~:text=<Term%20Name="-,RecommendationsRole,-") *([Experimental](Common.md#Experimental))*|[RecommendationsRoleType](#RecommendationsRoleType)|<a name="RecommendationsRole"></a>Role of this property or parameter regarding AI-based recommendations


## Functions

<a name="Template_RecommendationsFunction"></a>
### [Template_RecommendationsFunction](./Common.xml#L1461:~:text=<Function%20Name="-,Template_RecommendationsFunction,-") *([Experimental](Common.md#Experimental))*

Template for functions that compute AI-based recommendations for the bound entity and its related entities

If the function is invoked repeatedly in a stateful session, it SHOULD NOT
          recompute recommendations whose predictors have not changed since the previous invocation.

          The template function itself cannot be invoked.

Parameter|Type|Description
:--------|:---|:----------
**[Entity](./Common.xml#L1470:~:text=<Function%20Name="-,Template_RecommendationsFunction,-")**|EntityType|**Binding parameter**
[Targets](./Common.xml#L1471:~:text=<Function%20Name="-,Template_RecommendationsFunction,-")|\[URL\]|URLs (relative to the request URL) that address entities, properties or action/function parameters for which recommendations shall be retrieved<br>The request `SalesOrder('A')/ns.RecommendationsFunction?Targets=["Items(10)"]` retrieves recommendations for the entity `SalesOrder('A')/Items(10)`.
[&rarr;](./Common.xml#L1479:~:text=<Function%20Name="-,Template_RecommendationsFunction,-")|URL|URL (relative to the service URL) for retrieving the recommendations (which are computed asynchronously) ([Example](./Common.xml#L1482))


<a name="Template_RecommendationsRetrievalFunction"></a>
### [Template_RecommendationsRetrievalFunction](./Common.xml#L1490:~:text=<Function%20Name="-,Template_RecommendationsRetrievalFunction,-") *([Experimental](Common.md#Experimental))*

Template for functions that retrieve AI-based recommendations for the bound entity and its related entities

The template function itself cannot be invoked.

Parameter|Type|Description
:--------|:---|:----------
[ID](./Common.xml#L1496:~:text=<Function%20Name="-,Template_RecommendationsRetrievalFunction,-")|String|ID that occurs in the URL returned by a prior invocation of the [recommendations function](#Template_RecommendationsFunction)
[&rarr;](./Common.xml#L1499:~:text=<Function%20Name="-,Template_RecommendationsRetrievalFunction,-")|\[[PropertyRecommendationType](#PropertyRecommendationType)\]|A collection of recommendations per targeted property


<a name="Template_AsyncRecommendationsFunction"></a>
### [Template_AsyncRecommendationsFunction](./Common.xml#L1503:~:text=<Function%20Name="-,Template_AsyncRecommendationsFunction,-") *([Experimental](Common.md#Experimental))*

Template for functions that compute AI-based recommendations in asynchronous OData requests

Parameter|Type|Description
:--------|:---|:----------
**[Entity](./Common.xml#L1506:~:text=<Function%20Name="-,Template_AsyncRecommendationsFunction,-")**|EntityType|**Binding parameter**
[Targets](./Common.xml#L1507:~:text=<Function%20Name="-,Template_AsyncRecommendationsFunction,-")|\[URL\]|
[&rarr;](./Common.xml#L1510:~:text=<Function%20Name="-,Template_AsyncRecommendationsFunction,-")|\[[PropertyRecommendationType](#PropertyRecommendationType)\]|


<a name="TextFormatType"></a>
## [TextFormatType](./Common.xml#L120:~:text=<EnumType%20Name="-,TextFormatType,-")


Member|Value|Description
:-----|----:|:----------
[plain](./Common.xml#L121:~:text=<EnumType%20Name="-,TextFormatType,-")|0|Plain text, line breaks represented as the character 0x0A
[html](./Common.xml#L124:~:text=<EnumType%20Name="-,TextFormatType,-")|1|Plain text with markup that can validly appear directly within an HTML DIV element

<a name="SemanticObjectMappingType"></a>
## [SemanticObjectMappingType](./Common.xml#L290:~:text=<ComplexType%20Name="-,SemanticObjectMappingType,-")
Maps a property of the annotated entity type or a sibling property of the annotated property to a property of the Semantic Object

Property|Type|Description
:-------|:---|:----------
[LocalProperty](./Common.xml#L292:~:text=<ComplexType%20Name="-,SemanticObjectMappingType,-")|PropertyPath|Path to a local property that provides the value for the Semantic Object property
[SemanticObjectProperty](./Common.xml#L295:~:text=<ComplexType%20Name="-,SemanticObjectMappingType,-")|String|Name of the Semantic Object property

<a name="FilterExpressionRestrictionType"></a>
## [FilterExpressionRestrictionType](./Common.xml#L344:~:text=<ComplexType%20Name="-,FilterExpressionRestrictionType,-") *(Deprecated)*
Use term Capabilities.FilterRestrictions instead

<a name="FilterExpressionType"></a>
## [FilterExpressionType](./Common.xml#L356:~:text=<EnumType%20Name="-,FilterExpressionType,-") *(Deprecated)*
Use term Capabilities.FilterRestrictions instead

<a name="FieldControlType"></a>
## [FieldControlType](./Common.xml#L381:~:text=<EnumType%20Name="-,FieldControlType,-")
Control state of a property

When changes are requested, the value of this annotation in the before-image or after-image
          of the request plays a role. These may differ if the value is given dynamically in the metadata.

Member|Value|Description
:-----|----:|:----------
[Mandatory](./Common.xml#L387:~:text=<EnumType%20Name="-,FieldControlType,-")|7|Property is mandatory from a business perspective<br>A request that sets the property to its initial value or null fails entirely if this annotation is `Mandatory` in the after-image of the request.<br/> This annotation value does not imply any restrictions on the value range of the property. For restricting the value range use e.g. the standard type facet `Nullable` with a value of `false` to exclude the `null` value, or terms from the [Validation vocabulary](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Validation.V1.md).
[Optional](./Common.xml#L395:~:text=<EnumType%20Name="-,FieldControlType,-")|3|Property may have a value<br>This value does not make sense as a static annotation value.
[ReadOnly](./Common.xml#L399:~:text=<EnumType%20Name="-,FieldControlType,-")|1|Property value cannot be changed<br>A request to change the property to a value that differs from the before-image fails entirely according to [OData-Protocol, section 11.4.3](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_UpdateanEntity) if this annotation is given dynamically as `ReadOnly` in the before-image of the request.<br/> To statically mark a property as read-only use term [Core.Computed](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Computed) instead.
[Inapplicable](./Common.xml#L409:~:text=<EnumType%20Name="-,FieldControlType,-")|0|Property has no meaning in the current entity state<br>A request that sets the property to a non-initial non-null value fails entirely if this annotation is `Inapplicable` in the after-image of the request.<br/> This value does not make sense as a static annotation value.<br/>Example for dynamic use: in a travel expense report the property `DestinationCountry` is inapplicable if trip type is domestic, and mandatory if trip type is international.
[Hidden](./Common.xml#L419:~:text=<EnumType%20Name="-,FieldControlType,-")|0|Deprecated synonym for Inapplicable, do not use<br>To statically hide a property on a UI use [UI.Hidden](UI.md#Hidden) instead

<a name="ApplicationType"></a>
## [ApplicationType](./Common.xml#L435:~:text=<ComplexType%20Name="-,ApplicationType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Component](./Common.xml#L437:~:text=<ComplexType%20Name="-,ApplicationType,-")|String?|Software component of service implementation
[ServiceRepository](./Common.xml#L440:~:text=<ComplexType%20Name="-,ApplicationType,-")|String?|...
[ServiceId](./Common.xml#L443:~:text=<ComplexType%20Name="-,ApplicationType,-")|String?|...
[ServiceVersion](./Common.xml#L446:~:text=<ComplexType%20Name="-,ApplicationType,-")|String?|...

<a name="ErrorResolutionType"></a>
## [ErrorResolutionType](./Common.xml#L465:~:text=<ComplexType%20Name="-,ErrorResolutionType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Analysis](./Common.xml#L467:~:text=<ComplexType%20Name="-,ErrorResolutionType,-")|String?|Short hint on how to analyze this error
[Note](./Common.xml#L470:~:text=<ComplexType%20Name="-,ErrorResolutionType,-")|String?|Note for error resolution
[AdditionalNote](./Common.xml#L473:~:text=<ComplexType%20Name="-,ErrorResolutionType,-")|String?|Additional note for error resolution

<a name="NumericMessageSeverityType"></a>
## [NumericMessageSeverityType](./Common.xml#L523:~:text=<TypeDefinition%20Name="-,NumericMessageSeverityType,-")
**Type:** Byte

Classifies an end-user message as info, success, warning, or error

Allowed Value|Description
:------------|:----------
[1](./Common.xml#L527:~:text=<TypeDefinition%20Name="-,NumericMessageSeverityType,-")|Success - no action required
[2](./Common.xml#L531:~:text=<TypeDefinition%20Name="-,NumericMessageSeverityType,-")|Information - no action required
[3](./Common.xml#L535:~:text=<TypeDefinition%20Name="-,NumericMessageSeverityType,-")|Warning - action may be required
[4](./Common.xml#L539:~:text=<TypeDefinition%20Name="-,NumericMessageSeverityType,-")|Error - action is required

<a name="IntervalType"></a>
## [IntervalType](./Common.xml#L562:~:text=<ComplexType%20Name="-,IntervalType,-")


Property|Type|Description
:-------|:---|:----------
[LowerBoundary](./Common.xml#L563:~:text=<ComplexType%20Name="-,IntervalType,-")|PropertyPath|Property holding the lower interval boundary
[LowerBoundaryIncluded](./Common.xml#L566:~:text=<ComplexType%20Name="-,IntervalType,-")|Boolean|The lower boundary value is included in the interval
[UpperBoundary](./Common.xml#L569:~:text=<ComplexType%20Name="-,IntervalType,-")|PropertyPath|Property holding the upper interval boundary
[UpperBoundaryIncluded](./Common.xml#L572:~:text=<ComplexType%20Name="-,IntervalType,-")|Boolean|The upper boundary value is included in the interval

<a name="SAPObjectNodeTypeType"></a>
## [SAPObjectNodeTypeType](./Common.xml#L593:~:text=<ComplexType%20Name="-,SAPObjectNodeTypeType,-") *([Experimental](Common.md#Experimental))*
Information about an SAP Object Node Type

Property|Type|Description
:-------|:---|:----------
[Name](./Common.xml#L596:~:text=<ComplexType%20Name="-,SAPObjectNodeTypeType,-")|String|The name of the SAP Object Node Type

<a name="ValueListType"></a>
## [ValueListType](./Common.xml#L628:~:text=<ComplexType%20Name="-,ValueListType,-")


Property|Type|Description
:-------|:---|:----------
[Label](./Common.xml#L649:~:text=<ComplexType%20Name="-,ValueListType,-")|String?|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](./Common.xml#L653:~:text=<ComplexType%20Name="-,ValueListType,-")|String|Resource path of an OData collection with possible values, relative to CollectionRoot
[CollectionRoot](./Common.xml#L656:~:text=<ComplexType%20Name="-,ValueListType,-")|String?|Service root of the value list collection; not specified means local to the document containing the annotation
[DistinctValuesSupported](./Common.xml#L659:~:text=<ComplexType%20Name="-,ValueListType,-")|Boolean|Indicates that the value list supports a 'distinct' aggregation on the value list properties defined via ValueListParameterInOut and ValueListParameterOut
[SearchSupported](./Common.xml#L662:~:text=<ComplexType%20Name="-,ValueListType,-")|Boolean|Value list supports the $search query option<br>The value of the target property is used as the search expression instead of in $filter
[FetchValues](./Common.xml#L666:~:text=<ComplexType%20Name="-,ValueListType,-")|[FetchValuesType?](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](./Common.xml#L669:~:text=<ComplexType%20Name="-,ValueListType,-")|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<br>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the entity set identified via CollectionPath
[SelectionVariantQualifier](./Common.xml#L673:~:text=<ComplexType%20Name="-,ValueListType,-")|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<br>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath
[Parameters](./Common.xml#L677:~:text=<ComplexType%20Name="-,ValueListType,-")|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

**Applicable Annotation Terms:**

- [QuickInfo](#QuickInfo)

<a name="FetchValuesType"></a>
## [FetchValuesType](./Common.xml#L682:~:text=<TypeDefinition%20Name="-,FetchValuesType,-")
**Type:** Byte

Hint on when to fetch values

Allowed Value|Description
:------------|:----------
[1](./Common.xml#L686:~:text=<TypeDefinition%20Name="-,FetchValuesType,-")|Fetch values immediately without filter
[2](./Common.xml#L690:~:text=<TypeDefinition%20Name="-,FetchValuesType,-")|Fetch values with a filter

<a name="ValueListMappingType"></a>
## [ValueListMappingType](./Common.xml#L720:~:text=<ComplexType%20Name="-,ValueListMappingType,-")


Property|Type|Description
:-------|:---|:----------
[Label](./Common.xml#L726:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|String?|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](./Common.xml#L730:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|String|Resource path of an OData collection with possible values, relative to the document containing the value list mapping
[DistinctValuesSupported](./Common.xml#L733:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|Boolean|Indicates that the value list supports a 'distinct' aggregation on the value list properties defined via ValueListParameterInOut and ValueListParameterOut
[FetchValues](./Common.xml#L736:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|[FetchValuesType?](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](./Common.xml#L739:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<br>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the value list entity set identified via CollectionPath in the ValueListReference annotation
[SelectionVariantQualifier](./Common.xml#L743:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<br>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath
[Parameters](./Common.xml#L747:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

**Applicable Annotation Terms:**

- [QuickInfo](#QuickInfo)

<a name="ValueListParameter"></a>
## [*ValueListParameter*](./Common.xml#L752:~:text=<ComplexType%20Name="-,ValueListParameter,-")


**Derived Types:**
- [ValueListParameterIn](#ValueListParameterIn)
- [ValueListParameterConstant](#ValueListParameterConstant)
- [ValueListParameterInOut](#ValueListParameterInOut)
- [ValueListParameterOut](#ValueListParameterOut)
- [ValueListParameterDisplayOnly](#ValueListParameterDisplayOnly)
- [ValueListParameterFilterOnly](#ValueListParameterFilterOnly)

Property|Type|Description
:-------|:---|:----------
[ValueListProperty](./Common.xml#L753:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.

<a name="ValueListParameterIn"></a>
## [ValueListParameterIn](./Common.xml#L757:~:text=<ComplexType%20Name="-,ValueListParameterIn,-"): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](./Common.xml#L753:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](./Common.xml#L758:~:text=<ComplexType%20Name="-,ValueListParameterIn,-")|PropertyPath|Path to property that is used to filter the value list with `eq` comparison
[InitialValueIsSignificant](./Common.xml#L761:~:text=<ComplexType%20Name="-,ValueListParameterIn,-")|Boolean|Initial value, e.g. empty string, is a valid and significant value

<a name="ValueListParameterConstant"></a>
## [ValueListParameterConstant](./Common.xml#L765:~:text=<ComplexType%20Name="-,ValueListParameterConstant,-"): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](./Common.xml#L753:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[Constant](./Common.xml#L766:~:text=<ComplexType%20Name="-,ValueListParameterConstant,-")|PrimitiveType|Constant value that is used to filter the value list with `eq` comparison, using the same representation as property default values, see [CSDL XML, 7.2.7 Default Value](https://docs.oasis-open.org/odata/odata-csdl-xml/v4.01/odata-csdl-xml-v4.01.html#sec_DefaultValue)
[InitialValueIsSignificant](./Common.xml#L769:~:text=<ComplexType%20Name="-,ValueListParameterConstant,-") *([Experimental](Common.md#Experimental))*|Boolean|Initial value, e.g. empty string, is a valid and significant value

<a name="ValueListParameterInOut"></a>
## [ValueListParameterInOut](./Common.xml#L774:~:text=<ComplexType%20Name="-,ValueListParameterInOut,-"): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](./Common.xml#L753:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](./Common.xml#L775:~:text=<ComplexType%20Name="-,ValueListParameterInOut,-")|PropertyPath|Path to property that is used to filter the value list with `startswith` comparison and filled from the picked value list item
[InitialValueIsSignificant](./Common.xml#L778:~:text=<ComplexType%20Name="-,ValueListParameterInOut,-")|Boolean|Initial value, e.g. empty string, is a valid and significant value

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

<a name="ValueListParameterOut"></a>
## [ValueListParameterOut](./Common.xml#L787:~:text=<ComplexType%20Name="-,ValueListParameterOut,-"): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](./Common.xml#L753:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](./Common.xml#L788:~:text=<ComplexType%20Name="-,ValueListParameterOut,-")|PropertyPath|Path to property that is filled from response

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

<a name="ValueListParameterDisplayOnly"></a>
## [ValueListParameterDisplayOnly](./Common.xml#L797:~:text=<ComplexType%20Name="-,ValueListParameterDisplayOnly,-"): [ValueListParameter](#ValueListParameter)
Value list property that is not used to fill the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](./Common.xml#L753:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

<a name="ValueListParameterFilterOnly"></a>
## [ValueListParameterFilterOnly](./Common.xml#L805:~:text=<ComplexType%20Name="-,ValueListParameterFilterOnly,-"): [ValueListParameter](#ValueListParameter) *(Deprecated)*
All filterable properties of the value list can be used to filter

<a name="DraftRootType"></a>
## [DraftRootType](./Common.xml#L1025:~:text=<ComplexType%20Name="-,DraftRootType,-"): [DraftNodeType](#DraftNodeType)


Property|Type|Description
:-------|:---|:----------
[*PreparationAction*](./Common.xml#L1067:~:text=<ComplexType%20Name="-,DraftNodeType,-")|[QualifiedName?](#QualifiedName)|Action that prepares a draft document for later activation
[*ValidationFunction*](./Common.xml#L1070:~:text=<ComplexType%20Name="-,DraftNodeType,-") *(Deprecated)*|[QualifiedName?](#QualifiedName)|Separate validation without side-effects is not useful
[ActivationAction](./Common.xml#L1026:~:text=<ComplexType%20Name="-,DraftRootType,-")|[QualifiedName](#QualifiedName)|Action that activates a draft document
[DiscardAction](./Common.xml#L1029:~:text=<ComplexType%20Name="-,DraftRootType,-") *([Experimental](Common.md#Experimental))*|[QualifiedName?](#QualifiedName)|Action that discards a draft document
[EditAction](./Common.xml#L1033:~:text=<ComplexType%20Name="-,DraftRootType,-")|[QualifiedName?](#QualifiedName)|Action that creates an edit draft
[NewAction](./Common.xml#L1036:~:text=<ComplexType%20Name="-,DraftRootType,-")|[QualifiedName?](#QualifiedName)|Action that creates a new draft<br>New drafts may also be created by POSTing an empty entity without any properties to the entity set.
[AdditionalNewActions](./Common.xml#L1040:~:text=<ComplexType%20Name="-,DraftRootType,-") *([Experimental](Common.md#Experimental))*|\[[QualifiedName](#QualifiedName)\]|Additional actions that create a new draft<br>Additional actions beside the default POST or standard `NewAction` that create a new draft.
[ShareAction](./Common.xml#L1045:~:text=<ComplexType%20Name="-,DraftRootType,-")|[QualifiedName?](#QualifiedName)|Action that shares a draft document with other users<br>The action is bound to the draft document root node and has the following signature:<br/> - `Users`: collection of structure with properties<br/>   - `UserID` of type `String` and<br/>   - `UserAccessRole` of type `String` with possible values `O` (owner, can perform all draft actions), and `E` (editor, can change the draft)<br/> It restricts access to the listed users in their specified roles.

<a name="DraftNodeType"></a>
## [DraftNodeType](./Common.xml#L1066:~:text=<ComplexType%20Name="-,DraftNodeType,-")


**Derived Types:**
- [DraftRootType](#DraftRootType)

Property|Type|Description
:-------|:---|:----------
[PreparationAction](./Common.xml#L1067:~:text=<ComplexType%20Name="-,DraftNodeType,-")|[QualifiedName?](#QualifiedName)|Action that prepares a draft document for later activation
[ValidationFunction](./Common.xml#L1070:~:text=<ComplexType%20Name="-,DraftNodeType,-") *(Deprecated)*|[QualifiedName?](#QualifiedName)|Separate validation without side-effects is not useful

<a name="SimpleIdentifier"></a>
## [SimpleIdentifier](./Common.xml#L1091:~:text=<TypeDefinition%20Name="-,SimpleIdentifier,-") *(Deprecated)*
Use type [Core.SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier) instead

<a name="QualifiedName"></a>
## [QualifiedName](./Common.xml#L1103:~:text=<TypeDefinition%20Name="-,QualifiedName,-")
**Type:** String

The QualifiedName of an OData construct in scope

<a name="ActionOverload"></a>
## [ActionOverload](./Common.xml#L1107:~:text=<TypeDefinition%20Name="-,ActionOverload,-")
**Type:** String

The qualified name of an action with an optional overload

The qualified name of an action, optionally followed by parentheses 
            containing the binding parameter type of a bound action overload to identify that bound overload, 
            or by empty parentheses to identify the unbound overload, like in the `Target` attribute of an `Annotation`.

<a name="SideEffectsType"></a>
## [SideEffectsType](./Common.xml#L1124:~:text=<ComplexType%20Name="-,SideEffectsType,-")
Changes to the source properties or source entities may have side-effects on the target properties or entities.

If neither TargetProperties nor TargetEntities are specified, a change to the source property values may have unforeseeable side-effects.
An empty NavigationPropertyPath may be used in TargetEntities to specify that any property of the annotated entity type may be affected.

Side effects without a `TriggerAction` happen immediately when modifying one of the source properties or source entities. Side effects with a `TriggerAction` are deferred until explicitly triggered via the `TriggerAction`.

Special case where the side effect is annotated on an action: here the change trigger is the action invocation, so `SourceProperties` and `SourceEntities` have no meaning, 
only `TargetProperties` and `TargetEntities` are relevant. They are addressed via the binding parameter of the action, e.g. if the binding parameter is named `_it`, all paths have to start with `_it/`.
This can also be used with OData V2 services: the annotation target is a function import that is marked with [`sap:action-for`](https://wiki.scn.sap.com/wiki/display/EmTech/SAP+Annotations+for+OData+Version+2.0#SAPAnnotationsforODataVersion2.0-Elementedm:FunctionImport), and all paths have to start with `_it/`.

Property|Type|Description
:-------|:---|:----------
[SourceProperties](./Common.xml#L1136:~:text=<ComplexType%20Name="-,SideEffectsType,-")|\[PropertyPath\]|Changes to the values of one or more of these structural properties may affect the targets
[SourceEntities](./Common.xml#L1139:~:text=<ComplexType%20Name="-,SideEffectsType,-")|\[NavigationPropertyPath\]|Changes to one or more of these entities may affect the targets. An empty path means the annotation target.
[TargetProperties](./Common.xml#L1142:~:text=<ComplexType%20Name="-,SideEffectsType,-")|\[String\]|These structural properties may be affected if the value of one of the sources changes<br>The syntax follows closely the syntax rules for `Edm.PropertyPath`, with the addition of `*` as the last path segment meaning all structural properties directly reached via the preceding path
[TargetEntities](./Common.xml#L1146:~:text=<ComplexType%20Name="-,SideEffectsType,-")|\[NavigationPropertyPath\]|These entities will be affected if the value of one of the sources changes. All affected entities need to be explicitly listed. An empty path means the annotation target.
[EffectTypes](./Common.xml#L1149:~:text=<ComplexType%20Name="-,SideEffectsType,-") *(Deprecated)*|[EffectType?](#EffectType)|All side effects are essentially value changes, differentiation not needed.
[TriggerAction](./Common.xml#L1160:~:text=<ComplexType%20Name="-,SideEffectsType,-")|[QualifiedName?](#QualifiedName)|Bound action to trigger side-effects after modifying an entity<br>Binding parameter type of the trigger action is the entity type annotated with `SideEffects`. The action does not have any additional parameters and does not return anything. It either succeeds with `204 No Content` or it fails with `4xx` or `5xx`.
[TriggeredIndicator](./Common.xml#L1164:~:text=<ComplexType%20Name="-,SideEffectsType,-") *([Experimental](Common.md#Experimental))*|Boolean?|Indicates whether the side-effect has already happened<br>The value of this property typically is a Path expression pointing to a boolean property. It can be used by clients to defer expensive refresh calls until they are actually needed and instead just request the referenced indicator property. Servers can choose to return indicator properties even if not explicitly requested.
[Discretionary](./Common.xml#L1169:~:text=<ComplexType%20Name="-,SideEffectsType,-") *([Experimental](Common.md#Experimental))*|Boolean|Indicates whether the client can decide if a side-effect should be triggered or not<br>The value of this property typically a static boolean value. It can be used by clients (e.g. by asking the end user) to decide if the side effect should be triggered or not. This indicator is only allowed in case a trigger action is given as only then the execution control of the side effect is provided to the client.

<a name="EffectType"></a>
## [EffectType](./Common.xml#L1175:~:text=<EnumType%20Name="-,EffectType,-") *(Deprecated)*
All side effects are essentially value changes, differentiation not needed.

<a name="SortOrderType"></a>
## [SortOrderType](./Common.xml#L1300:~:text=<ComplexType%20Name="-,SortOrderType,-")
Exactly one of `Property` and `DynamicProperty` must be present

Property|Type|Description
:-------|:---|:----------
[Property](./Common.xml#L1302:~:text=<ComplexType%20Name="-,SortOrderType,-")|PropertyPath?|Sort property
[DynamicProperty](./Common.xml#L1314:~:text=<ComplexType%20Name="-,SortOrderType,-")|AnnotationPath?|Dynamic property introduced by an annotation and used as sort property<br>If the annotation referenced by the annotation path does not apply to the same collection of entities as the one being sorted according to the [`UI.PresentationVariant`](UI.md#PresentationVariant) or `Common.SortOrder` annotation, this instance of `UI.PresentationVariant/SortOrder` or `Common.SortOrder` MUST be silently ignored.<br>Allowed terms:<br>- [AggregatedProperty](Analytics.md#AggregatedProperty)<br>- [CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)
[Descending](./Common.xml#L1328:~:text=<ComplexType%20Name="-,SortOrderType,-")|Boolean?|Sort direction, ascending if not specified otherwise

<a name="RecursiveHierarchyType"></a>
## [RecursiveHierarchyType](./Common.xml#L1361:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *(Deprecated)*
Use terms [Aggregation.RecursiveHierarchy](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#RecursiveHierarchy) and [Hierarchy.RecursiveHierarchy](https://github.com/SAP/odata-vocabularies/blob/main/vocabularies/Hierarchy.md#RecursiveHierarchy) instead

<a name="UserID"></a>
## [UserID](./Common.xml#L1412:~:text=<TypeDefinition%20Name="-,UserID,-")
**Type:** String

User ID

<a name="PropertyRecommendationType"></a>
## [PropertyRecommendationType](./Common.xml#L1512:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[target](./Common.xml#L1514:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|URL|URL (relative to the URL of the recommendations function request) addressing a property [OData-URL, section 4.6] that is targeted by this recommendation<br>The request `SalesOrder('A')/ns.RecommendationsFunction?Targets=...` might retrieve a recommendation with `"target": "Items(10)/Product"`.
[value](./Common.xml#L1522:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|String|Recommended value, converted to string
[text](./Common.xml#L1525:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|String?|Description of the recommended value
[alternatives](./Common.xml#L1528:~:text=<ComplexType%20Name="-,PropertyRecommendationType,-")|\[[AlternativeRecommendationType](#AlternativeRecommendationType)\]|Alternative recommendations

<a name="AlternativeRecommendationType"></a>
## [AlternativeRecommendationType](./Common.xml#L1532:~:text=<ComplexType%20Name="-,AlternativeRecommendationType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[value](./Common.xml#L1534:~:text=<ComplexType%20Name="-,AlternativeRecommendationType,-")|String|Alternatively recommended value, converted to string
[score](./Common.xml#L1537:~:text=<ComplexType%20Name="-,AlternativeRecommendationType,-")|Decimal?|Score of the alternatively recommended value

<a name="RecommendationsRoleType"></a>
## [RecommendationsRoleType](./Common.xml#L1545:~:text=<EnumType%20Name="-,RecommendationsRoleType,-") *([Experimental](Common.md#Experimental))*


Flag Member|Value|Description
:-----|----:|:----------
[Input](./Common.xml#L1547:~:text=<EnumType%20Name="-,RecommendationsRoleType,-")|1|The property is input for some recommendation
[Output](./Common.xml#L1550:~:text=<EnumType%20Name="-,RecommendationsRoleType,-")|2|The property or parameter is the target of some recommendation
[Required](./Common.xml#L1553:~:text=<EnumType%20Name="-,RecommendationsRoleType,-")|4|The property is mandatory for recommendations to be requested
