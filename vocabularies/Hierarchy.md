# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation designates properties that contain derived information and actions for manipulating the hierarchy.
[MatchCount](./Hierarchy.xml#L184:~:text=<Term%20Name="-,MatchCount,-") *([Experimental](Common.md#Experimental))*|Int64|<a name="MatchCount"></a>Instance annotation on the result of an `$apply` query option containing the number of matching nodes after hierarchical transformations<br>The service designates a subset of the `$apply` result as "matching nodes". This subset is the output set of the `filter` or `search` transformation that occurs as the fourth parameter of the last `ancestors` transformation or occurs nested into it.<br> This instance annotation is available if [`RecursiveHierarchy/MatchedProperty`](#RecursiveHierarchyType) and `RecursiveHierarchy/MatchedDescendantCountProperty` are also available.


## Actions

<a name="Template_CreateAction"></a>
### [Template_CreateAction](./Hierarchy.xml#L259:~:text=<Action%20Name="-,Template_CreateAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that create a new node and are named in [`RecursiveHierarchy/CreateAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[HierarchyNodes](./Hierarchy.xml#L262:~:text=<Action%20Name="-,Template_CreateAction,-")**|\[EntityType\]|**Binding parameter**
[HierarchyQualifier](./Hierarchy.xml#L263:~:text=<Action%20Name="-,Template_CreateAction,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[Entity](./Hierarchy.xml#L264:~:text=<Action%20Name="-,Template_CreateAction,-")|EntityType|The new entity to be created as a node
[Parent](./Hierarchy.xml#L267:~:text=<Action%20Name="-,Template_CreateAction,-")|EntityType?|Key of the new node's parent (null if the new node shall be a root)
*[NextSibling](./Hierarchy.xml#L270:~:text=<Action%20Name="-,Template_CreateAction,-")*|EntityType?|*Optional parameter:* Key of the new node's next sibling (null if the new node shall be the last sibling)<br>In the absence of this parameter, the sibling position is determined by the service.
[&rarr;](./Hierarchy.xml#L279:~:text=<Action%20Name="-,Template_CreateAction,-")|EntityType|The new node<br>The values of the properties declared in the [`RecursiveHierarchy`](#RecursiveHierarchyType) annotation can only be obtained with a subsequent GET request that contains a hierarchical transformation in an `$apply` query option.


<a name="Template_CreateChildAction"></a>
### [Template_CreateChildAction](./Hierarchy.xml#L288:~:text=<Action%20Name="-,Template_CreateChildAction,-") *([Experimental](Common.md#Experimental))*

Template for instance-bound actions that create a new non-root node and are named in [`RecursiveHierarchy/CreateChildAction`](#RecursiveHierarchyType)

This action can be used when creating several nodes in one JSON batch request like:
```
{"requests": [{
  "id": "1",
  "method": "post",
  "url": "HierarchyDirectory(1)/SalesOrganizations/CreateAction",
  "body": {
    "HierarchyQualifier": "SalesOrgHierarchy",
    "Entity": {"Name": "Worldwide", ...}
  }
}, {
  "id": "2",
  "dependsOn": ["1"],
  "method": "post",
  "url": "$1/CreateChildAction",
  "body": {
    "Entity": {"Name": "EMEA", ...}
  }
}]}
```
The second request inherits the hierarchy directory key 1 from the first.

Parameter|Type|Description
:--------|:---|:----------
**[Parent](./Hierarchy.xml#L314:~:text=<Action%20Name="-,Template_CreateChildAction,-")**|EntityType|**Binding parameter:** The new node's parent
[Entity](./Hierarchy.xml#L317:~:text=<Action%20Name="-,Template_CreateChildAction,-")|EntityType|The new entity to be created as a node
*[NextSibling](./Hierarchy.xml#L320:~:text=<Action%20Name="-,Template_CreateChildAction,-")*|EntityType?|*Optional parameter:* Key of the new node's next sibling (null if the new node shall be the last sibling)<br>In the absence of this parameter, the sibling position is determined by the service.
[&rarr;](./Hierarchy.xml#L329:~:text=<Action%20Name="-,Template_CreateChildAction,-")|EntityType|The new node<br>The values of the properties declared in the [`RecursiveHierarchy`](#RecursiveHierarchyType) annotation can only be obtained with a subsequent GET request that contains a hierarchical transformation in an `$apply` query option.


<a name="Template_InsertAction"></a>
### [Template_InsertAction](./Hierarchy.xml#L338:~:text=<Action%20Name="-,Template_InsertAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that insert an existing entity as a new node and are named in [`RecursiveHierarchy/InsertAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[HierarchyNodes](./Hierarchy.xml#L341:~:text=<Action%20Name="-,Template_InsertAction,-")**|\[EntityType\]|**Binding parameter**
[HierarchyQualifier](./Hierarchy.xml#L342:~:text=<Action%20Name="-,Template_InsertAction,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[EntityKey](./Hierarchy.xml#L343:~:text=<Action%20Name="-,Template_InsertAction,-")|EntityType|Key of the entity to become a new node<br>It is an error if the entity exists already with a node identifier for the recursive hierarchy.
[Parent](./Hierarchy.xml#L349:~:text=<Action%20Name="-,Template_InsertAction,-")|EntityType?|Key of the new node's parent (null if the new node shall be a root)
*[NextSibling](./Hierarchy.xml#L352:~:text=<Action%20Name="-,Template_InsertAction,-")*|EntityType?|*Optional parameter:* Key of the new node's next sibling (null if the new node shall be the last sibling)<br>In the absence of this parameter, the sibling position is determined by the service.
[&rarr;](./Hierarchy.xml#L361:~:text=<Action%20Name="-,Template_InsertAction,-")|PrimitiveType|The node identifier of the new node


<a name="Template_InsertChildAction"></a>
### [Template_InsertChildAction](./Hierarchy.xml#L365:~:text=<Action%20Name="-,Template_InsertChildAction,-")

Template for instance-bound actions that insert an existing entity as a new node and are named in [`RecursiveHierarchy/InsertChildAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[Parent](./Hierarchy.xml#L367:~:text=<Action%20Name="-,Template_InsertChildAction,-")**|EntityType|**Binding parameter:** The new node's parent
[EntityKey](./Hierarchy.xml#L370:~:text=<Action%20Name="-,Template_InsertChildAction,-")|EntityType|Key of the entity to become a new node<br>It is an error if the entity exists already with a node identifier for the recursive hierarchy.
*[NextSibling](./Hierarchy.xml#L376:~:text=<Action%20Name="-,Template_InsertChildAction,-")*|EntityType?|*Optional parameter:* Key of the new node's next sibling (null if the new node shall be the last sibling)<br>In the absence of this parameter, the sibling position is determined by the service.
[&rarr;](./Hierarchy.xml#L385:~:text=<Action%20Name="-,Template_InsertChildAction,-")|PrimitiveType|The node identifier of the new node


<a name="Template_MoveAction"></a>
### [Template_MoveAction](./Hierarchy.xml#L389:~:text=<Action%20Name="-,Template_MoveAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that move a node to a new parent and are named in [`RecursiveHierarchy/MoveAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[HierarchyNodes](./Hierarchy.xml#L392:~:text=<Action%20Name="-,Template_MoveAction,-")**|\[EntityType\]|**Binding parameter**
[HierarchyQualifier](./Hierarchy.xml#L393:~:text=<Action%20Name="-,Template_MoveAction,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[Node](./Hierarchy.xml#L394:~:text=<Action%20Name="-,Template_MoveAction,-")|EntityType|Key of the node to be moved
[Parent](./Hierarchy.xml#L397:~:text=<Action%20Name="-,Template_MoveAction,-")|EntityType?|Key of the node's new parent (null if the node shall become a root)
*[NextSibling](./Hierarchy.xml#L400:~:text=<Action%20Name="-,Template_MoveAction,-")*|EntityType?|*Optional parameter:* Key of the node's next sibling under the new parent (null if the node shall become the last sibling)<br>In the absence of this parameter, the sibling position is determined by the service.


<a name="Template_MoveChildAction"></a>
### [Template_MoveChildAction](./Hierarchy.xml#L408:~:text=<Action%20Name="-,Template_MoveChildAction,-") *([Experimental](Common.md#Experimental))*

Template for instance-bound actions that move a node to a new parent and are named in [`RecursiveHierarchy/MoveChildAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[Parent](./Hierarchy.xml#L411:~:text=<Action%20Name="-,Template_MoveChildAction,-")**|EntityType|**Binding parameter:** The node's new parent
[Node](./Hierarchy.xml#L414:~:text=<Action%20Name="-,Template_MoveChildAction,-")|EntityType|Key of the node to be moved
*[NextSibling](./Hierarchy.xml#L417:~:text=<Action%20Name="-,Template_MoveChildAction,-")*|EntityType?|*Optional parameter:* Key of the node's next sibling under the new parent (null if the node shall become the last sibling)<br>In the absence of this parameter, the sibling position is determined by the service.


<a name="Template_RemoveAction"></a>
### [Template_RemoveAction](./Hierarchy.xml#L425:~:text=<Action%20Name="-,Template_RemoveAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that remove a leaf from a recursive hierarchy and are named in [`RecursiveHierarchy/RemoveAction`](#RecursiveHierarchyType)

When a leaf is removed, the entity is not deleted but its node identifier property is set to null.
          A DELETE request that deletes an entity also removes it from all recursive hierarchies defined on the entity type,
          but the effect on any hierarchy-specific descendants is application-specific.

Parameter|Type|Description
:--------|:---|:----------
**[HierarchyNodes](./Hierarchy.xml#L433:~:text=<Action%20Name="-,Template_RemoveAction,-")**|\[EntityType\]|**Binding parameter**
[HierarchyQualifier](./Hierarchy.xml#L434:~:text=<Action%20Name="-,Template_RemoveAction,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[Node](./Hierarchy.xml#L435:~:text=<Action%20Name="-,Template_RemoveAction,-")|EntityType|Key of the leaf to be removed



## Functions

<a name="TopLevels"></a>
### [TopLevels](./Hierarchy.xml#L210:~:text=<Function%20Name="-,TopLevels,-") *([Experimental](Common.md#Experimental))*

Returns the first n levels of a hierarchical collection in preorder with individual nodes expanded or collapsed

This function can be used as a transformation whose input set has a recursive hierarchy
          defined by an [`Aggregation.RecursiveHierarchy`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy)
          annotation on the entity type of the `HierarchyNodes`.
          (Its binding parameter is the unlimited hierarchy as defined [here](#RecursiveHierarchyType),
          its output is the limited hierarchy.) The output initially contains the nodes with less than n ancestors
          in the hierarchical collection given in the binding parameter.
          Then individual nodes are expanded, shown or collapsed in the output, which extends or reduces the limited hierarchy.
          Finally the output is sorted in preorder as with the `traverse` transformation.

Parameter|Type|Description
:--------|:---|:----------
**[InputSet](./Hierarchy.xml#L223:~:text=<Function%20Name="-,TopLevels,-")**|\[EntityType\]|**Binding parameter**
[HierarchyNodes](./Hierarchy.xml#L224:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|A collection, given through a `$root` expression
[HierarchyQualifier](./Hierarchy.xml#L227:~:text=<Function%20Name="-,TopLevels,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[NodeProperty](./Hierarchy.xml#L228:~:text=<Function%20Name="-,TopLevels,-")|String|Property path to the node identifier, evaluated relative to the binding parameter
*[Levels](./Hierarchy.xml#L231:~:text=<Function%20Name="-,TopLevels,-")*|Int64|*Optional parameter:* The number n of levels to be output, absent means all levels
*[Expand](./Hierarchy.xml#L238:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be expanded
*[Show](./Hierarchy.xml#L244:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be shown
*[Collapse](./Hierarchy.xml#L250:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be collapsed
[&rarr;](./Hierarchy.xml#L256:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|


<a name="RecursiveHierarchyType"></a>
## [RecursiveHierarchyType](./Hierarchy.xml#L47:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *([Experimental](Common.md#Experimental))*


The property paths in this complex type refer to properties of an entity type that contain
information about a node in a recursive hierarchy. When hierarchical transformations
are applied whose first parameter has the annotated entity type
and whose second parameter is the annotation qualifier,
then these properties are derived for each node in the result set.
Otherwise, the property paths may evaluate to null.

For requests like
```
SalesOrganizations?$apply=
descendants(..., ID, filter(ID eq 'US'), keep start)
/ancestors(..., ID, filter(contains(Name, 'New York'), keep start)
/Hierarchy.TopLevels(..., NodeProperty='ID', Levels=2)
&$top=10
```
or
```
SalesOrganizations?$apply=groupby((rolluprecursive(..., ID,
  descendants(..., ID, filter(ID eq 'US')),
  ancestors(..., ID, filter(contains(Name, 'New York')), keep start))), aggregate(...))
/Hierarchy.TopLevels(..., NodeProperty='ID', Levels=2)
&$top=10
```
(where `...,` stands for hierarchy nodes and hierarchy qualifier)
the following collections of hierarchy nodes are distinguished:
|Collection|Definition|Value|Where in request|
|----------|----------|-----|----------------|
|sub-hierarchy|output set of a `descendants` transformation, possibly embedded in a `rolluprecursive` transformation, that is not preceded by an `ancestors` or `descendants` transformation|US sales organizations|rows 1–2|
|matching nodes|see [`MatchCount`](#MatchCount)|US sales organizations with "New York" in their name|output set of `filter` transformation in row 3|
|unlimited hierarchy|output set of the last `ancestors`, `descendants` or `traverse` transformation, possibly embedded in a `rolluprecursive` transformation, disregarding numeric fifth parameters|US sales organizations with leaves containing "New York"|rows 1–3|
|limited hierarchy|output set of the last `ancestors`, `descendants`, `traverse` or [`Hierarchy.TopLevels`](#TopLevels) transformation, possibly embedded in a `rolluprecursive` transformation|2 levels of US sales organizations with leaves containing "New York"|rows 1–4|

The qualified action names identify actions for maintaining nodes in the recursive hierarchy. 
These actions MUST have the same signature as the template actions linked below, with
`Edm.EntityType` replaced with the entity type on which the recursive hierarchy is defined.
Parameters `HierarchyNodes` and `HierarchyQualifier` have the same meaning as for functions in the
[`Aggregation`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html) vocabulary.
When invoking an action, clients MUST set the `HierarchyQualifier` to the qualifier of the [`RecursiveHierarchy`](#RecursiveHierarchy) annotation.
In parameters of entity type that are defined as "Key of …", only the key properties are relevant.

The instance-bound actions MUST appear only in batch requests and the resource path MUST contain a dependency
to the result of an earlier [create action](#Template_CreateAction) or [create-child action](#Template_CreateChildAction) from the same batch request.
The action then inherits the `HierarchyNodes` collection and the `HierarchyQualifier` from that earlier action.

The template actions themselves cannot be invoked.


Property|Type|Description
:-------|:---|:----------
[ExternalKeyProperty](./Hierarchy.xml#L97:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|String property holding the human-readable key value for a node<br>If a `NodeTypeProperty` exists, the external key is unique only in combination with it. Or the external key can coincide with the [`Aggregation.RecursiveHierarchy/NodeProperty`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchyType).
[NodeTypeProperty](./Hierarchy.xml#L104:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|String property holding the type of a node<br>In a recursive hierarchy with mixed types, nodes can <br>- have a type-specific (navigation) property whose name is the node type or <br>- be represented by entities of different subtypes of a common entity type that is annotated with the `RecursiveHierarchy` annotation. The qualified name of the subtype is the node type.
[ChildCountProperty](./Hierarchy.xml#L113:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of children a node has in the unlimited hierarchy
[DescendantCountProperty](./Hierarchy.xml#L116:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants a node has in the unlimited hierarchy
[LimitedDescendantCountProperty](./Hierarchy.xml#L119:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants a node has in the limited hierarchy
[DrillStateProperty](./Hierarchy.xml#L122:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|String property holding the drill state of a node<br>Possible drill states are: <br>- `expanded` if a node has children in the limited hierarchy <br>- `collapsed` if a node has children in the unlimited hierarchy but not in the limited hierarchy <br>- `leaf` if a node has no children in the unlimited hierarchy
[DistanceFromRootProperty](./Hierarchy.xml#L131:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of ancestors a node has in the limited hierarchy<br>This equals the number of ancestors in the sub-hierarchy as well as in the unlimited hierarchy.
[SiblingRankProperty](./Hierarchy.xml#L137:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes in the unlimited hierarchy with the same parent. The first sibling has rank 0.
[MatchedProperty](./Hierarchy.xml#L150:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Boolean property indicating [matching](#MatchCount) nodes
[MatchedDescendantCountProperty](./Hierarchy.xml#L153:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the the number of [matching](#MatchCount) descendants a node has in the unlimited hierarchy
[CreateAction](./Hierarchy.xml#L161:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that creates a new node, following [this template](#Template_CreateAction)
[CreateChildAction](./Hierarchy.xml#L164:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Instance-bound action that creates a new non-root node, following [this template](#Template_CreateChildAction)
[InsertAction](./Hierarchy.xml#L167:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that inserts an existing entity as a new leaf following [this template](#Template_InsertAction)
[InsertChildAction](./Hierarchy.xml#L170:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Instance-bound action that inserts an existing entity as a new leaf following [this template](#Template_InsertChildAction)
[MoveAction](./Hierarchy.xml#L173:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that moves a node to a new parent, following [this template](#Template_MoveAction)
[MoveChildAction](./Hierarchy.xml#L176:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Instance-bound action that moves a node to a new parent, following [this template](#Template_MoveChildAction)
[RemoveAction](./Hierarchy.xml#L179:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that removes a leaf from a recursive hierarchy, following [this template](#Template_RemoveAction)
