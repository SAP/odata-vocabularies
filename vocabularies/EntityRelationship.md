# EntityRelationship Vocabulary
**Namespace: [com.sap.vocabularies.EntityRelationship.v1](EntityRelationship.xml)**

Terms to better document the Entity Relationship model outside of the current API / data model context


## Terms

Term|Type|Description
:---|:---|:----------
[entityType](EntityRelationship.xml#L35) *([Experimental](Common.md#Experimental))*|String|<a name="entityType"></a>Defines which [ORD Entity Type](https://sap.github.io/open-resource-discovery/details/articles/grouping-and-bundling#entity-type) the current JSON Schema object represents. There could be several JSON Schema objects that are assigned to the same Entity Type. One JSON Schema object can only have one ORD Entity Type assigned, which corresponds to the applications own Entity Type definition. The ID scheme for an Entity Type ID is as following:<br>`entityTypeId := namespace:entityTypeLocalId[:v"majorVersion"]`
[propertyType](EntityRelationship.xml#L48) *([Experimental](Common.md#Experimental))*|String|<a name="propertyType"></a>Logical property type of a property<br>Defines the logical Property Type of a property. The reason is to have an ID to relate to the property type independently of the property name and shared across every usage of the same property across APIs where names might be different.<br>Especially to state that it can be used as an ID or is part of a composite ID.<br>A Property Type ID follows the same format and considerations as the Entity Type ID explained above: `PropertyTypeId := namespace:propertyTypeLocalId[:v"majorVersion"]`
[entityIds](EntityRelationship.xml#L64) *([Experimental](Common.md#Experimental))*|\[[entityId](#entityId)\]|<a name="entityIds"></a>The annotated entity type represents an ODM root entity<br><p>Defines a list of IDs, which are available to look up the Entity Type or create a reference to it. An Entity Type can have multiple IDs:</p> <ul> <li>There can be <strong>alternative IDs</strong> that can also be used to create a reference to the Entity Type</li> <li>Some ID properties form a <strong>composite ID</strong> together and need to be combined to function as a unique ID for references</li> <li>This is indicated by a <code>propertyTypes</code> array with more than one Property Type ID entry.</li> </ul> 
[reference](EntityRelationship.xml#L79)|[singleReference](#singleReference)|<a name="reference"></a>Defines references to other Entity Types based on a single ID.
[compositeReferences](EntityRelationship.xml#L83) *([Experimental](Common.md#Experimental))*|\[[compositeReference](#compositeReference)\]|<a name="compositeReferences"></a>Defines one or many references to other Entity Types based on a composite IDs.
[temporalIds](EntityRelationship.xml#L88) *([Experimental](Common.md#Experimental))*|\[[temporalId](#temporalId)\]|<a name="temporalIds"></a>Defines a list of temporal IDs.
[temporalReferences](EntityRelationship.xml#L93) *([Experimental](Common.md#Experimental))*|\[[temporalReference](#temporalReference)\]|<a name="temporalReferences"></a>Defines a list of temporal references.
[referencesWithConstantIds](EntityRelationship.xml#L97) *([Experimental](Common.md#Experimental))*|\[[referenceWithConstantId](#referenceWithConstantId)\]|<a name="referencesWithConstantIds"></a>Defines one or many references to other Entity Types based on a composite IDs where some properties of the references are constant values.

<a name="singleReference"></a>
## [singleReference](EntityRelationship.xml#L102)
Defines a reference to another Entity Type based on a single ID.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L104) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the reference.
[referencedEntityType](EntityRelationship.xml#L108) *([Experimental](Common.md#Experimental))*|[entityTypeID](#entityTypeID)|ID of the referenced entity type.
[referencedPropertyType](EntityRelationship.xml#L112) *([Experimental](Common.md#Experimental))*|[propertyTypeID](#propertyTypeID)|ID of the property type used in the references entity to identify the instance.

<a name="entityId"></a>
## [entityId](EntityRelationship.xml#L118)
Defines an ID that can be used to look up the Entity Type or create a reference to it.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L120) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the ID.
[description](EntityRelationship.xml#L124) *([Experimental](Common.md#Experimental))*|String?|Optional description to describe the semantics of the ID.
[propertyTypes](EntityRelationship.xml#L128) *([Experimental](Common.md#Experimental))*|\[[propertyTypeID](#propertyTypeID)\]|List of property type IDs.

<a name="compositeReference"></a>
## [compositeReference](EntityRelationship.xml#L134)
Defines a single reference to another Entity Type based on a composite ID.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L136) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the reference.
[referencedEntityType](EntityRelationship.xml#L140) *([Experimental](Common.md#Experimental))*|[entityTypeID](#entityTypeID)|ID of the referenced entity type.
[referencedPropertyType](EntityRelationship.xml#L144) *([Experimental](Common.md#Experimental))*|\[[referencedPropertyType](#referencedPropertyType)\]|List of property types the composite ID in the references entity consists of.

<a name="referencedPropertyType"></a>
## [referencedPropertyType](EntityRelationship.xml#L150)
Grouping of the ID in the referenced entity, by its property type ID and the local name in this entity.

Property|Type|Description
:-------|:---|:----------
[referencedPropertyType](EntityRelationship.xml#L152) *([Experimental](Common.md#Experimental))*|[propertyTypeID](#propertyTypeID)|ID of the property type used in the references entity to identify the instance.
[localPropertyName](EntityRelationship.xml#L156) *([Experimental](Common.md#Experimental))*|PropertyPath|Name of the property in the local Entity Type.

<a name="temporalId"></a>
## [temporalId](EntityRelationship.xml#L162)
Defines an ID that includes a temporal interval.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L164) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the ID.
[description](EntityRelationship.xml#L168) *([Experimental](Common.md#Experimental))*|String?|Optional description to describe the semantics of the ID.
[propertyTypes](EntityRelationship.xml#L172) *([Experimental](Common.md#Experimental))*|\[[propertyTypeID](#propertyTypeID)\]|List of property type IDs that are non-temporal.
[temporalIntervalType](EntityRelationship.xml#L176) *([Experimental](Common.md#Experimental))*|[temporalIntervalTypeEnum](#temporalIntervalTypeEnum)|Interval which includes the boundaries.
[temporalType](EntityRelationship.xml#L180) *([Experimental](Common.md#Experimental))*|[temporalTypeEnum](#temporalTypeEnum)|The temporal ID type, of this temporal ID.
[temporalIntervalStartProperty](EntityRelationship.xml#L184) *([Experimental](Common.md#Experimental))*|PropertyPath|Property in the local entity that is used to define the start of the interval.
[temporalIntervalEndProperty](EntityRelationship.xml#L188) *([Experimental](Common.md#Experimental))*|PropertyPath|Property in the local entity that is used to define the end of the interval.

<a name="temporalIntervalTypeEnum"></a>
## [temporalIntervalTypeEnum](EntityRelationship.xml#L194)


Member|Value|Description
:-----|----:|:----------
[CLOSED_CLOSED](EntityRelationship.xml#L195)|0|Closed, Closed interval including the start and end value.
[OPEN_OPEN](EntityRelationship.xml#L198)|1|Open, Open interval excluding the start and end value.
[OPEN_CLOSED](EntityRelationship.xml#L201)|2|Open, Closed interval excluding the start and including the end value.
[CLOSED_OPEN](EntityRelationship.xml#L204)|3|Closed, Open interval including the start and excluding the end value.

<a name="temporalTypeEnum"></a>
## [temporalTypeEnum](EntityRelationship.xml#L209)


Member|Value|Description
:-----|----:|:----------
[DATE](EntityRelationship.xml#L210)|0|Date based interval.
[DATETIME](EntityRelationship.xml#L213)|1|Date and Time based interval.

<a name="temporalReference"></a>
## [temporalReference](EntityRelationship.xml#L218)
Defines single temporal reference to another Entity Type.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L220) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the reference.
[referencedEntityType](EntityRelationship.xml#L224) *([Experimental](Common.md#Experimental))*|[entityTypeID](#entityTypeID)|ID of the referenced entity type.
[referencedPropertyType](EntityRelationship.xml#L228) *([Experimental](Common.md#Experimental))*|\[[referencedPropertyType](#referencedPropertyType)\]|List of properties, the composite ID consists of.
[category](EntityRelationship.xml#L232) *([Experimental](Common.md#Experimental))*|[temporalCategoryEnum](#temporalCategoryEnum)|Category of the temporal reference.
[selectionDateProperty](EntityRelationship.xml#L236) *([Experimental](Common.md#Experimental))*|PropertyPath|Property in the local entity that is used to select the right date interval.

<a name="temporalCategoryEnum"></a>
## [temporalCategoryEnum](EntityRelationship.xml#L242)


Member|Value|Description
:-----|----:|:----------
[TEMPORAL_DATE](EntityRelationship.xml#L243)|0|Date based temporal reference.

<a name="referenceWithConstantId"></a>
## [referenceWithConstantId](EntityRelationship.xml#L248)
Defines single a reference to another Entity Type based on a composite ID.

Property|Type|Description
:-------|:---|:----------
[name](EntityRelationship.xml#L250) *([Experimental](Common.md#Experimental))*|String?|Optional name to describe the semantics of the reference.
[referencedEntityType](EntityRelationship.xml#L254) *([Experimental](Common.md#Experimental))*|[entityTypeID](#entityTypeID)|ID of the referenced entity type.
[referencedPropertyType](EntityRelationship.xml#L258) *([Experimental](Common.md#Experimental))*|\[[referencedPropertyTypeWithConstantId](#referencedPropertyTypeWithConstantId)\]|List of properties, the composite ID consists of.

<a name="referencedPropertyTypeWithConstantId"></a>
## [referencedPropertyTypeWithConstantId](EntityRelationship.xml#L264)
Grouping of the ID in the referenced entity, by its property type ID and either the local name in this entity or a constant value.

Property|Type|Description
:-------|:---|:----------
[referencedPropertyType](EntityRelationship.xml#L266) *([Experimental](Common.md#Experimental))*|[propertyTypeID](#propertyTypeID)|ID of the property type used in the references entity to identify the instance.
[localPropertyName](EntityRelationship.xml#L270) *([Experimental](Common.md#Experimental))*|PropertyPath?|Name of the property in the local Entity Type.
[constantValue](EntityRelationship.xml#L274) *([Experimental](Common.md#Experimental))*|String?|String serialization of the constant value of the property in the referenced entity.

<a name="propertyTypeID"></a>
## [propertyTypeID](EntityRelationship.xml#L280)
**Type:** String

ID of the property type. The reason is to have an ID to relate to the property, especially to state that it can be used as an ID or is part of a composite ID.<br>A Property Type ID follows the same format and considerations as the Entity Type ID explained above: `PropertyTypeId := namespace:propertyTypeLocalId[:v"majorVersion"]`

<a name="entityTypeID"></a>
## [entityTypeID](EntityRelationship.xml#L290)
**Type:** String

ID of the entity type. The ID scheme for an Entity Type ID is as following:<br>`entityTypeId := namespace:entityTypeLocalId[:v"majorVersion"]`
