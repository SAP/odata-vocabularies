# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation designates properties that contain derived information.
[MatchCount](./Hierarchy.xml#L148:~:text=<Term%20Name="-,MatchCount,-") *([Experimental](Common.md#Experimental))*|Int64|<a name="MatchCount"></a>Instance annotation on the result of an `$apply` query option containing the number of matching nodes after hierarchical transformations<br>The service designates a subset of the `$apply` result as "matching nodes". This subset is the output set of the `filter` or `search` transformation that occurs as the fourth parameter of the last `ancestors` transformation or occurs nested into it.<br> This instance annotation is available if [`RecursiveHierarchy/MatchedProperty`](#RecursiveHierarchyType) and `RecursiveHierarchy/MatchedDescendantCountProperty` are also available.
[IsCreateAction](./Hierarchy.xml#L231:~:text=<Term%20Name="-,IsCreateAction,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsCreateAction"></a>Tags an action that creates a new node in a recursive hierarchy<br>The action MUST have the same signature as [this template](#Template_CreateAction), with `Edm.EntityType` replaced with the entity type on which the recursive hierarchy is defined. Parameters `HierarchyNodes` and `HierarchyQualifier` have the same meaning as for functions in the [`Aggregation`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html) vocabulary.
[IsMoveAction](./Hierarchy.xml#L258:~:text=<Term%20Name="-,IsMoveAction,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsMoveAction"></a>Tags an action that moves a node to a new parent in a recursive hierarchy<br>The action MUST have the same signature as [this template](#Template_MoveAction), with `Edm.EntityType` replaced with the entity type on which the recursive hierarchy is defined. Parameters `HierarchyNodes` and `HierarchyQualifier` have the same meaning as for functions in the [`Aggregation`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html) vocabulary.
[IsRemoveAction](./Hierarchy.xml#L303:~:text=<Term%20Name="-,IsRemoveAction,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsRemoveAction"></a>Tags an action that removes a node fom a parent in a recursive hierarchy<br>The action MUST have the same signature as [this template](#Template_RemoveAction), with `Edm.EntityType` replaced with the entity type on which the recursive hierarchy is defined. Parameters `HierarchyNodes` and `HierarchyQualifier` have the same meaning as for functions in the [`Aggregation`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html) vocabulary.


## Actions

<a name="Template_CreateAction"></a>
### [Template_CreateAction](./Hierarchy.xml#L240:~:text=<Action%20Name="-,Template_CreateAction,-")

Template for actions tagged with [`IsCreateAction`](#IsCreateAction), cannot be invoked

Parameter|Type|Description
:--------|:---|:----------
**[HierarchyNodes](./Hierarchy.xml#L242:~:text=<Action%20Name="-,Template_CreateAction,-")**|\[EntityType\]|**Binding parameter**
[HierarchyQualifier](./Hierarchy.xml#L243:~:text=<Action%20Name="-,Template_CreateAction,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[Entity](./Hierarchy.xml#L244:~:text=<Action%20Name="-,Template_CreateAction,-")|EntityType|The new entity to be created
[Parent](./Hierarchy.xml#L247:~:text=<Action%20Name="-,Template_CreateAction,-")|PrimitiveType?|Node identifier of the new node's parent (null if the new node shall be a root)
[SiblingRank](./Hierarchy.xml#L250:~:text=<Action%20Name="-,Template_CreateAction,-")|Int64?|Optional integer rank of the new node among its siblings
[&rarr;](./Hierarchy.xml#L253:~:text=<Action%20Name="-,Template_CreateAction,-")|EntityType|The new node


<a name="Template_MoveAction"></a>
### [Template_MoveAction](./Hierarchy.xml#L267:~:text=<Action%20Name="-,Template_MoveAction,-")

Template for actions tagged with [`IsMoveAction`](#IsMoveAction), cannot be invoked

Parameter|Type|Description
:--------|:---|:----------
**[HierarchyNodes](./Hierarchy.xml#L269:~:text=<Action%20Name="-,Template_MoveAction,-")**|\[EntityType\]|**Binding parameter**
[HierarchyQualifier](./Hierarchy.xml#L270:~:text=<Action%20Name="-,Template_MoveAction,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[Node](./Hierarchy.xml#L271:~:text=<Action%20Name="-,Template_MoveAction,-")|PrimitiveType|Node identifier of the node to be moved
[NewParent](./Hierarchy.xml#L274:~:text=<Action%20Name="-,Template_MoveAction,-")|PrimitiveType?|Node identifier of the node's new parent (null if the node shall become a root)
*[KeepParents](./Hierarchy.xml#L277:~:text=<Action%20Name="-,Template_MoveAction,-")*|Boolean|*Optional parameter:* Whether the current parents of the node shall be kept in addition to the new parent
*[RemoveParent](./Hierarchy.xml#L285:~:text=<Action%20Name="-,Template_MoveAction,-")*|PrimitiveType?|*Optional parameter:* Node identifier of a parent from which the node shall be removed (null if the node shall no longer be a root)<br>This parameter is ignored if `KeepParent` is true. Otherwise, for a node with only one parent, it defaults to its node identifier.
[SiblingRank](./Hierarchy.xml#L295:~:text=<Action%20Name="-,Template_MoveAction,-")|Int64?|Optional integer rank of the node among its siblings under the new parent
[&rarr;](./Hierarchy.xml#L298:~:text=<Action%20Name="-,Template_MoveAction,-")|EntityType|The node with new parents


<a name="Template_RemoveAction"></a>
### [Template_RemoveAction](./Hierarchy.xml#L312:~:text=<Action%20Name="-,Template_RemoveAction,-")

Template for actions tagged with [`IsRemoveAction`](#IsRemoveAction), cannot be invoked

To remove a node from its last parent, do not use this action.
          Instead, [move](#Template_MoveAction) the node to a root (with `"Parent": null`) or delete it entirely.

Parameter|Type|Description
:--------|:---|:----------
**[HierarchyNodes](./Hierarchy.xml#L318:~:text=<Action%20Name="-,Template_RemoveAction,-")**|\[EntityType\]|**Binding parameter**
[HierarchyQualifier](./Hierarchy.xml#L319:~:text=<Action%20Name="-,Template_RemoveAction,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[Node](./Hierarchy.xml#L320:~:text=<Action%20Name="-,Template_RemoveAction,-")|PrimitiveType|Node identifier of the node to be removed from its parent
[RemoveParent](./Hierarchy.xml#L323:~:text=<Action%20Name="-,Template_RemoveAction,-")|PrimitiveType|Node identifier of a parent from which the node shall be removed
[&rarr;](./Hierarchy.xml#L326:~:text=<Action%20Name="-,Template_RemoveAction,-")|EntityType|The node with remaining parents



## Functions

<a name="TopLevels"></a>
### [TopLevels](./Hierarchy.xml#L174:~:text=<Function%20Name="-,TopLevels,-") *([Experimental](Common.md#Experimental))*

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
**[InputSet](./Hierarchy.xml#L187:~:text=<Function%20Name="-,TopLevels,-")**|\[EntityType\]|**Binding parameter**
[HierarchyNodes](./Hierarchy.xml#L188:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|A collection, given through a `$root` expression
[HierarchyQualifier](./Hierarchy.xml#L191:~:text=<Function%20Name="-,TopLevels,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[NodeProperty](./Hierarchy.xml#L192:~:text=<Function%20Name="-,TopLevels,-")|String|Property path to the node identifier, evaluated relative to the binding parameter
[Levels](./Hierarchy.xml#L195:~:text=<Function%20Name="-,TopLevels,-")|Int64|The number n of levels to be output
*[Expand](./Hierarchy.xml#L198:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be expanded
*[Show](./Hierarchy.xml#L208:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be shown
*[Collapse](./Hierarchy.xml#L218:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be collapsed
[&rarr;](./Hierarchy.xml#L228:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|


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


Property|Type|Description
:-------|:---|:----------
[ExternalKeyProperty](./Hierarchy.xml#L82:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|String property holding the human-readable key value for a node<br>If a `NodeTypeProperty` exists, the external key is unique only in combination with it. Or the external key can coincide with the [`Aggregation.RecursiveHierarchy/NodeProperty`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchyType).
[NodeTypeProperty](./Hierarchy.xml#L89:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|String property holding the type of a node<br>In a recursive hierarchy with mixed types, nodes can <br>- have a type-specific (navigation) property whose name is the node type or <br>- be represented by entities of different subtypes of a common entity type that is annotated with the `RecursiveHierarchy` annotation. The qualified name of the subtype is the node type.
[ChildCountProperty](./Hierarchy.xml#L98:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of children a node has in the unlimited hierarchy
[DescendantCountProperty](./Hierarchy.xml#L101:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants a node has in the unlimited hierarchy
[LimitedDescendantCountProperty](./Hierarchy.xml#L104:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants a node has in the limited hierarchy
[DrillStateProperty](./Hierarchy.xml#L107:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|String property holding the drill state of a node<br>Possible drill states are: <br>- `expanded` if a node has children in the limited hierarchy <br>- `collapsed` if a node has children in the unlimited hierarchy but not in the limited hierarchy <br>- `leaf` if a node has no children in the unlimited hierarchy
[DistanceFromRootProperty](./Hierarchy.xml#L116:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of ancestors a node has in the limited hierarchy<br>This equals the number of ancestors in the sub-hierarchy as well as in the unlimited hierarchy.
[SiblingRankProperty](./Hierarchy.xml#L122:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes in the unlimited hierarchy with the same parent. The first sibling has rank 0.
[MatchedProperty](./Hierarchy.xml#L135:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Boolean property indicating [matching](#MatchCount) nodes
[MatchedDescendantCountProperty](./Hierarchy.xml#L138:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the the number of [matching](#MatchCount) descendants a node has in the unlimited hierarchy
