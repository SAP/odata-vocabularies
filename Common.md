# Common Vocabulary
**Namespace: [com.sap.vocabularies.Common.v1](Common.xml)**

Common terms for all SAP vocabularies


## Terms

Term|Type|Description
:---|:---|:----------
[Experimental](Common.xml#L37)|String|<a name="Experimental"></a>Terms, types, and properties annotated with this term are experimental and can be changed incompatibly or removed completely any time without prior warning.<p>Do not use or rely on experimental terms, types, and properties in production environments.</p>
[ServiceVersion](Common.xml#L47)|Int32|<a name="ServiceVersion"></a>1 for first version of a service, incremented when schema changes incompatibly and service is published with a different URI
[ServiceSchemaVersion](Common.xml#L50)|Int32|<a name="ServiceSchemaVersion"></a>0 for first schema version within a service version, incremented when schema changes compatibly
[Label](Common.xml#L55)|String|<a name="Label"></a>A short, human-readable text suitable for labels and captions in UIs
[Heading](Common.xml#L60)|String|<a name="Heading"></a>A short, human-readable text suitable for column headings in UIs
[QuickInfo](Common.xml#L65)|String|<a name="QuickInfo"></a>A short, human-readable text suitable for tool tips in UIs
[Text](Common.xml#L70)|String|<a name="Text"></a>A descriptive text for values of the annotated property. Value MUST be a dynamic expression when used as metadata annotation.
[TextFor](Common.xml#L75) *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="TextFor"></a>The annotated property contains a descriptive text for values of the referenced property.
[IsLanguageIdentifier](Common.xml#L81) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsLanguageIdentifier"></a>An identifier to distinguish multiple texts in different languages for the same entity
[TextFormat](Common.xml#L86)|[TextFormatType](#TextFormatType)|<a name="TextFormat"></a>Human-readable text that may contain formatting information
[IsDigitSequence](Common.xml#L145)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDigitSequence"></a>Contains only digits
[IsUpperCase](Common.xml#L150)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsUpperCase"></a>Contains just uppercase characters
[UnitSpecificScale](Common.xml#L155)|PrimitiveType|<a name="UnitSpecificScale"></a>The number of fractional decimal digits of a currency amount or measured quantity<p>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default scale of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of fractional digits captured by that device.</p>
[UnitSpecificPrecision](Common.xml#L160) *([Experimental](Common.md#Experimental))*|PrimitiveType|<a name="UnitSpecificPrecision"></a>The number of significant decimal digits of a currency amount or measured quantity<p>The annotated property contains a currency code or unit of measure, and the annotation value specifies the default precision of numeric values with that currency code or unit of measure. Can be used in e.g. a list of available currency codes or units of measure, or a list of measuring devices to specify the number of significant digits captured by that device.</p>
[SecondaryKey](Common.xml#L166) *(Deprecated)*|\[PropertyPath\]|<a name="SecondaryKey"></a>Use term `AlternateKeys` from the OASIS Core vocabulary instead
[MinOccurs](Common.xml#L178)|Int64|<a name="MinOccurs"></a>The annotated set or collection contains at least this number of items
[MaxOccurs](Common.xml#L182)|Int64|<a name="MaxOccurs"></a>The annotated set or collection contains at most this number of items
[AssociationEntity](Common.xml#L186)|\[NavigationPropertyPath\]|<a name="AssociationEntity"></a>Entity representing an n:m association with attributes
[DerivedNavigation](Common.xml#L193)|NavigationPropertyPath|<a name="DerivedNavigation"></a>Shortcut for a multi-segment navigation, contains the long path with all its segments
[Masked](Common.xml#L199) *(Deprecated)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Masked"></a>Use terms `MaskedValue` and `MaskedAlways` instead
[MaskedValue](Common.xml#L214) *([Experimental](Common.md#Experimental))*|String|<a name="MaskedValue"></a>Property contains sensitive data that is by default not transferred<p>By default a masked property is excluded from responses and instead an instance annotation with this term is sent, containing a masked value that can be rendered by user interfaces.</p>
[MaskedAlways](Common.xml#L223) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MaskedAlways"></a>Property contains sensitive data that is by default not transferred<p>If the annotation evaluates to true, the unmasked property value is never transferred in responses.<br/>If the annotation evaluates to false, the unmasked property value can be requested with the custom query option `masked-values=false`.</p>
[SemanticObject](Common.xml#L233)|String|<a name="SemanticObject"></a>Name of the Semantic Object represented as this entity type or identified by this property
[SemanticObjectMapping](Common.xml#L236)|\[[SemanticObjectMappingType](#SemanticObjectMappingType)\]|<a name="SemanticObjectMapping"></a>Maps properties of the annotated entity type or sibling properties of the annotated property to properties of the Semantic Object<p>This allows "renaming" of properties in the current context to match property names of the Semantic Object, e.g. `SenderPartyID` to `PartyID`. Only properties explicitly listed in the mapping are renamed, all other properties are available for intent-based navigation with their "local" name.</p>
[SemanticObjectUnavailableActions](Common.xml#L249)|\[String\]|<a name="SemanticObjectUnavailableActions"></a>List of actions that are not available in the current state of the instance of the Semantic Object
[IsInstanceAnnotation](Common.xml#L253)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsInstanceAnnotation"></a>Term can also be used as instance annotation; AppliesTo of this term specifies where it can be applied
[Insertable](Common.xml#L257) *([Experimental](Common.md#Experimental))*|Boolean|<a name="Insertable"></a>Specifies whether the service allows to create an entity by sending a POST request to the navigation link URL (in this case the created entity is automatically linked to the entity containing the navigation link)
[Updatable](Common.xml#L265) *([Experimental](Common.md#Experimental))*|Boolean|<a name="Updatable"></a>Specifies whether the annotated entity can be updated
[Deletable](Common.xml#L273) *([Experimental](Common.md#Experimental))*|Boolean|<a name="Deletable"></a>Specifies whether the annotated entity can be deleted
[FilterExpressionRestrictions](Common.xml#L281) *(Deprecated)*|\[[FilterExpressionRestrictionType](#FilterExpressionRestrictionType)\]|<a name="FilterExpressionRestrictions"></a>Use term Capabilities.FilterRestrictions instead
[FieldControl](Common.xml#L324)|[FieldControlType](#FieldControlType)|<a name="FieldControl"></a>Control state of a property<p>This term can be used for static field control, providing an enumeration member value in $metadata, as well as dynamically, providing a `Path` expression.<br/>In the dynamic case the property referenced by the `Path` expression MUST be of type `Edm.Byte` to accommodate OData V2 services as well as V4 infrastructures that don't support enumeration types.</p>
[ExceptionCategory](Common.xml#L357) *([Experimental](Common.md#Experimental))*|String|<a name="ExceptionCategory"></a>A machine-readable exception category
[Application](Common.xml#L362) *([Experimental](Common.md#Experimental))*|[ApplicationType](#ApplicationType)|<a name="Application"></a>...
[Timestamp](Common.xml#L382) *([Experimental](Common.md#Experimental))*|DateTimeOffset|<a name="Timestamp"></a>...
[TransactionId](Common.xml#L387) *([Experimental](Common.md#Experimental))*|String|<a name="TransactionId"></a>...
[ErrorResolution](Common.xml#L392) *([Experimental](Common.md#Experimental))*|[ErrorResolutionType](#ErrorResolutionType)|<a name="ErrorResolution"></a>Hints for resolving this error
[Messages](Common.xml#L410) *([Experimental](Common.md#Experimental))*|\[ComplexType\]|<a name="Messages"></a>Collection of end-user messages<p>The name of the message type is service-specific, its structure components are identified by naming convention, following the names of the OData error response structure.<br/>The minimum structure is <br/>- code: Edm.String <br/>- message: Edm.String <br/>- target: Edm.String nullable <br/>- additionalTargets: Collection(Edm.String) <br/>- transition: Edm.Boolean<br/>- numericSeverity: Edm.Byte<br/>- longtextUrl: Edm.String nullable</p>
[additionalTargets](Common.xml#L434) *([Experimental](Common.md#Experimental))*|\[String\]|<a name="additionalTargets"></a>Additional targets for the message<p>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response</p>
[longtextUrl](Common.xml#L440) *([Experimental](Common.md#Experimental))*|URL|<a name="longtextUrl"></a>Location of the message long text<p>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response</p>
[numericSeverity](Common.xml#L447) *([Experimental](Common.md#Experimental))*|[NumericMessageSeverityType](#NumericMessageSeverityType)|<a name="numericSeverity"></a>Classifies an end-user message as info, success, warning, or error<p>This instance annotation can be applied to the `error` object and the objects within the `details` array of an OData error response</p>
[MaximumNumericMessageSeverity](Common.xml#L453) *([Experimental](Common.md#Experimental))*|[NumericMessageSeverityType](#NumericMessageSeverityType)|<a name="MaximumNumericMessageSeverity"></a>The maximum severity of all end-user messages attached to an entity, null if no messages are attached<p>This metadata annotation can be applied to entity types that are also annotated with term [`Common.Messages`](#Messages)</p>
[IsActionCritical](Common.xml#L483)|Boolean|<a name="IsActionCritical"></a>Criticality of the function or action to enforce a warning or similar before it's executed
[Attributes](Common.xml#L487)|\[PropertyPath\]|<a name="Attributes"></a>Attributes related to this property, which may occur in denormalized entity types
[RelatedRecursiveHierarchy](Common.xml#L491)|AnnotationPath|<a name="RelatedRecursiveHierarchy"></a>A recursive hierarchy related to this property. The annotation path must end in Aggregation.RecursiveHierarchy.
[Interval](Common.xml#L495)|[IntervalType](#IntervalType)|<a name="Interval"></a>An interval with lower and upper boundaries described by two properties
[ResultContext](Common.xml#L513)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ResultContext"></a>The annotated entity type has one or more containment navigation properties. An instance of the annotated entity type provides the context required for determining the target entity sets reached by these containment navigation properties.
[WeakReferentialConstraint](Common.xml#L521) *([Experimental](Common.md#Experimental))*|[WeakReferentialConstraintType](#WeakReferentialConstraintType)|<a name="WeakReferentialConstraint"></a>A referential constraint to a reference set that is not reachable via a navigation property<p>A weak referential constraint can be used in cases where the reference service cannot be located at design-time</p>
[ValueList](Common.xml#L551)|[ValueListType](#ValueListType)|<a name="ValueList"></a>Specifies how to get a list of acceptable values for a property or parameter<p>The value list can be based on user input that is passed in the value list request. The value list can be used for type-ahead and classical pick lists.</p>
[ValueListRelevantQualifiers](Common.xml#L623) *([Experimental](Common.md#Experimental))*|\[[SimpleIdentifier](#SimpleIdentifier)\]|<a name="ValueListRelevantQualifiers"></a>List of qualifiers of relevant ValueList annotations<p>The value of this annotation is a dynamic expression for calculating the qualifiers of relevant value lists depending on the values of one or more other properties.</p>
[ValueListWithFixedValues](Common.xml#L629)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ValueListWithFixedValues"></a>If specified as true, there's only one value list mapping and its value list consists of a small number of fixed values
[ValueListReferences](Common.xml#L633)|\[URL\]|<a name="ValueListReferences"></a>A list of URLs of CSDL documents containing value list mappings for this parameter or property
[ValueListMapping](Common.xml#L638)|[ValueListMappingType](#ValueListMappingType)|<a name="ValueListMapping"></a>Specifies the mapping between data service properties and value list properties<p>The value list can be filtered based on user input. It can be used for type-ahead and classical pick lists. There may be many alternative mappings with different qualifiers.</p>
[IsCalendarYear](Common.xml#L703)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYear"></a>Property encodes a year number as string following the logical pattern (-?)YYYY(Y*) consisting of an optional minus sign for years B.C. followed by at least four digits. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})
[IsCalendarHalfyear](Common.xml#L712)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarHalfyear"></a>Property encodes a halfyear number as string following the logical pattern H consisting of a single digit. The string matches the regex pattern [1-2]
[IsCalendarQuarter](Common.xml#L721)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarQuarter"></a>Property encodes a calendar quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsCalendarMonth](Common.xml#L730)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarMonth"></a>Property encodes a calendar month number as string following the logical pattern MM consisting of two digits. The string matches the regex pattern 0[1-9]\|1[0-2]
[IsCalendarWeek](Common.xml#L739)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarWeek"></a>Property encodes a calendar week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsDayOfCalendarMonth](Common.xml#L748)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarMonth"></a>Day number relative to a calendar month. Valid values are between 1 and 31.
[IsDayOfCalendarYear](Common.xml#L756)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfCalendarYear"></a>Day number relative to a calendar year. Valid values are between 1 and 366.
[IsCalendarYearHalfyear](Common.xml#L764)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearHalfyear"></a>Property encodes a calendar year and halfyear as string following the logical pattern (-?)YYYY(Y*)H consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the halfyear. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-2]
[IsCalendarYearQuarter](Common.xml#L774)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearQuarter"></a>Property encodes a calendar year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsCalendarYearMonth](Common.xml#L784)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearMonth"></a>Property encodes a calendar year and month as string following the logical pattern (-?)YYYY(Y*)MM consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent the months January to December. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])
[IsCalendarYearWeek](Common.xml#L795)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarYearWeek"></a>Property encodes a calendar year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsCalendarDate](Common.xml#L805)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCalendarDate"></a>Property encodes a calendar date: year, month and day as string following the logical pattern (-?)YYYY(Y*)MMDD consisting of an optional minus sign for years B.C. followed by at least eight digits, where the last four digits represent the months January to December (MM) and the day of the month (DD). The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])(0[1-9]\|[12][0-9]\|3[01]) The regex pattern does not reflect the additional constraint for "Day-of-month Values": The day value must be no more than 30 if month is one of 04, 06, 09, or 11, no more than 28 if month is 02 and year is not divisible by 4, or is divisible by 100 but not by 400, and no more than 29 if month is 02 and year is divisible by 400, or by 4 but not by 100.
[IsFiscalYear](Common.xml#L822)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYear"></a>Property encodes a fiscal year number as string following the logical pattern YYYY(Y*) consisting of at least four digits. The string matches the regex pattern [1-9][0-9]{3,}
[IsFiscalPeriod](Common.xml#L831)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalPeriod"></a>Property encodes a fiscal period as string following the logical pattern PPP consisting of three digits. The string matches the regex pattern [0-9]{3}
[IsFiscalYearPeriod](Common.xml#L840)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearPeriod"></a>Property encodes a fiscal year and period as string following the logical pattern YYYY(Y*)PPP consisting of at least seven digits, where the last three digits represent the fiscal period in the year. The string matches the regex pattern ([1-9][0-9]{3,})([0-9]{3})
[IsFiscalQuarter](Common.xml#L850) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalQuarter"></a>Property encodes a fiscal quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
[IsFiscalYearQuarter](Common.xml#L859) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearQuarter"></a>Property encodes a fiscal year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
[IsFiscalWeek](Common.xml#L869) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalWeek"></a>Property encodes a fiscal week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[0-3]
[IsFiscalYearWeek](Common.xml#L878) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearWeek"></a>Property encodes a fiscal year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[0-3])
[IsDayOfFiscalYear](Common.xml#L888) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsDayOfFiscalYear"></a>Day number relative to a fiscal year. Valid values are between 1 and 371.
[IsFiscalYearVariant](Common.xml#L896)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFiscalYearVariant"></a>Property encodes a fiscal year variant
[MutuallyExclusiveTerm](Common.xml#L904)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="MutuallyExclusiveTerm"></a>Only one term of the group identified with the Qualifier attribute can be applied
[DraftRoot](Common.xml#L910)|[DraftRootType](#DraftRootType)|<a name="DraftRoot"></a>Root entities of business documents that support the draft pattern
[DraftNode](Common.xml#L932) *(Deprecated)*|[DraftNodeType](#DraftNodeType)|<a name="DraftNode"></a>Use `TriggerAction` of [`SideEffects` annotation](#SideEffects) instead
[DraftActivationVia](Common.xml#L973)|\[[SimpleIdentifier](#SimpleIdentifier)\]|<a name="DraftActivationVia"></a>Draft entities in this set are indirectly activated via draft entities in the referenced entity sets
[EditableFieldFor](Common.xml#L977)|PropertyPath|<a name="EditableFieldFor"></a>The annotated property is an editable field for the referenced key property
[SemanticKey](Common.xml#L989)|\[PropertyPath\]|<a name="SemanticKey"></a>The listed properties form the semantic key, i.e. they are unique modulo IsActiveEntity
[SideEffects](Common.xml#L993)|[SideEffectsType](#SideEffectsType)|<a name="SideEffects"></a>Describes side-effects of modification operations
[DefaultValuesFunction](Common.xml#L1075) *([Experimental](Common.md#Experimental))*|[QualifiedName](#QualifiedName)|<a name="DefaultValuesFunction"></a>Function to calculate default values based on user input that is only known to the client and "context information" that is already available to the service<p>The default values function must have a bound overload whose binding parameter type matches the annotation target<br/> - for an entity set: collection of entity type of entity set<br/> - for a navigation property: identical to the type of the navigation property (single- or collection-valued)<br/> - for a bound action/function: identical to the binding parameter type of the annotated action/function<br/> In addition the overload can have non-binding parameters for values that the user has already entered:<br/> - for an entity set or navigation property: each non-binding parameter name and type must match the name and type of a property of the entity to be created<br/> - for an action or function: each non-binding parameter name and type must match the name and type of a non-binding parameter of the action or function to be called<br/> The result type of the default values function is a complex type whose properties correspond in name and type to a subset of<br/> - the properties of the entity to create, or<br/> - the parameters of the action or function to call</p>
[DerivedDefaultValue](Common.xml#L1105) *([Experimental](Common.md#Experimental))*|String|<a name="DerivedDefaultValue"></a>Function import to derive a default value for the property from a given context.<p>Function import has two parameters of complex types:<br/> - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/> - `properties`, a structure resembling the type of the entity set of the annotated property<br/> The return type must be of the same type as the annotated property.<br/> Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.</p>
[FilterDefaultValue](Common.xml#L1126)|PrimitiveType|<a name="FilterDefaultValue"></a>A default value for the property to be used in filter expressions.
[FilterDefaultValueHigh](Common.xml#L1130) *([Experimental](Common.md#Experimental))*|PrimitiveType|<a name="FilterDefaultValueHigh"></a>A default upper limit for the property to be used in 'less than or equal' filter expressions.
[DerivedFilterDefaultValue](Common.xml#L1135) *([Experimental](Common.md#Experimental))*|String|<a name="DerivedFilterDefaultValue"></a>Function import to derive a default value for the property from a given context in order to use it in filter expressions.<p>Function import has two parameters of complex types:<br/> - `parameters`, a structure resembling the entity type the parameter entity set related to the entity set of the annotated property<br/> - `properties`, a structure resembling the type of the entity set of the annotated property<br/> The return type must be of the same type as the annotated property.<br/> Arguments passed to the function import are used as context for deriving the default value. The function import returns this default value, or null in case such a value could not be determined.</p>
[SortOrder](Common.xml#L1159)|\[[SortOrderType](#SortOrderType)\]|<a name="SortOrder"></a>List of sort criteria<p>The items of the annotated entity set or the items of the collection of the annotated entity type are sorted by the first entry of the SortOrder collection. Items with same value for this first sort criteria are sorted by the second entry of the SortOrder collection, and so on.</p>
[RecursiveHierarchy](Common.xml#L1191)|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy.
[CreatedAt](Common.xml#L1223)|DateTimeOffset|<a name="CreatedAt"></a>Creation timestamp
[CreatedBy](Common.xml#L1227)|[UserID](#UserID)|<a name="CreatedBy"></a>First editor
[ChangedAt](Common.xml#L1231)|DateTimeOffset|<a name="ChangedAt"></a>Last modification timestamp
[ChangedBy](Common.xml#L1235)|[UserID](#UserID)|<a name="ChangedBy"></a>Last editor
[OriginalProtocolVersion](Common.xml#L1247)|String|<a name="OriginalProtocolVersion"></a>Original protocol version of a converted (V4) CSDL document, allowed values `2.0` and `3.0`
[ApplyMultiUnitBehaviorForSortingAndFiltering](Common.xml#L1252) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ApplyMultiUnitBehaviorForSortingAndFiltering"></a>Sorting and filtering of amounts in multiple currencies needs special consideration<p>TODO: add link to UX documentation on https://experience.sap.com/fiori-design/</p>

## <a name="TextFormatType"></a>[TextFormatType](Common.xml#L90)


Member|Value|Description
:-----|----:|:----------
[plain](Common.xml#L91)|0|Plain text, line breaks represented as the character 0x0A
[html](Common.xml#L94)|1|Plain text with markup that can validly appear directly within an HTML DIV element

## <a name="SemanticObjectMappingType"></a>[SemanticObjectMappingType](Common.xml#L240)
Maps a property of the annotated entity type or a sibling property of the annotated property to a property of the Semantic Object

Property|Type|Description
:-------|:---|:----------
[LocalProperty](Common.xml#L242)|PropertyPath|Path to a local property that provides the value for the Semantic Object property
[SemanticObjectProperty](Common.xml#L245)|String|Name of the Semantic Object property

## <a name="FilterExpressionRestrictionType"></a>[FilterExpressionRestrictionType](Common.xml#L292) *(Deprecated)*


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L301)|PropertyPath|
[AllowedExpressions](Common.xml#L302)|[FilterExpressionType](#FilterExpressionType)|

## <a name="FilterExpressionType"></a>[FilterExpressionType](Common.xml#L304) *(Deprecated)*


Member|Value|Description
:-----|----:|:----------
[SingleValue](Common.xml#L313)|0|a single 'eq' clause
[MultiValue](Common.xml#L316)|1|one or more 'eq' clauses, separated by 'or'
[SingleInterval](Common.xml#L319)|2|at most one 'ge' and one 'le' clause, separated by 'and', alternatively a single 'eq' clause

## <a name="FieldControlType"></a>[FieldControlType](Common.xml#L329)
Control state of a property

Member|Value|Description
:-----|----:|:----------
[Mandatory](Common.xml#L331)|7|Property is mandatory from a business perspective<p>This annotation value does not imply any restrictions on the value range of the property. For restricting the value range use e.g. the standard type facet `Nullable` with a value of `false` to exclude the `null` value, or terms from the [Validation vocabulary](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Validation.V1.md).</p>
[Optional](Common.xml#L335)|3|Property may have a value<p>This value does not make sense as a static annotation value.</p>
[ReadOnly](Common.xml#L339)|1|Property value cannot be changed<p>To statically mark a property as read-only use term [Core.Computed](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Computed) instead</p>
[Inapplicable](Common.xml#L343)|0|Property has no meaning in the current entity state<p>This value does not make sense as a static annotation value.<br/>Example for dynamic use: in a travel expense report the property `DestinationCountry` is inapplicable if trip type is domestic, and mandatory if trip type is international.</p>
[Hidden](Common.xml#L351)|0|Deprecated synonymn for Inapplicable, do not use<p>To statically hide a property on a UI use [UI.Hidden](UI.md#Hidden) instead</p>

## <a name="ApplicationType"></a>[ApplicationType](Common.xml#L367) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Component](Common.xml#L369)|String|Software component of service implementation
[ServiceRepository](Common.xml#L372)|String|...
[ServiceId](Common.xml#L375)|String|...
[ServiceVersion](Common.xml#L378)|String|...

## <a name="ErrorResolutionType"></a>[ErrorResolutionType](Common.xml#L397) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Analysis](Common.xml#L399)|String|Short hint on how to analyze this error
[Note](Common.xml#L402)|String|Note for error resolution
[AdditionalNote](Common.xml#L405)|String|Additional note for error resolution

## <a name="NumericMessageSeverityType"></a>[NumericMessageSeverityType](Common.xml#L458) *([Experimental](Common.md#Experimental))*
**Type:** Byte

Classifies an end-user message as info, success, warning, or error

Allowed Value|Description
:------------|:----------
[1](Common.xml#L463)|Success - no action required
[2](Common.xml#L467)|Information - no action required
[3](Common.xml#L471)|Warning - action may be required
[4](Common.xml#L475)|Error - action is required

## <a name="IntervalType"></a>[IntervalType](Common.xml#L498)


Property|Type|Description
:-------|:---|:----------
[LowerBoundary](Common.xml#L499)|PropertyPath|Property holding the lower interval boundary
[LowerBoundaryIncluded](Common.xml#L502)|Boolean|The lower boundary value is included in the interval
[UpperBoundary](Common.xml#L505)|PropertyPath|Property holding the upper interval boundary
[UpperBoundaryIncluded](Common.xml#L508)|Boolean|The upper boundary value is included in the interval

## <a name="WeakReferentialConstraintType"></a>[WeakReferentialConstraintType](Common.xml#L526) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[ReferenceRoot](Common.xml#L528)|String|URI of the service containing the reference set<p>Need not be a uniform resource locator, for cases where the actual location of the reference service is not static or not known at design-time.</p>
[ReferencePath](Common.xml#L532)|String|Resource path of an OData collection with reference values, relative to ReferenceRoot
[ForeignKeys](Common.xml#L535)|\[[ForeignKeyType](#ForeignKeyType)\]|Instructions on how to construct the value list request and consume response properties

## <a name="ForeignKeyType"></a>[ForeignKeyType](Common.xml#L539) *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L541)|PropertyPath|Path to property of the annotated entity set
[ReferencedProperty](Common.xml#L544)|String|Path to property in reference set, format is identical to PropertyPath annotations

## <a name="ValueListType"></a>[ValueListType](Common.xml#L555)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L571)|String|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L575)|String|Resource path of an OData collection with possible values, relative to CollectionRoot
[CollectionRoot](Common.xml#L578)|String|Service root of the value list collection; not specified means local to the document containing the annotation
[SearchSupported](Common.xml#L581)|Boolean|Value list supports the $search query option<p>The value of the target property is used as the search expression instead of in $filter</p>
[FetchValues](Common.xml#L585) *([Experimental](Common.md#Experimental))*|[FetchValuesType](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](Common.xml#L589)|[SimpleIdentifier](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<p>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the entity set identified via CollectionPath</p>
[SelectionVariantQualifier](Common.xml#L593)|[SimpleIdentifier](#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<p>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath</p>
[Parameters](Common.xml#L597)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

## <a name="FetchValuesType"></a>[FetchValuesType](Common.xml#L602) *([Experimental](Common.md#Experimental))*
**Type:** Byte

Hint on when to fetch values

Allowed Value|Description
:------------|:----------
[1](Common.xml#L607)|Fetch values immediately without filter
[2](Common.xml#L611)|Fetch values with a filter
[3](Common.xml#L615)|Fetch count immediately, then depending on count do 1 or 2

## <a name="ValueListMappingType"></a>[ValueListMappingType](Common.xml#L642)


Property|Type|Description
:-------|:---|:----------
[Label](Common.xml#L643)|String|Headline for value list, fallback is the label of the property or parameter
[CollectionPath](Common.xml#L647)|String|Resource path of an OData collection with possible values, relative to the document containing the value list mapping
[FetchValues](Common.xml#L650) *([Experimental](Common.md#Experimental))*|[FetchValuesType](#FetchValuesType)|Hint on when to fetch values
[PresentationVariantQualifier](Common.xml#L654)|[SimpleIdentifier](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart<p>Qualifier for annotation with term [UI.PresentationVariant](UI.md#PresentationVariant) on the value list entity set identified via CollectionPath in the ValueListReference annotation</p>
[SelectionVariantQualifier](Common.xml#L658)|[SimpleIdentifier](#SimpleIdentifier)|Optional combination of parameters and filters to query the value help entity set<p>Qualifier for annotation with term [UI.SelectionVariant](UI.md#SelectionVariant) on the entity set identified via CollectionPath</p>
[Parameters](Common.xml#L662)|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

## <a name="ValueListParameter"></a>[*ValueListParameter*](Common.xml#L667)


**Derived Types:**
- [ValueListParameterIn](#ValueListParameterIn)
- [ValueListParameterInOut](#ValueListParameterInOut)
- [ValueListParameterOut](#ValueListParameterOut)
- [ValueListParameterDisplayOnly](#ValueListParameterDisplayOnly)
- [ValueListParameterFilterOnly](#ValueListParameterFilterOnly)

Property|Type|Description
:-------|:---|:----------
[ValueListProperty](Common.xml#L668)|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="ValueListParameterIn"></a>[ValueListParameterIn](Common.xml#L672): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L668)|String|Path to property in response structure. Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L673)|PropertyPath|Path to property that is used to filter/search the value list

## <a name="ValueListParameterInOut"></a>[ValueListParameterInOut](Common.xml#L677): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L668)|String|Path to property in response structure. Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L678)|PropertyPath|Path to property that is used to filter/search the value list or filled from response

## <a name="ValueListParameterOut"></a>[ValueListParameterOut](Common.xml#L682): [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L668)|String|Path to property in response structure. Format is identical to PropertyPath annotations.
[LocalDataProperty](Common.xml#L683)|PropertyPath|Path to property that is filled from response

## <a name="ValueListParameterDisplayOnly"></a>[ValueListParameterDisplayOnly](Common.xml#L687): [ValueListParameter](#ValueListParameter)
Value list property that is not used to fill the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L668)|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="ValueListParameterFilterOnly"></a>[ValueListParameterFilterOnly](Common.xml#L690): [ValueListParameter](#ValueListParameter) *(Deprecated)*
Value list property that is used to filter the value list, not connected to the edited entity

Property|Type|Description
:-------|:---|:----------
[*ValueListProperty*](Common.xml#L668)|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="DraftRootType"></a>[DraftRootType](Common.xml#L915): [DraftNodeType](#DraftNodeType)


Property|Type|Description
:-------|:---|:----------
[*PreparationAction*](Common.xml#L947) *(Deprecated)*|[QualifiedName](#QualifiedName)|Use `TriggerAction` of [`SideEffects` annotation](#SideEffects) instead
[*ValidationFunction*](Common.xml#L959) *(Deprecated)*|[QualifiedName](#QualifiedName)|Separate validation without side-effects is not useful
[ActivationAction](Common.xml#L916)|[QualifiedName](#QualifiedName)|Action that activates a draft document
[DiscardAction](Common.xml#L919) *([Experimental](Common.md#Experimental))*|[QualifiedName](#QualifiedName)|Action that discards a draft document
[EditAction](Common.xml#L923)|[QualifiedName](#QualifiedName)|Action that creates an edit draft
[NewAction](Common.xml#L926)|[QualifiedName](#QualifiedName)|Action that creates a new draft<p>New drafts may also be created by POSTing an empty entity without any properties to the entity set.</p>

## <a name="DraftNodeType"></a>[DraftNodeType](Common.xml#L946)


**Derived Types:**
- [DraftRootType](#DraftRootType)

Property|Type|Description
:-------|:---|:----------
[PreparationAction](Common.xml#L947) *(Deprecated)*|[QualifiedName](#QualifiedName)|Use `TriggerAction` of [`SideEffects` annotation](#SideEffects) instead
[ValidationFunction](Common.xml#L959) *(Deprecated)*|[QualifiedName](#QualifiedName)|Separate validation without side-effects is not useful

## <a name="SimpleIdentifier"></a>[SimpleIdentifier](Common.xml#L981)
**Type:** String

The SimpleIdentifier of an OData construct in scope

## <a name="QualifiedName"></a>[QualifiedName](Common.xml#L985)
**Type:** String

The QualifiedName of an OData construct in scope

## <a name="SideEffectsType"></a>[SideEffectsType](Common.xml#L996)
Changes to the source properties or source entities may have side-effects on the target properties or entities.

If neither TargetProperties nor TargetEntities are specified, a change to the source property values may have unforeseeable side-effects.
An empty NavigationPropertyPath may be used in TargetEntities to specify that any property of the annotated entity type may be affected.

Side effects without a `TriggerAction` happen immediately when modifying one of the source properties or source entities. Side effects with a `TriggerAction` are deferred until explicitly triggered via the `TriggerAction`.

Special case "Actions": here the change trigger is the action invocation, so SourceProperties and SourceEntities have no meaning, 
only TargetProperties and TargetEntities are relevant. They are addressed via the binding parameter of the action.

Property|Type|Description
:-------|:---|:----------
[SourceProperties](Common.xml#L1007)|\[PropertyPath\]|Changes to the values of one or more of these properties may affect the targets
[SourceEntities](Common.xml#L1010)|\[NavigationPropertyPath\]|Changes to one or more of these entities may affect the targets. An empty path means the annotation target.
[TargetProperties](Common.xml#L1013)|\[PropertyPath\]|These properties may be affected if the value of one of the sources changes
[TargetOperations](Common.xml#L1016) *([Experimental](Common.md#Experimental))*|\[String\]|The availability of these actions or functions may be affected if the value of one of the sources changes<p>The values in this collection are paths that consist of zero or more navigation segments and end in the qualified name of an action or function that can be bound to the entity type identified by the navigation segments.</p>
[TargetEntities](Common.xml#L1021)|\[NavigationPropertyPath\]|These entities will be affected if the value of one of the sources changes. An empty path means the annotation target.
[EffectTypes](Common.xml#L1024) *(Deprecated)*|[EffectType](#EffectType)|All side effects are essentially value changes, differentiation not needed.
[TriggerAction](Common.xml#L1035) *([Experimental](Common.md#Experimental))*|[QualifiedName](#QualifiedName)|Bound action to trigger side-effects after modifying an entity<p>Binding parameter type of the trigger action is the entity type annotated with `SideEffects`. The action does not have any additional parameters and does not return anything. It either succeeds with `204 No Content` or it fails with `4xx` or `5xx`.</p>

## <a name="EffectType"></a>[EffectType](Common.xml#L1041) *(Deprecated)*


Flag Member|Value|Description
:-----|----:|:----------
[ValidationMessage](Common.xml#L1050)|1|Validation messages are assigned to a target<p>This side effect type indicates that validation messages may result from changes of source properties or entities. Thus, a validation request can be sent either in conjunction with or separately after a modifying request. Validation messages shall be persisted with the draft and immediately available in a subsequent request without repeating the validation logic.</p>
[ValueChange](Common.xml#L1058)|2|The value of a target changes<p>This side effect type declares that changes to source properties or entities may impact the values of any, one or multiple target properties or entities. Upon modification preparation logic is performed that determines additional values to be stored in the draft document.</p>
[FieldControlChange](Common.xml#L1065)|4|The value of the Common.FieldControl annotation of a target changes<p>This side effect type specifies that source properties or entities may impact the dynamic field control state of any, one or multiple target properties or entities. Upon modification field control logic is invoked so that meta-information like hidden or read-only is determined.</p>

## <a name="SortOrderType"></a>[SortOrderType](Common.xml#L1167)


Property|Type|Description
:-------|:---|:----------
[Property](Common.xml#L1168)|PropertyPath|Sort property
[Descending](Common.xml#L1171)|Boolean|Sort direction, ascending if not specified otherwise

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](Common.xml#L1196)


Property|Type|Description
:-------|:---|:----------
[ExternalNodeKeyProperty](Common.xml#L1197)|PropertyPath|Property holding the external human-readable key identifying the node
[NodeDescendantCountProperty](Common.xml#L1200)|PropertyPath|Property holding the descendant count for a hierarchy node. The descendant count of a node is the number of its descendants in the hierarchy structure of the result considering only those nodes matching any specified $filter and $search. A property holding descendant counts has an integer data type.
[NodeDrillStateProperty](Common.xml#L1208)|PropertyPath|Property holding the drill state of a hierarchy node. The drill state is indicated by one of the following string values: collapsed, expanded, or leaf. For an expanded node, its children are included in the result collection. For a collapsed node, the children are included in the entity set, but they are not part of the result collection. Retrieving them requires a relaxed filter expression or a separate request filtering on the parent node ID with the ID of the collapsed node. A leaf does not have any child in the entity set.

## <a name="UserID"></a>[UserID](Common.xml#L1239)
**Type:** String

User ID
