# ODM Vocabulary
**Namespace: [com.sap.vocabularies.ODM.v1](ODM.xml)**

Terms for One Domain Model


## Terms

Term|Type|Description
:---|:---|:----------
[codeList](ODM.xml#L36) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="codeList"></a>The annotated entity set represents a list of code values, the annotated entity type represents an entry in a code list
[deprecated](ODM.xml#L41) *([Experimental](Common.md#Experimental))*|String|<a name="deprecated"></a>Mark entity sets, types, or properties as deprecated<p>In general used when a new definition or an alternative to the marked element is already there. Can also be used to denote that a field or feature will change in future. An explanation about the alternative (for example, 'use field XYZ instead') must be provided.</p>
[root](ODM.xml#L47) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="root"></a>The annotated entity set contains root entities<p>Root Entities have an independent lifetime and are reachable as top level resources in APIs. These are usually the key entities of a domain, sometimes also called 'business objects'. They are called aggregate roots in DDD terminology.</p>
