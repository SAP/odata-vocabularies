# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](Hierarchy.xml#L41)|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Hierarchy-specific information in the result set of a hierarchical request<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this term defines derived information.
[RecursiveHierarchyActions](Hierarchy.xml#L208)|[RecursiveHierarchyActionsType](#RecursiveHierarchyActionsType)|<a name="RecursiveHierarchyActions"></a>Actions for maintaining the recursive hierarchy defined by the [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy)<br>When an annotation with this term is present, the [`ParentNavigationProperty`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchyType) in the base term must not have a collection-valued segment prior to its last segment.
[MatchCount](Hierarchy.xml#L261) *([Experimental](Common.md#Experimental))*|Int64|<a name="MatchCount"></a>Instance annotation on the result of an `$apply` query option containing the number of matching nodes after hierarchical transformations<br>The service MAY designate a subset of the `$apply` result as "matching nodes". For requests following the pattern described [here](#RecursiveHierarchyType), this subset is the output set of the `filter` or `search` transformation that occurs as the fourth parameter of the last `ancestors` transformation or occurs nested into it.<br>For requests not following this pattern, the subset NEED NOT be defined.<br>This instance annotation is available if [`RecursiveHierarchy/Matched`](#RecursiveHierarchyType) and [`RecursiveHierarchy/MatchedDescendantCount`](#RecursiveHierarchyType) are also available.
[RecursiveHierarchySupported](Hierarchy.xml#L343) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="RecursiveHierarchySupported"></a>Whether the annotated collection acts as a [`RecursiveHierarchy`](#RecursiveHierarchy) with the given qualifier<br>This tag is applied to a collection with the same qualifier as the [`RecursiveHierarchy`](#RecursiveHierarchy) term which is applied to its entity type. The recursive hierarchy can then only be addressed through a collection where this tag is true.


## Actions

<a name="Template_ChangeNextSiblingAction"></a>
### [Template_ChangeNextSiblingAction](Hierarchy.xml#L353)

Template for actions that move a node among its siblings and are named in [`RecursiveHierarchyActions/ChangeNextSiblingAction`](#RecursiveHierarchyActionsType)

Parameter|Type|Description
:--------|:---|:----------
**[Node](Hierarchy.xml#L355)**|EntityType|**Binding parameter:** The node T to be moved
[NextSibling](Hierarchy.xml#L358)|ComplexType?|Key of the node's new next sibling S (null if the node shall become the last sibling)<br>This parameter has properties with the same names, types, and type facets as the key properties of the entity type. next(T) = S after the action. If R is a node with next(R) = S before the action, then next(R) = T after the action, even if S = null. It is an error if S has a different parent than T.


<a name="Template_CopyAction"></a>
### [Template_CopyAction](Hierarchy.xml#L385)

Template for actions that copy a node and its descendants and are named in [`RecursiveHierarchyActions/CopyAction`](#RecursiveHierarchyActionsType)

The action copies a node A and its descendants and the parent navigation properties between them
so that the copied nodes form a sub-hierarchy. It returns the copy of A. No assumption is made about the parent of the copy of A.

To specify the parent of the copy of A, the action invocation MUST be followed
by a PATCH that binds its parent navigation property (for example, `Superordinate` in the following JSON batch request)
to the desired parent B or to `null`.
```json
{"requests": [{
  "id": "1",
  "method": "post",
  "url": "HierarchyDirectory(1)/Nodes('A')/CopyAction"
}, {
  "id": "2",
  "dependsOn": ["1"],
  "method": "patch",
  "url": "$1",
  "body": {
    "Superordinate@odata.bind": "Nodes('B')"
  }
}]}
```
If a certain position of the copy of A among its new siblings is desired, an additional invocation of
[`ChangeNextSiblingAction`](#Template_ChangeNextSiblingAction) can be included in the batch request.

Parameter|Type|Description
:--------|:---|:----------
**[Node](Hierarchy.xml#L412)**|EntityType|**Binding parameter:** The node to be copied
[&rarr;](Hierarchy.xml#L415)|EntityType|The copied node



## Functions

<a name="TopLevels"></a>
### [TopLevels](Hierarchy.xml#L291)

Returns the first n levels of a hierarchical collection in preorder with individual nodes expanded or collapsed

This function can be used as a transformation whose input set has a recursive hierarchy
          defined by an [`Aggregation.RecursiveHierarchy`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy)
          annotation on the entity type of the `HierarchyNodes`.
          (Its binding parameter is the unlimited hierarchy as defined [here](#RecursiveHierarchyType),
          its output is the limited hierarchy.) The output initially contains the nodes with less than n ancestors
          in the hierarchical collection given in the binding parameter.
          Then individual nodes are expanded, shown or collapsed in the output, which extends or reduces the limited hierarchy.
          Finally the output is sorted in preorder as with the `traverse` transformation with the hierarchy-specific
          definition of start nodes.

Parameter|Type|Description
:--------|:---|:----------
**[InputSet](Hierarchy.xml#L304)**|\[EntityType\]|**Binding parameter**
[HierarchyNodes](Hierarchy.xml#L305)|\[EntityType\]|A collection, given through a `$root` expression
[HierarchyQualifier](Hierarchy.xml#L308)|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[NodeProperty](Hierarchy.xml#L309)|String|Property path to the node identifier, evaluated relative to the binding parameter
*[Levels](Hierarchy.xml#L312)*|Int64|*Optional parameter:* The number n of levels to be output, absent means all levels
*[Show](Hierarchy.xml#L319)*|\[String\]|*Optional parameter:* Identifiers of nodes to be shown
*[ExpandLevels](Hierarchy.xml#L325)*|\[[TopLevelsExpandType](#TopLevelsExpandType)\]|*Optional parameter:* Nodes to be expanded
[&rarr;](Hierarchy.xml#L331)|\[EntityType\]|


<a name="HierarchyType"></a>
## [HierarchyType](Hierarchy.xml#L49)


The properties in this complex type contain information about
          an entry in the result set of a request with multiple aggregation levels, some of which are expanded.
          These properties also serve in the derived [`RecursiveHierarchyType`](#RecursiveHierarchyType)
          with their definitions rephrased in the concept of recursive hierarchies.

**Derived Types:**
- [RecursiveHierarchyType](#RecursiveHierarchyType)

Property|Type|Description
:-------|:---|:----------
[LimitedDescendantCount](Hierarchy.xml#L56)|Int64?|Number of entries from finer-grained aggregation levels that are expanded
[DrillState](Hierarchy.xml#L59)|String?|Drill state of an entry<dl>Allowed Values:<dt>[expanded](Hierarchy.xml#L63)<dd>The entry precedes entries from finer-grained aggregation levels<dt>[subtotal](Hierarchy.xml#L67) *([Experimental](Common.md#Experimental))*<dd>The entry follows entries from finer-grained aggregation levels and contains subtotals<dt>[leaf](Hierarchy.xml#L72)<dd>The entry belongs to the finest-grained aggregation level<dt>[collapsed](Hierarchy.xml#L76)<dd>The entry belongs to an aggregation level coarser than the finest-grained but is neither expanded nor subtotal</dl>
[DistanceFromRoot](Hierarchy.xml#L83)|Int64?|Position of the current aggregation level in the list of all aggregation levels

<a name="RecursiveHierarchyType"></a>
## [RecursiveHierarchyType](Hierarchy.xml#L87): [HierarchyType](#HierarchyType)


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
[ExternalKey](Hierarchy.xml#L123) *([Experimental](Common.md#Experimental))*|String?|Human-readable key value for a node<br>If a `NodeType` exists, the external key is unique only in combination with it. Or the external key can coincide with the [`Aggregation.RecursiveHierarchy/NodeProperty`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchyType).
[NodeType](Hierarchy.xml#L131) *([Experimental](Common.md#Experimental))*|String?|Type of a node<br><p>In a recursive hierarchy with mixed types, nodes can</p> <ul> <li>have a type-specific (navigation) property whose name is the node type or</li> <li>be represented by entities of different subtypes of a common entity type that is</li> </ul> <p>annotated with the <code>RecursiveHierarchy</code> annotation. The qualified name of the subtype is the node type.</p> 
[LimitedDescendantCount](Hierarchy.xml#L142)|Int64?|Number of descendants a node has in the limited hierarchy
[DrillState](Hierarchy.xml#L145)|String?|Drill state of an occurrence of a node<dl>Allowed Values:<dt>[expanded](Hierarchy.xml#L149)<dd>The node has children in the limited hierarchy<dt>[collapsed](Hierarchy.xml#L153)<dd>The node has children in the unlimited hierarchy but not in the limited hierarchy<dt>[leaf](Hierarchy.xml#L157)<dd>The node has no children in the unlimited hierarchy</dl>
[DistanceFromRoot](Hierarchy.xml#L164)|Int64?|Number of ancestors an occurrence of a node has in the limited hierarchy<br>This equals the number of ancestors in the sub-hierarchy, if the request involves a sub-hierarchy.
[ChildCount](Hierarchy.xml#L170) *([Experimental](Common.md#Experimental))*|Int64?|Number of children a node has in the unlimited hierarchy
[DescendantCount](Hierarchy.xml#L174) *([Experimental](Common.md#Experimental))*|Int64?|Number of descendants a node has in the unlimited hierarchy
[LimitedRank](Hierarchy.xml#L178)|Int64?|Rank of a node in the limited hierarchy in preorder or postorder<br>The rank of a node is the index of the node in the sequence of nodes created from a preorder or postorder traversal of the limited hierarchy. The first node in the traversal has rank 0.
[SiblingRank](Hierarchy.xml#L185) *([Experimental](Common.md#Experimental))*|Int64?|Sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes in the unlimited hierarchy with the same parent. The first sibling has rank 0.
[Matched](Hierarchy.xml#L193) *([Experimental](Common.md#Experimental))*|Boolean?|Flag indicating [matching](#MatchCount) nodes
[MatchedDescendantCount](Hierarchy.xml#L197) *([Experimental](Common.md#Experimental))*|Int64?|Number of [matching](#MatchCount) descendants a node has in the unlimited hierarchy

<a name="RecursiveHierarchyActionsType"></a>
## [RecursiveHierarchyActionsType](Hierarchy.xml#L215)


The qualified action names identify actions for maintaining nodes in the recursive hierarchy,
which are specific for the given annotation qualifier.
These actions MUST have the same signature as the template actions linked below, with
`Edm.EntityType` replaced with the entity type on which the recursive hierarchy is defined.
The resource path of the binding parameter MUST traverse the hierarchy collection,
including any hierarchy directory. If the resource path contains a Content ID reference to an earlier request,
the hierarchy directory MUST be determined from the resource path of that request.
```json
{"requests": [{
  "id": "1",
  "method": "post",
  "url": "HierarchyDirectory(1)/Nodes",
  "body": {
    "Name": "child of A",
    "Superordinate@odata.bind": "Nodes('A')"
  }
}, {
  "id": "2",
  "dependsOn": ["1"],
  "method": "post",
  "url": "$1/Hierarchy.ChangeNextSiblingAction",
  "body": {
    "NextSibling": null
  }
}]}
```
The template actions themselves cannot be invoked.

Property|Type|Description
:-------|:---|:----------
[ChangeNextSiblingAction](Hierarchy.xml#L245)|[QualifiedName?](Common.md#QualifiedName)|Action that moves a node among its siblings, following [this template](#Template_ChangeNextSiblingAction)
[ChangeSiblingForRootsSupported](Hierarchy.xml#L253)|Boolean|Whether the sibling of a root can be changed
[CopyAction](Hierarchy.xml#L256)|[QualifiedName?](Common.md#QualifiedName)|Action that copies a node and its descendants, following [this template](#Template_CopyAction)

<a name="TopLevelsExpandType"></a>
## [TopLevelsExpandType](Hierarchy.xml#L333)
Information about nodes to be expanded

Property|Type|Description
:-------|:---|:----------
[NodeID](Hierarchy.xml#L335)|String|Identifier of a node to be expanded
[Levels](Hierarchy.xml#L338)|Int64?|Number of levels to be expanded, null means all levels, 0 means collapsed
