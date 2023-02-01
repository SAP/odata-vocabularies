# Common Vocabulary
**Namespace: [com.sap.vocabularies.Common.v1](Common.xml)**

Common terms for all SAP vocabularies


## Terms

Term|Type|Description
:---|:---|:----------
[Experimental](./Common.xml#L50:~:text=<Term%20Name="-,Experimental,-")|String?|<a name="Experimental"></a>Terms, types, and properties annotated with this term are experimental and can be changed incompatibly or removed completely any time without prior warning.<br>Do not use or rely on experimental terms, types, and properties in production environments.
[ServiceVersion](./Common.xml#L61:~:text=<Term%20Name="-,ServiceVersion,-")|Int32|<a name="ServiceVersion"></a>1 for first version of a service, incremented when schema changes incompatibly and service is published with a different URI
[ServiceSchemaVersion](./Common.xml#L65:~:text=<Term%20Name="-,ServiceSchemaVersion,-")|Int32|<a name="ServiceSchemaVersion"></a>0 for first schema version within a service version, incremented when schema changes compatibly
[Label](./Common.xml#L71:~:text=<Term%20Name="-,Label,-")|String|<a name="Label"></a>A short, human-readable text suitable for labels and captions in UIs
[Heading](./Common.xml#L77:~:text=<Term%20Name="-,Heading,-")|String|<a name="Heading"></a>A short, human-readable text suitable for column headings in UIs
[QuickInfo](./Common.xml#L83:~:text=<Term%20Name="-,QuickInfo,-")|String|<a name="QuickInfo"></a>A short, human-readable text suitable for tool tips in UIs
[Text](./Common.xml#L89:~:text=<Term%20Name="-,Text,-")|String?|<a name="Text"></a>A descriptive text for values of the annotated property. Value MUST be a dynamic expression when used as metadata annotation.
[TextFor](./Common.xml#L95:~:text=<Term%20Name="-,TextFor,-") *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="TextFor"></a>The annotated property contains a descriptive text for values of the referenced property.
[ExternalID](./Common.xml#L102:~:text=<Term%20Name="-,ExternalID,-") *([Experimental](Common.md#Experimental))*|String?|<a name="ExternalID"></a>A human readable identifier for values of the annotated property. Value MUST be a dynamic expression when used as metadata annotation.<br>If the annotated property is (part of) a foreign key of a resource, the external id is a human readable (part of an) identifier of this resource. There is a one-to-one relationship between each possible value of the annotated property and the corresponding external id.
[IsLanguageIdentifier](./Common.xml#L124:~:text=<Term%20Name="-,IsLanguageIdentifier,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsLanguageIdentifier"></a>An identifier to distinguish multiple texts in different languages for the same entity
[TextFormat](./Common.xml#L131:~:text=<Term%20Name="-,TextFormat,-")|[TextFormatType](#TextFormatType)|<a name="TextFormat"></a>The annotated property, parameter, or return type contains human-readable text that may contain formatting information
[Timezone](./Common.xml#L147:~:text=<Term%20Name="-,Timezone,-") *([Experimental](Common.md#Experimental))*|String?|<a name="Timezone"></a>The point in time represented by the annotated property or parameter shall be interpreted in the given time zone<br>Time zones shall be specified according to the [IANA](https://www.iana.org/time-zones) standard. If this annotation is absent or null or an empty string, points in time are typically interpreted in the current user's or default time zone.
[IsDigitSequence](./Common.xml#L209:~:text=<Term%20Name="-,IsDigitSequence,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDigitSequence"></a>Contains only digits
[IsUpperCase](./Common.xml#L215:~:text=<Term%20Name="-,IsUpperCase,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUpperCase"></a>Contains just uppercase characters
[IsCurrency](./Common.xml#L221:~:text=<Term%20Name="-,IsCurrency,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCurrency"></a>Annotated property or parameter is a currency code
[IsUnit](./Common.xml#L228:~:text=<Term%20Name="-,IsUnit,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUnit"></a>Annotated property or parameter is a unit of measure
[UnitSpecificScale](./Common.xml#L233:~:text=<Term%20Name="-,UnitSpecificScale,-")|PrimitiveType|<a name="UnitSpecificScale"></a>The number of fractional decimal digits of a currency amount or measured quantity<br>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default scale of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of fractional digits captured by that device.
[UnitSpecificPrecision](./Common.xml#L241:~:text=<Term%20Name="-,UnitSpecificPrecision,-") *([Experimental](Common.md#Experimental))*|PrimitiveType|<a name="UnitSpecificPrecision"></a>The number of significant decimal digits of a currency amount or measured quantity<br>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default precision of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of significant digits captured by that device.
[SecondaryKey](./Common.xml#L250:~:text=<Term%20Name="-,SecondaryKey,-") *(Deprecated)*|\[PropertyPath\]|<a name="SecondaryKey"></a>Use term `AlternateKeys` from the OASIS Core vocabulary instead
[MinOccurs](./Common.xml#L265:~:text=<Term%20Name="-,MinOccurs,-")|Int64|<a name="MinOccurs"></a>The annotated set or collection contains at least this number of items
[MaxOccurs](./Common.xml#L271:~:text=<Term%20Name="-,MaxOccurs,-")|Int64|<a name="MaxOccurs"></a>The annotated set or collection contains at most this number of items
[AssociationEntity](./Common.xml#L277:~:text=<Term%20Name="-,AssociationEntity,-")|\[NavigationPropertyPath\]|<a name="AssociationEntity"></a>Entity representing an n:m association with attributes
[DerivedNavigation](./Common.xml#L285:~:text=<Term%20Name="-,DerivedNavigation,-")|NavigationPropertyPath|<a name="DerivedNavigation"></a>Shortcut for a multi-segment navigation, contains the long path with all its segments
[Masked](./Common.xml#L291:~:text=<Term%20Name="-,Masked,-") *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Masked"></a>Use terms `MaskedValue` instead
[MaskedValue](./Common.xml#L306:~:text=<Term%20Name="-,MaskedValue,-") *([Experimental](Common.md#Experimental))*|String?|<a name="MaskedValue"></a>Property contains sensitive data that is by default not transferred<br>By default a masked property is excluded from responses and instead an instance annotation with this term is sent, containing a masked value that can be rendered by user interfaces.
[RevealOnDemand](./Common.xml#L316:~:text=<Term%20Name="-,RevealOnDemand,-") *([Experimental](Common.md#Experimental))*|Boolean|<a name="RevealOnDemand"></a>Unmasked data for this property can be requested with custom query option `masked-values=false`
[SemanticObject](./Common.xml#L324:~:text=<Term%20Name="-,SemanticObject,-")|String?|<a name="SemanticObject"></a>Name of the Semantic Object represented as this entity type or identified by this property
[SemanticObjectMapping](./Common.xml#L330:~:text=<Term%20Name="-,SemanticObjectMapping,-")|\[[SemanticObjectMappingType](#SemanticObjectMappingType)\]|<a name="SemanticObjectMapping"></a>Maps properties of the annotated entity type or sibling properties of the annotated property to properties of the Semantic Object<br>This allows "renaming" of properties in the current context to match property names of the Semantic Object, e.g. `SenderPartyID` to `PartyID`. Only properties explicitly listed in the mapping are renamed, all other properties are available for intent-based navigation with their "local" name.
[SemanticObjectUnavailableActions](./Common.xml#L348:~:text=<Term%20Name="-,SemanticObjectUnavailableActions,-")|\[String\]|<a name="SemanticObjectUnavailableActions"></a>List of actions that are not available in the current state of the instance of the Semantic Object
[IsInstanceAnnotation](./Common.xml#L354:~:text=<Term%20Name="-,IsInstanceAnnotation,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsInstanceAnnotation"></a>Term can also be used as instance annotation; AppliesTo of this term specifies where it can be applied
[FilterExpressionRestrictions](./Common.xml#L392:~:text=<Term%20Name="-,FilterExpressionRestrictions,-") *(Deprecated)*|\[[FilterExpressionRestrictionType](#FilterExpressionRestrictionType)\]|<a name="FilterExpressionRestrictions"></a>Use term Capabilities.FilterRestrictions instead
[FieldControl](./Common.xml#L441:~:text=<Term%20Name="-,FieldControl,-")|[FieldControlType?](#FieldControlType)|<a name="FieldControl"></a>Control state of a property, parameter, or the media stream of a media entity<br>This term can be used for static field control, providing an enumeration member value in $metadata, as well as dynamically, providing a `Path` expression.<br/>In the dynamic case the property referenced by the `Path` expression MUST be of type `Edm.Byte` to accommodate OData V2 services as well as V4 infrastructures that don't support enumeration types.
[ExceptionCategory](./Common.xml#L483:~:text=<Term%20Name="-,ExceptionCategory,-") *([Experimental](Common.md#Experimental))*|String|<a name="ExceptionCategory"></a>A machine-readable exception category
[Application](./Common.xml#L488:~:text=<Term%20Name="-,Application,-") *([Experimental](Common.md#Experimental))*|[ApplicationType](#ApplicationType)|<a name="Application"></a>...
[Timestamp](./Common.xml#L508:~:text=<Term%20Name="-,Timestamp,-") *([Experimental](Common.md#Experimental))*|DateTimeOffset|<a name="Timestamp"></a>...
[TransactionId](./Common.xml#L513:~:text=<Term%20Name="-,TransactionId,-") *([Experimental](Common.md#Experimental))*|String|<a name="TransactionId"></a>...
[ErrorResolution](./Common.xml#L518:~:text=<Term%20Name="-,ErrorResolution,-") *([Experimental](Common.md#Experimental))*|[ErrorResolutionType](#ErrorResolutionType)|<a name="ErrorResolution"></a>Hints for resolving this error
[Messages](./Common.xml#L536:~:text=<Term%20Name="-,Messages,-")|\[ComplexType\]|<a name="Messages"></a>Collection of end-user messages<br>The name of the message type is service-specific, its structure components are identified by naming convention, following the names of the OData error response structure.<br/>The minimum structure is<br/>- `code: Edm.String`<br/>- `message: Edm.String`<br/>- `target: Edm.String nullable`<br/>- `additionalTargets: Collection(Edm.String)`<br/>- `transition: Edm.Boolean`<br/>- `numericSeverity: Edm.Byte`<br/>- `longtextUrl: Edm.String nullable`
[additionalTargets](./Common.xml#L560:~:text=<Term%20Name="-,additionalTargets,-") *([Experimental](Common.md#Experimental))*|\[String\]|<a name="additionalTargets"></a>Additional targets for the message<br>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response
[longtextUrl](./Common.xml#L567:~:text=<Term%20Name="-,longtextUrl,-")|URL|<a name="longtextUrl"></a>Location of the message long text<br>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response
[numericSeverity](./Common.xml#L574:~:text=<Term%20Name="-,numericSeverity,-")|[NumericMessageSeverityType](#NumericMessageSeverityType)|<a name="numericSeverity"></a>Classifies an end-user message as info, success, warning, or error<br>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response
[MaximumNumericMessageSeverity](./Common.xml#L582:~:text=<Term%20Name="-,MaximumNumericMessageSeverity,-") *([Experimental](Common.md#Experimental))*|[NumericMessageSeverityType?](#NumericMessageSeverityType)|<a name="MaximumNumericMessageSeverity"></a>The maximum severity of all end-user messages attached to an entity, null if no messages are attached<br>This metadata annotation can be applied to entity types that are also annotated with term [`Common.Messages`](#Messages)
[IsActionCritical](./Common.xml#L615:~:text=<Term%20Name="-,IsActionCritical,-")|Boolean|<a name="IsActionCritical"></a>Criticality of the function or action to enforce a warning or similar before it's executed
[Attributes](./Common.xml#L621:~:text=<Term%20Name="-,Attributes,-")|\[PropertyPath\]|<a name="Attributes"></a>Attributes related to this property, which may occur in denormalized entity types
[RelatedRecursiveHierarchy](./Common.xml#L627:~:text=<Term%20Name="-,RelatedRecursiveHierarchy,-")|AnnotationPath|<a name="RelatedRecursiveHierarchy"></a>A recursive hierarchy related to this property. The annotation path must end in Aggregation.RecursiveHierarchy.
[Interval](./Common.xml#L633:~:text=<Term%20Name="-,Interval,-")|[IntervalType](#IntervalType)|<a name="Interval"></a>An interval with lower and upper boundaries described by two properties
[ResultContext](./Common.xml#L657:~:text=<Term%20Name="-,ResultContext,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ResultContext"></a>The annotated entity type has one or more containment navigation properties. An instance of the annotated entity type provides the context required for determining the target entity sets reached by these containment navigation properties.
[SAPObjectNodeType](./Common.xml#L666:~:text=<Term%20Name="-,SAPObjectNodeType,-") *([Experimental](Common.md#Experimental))*|[SAPObjectNodeTypeType](#SAPObjectNodeTypeType)|<a name="SAPObjectNodeType"></a>The SAP Object Node Type represented by the annotated entity type<br>SAP Object Node Types define the structure of SAP Object Types, which are a generalization of Business Object, Technical Object, Configuration Object, and Analytical Object.
[Composition](./Common.xml#L684:~:text=<Term%20Name="-,Composition,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Composition"></a>The annotated navigation property represents a logical composition, even though it is non-containment<br>The entities related via this navigation property have an existential dependency on their composition parent. The entity set of the composition parent MUST contain a NavigationPropertyBinding for this navigation property.
[SAPObjectNodeTypeReference](./Common.xml#L695:~:text=<Term%20Name="-,SAPObjectNodeTypeReference,-") *([Experimental](Common.md#Experimental))*|String|<a name="SAPObjectNodeTypeReference"></a>The name of the SAP Object Node Type referenced by the annotated property
[IsNaturalPerson](./Common.xml#L702:~:text=<Term%20Name="-,IsNaturalPerson,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsNaturalPerson"></a>The annotated entity type (e.g. `Employee`) or annotation (e.g. `IsImageUrl`) represents a natural person
[ValueList](./Common.xml#L710:~:text=<Term%20Name="-,ValueList,-")|[ValueListType](#ValueListType)|<a name="ValueList"></a>Specifies how to get a list of acceptable values for a property or parameter<br>The value list can be based on user input that is passed in the value list request. The value list can be used for type-ahead and classical pick lists.
[ValueListRelevantQualifiers](./Common.xml#L799:~:text=<Term%20Name="-,ValueListRelevantQualifiers,-") *([Experimental](Common.md#Experimental))*|\[[SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)\]|<a name="ValueListRelevantQualifiers"></a>List of qualifiers of relevant ValueList annotations<br>The value of this annotation is a dynamic expression for calculating the qualifiers of relevant value lists depending on the values of one or more other properties.
[ValueListWithFixedValues](./Common.xml#L808:~:text=<Term%20Name="-,ValueListWithFixedValues,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ValueListWithFixedValues"></a>If specified as true, there's only one value list mapping and its value list consists of a small number of fixed values
[ValueListForValidation](./Common.xml#L814:~:text=<Term%20Name="-,ValueListForValidation,-") *([Experimental](Common.md#Experimental))*|String|<a name="ValueListForValidation"></a>Contains the qualifier of the ValueList or ValueListMapping that should be used for validation
[ValueListReferences](./Common.xml#L821:~:text=<Term%20Name="-,ValueListReferences,-")|\[URL\]|<a name="ValueListReferences"></a>A list of URLs of CSDL documents containing value list mappings for this parameter or property
[ValueListMapping](./Common.xml#L828:~:text=<Term%20Name="-,ValueListMapping,-")|[ValueListMappingType](#ValueListMappingType)|<a name="ValueListMapping"></a>Specifies the mapping between data service properties and value list properties<br>The value list can be filtered based on user input. It can be used for type-ahead and classical pick lists. There may be many alternative mappings with different qualifiers.
[IsCalendarYear](./Common.xml#L950:~:text=<Term%20Name="-,IsCalendarYear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYear"></a>Property encodes a year number as string following the logical pattern (-?)YYYY(Y*) consisting of an optional minus sign for years B.C. followed by at least four digits. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})
[IsCalendarHalfyear](./Common.xml#L960:~:text=<Term%20Name="-,IsCalendarHalfyear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarHalfyear"></a>Property encodes a halfyear number as string following the logical pattern H consisting of a single digit. The string matches the regex pattern [1-2]
[IsCalendarQuarter](./Common.xml#L970:~:text=<Term%20Name="-,IsCalendarQuarter,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarQuarter"></a>Property encodes a calendar quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsCalendarMonth](./Common.xml#L980:~:text=<Term%20Name="-,IsCalendarMonth,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarMonth"></a>Property encodes a calendar month number as string following the logical pattern MM consisting of two digits. The string matches the regex pattern 0[1-9]\|1[0-2]
[IsCalendarWeek](./Common.xml#L990:~:text=<Term%20Name="-,IsCalendarWeek,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarWeek"></a>Property encodes a calendar week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsDayOfCalendarMonth](./Common.xml#L1000:~:text=<Term%20Name="-,IsDayOfCalendarMonth,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarMonth"></a>Day number relative to a calendar month. Valid values are between 1 and 31.
[IsDayOfCalendarYear](./Common.xml#L1009:~:text=<Term%20Name="-,IsDayOfCalendarYear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarYear"></a>Day number relative to a calendar year. Valid values are between 1 and 366.
[IsCalendarYearHalfyear](./Common.xml#L1018:~:text=<Term%20Name="-,IsCalendarYearHalfyear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearHalfyear"></a>Property encodes a calendar year and halfyear as string following the logical pattern (-?)YYYY(Y*)H consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the halfyear. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-2]
[IsCalendarYearQuarter](./Common.xml#L1029:~:text=<Term%20Name="-,IsCalendarYearQuarter,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearQuarter"></a>Property encodes a calendar year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsCalendarYearMonth](./Common.xml#L1040:~:text=<Term%20Name="-,IsCalendarYearMonth,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearMonth"></a>Property encodes a calendar year and month as string following the logical pattern (-?)YYYY(Y*)MM consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent the months January to December. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])
[IsCalendarYearWeek](./Common.xml#L1052:~:text=<Term%20Name="-,IsCalendarYearWeek,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearWeek"></a>Property encodes a calendar year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsCalendarDate](./Common.xml#L1063:~:text=<Term%20Name="-,IsCalendarDate,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarDate"></a>Property encodes a calendar date: year, month and day as string following the logical pattern (-?)YYYY(Y*)MMDD consisting of an optional minus sign for years B.C. followed by at least eight digits, where the last four digits represent the months January to December (MM) and the day of the month (DD). The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])(0[1-9]\|[12][0-9]\|3[01]) The regex pattern does not reflect the additional constraint for "Day-of-month Values": The day value must be no more than 30 if month is one of 04, 06, 09, or 11, no more than 28 if month is 02 and year is not divisible by 4, or is divisible by 100 but not by 400, and no more than 29 if month is 02 and year is divisible by 400, or by 4 but not by 100.
[IsFiscalYear](./Common.xml#L1081:~:text=<Term%20Name="-,IsFiscalYear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYear"></a>Property encodes a fiscal year number as string following the logical pattern YYYY consisting of four digits. The string matches the regex pattern [1-9][0-9]{3}
[IsFiscalPeriod](./Common.xml#L1091:~:text=<Term%20Name="-,IsFiscalPeriod,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalPeriod"></a>Property encodes a fiscal period as string following the logical pattern PPP consisting of three digits. The string matches the regex pattern [0-9]{3}
[IsFiscalYearPeriod](./Common.xml#L1101:~:text=<Term%20Name="-,IsFiscalYearPeriod,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearPeriod"></a>Property encodes a fiscal year and period as string following the logical pattern YYYYPPP consisting of seven digits, where the last three digits represent the fiscal period in the year. The string matches the regex pattern ([1-9][0-9]{3})([0-9]{3})
[IsFiscalQuarter](./Common.xml#L1112:~:text=<Term%20Name="-,IsFiscalQuarter,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalQuarter"></a>Property encodes a fiscal quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsFiscalYearQuarter](./Common.xml#L1121:~:text=<Term%20Name="-,IsFiscalYearQuarter,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearQuarter"></a>Property encodes a fiscal year and quarter as string following the logical pattern YYYYQ consisting of five digits, where the last digit represents the quarter. The string matches the regex pattern [1-9][0-9]{3}[1-4]
[IsFiscalWeek](./Common.xml#L1131:~:text=<Term%20Name="-,IsFiscalWeek,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalWeek"></a>Property encodes a fiscal week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsFiscalYearWeek](./Common.xml#L1140:~:text=<Term%20Name="-,IsFiscalYearWeek,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearWeek"></a>Property encodes a fiscal year and week as string following the logical pattern YYYYWW consisting of six digits, where the last two digits represent the week number in the year. The string matches the regex pattern [1-9][0-9]{3}(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsDayOfFiscalYear](./Common.xml#L1150:~:text=<Term%20Name="-,IsDayOfFiscalYear,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfFiscalYear"></a>Day number relative to a fiscal year. Valid values are between 1 and 371.
[IsFiscalYearVariant](./Common.xml#L1158:~:text=<Term%20Name="-,IsFiscalYearVariant,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearVariant"></a>Property encodes a fiscal year variant
[MutuallyExclusiveTerm](./Common.xml#L1167:~:text=<Term%20Name="-,MutuallyExclusiveTerm,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MutuallyExclusiveTerm"></a>Only one term of the group identified with the Qualifier attribute can be applied
[DraftRoot](./Common.xml#L1174:~:text=<Term%20Name="-,DraftRoot,-")|[DraftRootType](#DraftRootType)|<a name="DraftRoot"></a>Root entities of business documents that support the draft pattern
[DraftNode](./Common.xml#L1219:~:text=<Term%20Name="-,DraftNode,-")|[DraftNodeType](#DraftNodeType)|<a name="DraftNode"></a>Entities in this set are parts of business documents that support the draft pattern
[DraftActivationVia](./Common.xml#L1245:~:text=<Term%20Name="-,DraftActivationVia,-")|\[[SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)\]|<a name="DraftActivationVia"></a>Draft entities in this set are indirectly activated via draft entities in the referenced entity sets
[EditableFieldFor](./Common.xml#L1250:~:text=<Term%20Name="-,EditableFieldFor,-")|PropertyPath|<a name="EditableFieldFor"></a>The annotated property is an editable field for the referenced key property
[SemanticKey](./Common.xml#L1286:~:text=<Term%20Name="-,SemanticKey,-")|\[PropertyPath\]|<a name="SemanticKey"></a>The listed properties form the semantic key, i.e. they are unique modulo IsActiveEntity
[SideEffects](./Common.xml#L1292:~:text=<Term%20Name="-,SideEffects,-")|[SideEffectsType](#SideEffectsType)|<a name="SideEffects"></a>Describes side-effects of modification operations
[DefaultValuesFunction](./Common.xml#L1400:~:text=<Term%20Name="-,DefaultValuesFunction,-")|[QualifiedName](#QualifiedName)|<a name="DefaultValuesFunction"></a>Function to calculate default values based on user input that is only known to the client and "context information" that is already available to the service<br>The default values function must have a bound overload whose binding parameter type matches the annotation target<br/> - for an entity set: collection of entity type of entity set<br/> - for a navigation property: identical to the type of the navigation property (single- or collection-valued)<br/> - for a bound action/function: identical to the binding parameter type of the annotated action/function<br/> In addition the overload can have non-binding parameters for values that the user has already entered:<br/> - for an entity set or navigation property: each non-binding parameter name and type must match the name and type of a property of the entity to be created<br/> - for an action or function: each non-binding parameter name and type must match the name and type of a non-binding parameter of the action or function to be called<br/> The result type of the default values function is a complex type whose properties correspond in name and type to a subset of<br/> - the properties of the entity to create, or<br/> - the parameters of the action or function to call
[DerivedDefaultValue](./Common.xml#L1429:~:text=<Term%20Name="-,DerivedDefaultValue,-") *([Experimental](Common.md#Experimental))*|String|<a name="DerivedDefaultValue"></a>Function import to derive a default value for the property from a given context.<br>Function import has two parameters of complex types:<br/> - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/> - `properties`, a structure resembling the type of the entity set of the annotated property<br/> The return type must be of the same type as the annotated property.<br/> Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.
[FilterDefaultValue](./Common.xml#L1451:~:text=<Term%20Name="-,FilterDefaultValue,-")|PrimitiveType?|<a name="FilterDefaultValue"></a>A default value for the property to be used in filter expressions.
[FilterDefaultValueHigh](./Common.xml#L1457:~:text=<Term%20Name="-,FilterDefaultValueHigh,-") *([Experimental](Common.md#Experimental))*|PrimitiveType?|<a name="FilterDefaultValueHigh"></a>A default upper limit for the property to be used in 'less than or equal' filter expressions.
[DerivedFilterDefaultValue](./Common.xml#L1464:~:text=<Term%20Name="-,DerivedFilterDefaultValue,-") *([Experimental](Common.md#Experimental))*|String|<a name="DerivedFilterDefaultValue"></a>Function import to derive a default value for the property from a given context in order to use it in filter expressions.<br>Function import has two parameters of complex types:<br/> - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/> - `properties`, a structure resembling the type of the entity set of the annotated property<br/> The return type must be of the same type as the annotated property.<br/> Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.
[SortOrder](./Common.xml#L1490:~:text=<Term%20Name="-,SortOrder,-")|\[[SortOrderType](#SortOrderType)\]|<a name="SortOrder"></a>List of sort criteria<br>The items of the annotated entity set or the items of the collection of the annotated entity type are sorted by the first entry of the SortOrder collection. Items with same value for this first sort criteria are sorted by the second entry of the SortOrder collection, and so on.
[RecursiveHierarchy](./Common.xml#L1554:~:text=<Term%20Name="-,RecursiveHierarchy,-") *(Deprecated)*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Use terms [Aggregation.RecursiveHierarchy](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#RecursiveHierarchy) and [Hierarchy.RecursiveHierarchy](https://github.com/SAP/odata-vocabularies/blob/main/vocabularies/Hierarchy.md#RecursiveHierarchy) instead
[CreatedAt](./Common.xml#L1605:~:text=<Term%20Name="-,CreatedAt,-")|DateTimeOffset?|<a name="CreatedAt"></a>Creation timestamp
[CreatedBy](./Common.xml#L1609:~:text=<Term%20Name="-,CreatedBy,-")|[UserID?](#UserID)|<a name="CreatedBy"></a>First editor
[ChangedAt](./Common.xml#L1613:~:text=<Term%20Name="-,ChangedAt,-")|DateTimeOffset?|<a name="ChangedAt"></a>Last modification timestamp
[ChangedBy](./Common.xml#L1617:~:text=<Term%20Name="-,ChangedBy,-")|[UserID?](#UserID)|<a name="ChangedBy"></a>Last editor
[OriginalProtocolVersion](./Common.xml#L1629:~:text=<Term%20Name="-,OriginalProtocolVersion,-")|String|<a name="OriginalProtocolVersion"></a>Original protocol version of a converted (V4) CSDL document, allowed values `2.0` and `3.0`
[ApplyMultiUnitBehaviorForSortingAndFiltering](./Common.xml#L1636:~:text=<Term%20Name="-,ApplyMultiUnitBehaviorForSortingAndFiltering,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ApplyMultiUnitBehaviorForSortingAndFiltering"></a>Sorting and filtering of amounts in multiple currencies needs special consideration<br>TODO: add link to UX documentation on https://experience.sap.com/fiori-design/
[mediaUploadLink](./Common.xml#L1645:~:text=<Term%20Name="-,mediaUploadLink,-") *([Experimental](Common.md#Experimental))*|URL|<a name="mediaUploadLink"></a>URL for uploading new media content to a Document Management Service<br>In contrast to the `@odata.mediaEditLink` this URL allows to upload new media content without directly changing a stream property or media resource. The upload request typically uses HTTP POST with `Content-Type: multipart/form-data` following RFC 7578. The upload request must contain one multipart representing the content of the file. The `name` parameter in the `Content-Disposition` header (as described in RFC 7578) is irrelevant, but the `filename` parameter is expected. If the request succeeds the response will contain a JSON body of `Content-Type: application/json` with a JSON property `readLink`. The newly uploaded media resource can be linked to the stream property by changing the `@odata.mediaReadLink` to the value of this `readLink` in a subsequent PATCH request to the OData entity.
[PrimitivePropertyPath](./Common.xml#L1662:~:text=<Term%20Name="-,PrimitivePropertyPath,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="PrimitivePropertyPath"></a>A term or term property with this tag whose type is (a collection of) `Edm.PropertyPath` MUST resolve to a primitive structural property
[WebSocketBaseURL](./Common.xml#L1668:~:text=<Term%20Name="-,WebSocketBaseURL,-") *([Experimental](Common.md#Experimental))*|URL|<a name="WebSocketBaseURL"></a>Base URL for WebSocket connections

<a name="TextFormatType"></a>
## [TextFormatType](./Common.xml#L136:~:text=<EnumType%20Name="-,TextFormatType,-")


Member|Value|Description
:-----|----:|:----------
[plain](./Common.xml#L137:~:text=<EnumType%20Name="-,TextFormatType,-")|0|Plain text, line breaks represented as the character 0x0A
[html](./Common.xml#L141:~:text=<EnumType%20Name="-,TextFormatType,-")|1|Plain text with markup that can validly appear directly within an HTML DIV element

<a name="SemanticObjectMappingType"></a>
## [SemanticObjectMappingType](./Common.xml#L336:~:text=<ComplexType%20Name="-,SemanticObjectMappingType,-")
Maps a property of the annotated entity type or a sibling property of the annotated property to a property of the Semantic Object

Property|Type|Description
:-------|:---|:----------
[LocalProperty](./Common.xml#L339:~:text=<ComplexType%20Name="-,SemanticObjectMappingType,-")|PropertyPath|Path to a local property that provides the value for the Semantic Object property
[SemanticObjectProperty](./Common.xml#L343:~:text=<ComplexType%20Name="-,SemanticObjectMappingType,-")|String|Name of the Semantic Object property

<a name="FilterExpressionRestrictionType"></a>
## [FilterExpressionRestrictionType](./Common.xml#L405:~:text=<ComplexType%20Name="-,FilterExpressionRestrictionType,-") *(Deprecated)*
Use term Capabilities.FilterRestrictions instead

<a name="FilterExpressionType"></a>
## [FilterExpressionType](./Common.xml#L418:~:text=<EnumType%20Name="-,FilterExpressionType,-") *(Deprecated)*
Use term Capabilities.FilterRestrictions instead

<a name="FieldControlType"></a>
## [FieldControlType](./Common.xml#L448:~:text=<EnumType%20Name="-,FieldControlType,-")
Control state of a property

Member|Value|Description
:-----|----:|:----------
[Mandatory](./Common.xml#L450:~:text=<EnumType%20Name="-,FieldControlType,-")|7|Property is mandatory from a business perspective<br>This annotation value does not imply any restrictions on the value range of the property. For restricting the value range use e.g. the standard type facet `Nullable` with a value of `false` to exclude the `null` value, or terms from the [Validation vocabulary](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Validation.V1.md).
[Optional](./Common.xml#L456:~:text=<EnumType%20Name="-,FieldControlType,-")|3|Property may have a value<br>This value does not make sense as a static annotation value.
[ReadOnly](./Common.xml#L461:~:text=<EnumType%20Name="-,FieldControlType,-")|1|Property value cannot be changed<br>To statically mark a property as read-only use term [Core.Computed](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Computed) instead
[Inapplicable](./Common.xml#L466:~:text=<EnumType%20Name="-,FieldControlType,-")|0|Property has no meaning in the current entity state<br>This value does not make sense as a static annotation value.<br/>Example for dynamic use: in a travel expense report the property `DestinationCountry` is inapplicable if trip type is domestic, and mandatory if trip type is international.
[Hidden](./Common.xml#L475:~:text=<EnumType%20Name="-,FieldControlType,-")|0|Deprecated synonymn for Inapplicable, do not use<br>To statically hide a property on a UI use [UI.Hidden](UI.md#Hidden) instead

<a name="ApplicationType"></a>
## [ApplicationType](./Common.xml#L493:~:text=<ComplexType%20Name="-,ApplicationType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Component](./Common.xml#L495:~:text=<ComplexType%20Name="-,ApplicationType,-")|String?|Software component of service implementation
[ServiceRepository](./Common.xml#L498:~:text=<ComplexType%20Name="-,ApplicationType,-")|String?|...
[ServiceId](./Common.xml#L501:~:text=<ComplexType%20Name="-,ApplicationType,-")|String?|...
[ServiceVersion](./Common.xml#L504:~:text=<ComplexType%20Name="-,ApplicationType,-")|String?|...

<a name="ErrorResolutionType"></a>
## [ErrorResolutionType](./Common.xml#L523:~:text=<ComplexType%20Name="-,ErrorResolutionType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Analysis](./Common.xml#L525:~:text=<ComplexType%20Name="-,ErrorResolutionType,-")|String?|Short hint on how to analyze this error
[Note](./Common.xml#L528:~:text=<ComplexType%20Name="-,ErrorResolutionType,-")|String?|Note for error resolution
[AdditionalNote](./Common.xml#L531:~:text=<ComplexType%20Name="-,ErrorResolutionType,-")|String?|Additional note for error resolution

<a name="NumericMessageSeverityType"></a>
## [NumericMessageSeverityType](./Common.xml#L589:~:text=<TypeDefinition%20Name="-,NumericMessageSeverityType,-")
**Type:** Byte

Classifies an end-user message as info, success, warning, or error

Allowed Value|Description
:------------|:----------
[1](./Common.xml#L594:~:text=<TypeDefinition%20Name="-,NumericMessageSeverityType,-")|Success - no action required
[2](./Common.xml#L598:~:text=<TypeDefinition%20Name="-,NumericMessageSeverityType,-")|Information - no action required
[3](./Common.xml#L602:~:text=<TypeDefinition%20Name="-,NumericMessageSeverityType,-")|Warning - action may be required
[4](./Common.xml#L606:~:text=<TypeDefinition%20Name="-,NumericMessageSeverityType,-")|Error - action is required

<a name="IntervalType"></a>
## [IntervalType](./Common.xml#L637:~:text=<ComplexType%20Name="-,IntervalType,-")


Property|Type|Description
:-------|:---|:----------
[LowerBoundary](./Common.xml#L638:~:text=<ComplexType%20Name="-,IntervalType,-")|PropertyPath|Property holding the lower interval boundary
[LowerBoundaryIncluded](./Common.xml#L642:~:text=<ComplexType%20Name="-,IntervalType,-")|Boolean|The lower boundary value is included in the interval
[UpperBoundary](./Common.xml#L646:~:text=<ComplexType%20Name="-,IntervalType,-")|PropertyPath|Property holding the upper interval boundary
[UpperBoundaryIncluded](./Common.xml#L650:~:text=<ComplexType%20Name="-,IntervalType,-")|Boolean|The upper boundary value is included in the interval

<a name="SAPObjectNodeTypeType"></a>
## [SAPObjectNodeTypeType](./Common.xml#L675:~:text=<ComplexType%20Name="-,SAPObjectNodeTypeType,-") *([Experimental](Common.md#Experimental))*
Information about an SAP Object Node Type

Property|Type|Description
:-------|:---|:----------
[Name](./Common.xml#L678:~:text=<ComplexType%20Name="-,SAPObjectNodeTypeType,-")|String|The name of the SAP Object Node Type

<a name="ValueListType"></a>
## [ValueListType](./Common.xml#L716:~:text=<ComplexType%20Name="-,ValueListType,-")


Property|Type|Description
:-------|:---|:----------
[Label](./Common.xml#L738:~:text=<ComplexType%20Name="-,ValueListType,-")|String?|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](./Common.xml#L743:~:text=<ComplexType%20Name="-,ValueListType,-")|String|Resource path of an OData collection with possible values, relative to CollectionRoot
[CollectionRoot](./Common.xml#L747:~:text=<ComplexType%20Name="-,ValueListType,-")|String?|Service root of the value list collection; not specified means local to the document containing the annotation
[DistinctValuesSupported](./Common.xml#L752:~:text=<ComplexType%20Name="-,ValueListType,-")|Boolean|Indicates that the value list supports a 'distinct' aggregation on the value list properties defined via ValueListParameterInOut and ValueListParameterOut
[SearchSupported](./Common.xml#L756:~:text=<ComplexType%20Name="-,ValueListType,-")|Boolean|Value list supports the $search query option<br>The value of the target property is used as the search expression instead of in $filter
[FetchValues](./Common.xml#L761:~:text=<ComplexType%20Name="-,ValueListType,-")|[FetchValuesType?](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](./Common.xml#L764:~:text=<ComplexType%20Name="-,ValueListType,-")|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<br>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the entity set identified via CollectionPath
[SelectionVariantQualifier](./Common.xml#L770:~:text=<ComplexType%20Name="-,ValueListType,-")|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<br>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath
[Parameters](./Common.xml#L776:~:text=<ComplexType%20Name="-,ValueListType,-")|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

**Applicable Annotation Terms:**

- [QuickInfo](#QuickInfo)

<a name="FetchValuesType"></a>
## [FetchValuesType](./Common.xml#L782:~:text=<TypeDefinition%20Name="-,FetchValuesType,-")
**Type:** Byte

Hint on when to fetch values

Allowed Value|Description
:------------|:----------
[1](./Common.xml#L786:~:text=<TypeDefinition%20Name="-,FetchValuesType,-")|Fetch values immediately without filter
[2](./Common.xml#L790:~:text=<TypeDefinition%20Name="-,FetchValuesType,-")|Fetch values with a filter

<a name="ValueListMappingType"></a>
## [ValueListMappingType](./Common.xml#L834:~:text=<ComplexType%20Name="-,ValueListMappingType,-")


Property|Type|Description
:-------|:---|:----------
[Label](./Common.xml#L840:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|String?|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](./Common.xml#L845:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|String|Resource path of an OData collection with possible values, relative to the document containing the value list mapping
[DistinctValuesSupported](./Common.xml#L850:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|Boolean|Indicates that the value list supports a 'distinct' aggregation on the value list properties defined via ValueListParameterInOut and ValueListParameterOut
[FetchValues](./Common.xml#L854:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|[FetchValuesType?](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](./Common.xml#L857:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<br>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the value list entity set identified via CollectionPath in the ValueListReference annotation
[SelectionVariantQualifier](./Common.xml#L863:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|[SimpleIdentifier?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<br>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath
[Parameters](./Common.xml#L869:~:text=<ComplexType%20Name="-,ValueListMappingType,-")|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

**Applicable Annotation Terms:**

- [QuickInfo](#QuickInfo)

<a name="ValueListParameter"></a>
## [*ValueListParameter*](./Common.xml#L875:~:text=<ComplexType%20Name="-,ValueListParameter,-")


**Derived Types:**
- [ValueListParameterIn](#ValueListParameterIn)
- [ValueListParameterConstant](#ValueListParameterConstant)
- [ValueListParameterInOut](#ValueListParameterInOut)
- [ValueListParameterOut](#ValueListParameterOut)
- [ValueListParameterDisplayOnly](#ValueListParameterDisplayOnly)
- [ValueListParameterFilterOnly](#ValueListParameterFilterOnly)

Property|Type|Description
:-------|:---|:----------
[ValueListProperty](./Common.xml#L876:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.

<a name="ValueListParameterIn"></a>
## [ValueListParameterIn](./Common.xml#L881:~:text=<ComplexType%20Name="-,ValueListParameterIn,-"): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](./Common.xml#L876:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](./Common.xml#L882:~:text=<ComplexType%20Name="-,ValueListParameterIn,-")|PropertyPath|Path to property that is used to filter the value list with `eq` comparison
[InitialValueIsSignificant](./Common.xml#L887:~:text=<ComplexType%20Name="-,ValueListParameterIn,-")|Boolean|Initial value, e.g. empty string, is a valid and significant value

<a name="ValueListParameterConstant"></a>
## [ValueListParameterConstant](./Common.xml#L892:~:text=<ComplexType%20Name="-,ValueListParameterConstant,-"): [ValueListParameter](#ValueListParameter) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](./Common.xml#L876:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[Constant](./Common.xml#L894:~:text=<ComplexType%20Name="-,ValueListParameterConstant,-")|PrimitiveType|Constant value that is used to filter the value list with `eq` comparison, using the same representation as property default values, see [CSDL XML, 7.2.7 Default Value](https://docs.oasis-open.org/odata/odata-csdl-xml/v4.01/odata-csdl-xml-v4.01.html#sec_DefaultValue)

<a name="ValueListParameterInOut"></a>
## [ValueListParameterInOut](./Common.xml#L899:~:text=<ComplexType%20Name="-,ValueListParameterInOut,-"): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](./Common.xml#L876:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](./Common.xml#L900:~:text=<ComplexType%20Name="-,ValueListParameterInOut,-")|PropertyPath|Path to property that is used to filter the value list with `startswith` comparison and filled from the picked value list item
[InitialValueIsSignificant](./Common.xml#L905:~:text=<ComplexType%20Name="-,ValueListParameterInOut,-")|Boolean|Initial value, e.g. empty string, is a valid and significant value

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

<a name="ValueListParameterOut"></a>
## [ValueListParameterOut](./Common.xml#L915:~:text=<ComplexType%20Name="-,ValueListParameterOut,-"): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](./Common.xml#L876:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.
[LocalDataProperty](./Common.xml#L916:~:text=<ComplexType%20Name="-,ValueListParameterOut,-")|PropertyPath|Path to property that is filled from response

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

<a name="ValueListParameterDisplayOnly"></a>
## [ValueListParameterDisplayOnly](./Common.xml#L925:~:text=<ComplexType%20Name="-,ValueListParameterDisplayOnly,-"): [ValueListParameter](#ValueListParameter)
Value list property that is not used to fill the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](./Common.xml#L876:~:text=<ComplexType%20Name="-,ValueListParameter,-")|String|Path to property in the value list . Format is identical to PropertyPath annotations.

**Applicable Annotation Terms:**

- [Importance](UI.md#Importance)

<a name="ValueListParameterFilterOnly"></a>
## [ValueListParameterFilterOnly](./Common.xml#L934:~:text=<ComplexType%20Name="-,ValueListParameterFilterOnly,-"): [ValueListParameter](#ValueListParameter) *(Deprecated)*
All filterable properties of the value list can be used to filter

<a name="DraftRootType"></a>
## [DraftRootType](./Common.xml#L1179:~:text=<ComplexType%20Name="-,DraftRootType,-"): [DraftNodeType](#DraftNodeType)


Property|Type|Description
:-------|:---|:----------
[*PreparationAction*](./Common.xml#L1225:~:text=<ComplexType%20Name="-,DraftNodeType,-")|[QualifiedName?](#QualifiedName)|Action that prepares a draft document for later activation
[*ValidationFunction*](./Common.xml#L1229:~:text=<ComplexType%20Name="-,DraftNodeType,-") *(Deprecated)*|[QualifiedName?](#QualifiedName)|Separate validation without side-effects is not useful
[ActivationAction](./Common.xml#L1180:~:text=<ComplexType%20Name="-,DraftRootType,-")|[QualifiedName](#QualifiedName)|Action that activates a draft document
[DiscardAction](./Common.xml#L1183:~:text=<ComplexType%20Name="-,DraftRootType,-") *([Experimental](Common.md#Experimental))*|[QualifiedName?](#QualifiedName)|Action that discards a draft document
[EditAction](./Common.xml#L1187:~:text=<ComplexType%20Name="-,DraftRootType,-")|[QualifiedName?](#QualifiedName)|Action that creates an edit draft
[NewAction](./Common.xml#L1190:~:text=<ComplexType%20Name="-,DraftRootType,-")|[QualifiedName?](#QualifiedName)|Action that creates a new draft<br>New drafts may also be created by POSTing an empty entity without any properties to the entity set.
[AdditionalNewActions](./Common.xml#L1196:~:text=<ComplexType%20Name="-,DraftRootType,-") *([Experimental](Common.md#Experimental))*|\[[QualifiedName](#QualifiedName)\]|Additional actions that create a new draft<br>Additional actions beside the default POST or standard `NewAction` that create a new draft.
[ShareAction](./Common.xml#L1202:~:text=<ComplexType%20Name="-,DraftRootType,-")|[QualifiedName?](#QualifiedName)|Action that shares a draft document with other users<br>The action is bound to the draft document root node and has the following signature:<br/> - `Users`: collection of structure with properties<br/>   - `UserID` of type `String` and<br/>   - `UserAccessRole` of type `String` with possible values `O` (owner, can perform all draft actions), and `E` (editor, can change the draft)<br/> It restricts access to the listed users in their specified roles.

<a name="DraftNodeType"></a>
## [DraftNodeType](./Common.xml#L1224:~:text=<ComplexType%20Name="-,DraftNodeType,-")


**Derived Types:**
- [DraftRootType](#DraftRootType)

Property|Type|Description
:-------|:---|:----------
[PreparationAction](./Common.xml#L1225:~:text=<ComplexType%20Name="-,DraftNodeType,-")|[QualifiedName?](#QualifiedName)|Action that prepares a draft document for later activation
[ValidationFunction](./Common.xml#L1229:~:text=<ComplexType%20Name="-,DraftNodeType,-") *(Deprecated)*|[QualifiedName?](#QualifiedName)|Separate validation without side-effects is not useful

<a name="SimpleIdentifier"></a>
## [SimpleIdentifier](./Common.xml#L1255:~:text=<TypeDefinition%20Name="-,SimpleIdentifier,-") *(Deprecated)*
Use type [Core.SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier) instead

<a name="QualifiedName"></a>
## [QualifiedName](./Common.xml#L1269:~:text=<TypeDefinition%20Name="-,QualifiedName,-")
**Type:** String

The QualifiedName of an OData construct in scope

<a name="ActionOverload"></a>
## [ActionOverload](./Common.xml#L1274:~:text=<TypeDefinition%20Name="-,ActionOverload,-")
**Type:** String

The qualified name of an action with an optional overload

The qualified name of an action, optionally followed by parentheses 
            containing the binding parameter type of a bound action overload to identify that bound overload, 
            or by empty parentheses to identify the unbound overload, like in the `Target` attribute of an `Annotation`.

<a name="SideEffectsType"></a>
## [SideEffectsType](./Common.xml#L1296:~:text=<ComplexType%20Name="-,SideEffectsType,-")
Changes to the source properties or source entities may have side-effects on the target properties or entities.

If neither TargetProperties nor TargetEntities are specified, a change to the source property values may have unforeseeable side-effects.
An empty NavigationPropertyPath may be used in TargetEntities to specify that any property of the annotated entity type may be affected.

Side effects without a `TriggerAction` happen immediately when modifying one of the source properties or source entities. Side effects with a `TriggerAction` are deferred until explicitly triggered via the `TriggerAction`.

Special case where the side effect is annotated on an action: here the change trigger is the action invocation, so `SourceProperties` and `SourceEntities` have no meaning, 
only `TargetProperties` and `TargetEntities` are relevant. They are addressed via the binding parameter of the action, e.g. if the binding parameter is named `_it`, all paths have to start with `_it/`.
This can also be used with OData V2 services: the annotation target is a function import that is marked with [`sap:action-for`](https://wiki.scn.sap.com/wiki/display/EmTech/SAP+Annotations+for+OData+Version+2.0#SAPAnnotationsforODataVersion2.0-Elementedm:FunctionImport), and all paths have to start with `_it/`.

Property|Type|Description
:-------|:---|:----------
[SourceProperties](./Common.xml#L1309:~:text=<ComplexType%20Name="-,SideEffectsType,-")|\[PropertyPath\]|Changes to the values of one or more of these structural properties may affect the targets
[SourceEntities](./Common.xml#L1314:~:text=<ComplexType%20Name="-,SideEffectsType,-")|\[NavigationPropertyPath\]|Changes to one or more of these entities may affect the targets. An empty path means the annotation target.
[TargetProperties](./Common.xml#L1318:~:text=<ComplexType%20Name="-,SideEffectsType,-")|\[String\]|These structural properties may be affected if the value of one of the sources changes<br>The syntax follows closely the syntax rules for `Edm.PropertyPath`, with the addition of `*` as the last path segment meaning all structural properties directly reached via the preceding path
[TargetEntities](./Common.xml#L1325:~:text=<ComplexType%20Name="-,SideEffectsType,-")|\[NavigationPropertyPath\]|These entities will be affected if the value of one of the sources changes. All affected entities need to be explicitly listed. An empty path means the annotation target.
[EffectTypes](./Common.xml#L1329:~:text=<ComplexType%20Name="-,SideEffectsType,-") *(Deprecated)*|[EffectType?](#EffectType)|All side effects are essentially value changes, differentiation not needed.
[TriggerAction](./Common.xml#L1342:~:text=<ComplexType%20Name="-,SideEffectsType,-")|[QualifiedName?](#QualifiedName)|Bound action to trigger side-effects after modifying an entity<br>Binding parameter type of the trigger action is the entity type annotated with `SideEffects`. The action does not have any additional parameters and does not return anything. It either succeeds with `204 No Content` or it fails with `4xx` or `5xx`.
[TriggeredIndicator](./Common.xml#L1348:~:text=<ComplexType%20Name="-,SideEffectsType,-") *([Experimental](Common.md#Experimental))*|Boolean?|Indicates whether the side-effect has already happened<br>The value of this property typically is a Path expression pointing to a boolean property. It can be used by clients to defer expensive refresh calls until they are actually needed and instead just request the referenced indicator property. Servers can choose to return indicator properties even if not explicitly requested.
[Discretionary](./Common.xml#L1355:~:text=<ComplexType%20Name="-,SideEffectsType,-") *([Experimental](Common.md#Experimental))*|Boolean|Indicates whether the client can decide if a side-effect should be triggered or not<br>The value of this property typically a static boolean value. It can be used by clients (e.g. by asking the end user) to decide if the side effect should be triggered or not. This indicator is only allowed in case a trigger action is given as only then the execution control of the side effect is provided to the client.

<a name="EffectType"></a>
## [EffectType](./Common.xml#L1363:~:text=<EnumType%20Name="-,EffectType,-") *(Deprecated)*
All side effects are essentially value changes, differentiation not needed.

<a name="SortOrderType"></a>
## [SortOrderType](./Common.xml#L1498:~:text=<ComplexType%20Name="-,SortOrderType,-")
Exactly one of `Property` and `DynamicProperty` must be present

Property|Type|Description
:-------|:---|:----------
[Property](./Common.xml#L1501:~:text=<ComplexType%20Name="-,SortOrderType,-")|PropertyPath?|Sort property
[DynamicProperty](./Common.xml#L1514:~:text=<ComplexType%20Name="-,SortOrderType,-")|AnnotationPath?|Dynamic property introduced by an annotation and used as sort property<br>If the annotation referenced by the annotation path does not apply to the same collection of entities as the one being sorted according to the [`UI.PresentationVariant`](UI.md#PresentationVariant) or `Common.SortOrder` annotation, this instance of `UI.PresentationVariant/SortOrder` or `Common.SortOrder` MUST be silently ignored.<br>Allowed terms:<br>- [AggregatedProperty](Analytics.md#AggregatedProperty)<br>- [CustomAggregate](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#CustomAggregate)
[Descending](./Common.xml#L1529:~:text=<ComplexType%20Name="-,SortOrderType,-")|Boolean?|Sort direction, ascending if not specified otherwise

<a name="RecursiveHierarchyType"></a>
## [RecursiveHierarchyType](./Common.xml#L1568:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *(Deprecated)*
Use terms [Aggregation.RecursiveHierarchy](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#RecursiveHierarchy) and [Hierarchy.RecursiveHierarchy](https://github.com/SAP/odata-vocabularies/blob/main/vocabularies/Hierarchy.md#RecursiveHierarchy) instead

<a name="UserID"></a>
## [UserID](./Common.xml#L1621:~:text=<TypeDefinition%20Name="-,UserID,-")
**Type:** String

User ID
