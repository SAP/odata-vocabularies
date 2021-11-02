# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType?](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy.

## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](./Hierarchy.xml#L42:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[ParentNodeProperty](./Hierarchy.xml#L44:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|Property holding the parent hierarchy node value
[ExternalKeyProperty](./Hierarchy.xml#L47:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|Property holding the external key value for a node
[ValueProperty](./Hierarchy.xml#L50:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property for whose values the hierarchy is defined
[DescendantCountProperty](./Hierarchy.xml#L53:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the number of descendants of a node<br>The descendant count of a node is the number of its descendants in the hierarchy structure of the result considering only those nodes matching any specified $filter and $search. A property holding descendant counts has an integer data type.
[DrillStateProperty](./Hierarchy.xml#L57:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the drill state of a node<br>The drill state is indicated by one of the following string values: `collapsed`, `expanded`, `leaf`. For an expanded node, its children are included in the result collection. For a collapsed node, the children are included in the entity set, but they are not part of the result collection. Retrieving them requires a relaxed filter expression or a separate request filtering on the parent node ID with the ID of the collapsed node. A leaf does not have any child in the entity set.
[SiblingRankProperty](./Hierarchy.xml#L61:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes with the same parent created by preorder traversal of the hierarchy structure after evaluating the $filter expression in the request excluding any conditions on key properties. The first sibling is at position 0.
[PreorderRankProperty](./Hierarchy.xml#L65:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the preorder rank of a node<br>The preorder rank of a node expresses its position in the sequence of nodes created from preorder traversal of the hierarchy structure after evaluating the $filter expression in the request excluding any conditions on key properties. The first node in preorder traversal has rank 0.

© Copyright 2021, SAP SE - [Terms of Use](https://www.sap.com/corporate/en/legal/terms-of-use.html) - [Legal Disclosure](https://www.sap.com/corporate/en/legal/impressum.html) - [Trademark](https://www.sap.com/about/legal/trademark.html)

This site is hosted by [GitHub Pages](https://pages.github.com/). Please see the [GitHub Privacy Statement](https://docs.github.com/en/github/site-policy/github-privacy-statement) for any information how GitHub processes your personal data.
