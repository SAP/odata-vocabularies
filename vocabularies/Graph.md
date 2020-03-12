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
[target](Graph.xml#L46)|String|Name of the target entity set
[operation](Graph.xml#L49)|String|Operation to call on the target entity, one of `Read` and `ReadByKey`
[parameters](Graph.xml#L52)|\[[binding](#binding)\]|Map of parameter names in the target operation to property paths in the annotated entity type
[filter](Graph.xml#L55)|\[[binding](#binding)\]|Map of single-valued property paths in the target entity to property paths in the annotated entity type<p>Can only be used with operation `Read` and is used to construct a `$filter` expression</p>

## <a name="binding"></a>[binding](Graph.xml#L61)


Property|Type|Description
:-------|:---|:----------
[source](Graph.xml#L62)|PropertyPath|Path to primitive property in the annotated entity type
[target](Graph.xml#L65)|PropertyPath|Path to primitive property in the target entity set
