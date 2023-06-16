# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Hierarchy-specific information in the result set of a hierarchical request<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation contains derived information.
[MatchCount](./Hierarchy.xml#L138:~:text=<Term%20Name="-,MatchCount,-") *([Experimental](Common.md#Experimental))*|Int64|<a name="MatchCount"></a>Instance annotation on the result of an `$apply` query option containing the number of matching nodes after hierarchical transformations<br>The service designates a subset of the `$apply` result as "matching nodes". This subset is the output set of the `filter` or `search` transformation that occurs as the fourth parameter of the last `ancestors` transformation or occurs nested into it.


## Functions

<a name="TopLevels"></a>
### [TopLevels](./Hierarchy.xml#L162:~:text=<Function%20Name="-,TopLevels,-") *([Experimental](Common.md#Experimental))*

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
**[InputSet](./Hierarchy.xml#L175:~:text=<Function%20Name="-,TopLevels,-")**|\[EntityType\]|**Binding parameter**
[HierarchyNodes](./Hierarchy.xml#L176:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|A collection, given through a `$root` expression
[HierarchyQualifier](./Hierarchy.xml#L179:~:text=<Function%20Name="-,TopLevels,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[NodeProperty](./Hierarchy.xml#L180:~:text=<Function%20Name="-,TopLevels,-")|String|Property path to the node identifier, evaluated relative to the binding parameter
*[Levels](./Hierarchy.xml#L183:~:text=<Function%20Name="-,TopLevels,-")*|Int64|*Optional parameter:* The number n of levels to be output, absent means all levels
*[Expand](./Hierarchy.xml#L190:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be expanded
*[Show](./Hierarchy.xml#L196:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be shown
*[Collapse](./Hierarchy.xml#L202:~:text=<Function%20Name="-,TopLevels,-")*|\[String\]|*Optional parameter:* Identifiers of nodes to be collapsed
[&rarr;](./Hierarchy.xml#L208:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|


<a name="RecursiveHierarchyType"></a>
## [RecursiveHierarchyType](./Hierarchy.xml#L47:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *([Experimental](Common.md#Experimental))*


The properties in this complex type contain information about
a node in the result set of a hierarchical request. If the same node occurs multiple times
with different parents, certain properties may differ between the occurrences.
The properties are derived when hierarchical transformations
are applied whose first parameter has the annotated entity type
and whose second parameter is the annotation qualifier.

For requests like
```
SalesOrganizations?$apply=
descendants(..., ID, filter(ID eq 'US'), keep start)
/ancestors(..., ID, filter(contains(Name, 'New York')), keep start)
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
[ExternalKey](./Hierarchy.xml#L83:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|String?|Human-readable key value for a node<br>If a `NodeType` exists, the external key is unique only in combination with it. Or the external key can coincide with the [`Aggregation.RecursiveHierarchy/NodeProperty`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchyType).
[NodeType](./Hierarchy.xml#L90:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|String?|Type of a node<br>In a recursive hierarchy with mixed types, nodes can <br>- have a type-specific (navigation) property whose name is the node type or <br>- be represented by entities of different subtypes of a common entity type that is annotated with the `RecursiveHierarchy` annotation. The qualified name of the subtype is the node type.
[ChildCount](./Hierarchy.xml#L99:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|Number of children a node has in the unlimited hierarchy
[DescendantCount](./Hierarchy.xml#L102:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|Number of descendants a node has in the unlimited hierarchy
[LimitedDescendantCount](./Hierarchy.xml#L105:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|Number of descendants a node has in the limited hierarchy
[DrillState](./Hierarchy.xml#L108:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|String?|Drill state of an occurrence of a node<br>Possible drill states are: <br>- `expanded` if a node has children in the limited hierarchy <br>- `collapsed` if a node has children in the unlimited hierarchy but not in the limited hierarchy <br>- `leaf` if a node has no children in the unlimited hierarchy
[DistanceFromRoot](./Hierarchy.xml#L117:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|Number of ancestors an occurrence of a node has in the limited hierarchy<br>This equals the number of ancestors in the sub-hierarchy as well as in the unlimited hierarchy.
[SiblingRank](./Hierarchy.xml#L123:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|Sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes in the unlimited hierarchy with the same parent. The first sibling has rank 0.
[Matched](./Hierarchy.xml#L130:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Boolean?|Flag indicating [matching](#MatchCount) nodes
[MatchedDescendantCount](./Hierarchy.xml#L133:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|Number of [matching](#MatchCount) descendants a node has in the unlimited hierarchy
