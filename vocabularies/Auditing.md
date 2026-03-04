# Auditing Vocabulary
**Namespace: [com.sap.vocabularies.Auditing.v1](Auditing.xml)**

Terms for annotating auditing behaviour


## Terms

Term|Type|Description
:---|:---|:----------
[DefaultAuditorScopes](Auditing.xml#L35) *([Experimental](Common.md#Experimental))*|\[String\]|<a name="DefaultAuditorScopes"></a>List of scopes which have by default auditing access for entity sets in the annotated service. Annotating @Auditing.AuditorScopes to an entity set overrides this default.
[AuditorScopes](Auditing.xml#L40) *([Experimental](Common.md#Experimental))*|\[String\]|<a name="AuditorScopes"></a>List of scopes which have auditing access for the annotated entity set. Auditing access could for example mean accessing blocked or archived entities.
