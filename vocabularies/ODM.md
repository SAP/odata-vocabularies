# ODM Vocabulary
**Namespace: [com.sap.vocabularies.ODM.v1](ODM.xml)**

Terms for One Domain Model


## Terms

Term|Type|Description
:---|:---|:----------
[codeList](./ODM.xml#L35:~:text=<Term%20Name="-,codeList,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="codeList"></a>The annotated entity set represents a list of code values, the annotated entity type represents an entry in a code list
[root](./ODM.xml#L40:~:text=<Term%20Name="-,root,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="root"></a>The annotated entity type represents an ODM root entity<br>A root entity is the root of a business object. It has a distinct existence. Examples are real-world objects, like a workforce person or a piece of equipment or other more abstract real-world concepts, like a contract or an order. It has an independent lifetime / identity and is globally and uniquely addressable (via the unique identifier provided by the property referenced in the [oid](#oid) annotation).
[oid](./ODM.xml#L48:~:text=<Term%20Name="-,oid,-")|PropertyPath|<a name="oid"></a>The named field is an OID (ODM identifier), and it uniquely identifies an ODM root entity in a customer landscape.<br>The technical type can be UUID or String (typical length 128), and the value must be stable and unique at least within type and landscape (better globally). An entity may have other IDs, i.e. a local ID and other alternative IDs.
[entityName](./ODM.xml#L56:~:text=<Term%20Name="-,entityName,-")|String|<a name="entityName"></a>Name of an ODM entity as a general concept, not a concrete version thereof<br>The annotated OData entity is one of many representations of the ODM entity. Annotating the OData entity with this term helps consumers find APIs that process or expose the same entity.
