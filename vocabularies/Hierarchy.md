# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation designates properties that contain derived information.
[MatchCount](./Hierarchy.xml#L148:~:text=<Term%20Name="-,MatchCount,-") *([Experimental](Common.md#Experimental))*|Int64|<a name="MatchCount"></a>Instance annotation on the result of an `$apply` query option containing the number of matching nodes after hierarchical transformations<br>The service MAY designate a subset of the `$apply` result as "matching nodes". For requests following [this pattern](#RecursiveHierarchyType), this subset is the output set of the `filter` or `search` transformation that occurs as the fourth parameter of the last `ancestors` transformation or occurs nested into it.<br> For requests not following this pattern, the subset NEED NOT be defined.<br> This instance annotation is available if [`RecursiveHierarchy/MatchedProperty`](#RecursiveHierarchyType) and `RecursiveHierarchy/MatchedDescendantCountProperty` are also available.


## Functions

<a name="TopLevels"></a>
### [TopLevels](./Hierarchy.xml#L176:~:text=<Function%20Name="-,TopLevels,-") *([Experimental](Common.md#Experimental))*

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
**[InputSet](./Hierarchy.xml#L189:~:text=<Function%20Name="-,TopLevels,-")**|\[EntityType\]|**Binding parameter**
[HierarchyNodes](./Hierarchy.xml#L190:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|A collection, given through a `$root` expression
[HierarchyQualifier](./Hierarchy.xml#L193:~:text=<Function%20Name="-,TopLevels,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[NodeProperty](./Hierarchy.xml#L194:~:text=<Function%20Name="-,TopLevels,-")|String|Property path to the node identifier, evaluated relative to the binding parameter
*[Levels](./Hierarchy.xml#L197:~:text=<Function%20Name="-,TopLevels,-")*|Int64|*Optional parameter:* The number n of levels to be output, absent means all levels
*[Expand](./Hierarchy.xml#L204:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be expanded
*[Show](./Hierarchy.xml#L210:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be shown
*[Collapse](./Hierarchy.xml#L216:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be collapsed
[&rarr;](./Hierarchy.xml#L222:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|


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
[DistanceFromRootProperty](./Hierarchy.xml#L116:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of ancestors a node has in the limited hierarchy (or the unlimited hierarchy, which amounts to the same)<br>This equals the number of ancestors in the sub-hierarchy, if the request involves one.
[SiblingRankProperty](./Hierarchy.xml#L122:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes in the unlimited hierarchy with the same parent. The first sibling has rank 0.
[MatchedProperty](./Hierarchy.xml#L135:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Boolean property indicating [matching](#MatchCount) nodes
[MatchedDescendantCountProperty](./Hierarchy.xml#L138:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the the number of [matching](#MatchCount) descendants a node has in the unlimited hierarchy
