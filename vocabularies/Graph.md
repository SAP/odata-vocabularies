# Graph Vocabulary
**Namespace: [com.sap.vocabularies.Graph.v1](Graph.xml)**

Terms for SAP Graph


## Terms

Term|Type|Description
:---|:---|:----------
[links](./Graph.xml#L36:~:text=Name="-,links,-") *([Experimental](Common.md#Experimental))*|\[[link](#link)\]|<a name="links"></a>Navigation links

## <a name="link"></a>[link](./Graph.xml#L41:~:text=Name="-,link,-") *([Experimental](Common.md#Experimental))*
Navigation link

Property|Type|Description
:-------|:---|:----------
[title](./Graph.xml#L44:~:text=Name="-,title,-")|String?|Title of the navigation link
[alias](./Graph.xml#L47:~:text=Name="-,alias,-")|String?|Name of the virtual navigation property
[target](./Graph.xml#L50:~:text=Name="-,target,-")|String?|Name of the target entity set
[parameters](./Graph.xml#L53:~:text=Name="-,parameters,-")|\[[binding](#binding)\]|Map of parameter names in the target operation to property paths in the annotated entity type
[filter](./Graph.xml#L56:~:text=Name="-,filter,-")|\[[binding](#binding)\]|Map of single-valued property paths in the target entity to property paths in the annotated entity type<br>Used to construct a `$filter` expression and triggers the `Read` (list) operation on the target entity set

## <a name="binding"></a>[binding](./Graph.xml#L62:~:text=Name="-,binding,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[source](./Graph.xml#L64:~:text=Name="-,source,-")|PropertyPath?|Path to primitive property in the annotated entity type
[target](./Graph.xml#L67:~:text=Name="-,target,-")|PropertyPath?|Path to primitive property in the target entity set
