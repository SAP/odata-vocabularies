# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation designates properties that contain derived information.
[MatchCount](./Hierarchy.xml#L165:~:text=<Term%20Name="-,MatchCount,-") *([Experimental](Common.md#Experimental))*|Int64|<a name="MatchCount"></a>Instance annotation on the result of an `$apply` query option containing the number of matching nodes after hierarchical transformations<br>The service designates a subset of the `$apply` result as "matching nodes". This subset is the output set of the `filter` or `search` transformation that occurs as the fourth parameter of the last `ancestors` transformation or occurs nested into it.<br> This instance annotation is available if [`RecursiveHierarchy/MatchedProperty`](#RecursiveHierarchyType) and `RecursiveHierarchy/MatchedDescendantCountProperty` are also available.


## Actions

<a name="Template_CreateAction"></a>
### [Template_CreateAction](./Hierarchy.xml#L248:~:text=<Action%20Name="-,Template_CreateAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that create a new node and are named in [`RecursiveHierarchy/CreateAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[HierarchyNodes](./Hierarchy.xml#L251:~:text=<Action%20Name="-,Template_CreateAction,-")**|\[EntityType\]|**Binding parameter**
[HierarchyQualifier](./Hierarchy.xml#L252:~:text=<Action%20Name="-,Template_CreateAction,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[Entity](./Hierarchy.xml#L253:~:text=<Action%20Name="-,Template_CreateAction,-")|EntityType|The entity to become a new node<br>If the entity exists already without a node identifier for the recursive hierarchy, it is upserted with PATCH semantics. It is an error if the entity exists already with a node identifier for the recursive hierarchy.
*[Node](./Hierarchy.xml#L261:~:text=<Action%20Name="-,Template_CreateAction,-")*|PrimitiveType|*Optional parameter:* The node identifier, defaults to the node property of the `Entity`<br>To insert an existing entity with key property `ID` as a new node with server-determined node identifier, provide the parameter `"Entity": {"ID": "..."}` and omit `Node`.
[Parent](./Hierarchy.xml#L271:~:text=<Action%20Name="-,Template_CreateAction,-")|PrimitiveType?|Node identifier of the new node's parent (null if the new node shall be a root)
[SiblingRank](./Hierarchy.xml#L274:~:text=<Action%20Name="-,Template_CreateAction,-")|Int64?|Optional integer rank of the new node among its siblings
[&rarr;](./Hierarchy.xml#L277:~:text=<Action%20Name="-,Template_CreateAction,-")|EntityType|The new node


<a name="Template_MoveAction"></a>
### [Template_MoveAction](./Hierarchy.xml#L281:~:text=<Action%20Name="-,Template_MoveAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that move a node to a new parent and are named in [`RecursiveHierarchy/MoveAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[HierarchyNodes](./Hierarchy.xml#L284:~:text=<Action%20Name="-,Template_MoveAction,-")**|\[EntityType\]|**Binding parameter**
[HierarchyQualifier](./Hierarchy.xml#L285:~:text=<Action%20Name="-,Template_MoveAction,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[Node](./Hierarchy.xml#L286:~:text=<Action%20Name="-,Template_MoveAction,-")|PrimitiveType|Node identifier of the node to be moved
[Parent](./Hierarchy.xml#L289:~:text=<Action%20Name="-,Template_MoveAction,-")|PrimitiveType?|Node identifier of the node's new parent (null if the node shall become a root)
*[KeepParents](./Hierarchy.xml#L292:~:text=<Action%20Name="-,Template_MoveAction,-")*|Boolean|*Optional parameter:* Whether the current parents of the node shall be kept in addition to the new parent
*[RemoveParent](./Hierarchy.xml#L300:~:text=<Action%20Name="-,Template_MoveAction,-")*|PrimitiveType?|*Optional parameter:* Node identifier of a parent from which the node shall be removed (null if the node shall no longer be a root)<br>This parameter is ignored if `KeepParents` is true. Otherwise, for a node with only one parent, it defaults to that parent's node identifier.
[SiblingRank](./Hierarchy.xml#L310:~:text=<Action%20Name="-,Template_MoveAction,-")|Int64?|Optional integer rank of the node among its siblings under the new parent
[&rarr;](./Hierarchy.xml#L313:~:text=<Action%20Name="-,Template_MoveAction,-")|EntityType|The node with new parents


<a name="Template_RemoveAction"></a>
### [Template_RemoveAction](./Hierarchy.xml#L317:~:text=<Action%20Name="-,Template_RemoveAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that remove a node from a parent and are named in [`RecursiveHierarchy/RemoveAction`](#RecursiveHierarchyType)

When a node is removed from its last parent or has no parents and ceases being a root,
          the entity is not deleted but its node property is set to null. This removes the node from the recursive hierarchy.

Parameter|Type|Description
:--------|:---|:----------
**[HierarchyNodes](./Hierarchy.xml#L324:~:text=<Action%20Name="-,Template_RemoveAction,-")**|\[EntityType\]|**Binding parameter**
[HierarchyQualifier](./Hierarchy.xml#L325:~:text=<Action%20Name="-,Template_RemoveAction,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[Node](./Hierarchy.xml#L326:~:text=<Action%20Name="-,Template_RemoveAction,-")|PrimitiveType|Node identifier of the node to be removed from its parent
[RemoveParent](./Hierarchy.xml#L329:~:text=<Action%20Name="-,Template_RemoveAction,-")|PrimitiveType?|Node identifier of a parent from which the node shall be removed (null if the node shall no longer be a root)
[&rarr;](./Hierarchy.xml#L332:~:text=<Action%20Name="-,Template_RemoveAction,-")|EntityType|The node with remaining parents or the entity after removal from the recursive hierarchy



## Functions

<a name="TopLevels"></a>
### [TopLevels](./Hierarchy.xml#L191:~:text=<Function%20Name="-,TopLevels,-") *([Experimental](Common.md#Experimental))*

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
**[InputSet](./Hierarchy.xml#L204:~:text=<Function%20Name="-,TopLevels,-")**|\[EntityType\]|**Binding parameter**
[HierarchyNodes](./Hierarchy.xml#L205:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|A collection, given through a `$root` expression
[HierarchyQualifier](./Hierarchy.xml#L208:~:text=<Function%20Name="-,TopLevels,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[NodeProperty](./Hierarchy.xml#L209:~:text=<Function%20Name="-,TopLevels,-")|String|Property path to the node identifier, evaluated relative to the binding parameter
[Levels](./Hierarchy.xml#L212:~:text=<Function%20Name="-,TopLevels,-")|Int64|The number n of levels to be output
*[Expand](./Hierarchy.xml#L215:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be expanded
*[Show](./Hierarchy.xml#L225:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be shown
*[Collapse](./Hierarchy.xml#L235:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be collapsed
[&rarr;](./Hierarchy.xml#L245:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|


<a name="RecursiveHierarchyType"></a>
## [RecursiveHierarchyType](./Hierarchy.xml#L46:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *([Experimental](Common.md#Experimental))*


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
The template actions themselves cannot be invoked.


Property|Type|Description
:-------|:---|:----------
[ExternalKeyProperty](./Hierarchy.xml#L90:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|String property holding the human-readable key value for a node<br>If a `NodeTypeProperty` exists, the external key is unique only in combination with it. Or the external key can coincide with the [`Aggregation.RecursiveHierarchy/NodeProperty`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchyType).
[NodeTypeProperty](./Hierarchy.xml#L97:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|String property holding the type of a node<br>In a recursive hierarchy with mixed types, nodes can <br>- have a type-specific (navigation) property whose name is the node type or <br>- be represented by entities of different subtypes of a common entity type that is annotated with the `RecursiveHierarchy` annotation. The qualified name of the subtype is the node type.
[ChildCountProperty](./Hierarchy.xml#L106:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of children a node has in the unlimited hierarchy
[DescendantCountProperty](./Hierarchy.xml#L109:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants a node has in the unlimited hierarchy
[LimitedDescendantCountProperty](./Hierarchy.xml#L112:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants a node has in the limited hierarchy
[DrillStateProperty](./Hierarchy.xml#L115:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|String property holding the drill state of a node<br>Possible drill states are: <br>- `expanded` if a node has children in the limited hierarchy <br>- `collapsed` if a node has children in the unlimited hierarchy but not in the limited hierarchy <br>- `leaf` if a node has no children in the unlimited hierarchy
[DistanceFromRootProperty](./Hierarchy.xml#L124:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of ancestors a node has in the limited hierarchy<br>This equals the number of ancestors in the sub-hierarchy as well as in the unlimited hierarchy.
[SiblingRankProperty](./Hierarchy.xml#L130:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes in the unlimited hierarchy with the same parent. The first sibling has rank 0.
[MatchedProperty](./Hierarchy.xml#L143:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Boolean property indicating [matching](#MatchCount) nodes
[MatchedDescendantCountProperty](./Hierarchy.xml#L146:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the the number of [matching](#MatchCount) descendants a node has in the unlimited hierarchy
[CreateAction](./Hierarchy.xml#L154:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that creates a new node, following [this template](#Template_CreateAction)
[MoveAction](./Hierarchy.xml#L157:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that moves a node to a new parent, following [this template](#Template_MoveAction)
[RemoveAction](./Hierarchy.xml#L160:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that removes a node from a parent, following [this template](#Template_RemoveAction)
