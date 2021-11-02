# Graph Vocabulary
**Namespace: [com.sap.vocabularies.Graph.v1](Graph.xml)**

Terms for SAP Graph


## Terms

Term|Type|Description
:---|:---|:----------
[links](./Graph.xml#L36:~:text=<Term%20Name="-,links,-") *([Experimental](Common.md#Experimental))*|\[[link](#link)\]|<a name="links"></a>Navigation links

## <a name="link"></a>[link](./Graph.xml#L41:~:text=<ComplexType%20Name="-,link,-") *([Experimental](Common.md#Experimental))*
Navigation link

Property|Type|Description
:-------|:---|:----------
[title](./Graph.xml#L44:~:text=<ComplexType%20Name="-,link,-")|String?|Title of the navigation link
[alias](./Graph.xml#L47:~:text=<ComplexType%20Name="-,link,-")|String?|Name of the virtual navigation property
[target](./Graph.xml#L50:~:text=<ComplexType%20Name="-,link,-")|String?|Name of the target entity set
[parameters](./Graph.xml#L53:~:text=<ComplexType%20Name="-,link,-")|\[[binding](#binding)\]|Map of parameter names in the target operation to property paths in the annotated entity type
[filter](./Graph.xml#L56:~:text=<ComplexType%20Name="-,link,-")|\[[binding](#binding)\]|Map of single-valued property paths in the target entity to property paths in the annotated entity type<br>Used to construct a `$filter` expression and triggers the `Read` (list) operation on the target entity set

## <a name="binding"></a>[binding](./Graph.xml#L62:~:text=<ComplexType%20Name="-,binding,-") *([Experimental](Common.md#Experimental))*


Property|Type|Description
:-------|:---|:----------
[source](./Graph.xml#L64:~:text=<ComplexType%20Name="-,binding,-")|PropertyPath?|Path to primitive property in the annotated entity type
[target](./Graph.xml#L67:~:text=<ComplexType%20Name="-,binding,-")|PropertyPath?|Path to primitive property in the target entity set

© Copyright 2021, SAP SE - [Terms of Use](https://www.sap.com/corporate/en/legal/terms-of-use.html) - [Legal Disclosure](https://www.sap.com/corporate/en/legal/impressum.html) - [Trademark](https://www.sap.com/about/legal/trademark.html)

This site is hosted by [GitHub Pages](https://pages.github.com/). Please see the [GitHub Privacy Statement](https://docs.github.com/en/github/site-policy/github-privacy-statement) for any information how GitHub processes your personal data.
