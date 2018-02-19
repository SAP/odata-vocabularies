# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](Hierarchy.xml#L33) *(Experimental)*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy.

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](Hierarchy.xml#L37) *(Experimental)*


Property|Type|Description
:-------|:---|:----------
[ParentNodeProperty](Hierarchy.xml#L39)|PropertyPath|Property holding the parent hierarchy node value
[ExternalKeyProperty](Hierarchy.xml#L42)|PropertyPath|Property holding the external key value for a node
[DescendantCountProperty](Hierarchy.xml#L45)|PropertyPath|Property holding the number of descendants of a node<p>The descendant count of a node is the number of its descendants in the hierarchy structure of the result considering only those nodes matching any specified $filter and $search. A property holding descendant counts has an integer data type.</p>
[DrillStateProperty](Hierarchy.xml#L50)|PropertyPath|Property holding the drill state of a node<p>*TODO: are these three values strings, or do we have corresponding numeric values?*                          The drill state is indicated by one of the following values: collapsed, expanded, leaf. The value of this attribute is always the name of another property in the same type. It points to the related property holding the hierarchy node ID. For an expanded node, its children are included in the result collection. For a collapsed node, the children are included in the entity set, but they are not part of the result collection. Retrieving them requires a relaxed filter expression or a separate request filtering on the parent node ID with the ID of the collapsed node. A leaf does not have any child in the entity set.</p>
[SiblingRankProperty](Hierarchy.xml#L57)|PropertyPath|Property holding the sibling rank of a node<p>The sibling rank of a node is the index of the node in the sequence of all nodes with the same parent created by preorder traversal of the hierarchy structure after evaluating the $filter expression in the request excluding any conditions on key properties. The first sibling is at position 0.</p>
[PreorderRankProperty](Hierarchy.xml#L62)|PropertyPath|Property holding the preorder rank of a node<p>The preorder rank of a node expresses its position in the sequence of nodes created from preorder traversal of the hierarchy structure after evaluating the $filter expression in the request excluding any conditions on key properties. The first node in preorder traversal has rank 0.</p>
