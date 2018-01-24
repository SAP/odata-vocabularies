# PersonalData Vocabulary
**Namespace: [com.sap.vocabularies.PersonalData.v1](PersonalData.xml)**

Terms for annotating Personal Data

Term|Type|Description
:---|:---|:----------
[Semantics](PersonalData.xml#L29) *(Experimental)*|[SemanticsType](#SemanticsType)|<a name="Semantics"></a>Primary purpose/meaning of the data contained in the annotated entity set

## <a name="SemanticsType"></a>[SemanticsType](PersonalData.xml#L34) *(Experimental)*
**Type:** String

Primary purpose/meaning of data

*TODO: dash-separated values are a bit unusual, why not use CamelCase values?*
Allowed Value|Description
:------------|:----------
[data-subject-identity](PersonalData.xml#L40)|Data Subject Identity, e.g. CustomerMasterHeader, VendorMasterHeader (The entity that identifies/contain Personal Data about the data subject).<p>The structure of this entity set can be as per the business requirement.  The fields of the entity set should be annotated suitably so that we can relate the content with Data Privacy (Fields are defined further in the document)</p>
[search-provider](PersonalData.xml#L47)|Combined/Joined view of the Data Subject Identity which contains the entire personal information of the Data Subject including multiple addresses, emails, phone, facsimile, etc.
[legal-ground](PersonalData.xml#L52)|Provides information regarding the legal ground (consent/contract/purpose) maintained for the application.
[read-access-log](PersonalData.xml#L57)|Provides a view of the read access logs that are logged by the application. It provides the information about how all have read the sensitive data.
[change-log](PersonalData.xml#L62)|Provides a view of the change logs that are logged by the application. It provides the information about changes to the personal data done in the application.
[authorization-report](PersonalData.xml#L67)|Provides a report about which users/roles have permissions to view the personal data of a Data Subject.
[business-data](PersonalData.xml#L72)|The entities of this set are snapshots of data that changes over time. One of the key properties represents the temporal dimension.<p>*TODO: Is this reserved for __time-dependent__ business data? If so, why not name it that way?*</p>
