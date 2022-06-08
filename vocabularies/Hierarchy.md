# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation designates properties that contain derived information.
[RecursiveHierarchyNode](./Hierarchy.xml#L63:~:text=<Term%20Name="-,RecursiveHierarchyNode,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyNodeType](#RecursiveHierarchyNodeType)|<a name="RecursiveHierarchyNode"></a>Derived information about a node in a hierarchy<br>After hierarchical transformations (`ancestors`, `descendants`, `traverse`) are applied to a requested resource, the properties of this instance annotation are derived for each node, that is, for each instance in the resulting collection. They are not affected by subsequent transformations or query options (like `$filter` or `$top`). The qualifier of this instance annotation is the one used in the hierarchical transformations.<br/>If the first parameter (`SalesOrganizations`) of `ancestors`, `descendants` or `traverse` has a different type than the requested resource (`Sales`), as in ``` Sales?$apply=ancestors( $root/SalesOrganizations, SalesOrgHierarchy, SalesOrganization/ID, ...) ``` then no such instance annotations are derived.
[StartNodeCounts](./Hierarchy.xml#L115:~:text=<Term%20Name="-,StartNodeCounts,-")|\[Int64\]|<a name="StartNodeCounts"></a>Instance annotation on the result of an `$apply` query option containing the number of start nodes for each `ancestors` or `descendants` transformation<br>The annotation value is an integer collection whose n-th entry is the number of start nodes determined for the n-th `ancestors` or `descendants` transformation in the order in which they occur in the `$apply` query option. Start nodes are determined by the fourth parameter of an `ancestors` or `descendants` transformation.

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](./Hierarchy.xml#L46:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[ExternalKeyProperty](./Hierarchy.xml#L48:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|Property holding the external key value for a node
[NodeTypeProperty](./Hierarchy.xml#L51:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the type of a node<br>In a recursive hierarchy with mixed types, nodes of different type can have different properties and be represented by entities of different subtypes of a commmon entity type. The common entity type is the target of the `RecursiveHierarchy` annotation.
[StartNodeCountsSupported](./Hierarchy.xml#L59:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Whether the service provides the [`StartNodeCounts`](#StartNodeCounts) instance annotation

## <a name="RecursiveHierarchyNodeType"></a>[RecursiveHierarchyNodeType](./Hierarchy.xml#L85:~:text=<ComplexType%20Name="-,RecursiveHierarchyNodeType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[DescendantCount](./Hierarchy.xml#L87:~:text=<ComplexType%20Name="-,RecursiveHierarchyNodeType,-")|Int64?|The number of descendants of a node
[DrillState](./Hierarchy.xml#L90:~:text=<ComplexType%20Name="-,RecursiveHierarchyNodeType,-")|String?|<br>Possible drill states are: <br>- `expanded` if a node's children are included in the output set; <br>- `collapsed` if a node's children are not included in the output set; <br>- `leaf` if a node has no children in the requested resource.
[SiblingRank](./Hierarchy.xml#L98:~:text=<ComplexType%20Name="-,RecursiveHierarchyNodeType,-")|Int64?|The sibling rank of a node is the index of the node in the sequence of all nodes with the same parent. The first sibling has rank 0.
[PreorderRank](./Hierarchy.xml#L101:~:text=<ComplexType%20Name="-,RecursiveHierarchyNodeType,-")|Int64?|The preorder rank of a node expresses its position in the sequence of nodes created from preorder traversal. The first node in preorder traversal has rank 0.
[IsLeaf](./Hierarchy.xml#L104:~:text=<ComplexType%20Name="-,RecursiveHierarchyNodeType,-")|Boolean?|Whether a node has no children in the requested resource
[DistanceFromRoot](./Hierarchy.xml#L107:~:text=<ComplexType%20Name="-,RecursiveHierarchyNodeType,-")|Int64?|The number of edges between the node and the root node
[Level](./Hierarchy.xml#L110:~:text=<ComplexType%20Name="-,RecursiveHierarchyNodeType,-")|Int64?|A node's level, which increases when descending the hierarchy
