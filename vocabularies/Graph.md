# Graph Vocabulary
**Namespace: [com.sap.vocabularies.Graph.v1](Graph.xml)**

Terms for SAP Graph


## Terms

Term|Type|Description
:---|:---|:----------
[links](Graph.xml#L36) *([Experimental](Common.md#Experimental))*|\[[link](#link)\]|<a name="links"></a>Navigation links

## <a name="link"></a>[link](Graph.xml#L41)
Navigation link

Property|Type|Description
:-------|:---|:----------
[title](Graph.xml#L43)|String|Title of the navigation link
[entity](Graph.xml#L46)|String|Name of the target entity
[operation](Graph.xml#L49)|String|Operation to call on the target entity, one of `get-list` and `get-single`
[parameters](Graph.xml#L52)|ComplexType|Map of parameter names in the target operation to property paths in the annotated entity type
[filter](Graph.xml#L55)|ComplexType|Map of single-valued property paths in the target entity to property paths in the annotated entity type<p>Can only be used with operation `get-list` and is used to construct a `$filter` expression</p>
