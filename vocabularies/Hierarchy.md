# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation designates properties that contain derived information and actions for manipulating the hierarchy.
[MatchCount](./Hierarchy.xml#L169:~:text=<Term%20Name="-,MatchCount,-") *([Experimental](Common.md#Experimental))*|Int64|<a name="MatchCount"></a>Instance annotation on the result of a `$apply` query option containing the number of matching nodes after hierarchical transformations<br>The service designates a subset of the `$apply` result as "matching nodes". This subset is the output set of the `filter` or `search` transformation that occurs as the fourth parameter of the last `ancestors` transformation or occurs nested into it.<br> This instance annotation is available if [`RecursiveHierarchy/MatchedProperty`](#RecursiveHierarchyType) and `RecursiveHierarchy/MatchedDescendantCountProperty` are also available.


## Actions

<a name="Template_ChangeNextSiblingAction"></a>
### [Template_ChangeNextSiblingAction](./Hierarchy.xml#L244:~:text=<Action%20Name="-,Template_ChangeNextSiblingAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that move a node among its siblings and are named in [`RecursiveHierarchy/ChangeNextSiblingAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[Node](./Hierarchy.xml#L247:~:text=<Action%20Name="-,Template_ChangeNextSiblingAction,-")**|EntityType|**Binding parameter:** The node to be moved
[NextSibling](./Hierarchy.xml#L250:~:text=<Action%20Name="-,Template_ChangeNextSiblingAction,-")|EntityType?|Key of the node's new next sibling (null if the node shall become the last sibling)<br>It is an error if the `NextSibling` has a different parent than the `Node`.


<a name="Template_ChangePreviousSiblingAction"></a>
### [Template_ChangePreviousSiblingAction](./Hierarchy.xml#L257:~:text=<Action%20Name="-,Template_ChangePreviousSiblingAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that move a node before a newly-created sibling and are named in [`RecursiveHierarchy/ChangePreviousSiblingAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[NextSibling](./Hierarchy.xml#L260:~:text=<Action%20Name="-,Template_ChangePreviousSiblingAction,-")**|EntityType|**Binding parameter:** The node's new next sibling
[Node](./Hierarchy.xml#L263:~:text=<Action%20Name="-,Template_ChangePreviousSiblingAction,-")|EntityType|Key of the node to be moved<br>It is an error if the `Node` has a different parent than the `NextSibling`.


<a name="Template_InsertAction"></a>
### [Template_InsertAction](./Hierarchy.xml#L270:~:text=<Action%20Name="-,Template_InsertAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that insert a root into a recursive hierarchy and are named in [`RecursiveHierarchy/InsertAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[Node](./Hierarchy.xml#L273:~:text=<Action%20Name="-,Template_InsertAction,-")**|EntityType|**Binding parameter:** The new root to be inserted


<a name="Template_RemoveAction"></a>
### [Template_RemoveAction](./Hierarchy.xml#L277:~:text=<Action%20Name="-,Template_RemoveAction,-") *([Experimental](Common.md#Experimental))*

Template for actions that remove a node from a recursive hierarchy and are named in [`RecursiveHierarchy/RemoveAction`](#RecursiveHierarchyType)

Parameter|Type|Description
:--------|:---|:----------
**[Node](./Hierarchy.xml#L280:~:text=<Action%20Name="-,Template_RemoveAction,-")**|EntityType|**Binding parameter:** The leaf to be removed



## Functions

<a name="TopLevels"></a>
### [TopLevels](./Hierarchy.xml#L195:~:text=<Function%20Name="-,TopLevels,-") *([Experimental](Common.md#Experimental))*

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
**[InputSet](./Hierarchy.xml#L208:~:text=<Function%20Name="-,TopLevels,-")**|\[EntityType\]|**Binding parameter**
[HierarchyNodes](./Hierarchy.xml#L209:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|A collection, given through a `$root` expression
[HierarchyQualifier](./Hierarchy.xml#L212:~:text=<Function%20Name="-,TopLevels,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[NodeProperty](./Hierarchy.xml#L213:~:text=<Function%20Name="-,TopLevels,-")|String|Property path to the node identifier, evaluated relative to the binding parameter
*[Levels](./Hierarchy.xml#L216:~:text=<Function%20Name="-,TopLevels,-")*|Int64|*Optional parameter:* The number n of levels to be output, absent means all levels
*[Expand](./Hierarchy.xml#L223:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be expanded
*[Show](./Hierarchy.xml#L229:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be shown
*[Collapse](./Hierarchy.xml#L235:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be collapsed
[&rarr;](./Hierarchy.xml#L241:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|


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

The qualified action names identify actions for maintaining nodes in the recursive hierarchy,
which are specific for the given annotation qualifier.
These actions MUST have the same signature as the template actions linked below, with
`Edm.EntityType` replaced with the entity type on which the recursive hierarchy is defined.
In parameters that are defined as "Key of …", only the key properties are relevant.

The template actions themselves cannot be invoked.


Property|Type|Description
:-------|:---|:----------
[ExternalKeyProperty](./Hierarchy.xml#L91:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|String property holding the human-readable key value for a node<br>If a `NodeTypeProperty` exists, the external key is unique only in combination with it. Or the external key can coincide with the [`Aggregation.RecursiveHierarchy/NodeProperty`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchyType).
[NodeTypeProperty](./Hierarchy.xml#L98:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|String property holding the type of a node<br>In a recursive hierarchy with mixed types, nodes can <br>- have a type-specific (navigation) property whose name is the node type or <br>- be represented by entities of different subtypes of a common entity type that is annotated with the `RecursiveHierarchy` annotation. The qualified name of the subtype is the node type.
[ChildCountProperty](./Hierarchy.xml#L107:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of children a node has in the unlimited hierarchy
[DescendantCountProperty](./Hierarchy.xml#L110:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants a node has in the unlimited hierarchy
[LimitedDescendantCountProperty](./Hierarchy.xml#L113:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants a node has in the limited hierarchy
[DrillStateProperty](./Hierarchy.xml#L116:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|String property holding the drill state of a node<br>Possible drill states are: <br>- `expanded` if a node has children in the limited hierarchy <br>- `collapsed` if a node has children in the unlimited hierarchy but not in the limited hierarchy <br>- `leaf` if a node has no children in the unlimited hierarchy
[DistanceFromRootProperty](./Hierarchy.xml#L125:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of ancestors a node has in the limited hierarchy<br>This equals the number of ancestors in the sub-hierarchy as well as in the unlimited hierarchy.
[SiblingRankProperty](./Hierarchy.xml#L131:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes in the unlimited hierarchy with the same parent. The first sibling has rank 0.
[MatchedProperty](./Hierarchy.xml#L144:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Boolean property indicating [matching](#MatchCount) nodes
[MatchedDescendantCountProperty](./Hierarchy.xml#L147:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the the number of [matching](#MatchCount) descendants a node has in the unlimited hierarchy
[ChangeNextSiblingAction](./Hierarchy.xml#L155:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that moves a node among its siblings, following [this template](#Template_ChangeNextSiblingAction)
[ChangePreviousSiblingAction](./Hierarchy.xml#L158:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that moves a node before a newly-created sibling, following [this template](#Template_ChangePreviousSiblingAction)
[InsertAction](./Hierarchy.xml#L161:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that inserts a new root into a recursive hierarchy, following [this template](#Template_InsertAction)
[RemoveAction](./Hierarchy.xml#L164:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[QualifiedActionName?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#QualifiedActionName)|Action that removes a node from a recursive hierarchy, following [this template](#Template_RemoveAction)
