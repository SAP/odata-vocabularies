# Hierarchy Vocabulary
**Namespace: [com.sap.vocabularies.Hierarchy.v1](Hierarchy.xml)**

Terms for Hierarchies


## Terms

Term|Type|Description
:---|:---|:----------
[RecursiveHierarchy](./Hierarchy.xml#L38:~:text=<Term%20Name="-,RecursiveHierarchy,-") *([Experimental](Common.md#Experimental))*|[RecursiveHierarchyType](#RecursiveHierarchyType)|<a name="RecursiveHierarchy"></a>Defines a recursive hierarchy<br>The [base term](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy) governs what are the nodes and parents in the hierarchy, whereas this annotation designates properties that contain derived information.
[MatchCount](./Hierarchy.xml#L107:~:text=<Term%20Name="-,MatchCount,-") *([Experimental](Common.md#Experimental))*|Int64?|<a name="MatchCount"></a>Instance annotation on the result of an `$apply` query option containing the number of matching nodes after hierarchical transformations<br>The service defines a subset of the `$apply` result as "matching nodes" based on the start nodes of `ancestors` and `descendants` as determined by the transformations in their fourth parameters. This subset is typically the output set of a `filter` or `search` transformation that evaluates node attributes other than the node value.<br>This instance annotation is available if [`RecursiveHierarchy/MatchedProperty`](#RecursiveHierarchyType) and `RecursiveHierarchy/MatchedDescendantCountProperty` are also available.
[StartNodeCounts](./Hierarchy.xml#L120:~:text=<Term%20Name="-,StartNodeCounts,-") *([Experimental](Common.md#Experimental))*|\[Int64\]|<a name="StartNodeCounts"></a>Instance annotation on the result of an `$apply` query option containing the number of start nodes for each `ancestors` or `descendants` transformation<br>The annotation value is an integer collection whose n-th entry is the number of start nodes determined for the n-th `ancestors` or `descendants` transformation in the order in which they occur in the `$apply` query option. Start nodes are determined by the fourth parameter of an `ancestors` or `descendants` transformation.


## Functions

### <a name="TopLevels"></a>[TopLevels](./Hierarchy.xml#L131:~:text=<Function%20Name="-,TopLevels,-")

Returns the first n levels of a hierarchical collection

This function can be used as a transformation after hierarchical transformations that use a recursive hierarchy
          defined by an [`Aggregation.RecursiveHierarchy`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Aggregation.V1.html#RecursiveHierarchy)
          annotation on the entity type of the `HierarchyNodes`. If m is the minimal node level in the hierarchical collection
          given in the binding parameter, the output consists of the nodes from levels m, m+1, ..., m+n-1.

Parameter|Type|Description
:--------|:---|:----------
**[InputSet](./Hierarchy.xml#L139:~:text=<Function%20Name="-,TopLevels,-")**|\[EntityType\]|**Binding parameter**
[HierarchyNodes](./Hierarchy.xml#L140:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|
[HierarchyQualifier](./Hierarchy.xml#L141:~:text=<Function%20Name="-,TopLevels,-")|[HierarchyQualifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Aggregation.V1.md#HierarchyQualifier)|
[NodeProperty](./Hierarchy.xml#L142:~:text=<Function%20Name="-,TopLevels,-")|String|Property path to the node value, evaluated relative to the binding parameter
[Levels](./Hierarchy.xml#L145:~:text=<Function%20Name="-,TopLevels,-")|Int64|The number n of levels to be output
[&rarr;](./Hierarchy.xml#L148:~:text=<Function%20Name="-,TopLevels,-")|\[EntityType\]|


## <a name="RecursiveHierarchyType"></a>[RecursiveHierarchyType](./Hierarchy.xml#L46:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-") *([Experimental](Common.md#Experimental))*


The nullable property paths in this complex type refer to properties of an entity type that contain
          information about a node in a recursive hierarchy. When hierarchy-related transformations
          (`ancestors`, `descendants`, `traverse`) are applied whose first parameter is of the annotated entity type
          and whose second parameter is the annotation qualifier,
          then these properties are derived for each node, that is, for each instance in the resulting collection.
          They are not affected by subsequent transformations or query options (like `$filter` or `$top`).

Property|Type|Description
:-------|:---|:----------
[ExternalKeyProperty](./Hierarchy.xml#L56:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath|Property holding the external key value for a node
[NodeTypeProperty](./Hierarchy.xml#L59:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Property holding the type of a node<br>In a recursive hierarchy with mixed types, nodes of different type can have different properties and be represented by entities of different subtypes of a commmon entity type. The common entity type is the target of the `RecursiveHierarchy` annotation.
[DescendantCountProperty](./Hierarchy.xml#L67:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of descendants of a node which are included in the output set
[DrillStateProperty](./Hierarchy.xml#L70:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|String property holding the drill state of a node<br>Possible drill states are: <br>- `expanded` if a node has children which are included in the output set; <br>- `collapsed` if a node has [matching](#MatchCount) descendants but no children are included in the output set; <br>- `leaf` if a node has no [matching](#MatchCount) descendants and no children are included in the output set.
[SiblingRankProperty](./Hierarchy.xml#L79:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the sibling rank of a node<br>The sibling rank of a node is the index of the node in the sequence of all nodes with the same parent. The first sibling has rank 0.
[PreorderRankProperty](./Hierarchy.xml#L83:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the preorder rank of a node<br>The preorder rank of a node expresses its position in the sequence of nodes created from preorder traversal. The first node in preorder traversal has rank 0.
[IsLeafProperty](./Hierarchy.xml#L87:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Boolean property indicating whether a node has no children in the requested resource
[DistanceFromRootProperty](./Hierarchy.xml#L90:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the number of edges between the node and the root node
[LevelProperty](./Hierarchy.xml#L93:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding a node's level, which increases when descending the hierarchy
[MatchedProperty](./Hierarchy.xml#L96:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Boolean property indicating [matching](#MatchCount) nodes
[MatchedDescendantCountProperty](./Hierarchy.xml#L99:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|PropertyPath?|Integer property of type `Edm.Int64` holding the the number of [matching](#MatchCount) descendants of a node
[StartNodeCountsSupported](./Hierarchy.xml#L102:~:text=<ComplexType%20Name="-,RecursiveHierarchyType,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Whether the service provides the [`StartNodeCounts`](#StartNodeCounts) instance annotation
