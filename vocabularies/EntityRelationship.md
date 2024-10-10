# EntityRelationship Vocabulary
**Namespace: [com.sap.vocabularies.EntityRelationship.v1](EntityRelationship.xml)**

Terms to better document the Entity Relationship model outside of the current API / data model context


## Terms

Term|Type|Description
:---|:---|:----------
[entityType](EntityRelationship.xml#L35) *([Experimental](Common.md#Experimental))*|String|<a name="entityType"></a>Defines which Entity Type the current JSON Schema object represents. There could be several JSON Schema objects that are assigned to the same Entity Type. One JSON Schema object can only have one Entity Type assigned, which corresponds to the applications own Entity Type definition. The ID scheme for an Entity Type ID is as following: entityTypeId := namespace:entityTypeLocalId[:v"majorVersion"]
[propertyType](EntityRelationship.xml#L48) *([Experimental](Common.md#Experimental))*|String|<a name="propertyType"></a>logical property type of a property<br>Defines the logical Property Type of a property. The reason is to have an ID to relate to the property type independently of the property name and shared across every usage of the same property across APIs where names might be different. Especially to state that it can be used as an ID or is part of a composite ID.
[entityIds](EntityRelationship.xml#L60) *([Experimental](Common.md#Experimental))*|\[[entityId](#entityId)\]|<a name="entityIds"></a>The annotated entity type represents an ODM root entity<br>Defines a list of IDs, which are available to look up the Entity Type or create a reference to it. An Entity Type can have multiple IDs: * There can be **alternative IDs** that can also be used to create a reference to the Entity Type * Some ID properties form a **composite ID** together and need to be combined to function as a unique ID for references * This is indicated by a propertyTypes array with more than one Property Type ID entry.
[reference](EntityRelationship.xml#L74)|[singleReference](#singleReference)|<a name="reference"></a>Defines references to other Entity Types based on a single ID.<br>Defines references to other Entity Types based on a single ID.
[compositeReferences](EntityRelationship.xml#L82) *([Experimental](Common.md#Experimental))*|\[[compositeReference](#compositeReference)\]|<a name="compositeReferences"></a>Defines one or many references to other Entity Types based on a composite IDs.<br>Defines one or many references to other Entity Types based on a composite IDs.
[temporalIds](EntityRelationship.xml#L92) *([Experimental](Common.md#Experimental))*|\[[temporalId](#temporalId)\]|<a name="temporalIds"></a>Defines a list of temporal IDs<br>Defines a list of temporal IDs
[temporalReferences](EntityRelationship.xml#L102) *([Experimental](Common.md#Experimental))*|\[[temporalReference](#temporalReference)\]|<a name="temporalReferences"></a>Defines a list of temporal references<br>Defines a list of temporal references
[referencesWithConstantIds](EntityRelationship.xml#L111) *([Experimental](Common.md#Experimental))*|\[[referencesWithConstantId](#referencesWithConstantId)\]|<a name="referencesWithConstantIds"></a>Defines one or many references to other Entity Types based on a composite IDs where some properties of the references are constant values.<br>Defines one or many references to other Entity Types based on a composite IDs where some properties of the references are constant values.

<a name="singleReference"></a>
## [singleReference](EntityRelationship.xml#L121)
Defines a reference to another Entity Type based on a single ID.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L123) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the reference.
[referencedEntityType](EntityRelationship.xml#L127) *([Experimental](Common.md#Experimental))*|[entityTypeID](#entityTypeID)|
[referencedPropertyType](EntityRelationship.xml#L130) *([Experimental](Common.md#Experimental))*|[propertyTypeID](#propertyTypeID)|

<a name="entityId"></a>
## [entityId](EntityRelationship.xml#L135)
Defines an ID that can be used to look up the Entity Type or create a reference to it.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L137) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the ID.
[description](EntityRelationship.xml#L141) *([Experimental](Common.md#Experimental))*|String?|Optional description to describe the semantics of the ID.
[propertyTypes](EntityRelationship.xml#L145) *([Experimental](Common.md#Experimental))*|\[[propertyTypeID](#propertyTypeID)\]|List of property type IDs.

<a name="compositeReference"></a>
## [compositeReference](EntityRelationship.xml#L151)
Defines a single reference to another Entity Type based on a composite ID.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L153) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the reference.
[referencedEntityType](EntityRelationship.xml#L157) *([Experimental](Common.md#Experimental))*|[entityTypeID](#entityTypeID)|
[referencedPropertyType](EntityRelationship.xml#L160) *([Experimental](Common.md#Experimental))*|\[[referencedPropertyType](#referencedPropertyType)\]|List of properties, the composite ID consists of.

<a name="referencedPropertyType"></a>
## [referencedPropertyType](EntityRelationship.xml#L166)
Grouping of the ID in the referenced entity, by its property type ID and the local name in this entity.

Property|Type|Description
:-------|:---|:----------
[referencedPropertyType](EntityRelationship.xml#L168) *([Experimental](Common.md#Experimental))*|[propertyTypeID](#propertyTypeID)|
[localPropertyName](EntityRelationship.xml#L171) *([Experimental](Common.md#Experimental))*|PropertyPath|

<a name="temporalId"></a>
## [temporalId](EntityRelationship.xml#L176)
Defines an ID that includes a temporal interval.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L178) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the ID.
[description](EntityRelationship.xml#L182) *([Experimental](Common.md#Experimental))*|String?|Optional description to describe the semantics of the ID.
[propertyTypes](EntityRelationship.xml#L186) *([Experimental](Common.md#Experimental))*|\[[propertyTypeID](#propertyTypeID)\]|List of property type IDs that are non-temporal.
[temporalIntervalType](EntityRelationship.xml#L190) *([Experimental](Common.md#Experimental))*|[temporalIntervalTypeEnum](#temporalIntervalTypeEnum)|Interval which includes the boundaries.
[temporalType](EntityRelationship.xml#L194) *([Experimental](Common.md#Experimental))*|[temporalTypeEnum](#temporalTypeEnum)|Temporal Type
[temporalIntervalStartProperty](EntityRelationship.xml#L198) *([Experimental](Common.md#Experimental))*|PropertyPath|Property in the local entity that is used to define the start of the interval.
[temporalIntervalEndProperty](EntityRelationship.xml#L202) *([Experimental](Common.md#Experimental))*|PropertyPath|Property in the local entity that is used to define the end of the interval.

<a name="temporalIntervalTypeEnum"></a>
## [temporalIntervalTypeEnum](EntityRelationship.xml#L208)


Member|Value|Description
:-----|----:|:----------
[CLOSED_CLOSED](EntityRelationship.xml#L209)|0|
[OPEN_OPEN](EntityRelationship.xml#L211)|1|
[OPEN_CLOSED](EntityRelationship.xml#L213)|2|
[CLOSED_OPEN](EntityRelationship.xml#L215)|3|

<a name="temporalTypeEnum"></a>
## [temporalTypeEnum](EntityRelationship.xml#L219)


Member|Value|Description
:-----|----:|:----------
[DATE](EntityRelationship.xml#L220)|0|
[DATETIME](EntityRelationship.xml#L222)|1|

<a name="temporalReference"></a>
## [temporalReference](EntityRelationship.xml#L226)
Defines single temporal reference to another Entity Type.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L228) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the reference.
[referencedEntityType](EntityRelationship.xml#L232) *([Experimental](Common.md#Experimental))*|[entityTypeID](#entityTypeID)|
[referencedPropertyType](EntityRelationship.xml#L235) *([Experimental](Common.md#Experimental))*|\[[referencedPropertyType](#referencedPropertyType)\]|List of properties, the composite ID consists of.
[category](EntityRelationship.xml#L239) *([Experimental](Common.md#Experimental))*|[temporalCategoryEnum](#temporalCategoryEnum)|Category of the temporal reference.
[selectionDateProperty](EntityRelationship.xml#L243) *([Experimental](Common.md#Experimental))*|PropertyPath|Property in the local entity that is used to select the right date interval.

<a name="temporalCategoryEnum"></a>
## [temporalCategoryEnum](EntityRelationship.xml#L249)


Member|Value|Description
:-----|----:|:----------
[TEMPORAL_DATE](EntityRelationship.xml#L250)|0|

<a name="referenceWithConstantId"></a>
## [referenceWithConstantId](EntityRelationship.xml#L254)
Defines single a reference to another Entity Type based on a composite ID.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L256) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the reference.
[referencedEntityType](EntityRelationship.xml#L260) *([Experimental](Common.md#Experimental))*|[entityTypeID](#entityTypeID)|
[referencedPropertyType](EntityRelationship.xml#L263) *([Experimental](Common.md#Experimental))*|\[[referencedPropertyTypeWithConstantId](#referencedPropertyTypeWithConstantId)\]|List of properties, the composite ID consists of.

<a name="referencedPropertyTypeWithConstantId"></a>
## [referencedPropertyTypeWithConstantId](EntityRelationship.xml#L269)
Grouping of the ID in the referenced entity, by its property type ID and either the local name in this entity or a constant value.

Property|Type|Description
:-------|:---|:----------
[referencedPropertyType](EntityRelationship.xml#L271) *([Experimental](Common.md#Experimental))*|[propertyTypeID](#propertyTypeID)|
[localPropertyName](EntityRelationship.xml#L274) *([Experimental](Common.md#Experimental))*|PropertyPath?|
[constantValue](EntityRelationship.xml#L277) *([Experimental](Common.md#Experimental))*|String?|String serialization of the constant value of the property in the referenced entity.

<a name="propertyTypeID"></a>
## [propertyTypeID](EntityRelationship.xml#L283)
**Type:** String

ID of the property type. The reason is to have an ID to relate to the property, especially to state that it can be used as an ID or is part of a composite ID.

<a name="entityTypeID"></a>
## [entityTypeID](EntityRelationship.xml#L287)
**Type:** String

ID of the entity type.
