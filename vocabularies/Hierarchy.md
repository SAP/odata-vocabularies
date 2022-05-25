# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Derived information about a node in a hierarchy<br>After hierarchical transformations (`ancestors`, `descendants`, `traverse`) are applied to a requested resource, the properties of this instance annotation are derived for each node, that is, for each instance in the resulting collection. They are not affected by subsequent transformations or query options (like `$filter` or `$top`). The qualifier of this instance annotation is the one used in the hierarchical transformations.

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](./Hierarchy.xml#L50:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[ExternalKey](./Hierarchy.xml#L52:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|String|The external key value for a node
[NodeType](./Hierarchy.xml#L55:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|String?|The type of a node<br>In a recursive hierarchy with mixed types, nodes of different type can have different properties and be represented by entities of different subtypes of a commmon entity type.
[DescendantCount](./Hierarchy.xml#L62:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|The number of descendants of a node
[DrillState](./Hierarchy.xml#L65:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|String?|<br>Possible drill states are: <br>- `expanded` if a node's children are included in the output set; <br>- `collapsed` if a node's children are not included in the output set; <br>- `leaf` if a node has no children in the requested resource.
[SiblingRank](./Hierarchy.xml#L73:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|The sibling rank of a node is the index of the node in the sequence of all nodes with the same parent. The first sibling has rank 0.
[PreorderRank](./Hierarchy.xml#L76:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|The preorder rank of a node expresses its position in the sequence of nodes created from preorder traversal. The first node in preorder traversal has rank 0.
[IsLeaf](./Hierarchy.xml#L79:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Boolean?|Whether a node has no children in the requested resource
[DistanceFromRoot](./Hierarchy.xml#L82:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|The number of edges between the node and the root node
[Level](./Hierarchy.xml#L85:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|Int64?|A node's level, which increases when descending the hierarchy
