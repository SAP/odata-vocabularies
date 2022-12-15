# ODM Vocabulary
**Namespace: [com.sap.vocabularies.ODM.v1](ODM.xml)**

Terms for One Domain Model


## Terms

Term|Type|Description
:---|:---|:----------
[codeList](./ODM.xml#L36:~:text=<Term%20Name="-,codeList,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="codeList"></a>The annotated entity set represents a list of code values, the annotated entity type represents an entry in a code list
[root](./ODM.xml#L41:~:text=<Term%20Name="-,root,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="root"></a>The annotated entity set contains root entities<br>Root Entities have an independent lifetime and are reachable as top level resources in APIs. These are usually the key entities of a domain, sometimes also called 'business objects'. They are called aggregate roots in DDD terminology.
[oid](./ODM.xml#L47:~:text=<Term%20Name="-,oid,-") *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="oid"></a>The named field is an OID (ODM identifier), and it uniquely identifies an ODM root entity in a customer landscape.<br>The technical type can be UUID or String (typical length 128), and the value must be stable and unique at least within type and landscape (better globally). An entity may have other IDs, i.e. a local ID and other alternative IDs.
[entityName](./ODM.xml#L56:~:text=<Term%20Name="-,entityName,-") *([Experimental](Common.md#Experimental))*|String|<a name="entityName"></a>Name of an ODM entity as a general concept, not a concrete version thereof<br>The annotated OData entity is one of many representations of the ODM entity. Annotating the OData entity with this term helps consumers find APIs that process or expose the same entity.
