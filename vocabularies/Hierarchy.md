# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation designates properties that contain derived information.
[MatchCount](./Hierarchy.xml#L127:~:text=<Term%20Name="-,MatchCount,-") *([Experimental](Common.md#Experimental))*|Int64?|<a name="MatchCount"></a>Instance annotation on the result of an `$apply` query option containing the number of matching nodes after hierarchical transformations<br>The service designates a subset of the `$apply` result as "matching nodes" derived from the start nodes of `ancestors` and `descendants` as determined by the transformations in their fourth parameters. This subset is typically the output set of a `filter` or `search` transformation that evaluates node attributes other than the node value.<br>This instance annotation is available if [`RecursiveHierarchy/MatchedProperty`](#RecursiveHierarchyType) and `RecursiveHierarchy/MatchedDescendantCountProperty` are also available.


## Functions

### <a name="TopLevels"></a>[TopLevels](./Hierarchy.xml#L153:~:text=<Function%20Name="-,TopLevels,-") *([Experimental](Common.md#Experimental))*

Returns the first n levels of a hierarchical collection in preorder

This function can be used as a transformation after hierarchical transformations that use a recursive hierarchy
          defined by an [`Aggregation.RecursiveHierarchy`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy)
          annotation on the entity type of the `HierarchyNodes`. If m is the minimal distance from root in the hierarchical collection
          given in the binding parameter, the output contains the nodes with m ≤ distance from root < m+n.
          The output is sorted in preorder, preserving the relative order of siblings.

Parameter|Type|Description
:--------|:---|:----------
**[InputSet](./Hierarchy.xml#L163:~:text=<Function%20Name="-,TopLevels,-")**|\[EntityType\]|**Binding parameter**
[HierarchyNodes](./Hierarchy.xml#L164:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|
[HierarchyQualifier](./Hierarchy.xml#L165:~:text=<Function%20Name="-,TopLevels,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[NodeProperty](./Hierarchy.xml#L166:~:text=<Function%20Name="-,TopLevels,-")|String|Property path to the node value, evaluated relative to the binding parameter
[Levels](./Hierarchy.xml#L169:~:text=<Function%20Name="-,TopLevels,-")|Int64|The number n of levels to be output
[&rarr;](./Hierarchy.xml#L172:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|


## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](./Hierarchy.xml#L46:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *([Experimental](Common.md#Experimental))*


The nullable property paths in this complex type refer to properties of an entity type that contain
information about a node in a recursive hierarchy. When hierarchical transformations
are applied whose first parameter has the annotated entity type
and whose second parameter is the annotation qualifier,
then these properties are derived for each node in the result set.

For requests like
```
SalesOrganizations?$apply=
descendants(..., filter(ID eq 'US'), keep start)
/ancestors(..., filter(contains(Name, 'New York'), 3))
/top(10)
```
the following collections are distinguished:
- sub-hierarchy: the output set of a `descendants` transformation filtering a single node value:
  US sales organizations (`descendants(..., filter(ID eq 'US'), keep start)`)
- [matching](#MatchCount) nodes: US sales organizations with "New York" in their name
  (output set of `filter` transformation in `ancestors`)
- unlimited hierarchy: the output set of the last `ancestors`, `descendants` or `traverse` transformation
  disregarding numeric fifth parameters:
  (`descendants(..., filter(ID eq 'US'), keep start)/ancestors(..., filter(contains(Name, 'New York')))`)
- limited hierarchy: the output set of the last `ancestors`, `descendants`, `traverse` or
  [`Hierarchy.TopLevels`](#TopLevels) transformation:
  (`descendants(..., filter(ID eq 'US'), keep start)/ancestors(..., filter(contains(Name, 'New York')), 3)`)

Property|Type|Description
:-------|:---|:----------
[ExternalKeyProperty](./Hierarchy.xml#L74:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|Property holding the external key value for a node
[NodeTypeProperty](./Hierarchy.xml#L77:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the type of a node<br>In a recursive hierarchy with mixed types, nodes of different type can have different properties and be represented by entities of different subtypes of a commmon entity type. The common entity type is the target of the `RecursiveHierarchy` annotation.
[ChildCountProperty](./Hierarchy.xml#L85:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of children a node has in the unlimited hierarchy
[DescendantCountProperty](./Hierarchy.xml#L88:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants a node has in the unlimited hierarchy
[LimitedDescendantCountProperty](./Hierarchy.xml#L91:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants a node has in the limited hierarchy
[DrillStateProperty](./Hierarchy.xml#L94:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|String property holding the drill state of a node<br>Possible drill states are: <br>- `expanded` if a node has children in the limited hierarchy <br>- `collapsed` if a node has children in the unlimited hierarchy but not in the limited hierarchy <br>- `leaf` if a node has no children in the unlimited hierarchy
[DistanceFromRootProperty](./Hierarchy.xml#L103:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of ancestors a node has in the (sub-)hierarchy
[SiblingRankProperty](./Hierarchy.xml#L106:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes in the unlimited hierarchy with the same parent. The first sibling has rank 0. Updating this property means changing the relative sibling order.
[MatchedProperty](./Hierarchy.xml#L114:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Boolean property indicating [matching](#MatchCount) nodes
[MatchedDescendantCountProperty](./Hierarchy.xml#L117:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the the number of [matching](#MatchCount) descendants a node has in the unlimited hierarchy
