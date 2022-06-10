# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation designates properties that contain derived information.

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](./Hierarchy.xml#L46:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[ExternalKeyProperty](./Hierarchy.xml#L48:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|Property holding the external key value for a node
[DescendantCountProperty](./Hierarchy.xml#L51:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the number of descendants of a node<br>The descendant count of a node is the number of its descendants in the hierarchy structure of the result considering only those nodes matching any specified $filter and $search. A property holding descendant counts has an integer data type.
[DrillStateProperty](./Hierarchy.xml#L55:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the drill state of a node<br>The drill state is indicated by one of the following string values: `collapsed`, `expanded`, `leaf`. For an expanded node, its children are included in the result collection. For a collapsed node, the children are included in the entity set, but they are not part of the result collection. Retrieving them requires a relaxed filter expression or a separate request filtering on the parent node ID with the ID of the collapsed node. A leaf does not have any child in the entity set.
[SiblingRankProperty](./Hierarchy.xml#L59:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes with the same parent created by preorder traversal of the hierarchy structure after evaluating the $filter expression in the request excluding any conditions on key properties. The first sibling is at position 0.
[PreorderRankProperty](./Hierarchy.xml#L63:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the preorder rank of a node<br>The preorder rank of a node expresses its position in the sequence of nodes created from preorder traversal of the hierarchy structure after evaluating the $filter expression in the request excluding any conditions on key properties. The first node in preorder traversal has rank 0.
