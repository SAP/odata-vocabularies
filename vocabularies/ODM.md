# ODM Vocabulary
**Namespace: [com.sap.vocabularies.ODM.v1](ODM.xml)**

Terms for One Domain Model


## Terms

Term|Type|Description
:---|:---|:----------
[codeList](./ODM.xml#L36:~:text=<Term%20Name="-,codeList,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="codeList"></a>The annotated entity set represents a list of code values, the annotated entity type represents an entry in a code list
[root](./ODM.xml#L41:~:text=<Term%20Name="-,root,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="root"></a>The annotated entity set contains root entities<br>Root Entities have an independent lifetime and are reachable as top level resources in APIs. These are usually the key entities of a domain, sometimes also called 'business objects'. They are called aggregate roots in DDD terminology.
[identifier](./ODM.xml#L47:~:text=<Term%20Name="-,identifier,-") *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="identifier"></a>The named field is an OID (ODM identifier), and it uniquely identifies an ODM root entity in a customer landscape.<br>The technical type can be UUID or String (any length), and the value must be stable and unique at least within type and landscape (better globally). An entity may have other IDs, i.e. a local ID and other alternative IDs. This is the ID used for ODM.
[entityName](./ODM.xml#L56:~:text=<Term%20Name="-,entityName,-") *([Experimental](Common.md#Experimental))*|String|<a name="entityName"></a>This annotation points to an ODM entity as a general concept, not a concrete version thereof<br>This implies that the annotation cannot provide any contract about properties being contained in a model. The annotated entity type thus is _not_ an implementation of the ODM entity, it only represents this ODM entity.
