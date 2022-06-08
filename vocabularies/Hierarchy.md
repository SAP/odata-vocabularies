# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation designates properties that contain derived information.
[StartNodeCounts](./Hierarchy.xml#L111:~:text=<Term%20Name="-,StartNodeCounts,-")|\[Int64\]|<a name="StartNodeCounts"></a>Instance annotation on the result of an `$apply` query option containing the number of start nodes for each `ancestors` or `descendants` transformation<br>The annotation value is an integer collection whose n-th entry is the number of start nodes determined for the n-th `ancestors` or `descendants` transformation in the order in which they occur in the `$apply` query option. Start nodes are determined by the fourth parameter of an `ancestors` or `descendants` transformation.

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](./Hierarchy.xml#L46:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *([Experimental](Common.md#Experimental))*


The nullable property paths in this complex type refer to properties of an entity type that contain
information about a node in a recursive hierarchy. When a resource of the annotated entity type is requested
and hierarchy-related transformations (`ancestors`, `descendants`, `traverse`) are applied to it
with the resource as first parameter and the annotation qualifier as second parameter,
these properties are derived for each node, that is, for each instance in the resulting collection.
They are not affected by subsequent transformations or query options (like `$filter` or `$top`).

If the first parameter (`SalesOrganizations`) of `ancestors`, `descendants` or `traverse` differs from
the requested resource (`Sales`), as in
```
Sales?$apply=ancestors(
  $root/SalesOrganizations,
  SalesOrgHierarchy,
  SalesOrganization/ID, ...)
```
no such properties are derived.

Property|Type|Description
:-------|:---|:----------
[ExternalKeyProperty](./Hierarchy.xml#L66:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|Property holding the external key value for a node
[NodeTypeProperty](./Hierarchy.xml#L69:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the type of a node<br>In a recursive hierarchy with mixed types, nodes of different type can have different properties and be represented by entities of different subtypes of a commmon entity type. The common entity type is the target of the `RecursiveHierarchy` annotation.
[DescendantCountProperty](./Hierarchy.xml#L77:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants of a node
[DrillStateProperty](./Hierarchy.xml#L80:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the drill state of a node<br>Possible drill states are: <br>- `expanded` if a node's children are included in the output set; <br>- `collapsed` if a node's children are not included in the output set; <br>- `leaf` if a node has no children in the requested resource.
[SiblingRankProperty](./Hierarchy.xml#L89:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes with the same parent. The first sibling has rank 0.
[PreorderRankProperty](./Hierarchy.xml#L93:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the preorder rank of a node<br>The preorder rank of a node expresses its position in the sequence of nodes created from preorder traversal. The first node in preorder traversal has rank 0.
[IsLeafProperty](./Hierarchy.xml#L97:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Boolean property indicating whether a node has no children in the requested resource
[DistanceFromRootProperty](./Hierarchy.xml#L100:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of edges between the node and the root node
[LevelProperty](./Hierarchy.xml#L103:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding a node's level, which increases when descending the hierarchy
[SupportsStartNodeCounts](./Hierarchy.xml#L106:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[Tag?](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Whether the service supplies the ['StartNodeCounts'](#StartNodeCounts) instance annotation
