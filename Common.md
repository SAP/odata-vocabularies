# Common Vocabulary
**Namespace: [com.sap.vocabularies.Common.v1](com.sap.vocabularies.Common.v1.xml)**

Common terms for all SAP vocabularies


Term|Type|Description
:---|:---|:----------
ServiceVersion|Int32|1 for first version of a service, incremented when schema changes incompatibly and service is published with a different URI
ServiceSchemaVersion|Int32|0 for first schema version within a service version, incremented when schema changes compatibly
Label|String|A short, human-readable text suitable for labels and captions in UIs
Heading|String|A short, human-readable text suitable for column headings in UIs
QuickInfo|String|A short, human-readable text suitable for tool tips in UIs
Text|String|A descriptive text for values of the annotated property. Value MUST be a dynamic expression when used as metadata annotation.
TextFormat|[TextFormatType](#TextFormatType)|Human-readable text that may contain formatting information
IsDigitSequence|[Tag](Org.OData.Core.V1.md#Tag)|Contains only digits
IsUpperCase|[Tag](Org.OData.Core.V1.md#Tag)|Contains just uppercase characters
SecondaryKey|\[PropertyPath\]|The listed properties form a secondary key. Multiple secondary keys are possible using different qualifiers.
MinOccurs|Int64|The annotated set or collection contains at least this number of items
MaxOccurs|Int64|The annotated set or collection contains at most this number of items
AssociationEntity|\[NavigationPropertyPath\]|Entity representing an n:m association with attributes
DerivedNavigation|NavigationPropertyPath|Shortcut for a multi-segment navigation, contains the long path with all its segments
Masked|[Tag](Org.OData.Core.V1.md#Tag)|Property contains sensitive data that should by default be masked on a UI and clear-text visible only upon user interaction
SemanticObject|String|Name of the Semantic Object represented as this entity type or identified by this property
IsInstanceAnnotation|[Tag](Org.OData.Core.V1.md#Tag)|Term can also be used as instance annotation; AppliesTo of this term specifies where it can be applied
Insertable|Boolean|Specifies whether the service allows to create an entity by sending a POST request to the navigation link URL (in this case the created entity is automatically linked to the entity containing the navigation link)
Updatable|Boolean|Specifies whether the annotated entity can be updated
Deletable|Boolean|Specifies whether the annotated entity can be deleted
FilterExpressionRestrictions|\[[FilterExpressionRestrictionType](#FilterExpressionRestrictionType)\]|These properties only allow a subset of expressions
FieldControl|[FieldControlType](#FieldControlType)|Control state of a property
IsActionCritical|Boolean|Criticality of the function or action to enforce a warning or similar before it's executed
Attributes|\[PropertyPath\]|Attributes related to this property, which may occur in denormalized entity types
RelatedRecursiveHierarchy|AnnotationPath|A recursive hierarchy related to this property. The annotation path must end in Aggregation.RecursiveHierarchy.
Interval|[IntervalType](#IntervalType)|An interval with lower and upper boundaries described by two properties
ResultContext|[Tag](Org.OData.Core.V1.md#Tag)|The annotated entity type has one or more containment navigation properties. An instance of the annotated entity type provides the context required for determining the target entity sets reached by these containment navigation properties.
ValueList|[ValueListType](#ValueListType)|Specifies how to get a list of acceptable values for a property or parameter
ValueListReference|[ValueListReferenceType](#ValueListReferenceType)|Specifies where to find the value list mappings for a property or parameter
ValueListMapping|[ValueListMappingType](#ValueListMappingType)|Specifies the mapping between data service properties and value list properties
IsCalendarYear|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a year number as string following the logical pattern (-?)YYYY(Y*) consisting of an optional minus sign for years B.C. followed by at least four digits. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})
IsCalendarHalfyear|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a halfyear number as string following the logical pattern H consisting of a single digit. The string matches the regex pattern [1-2]
IsCalendarQuarter|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a calendar quarter number as string following the logical pattern Q consisting of a single digit. The string matches the regex pattern [1-4]
IsCalendarMonth|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a calendar month number as string following the logical pattern MM consisting of two digits. The string matches the regex pattern 0[1-9]\|1[0-2]
IsCalendarWeek|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a calendar week number as string following the logical pattern WW consisting of two digits. The string matches the regex pattern 0[1-9]\|[1-4][0-9]\|5[2-3]
IsDayOfCalendarMonth|[Tag](Org.OData.Core.V1.md#Tag)|Day number relative to a calendar month. Valid values are between 1 and 31.
IsDayOfCalendarYear|[Tag](Org.OData.Core.V1.md#Tag)|Day number relative to a calendar year. Valid values are between 1 and 366.
IsCalendarYearHalfyear|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a calendar year and halfyear as string following the logical pattern (-?)YYYY(Y*)H consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the halfyear. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-2]
IsCalendarYearQuarter|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a calendar year and quarter as string following the logical pattern (-?)YYYY(Y*)Q consisting of an optional minus sign for years B.C. followed by at least five digits, where the last digit represents the quarter. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})[1-4]
IsCalendarYearMonth|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a calendar year and month as string following the logical pattern (-?)YYYY(Y*)MM consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent the months January to December. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])
IsCalendarYearWeek|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a calendar year and week as string following the logical pattern (-?)YYYY(Y*)WW consisting of an optional minus sign for years B.C. followed by at least six digits, where the last two digits represent week number in the year. The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|[1-4][0-9]\|5[2-3])
IsCalendarDate|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a calendar date: year, month and day as string following the logical pattern (-?)YYYY(Y*)MMDD consisting of an optional minus sign for years B.C. followed by at least eight digits, where the last four digits represent the months January to December (MM) and the day of the month (DD). The string matches the regex pattern -?([1-9][0-9]{3,}\|0[0-9]{3})(0[1-9]\|1[0-2])(0[1-9]\|[12][0-9]\|3[01]) The regex pattern does not reflect the additional constraint for "Day-of-month Values": The day value must be no more than 30 if month is one of 04, 06, 09, or 11, no more than 28 if month is 02 and year is not divisible by 4, or is divisible by 100 but not by 400, and no more than 29 if month is 02 and year is divisible by 400, or by 4 but not by 100.
IsFiscalYear|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a fiscal year number as string following the logical pattern YYYY(Y*) consisting of at least four digits. The string matches the regex pattern [1-9][0-9]{3,}
IsFiscalPeriod|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a fiscal period as string following the logical pattern PPP consisting of three digits. The string matches the regex pattern [0-9]{3}
IsFiscalYearPeriod|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a fiscal year and period as string following the logical pattern YYYY(Y*)PPP consisting of at least seven digits, where the last three digits represent the fiscal period in the year. The string matches the regex pattern ([1-9][0-9]{3,})([0-9]{3})
IsFiscalYearVariant|[Tag](Org.OData.Core.V1.md#Tag)|Property encodes a fiscal year variant
MutuallyExclusiveTerm|[Tag](Org.OData.Core.V1.md#Tag)|Only one term of the group identified with the Qualifier attribute can be applied
DraftRoot|[DraftRootType](#DraftRootType)|Root entities of business documents that support the draft pattern
DraftNode|[DraftNodeType](#DraftNodeType)|Entities in this set are parts of business documents that support the draft pattern
DraftActivationVia|\[[SimpleIdentifier](#SimpleIdentifier)\]|Draft entities in this set are indirectly activated via draft entities in the referenced entity sets
SemanticKey|\[PropertyPath\]|The listed properties form the semantic key, i.e. they are unique modulo IsActiveEntity
SideEffects|[SideEffectsType](#SideEffectsType)|Changes to the source properties may have side-effects on the target properties or entities. If neither TargetProperties nor TargetEntities are specified, a change to the source property values may have unforeseeable side-effects. An empty NavigationPropertyPath may be used in TargetEntities to specify that any property of the annotated entity type may be affected. Special case "Actions": here the change trigger is the action invocation, so SourceProperties and SourceEntities have no meaning, only TargetProperties and TargetEntities are relevant. They are addressed via the binding parameter of the action.
DerivedDefaultValue|String|Function import to derive a default value for the property from a given context.
FilterDefaultValue|PrimitiveType|A default value for the property to be used in filter expressions.
DerivedFilterDefaultValue|String|Function import to derive a default value for the property from a given context in order to use it in filter expressions.
SortOrder|\[[SortOrderType](#SortOrderType)\]|List of sort criteria. The Items of the annotated EntitySet or the Items of the collection of the annotated EntityType are sorted by the first entry of the SortOrder collection. Items with same value for this first sort criteria are sorted by the second entry of the SortOrder Collection, and so on.
RecursiveHierarchy|[RecursiveHierarchyType](#RecursiveHierarchyType)|Defines a recursive hierarchy.
CreatedAt|DateTimeOffset|Creation timestamp
CreatedBy|[UserID](#UserID)|First editor
ChangedAt|DateTimeOffset|Last modification timestamp
ChangedBy|[UserID](#UserID)|Last editor

## <a name="TextFormatType"></a>TextFormatType


Member|Value|Description
:-----|----:|:----------
plain|0|Plain text, line breaks represented as the character 0x0A
html|1|Plain text with markup that can validly appear directly within an HTML DIV element

## <a name="FilterExpressionRestrictionType"></a>FilterExpressionRestrictionType


Property|Type|Description
:-------|:---|:----------
Property|PropertyPath|
AllowedExpressions|[FilterExpressionType](#FilterExpressionType)|

## <a name="FilterExpressionType"></a>FilterExpressionType


Member|Value|Description
:-----|----:|:----------
SingleValue|0|a single 'eq' clause
MultiValue|1|one or more 'eq' clauses, separated by 'or'
SingleInterval|2|at most one 'ge' and one 'le' clause, separated by 'and', alternatively a single 'eq' clause

## <a name="FieldControlType"></a>FieldControlType


Member|Value|Description
:-----|----:|:----------
Mandatory|7|Property must have a non-null value
Optional|3|Property may have a value or be null
ReadOnly|1|Property value cannot be changed
Inapplicable|0|Property has no meaning in the current entity state
Hidden|0|Deprecated synonymn for Inapplicable, do not use

## <a name="IntervalType"></a>IntervalType


Property|Type|Description
:-------|:---|:----------
LowerBoundary|PropertyPath|Property holding the lower interval boundary
LowerBoundaryIncluded|Boolean|The lower boundary value is included in the interval
UpperBoundary|PropertyPath|Property holding the upper interval boundary
UpperBoundaryIncluded|Boolean|The upper boundary value is included in the interval

## <a name="ValueListType"></a>ValueListType


Property|Type|Description
:-------|:---|:----------
Label|String|
CollectionPath|String|Resource path of an OData collection with possible values, relative to CollectionRoot
CollectionRoot|String|Service root of the value list collection; not specified means local to the document containing the annotation
SearchSupported|Boolean|Value list supports the $search query option
PresentationVariantQualifier|[SimpleIdentifier](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart
Parameters|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

## <a name="ValueListReferenceType"></a>ValueListReferenceType


Property|Type|Description
:-------|:---|:----------
MappingUrl|String|URL of a CSDL document containing value list mappings for this parameter or property
FixedValues|Boolean|If specified as true, there's only one value list mapping and its value list consists of a small number of fixed values

## <a name="ValueListMappingType"></a>ValueListMappingType


Property|Type|Description
:-------|:---|:----------
Label|String|
CollectionPath|String|Resource path of an OData collection with possible values, relative to the document containing the value list mapping
SearchSupported|Boolean|Value list supports the $search query option
PresentationVariantQualifier|[SimpleIdentifier](#SimpleIdentifier)|Alternative representation of a value help, e.g. as a bar chart
Parameters|\[[ValueListParameter](#ValueListParameter)\]|Instructions on how to construct the value list request and consume response properties

## <a name="ValueListParameter"></a>*ValueListParameter*


**Derived Types:**
- [ValueListParameterIn](#ValueListParameterIn)
- [ValueListParameterInOut](#ValueListParameterInOut)
- [ValueListParameterOut](#ValueListParameterOut)
- [ValueListParameterDisplayOnly](#ValueListParameterDisplayOnly)
- [ValueListParameterFilterOnly](#ValueListParameterFilterOnly)

Property|Type|Description
:-------|:---|:----------
ValueListProperty|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="ValueListParameterIn"></a>ValueListParameterIn: [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
*ValueListProperty*|String|Path to property in response structure. Format is identical to PropertyPath annotations.
LocalDataProperty|PropertyPath|Path to property that is used to filter/search the value list

## <a name="ValueListParameterInOut"></a>ValueListParameterInOut: [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
*ValueListProperty*|String|Path to property in response structure. Format is identical to PropertyPath annotations.
LocalDataProperty|PropertyPath|Path to property that is used to filter/search the value list or filled from response

## <a name="ValueListParameterOut"></a>ValueListParameterOut: [ValueListParameter](#ValueListParameter)


Property|Type|Description
:-------|:---|:----------
*ValueListProperty*|String|Path to property in response structure. Format is identical to PropertyPath annotations.
LocalDataProperty|PropertyPath|Path to property that is filled from response

## <a name="ValueListParameterDisplayOnly"></a>ValueListParameterDisplayOnly: [ValueListParameter](#ValueListParameter)
Value list property that is not used to fill the edited entity

Property|Type|Description
:-------|:---|:----------
*ValueListProperty*|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="ValueListParameterFilterOnly"></a>ValueListParameterFilterOnly: [ValueListParameter](#ValueListParameter)
Value list property that is used to filter the value list, not connected to the edited entity

Property|Type|Description
:-------|:---|:----------
*ValueListProperty*|String|Path to property in response structure. Format is identical to PropertyPath annotations.

## <a name="DraftRootType"></a>DraftRootType: [DraftNodeType](#DraftNodeType)


Property|Type|Description
:-------|:---|:----------
*PreparationAction*|[QualifiedName](#QualifiedName)|Action that prepares a draft document for later activation
*ValidationFunction*|[QualifiedName](#QualifiedName)|Function that validates whether a draft document is ready for activation
ActivationAction|[QualifiedName](#QualifiedName)|Action that activates a draft document
EditAction|[QualifiedName](#QualifiedName)|Action that creates an edit draft
NewAction|[QualifiedName](#QualifiedName)|Action that creates a new draft. It may have overloads that allow referencing other business documents that are used to pre-fill the new draft

## <a name="DraftNodeType"></a>DraftNodeType


**Derived Types:**
- [DraftRootType](#DraftRootType)

Property|Type|Description
:-------|:---|:----------
PreparationAction|[QualifiedName](#QualifiedName)|Action that prepares a draft document for later activation
ValidationFunction|[QualifiedName](#QualifiedName)|Function that validates whether a draft document is ready for activation

## <a name="SimpleIdentifier"></a>SimpleIdentifier
**Type:** String

The SimpleIdentifier of an OData construct in scope

## <a name="QualifiedName"></a>QualifiedName
**Type:** String

The QualifiedName of an OData construct in scope

## <a name="SideEffectsType"></a>SideEffectsType


Property|Type|Description
:-------|:---|:----------
SourceProperties|\[PropertyPath\]|Changes to the values of one or more of these properties will affect the targets
SourceEntities|\[NavigationPropertyPath\]|Changes to one or more of these entities will affect the targets. An empty path means the annotation target.
TargetProperties|\[PropertyPath\]|These properties will be affected if the value of one of the sources changes
TargetEntities|\[NavigationPropertyPath\]|These entities will be affected if the value of one of the sources changes. An empty path means the annotation target.
EffectTypes|[EffectType](#EffectType)|One or more of the targets may show these effects. If not specified, any effect is possible.

## <a name="EffectType"></a>EffectType


Flag Member|Value|Description
:-----|----:|:----------
ValidationMessage|1|Validation messages are assigned to a target
ValueChange|2|The value of a target changes
FieldControlChange|4|The value of the Common.FieldControl annotation of a target changes

## <a name="SortOrderType"></a>SortOrderType


Property|Type|Description
:-------|:---|:----------
Property|PropertyPath|Sort property
Descending|Boolean|Sort direction ; default is ascending

## <a name="RecursiveHierarchyType"></a>RecursiveHierarchyType


Property|Type|Description
:-------|:---|:----------
ExternalNodeKeyProperty|PropertyPath|Property holding the external human-readable key identifying the node
NodeDescendantCountProperty|PropertyPath|Property holding the descendant count for a hierarchy node. The descendant count of a node is the number of its descendants in the hierarchy structure of the result considering only those nodes matching any specified $filter and $search. A property holding descendant counts has an integer data type.
NodeDrillStateProperty|PropertyPath|Property holding the drill state of a hierarchy node. The drill state is indicated by one of the following string values: collapsed, expanded, or leaf. For an expanded node, its children are included in the result collection. For a collapsed node, the children are included in the entity set, but they are not part of the result collection. Retrieving them requires a relaxed filter expression or a separate request filtering on the parent node ID with the ID of the collapsed node. A leaf does not have any child in the entity set.

## <a name="UserID"></a>UserID
**Type:** String

User ID
