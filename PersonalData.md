# PersonalData Vocabulary
**Namespace: [com.sap.vocabularies.PersonalData.v1](PersonalData.xml)**

Terms for annotating Personal Data

Term|Type|Description
:---|:---|:----------
[Semantics](PersonalData.xml#L29) *(Experimental)*|[SemanticsType](#SemanticsType)|<a name="Semantics"></a>Primary purpose/meaning of the data contained in the annotated entity set

## <a name="SemanticsType"></a>[SemanticsType](PersonalData.xml#L34) *(Experimental)*
**Type:** String

Primary purpose/meaning of data

Allowed Value|Description
:------------|:----------
[DataSubjectIdentity](PersonalData.xml#L39)|Data Subject Identity, e.g. CustomerMasterHeader, VendorMasterHeader (The entity that identifies/contain Personal Data about the data subject).<p>The structure of this entity set can be as per the business requirement.  The fields of the entity set should be annotated suitably so that we can relate the content with Data Privacy (Fields are defined further in the document)</p>
[SearchProvider](PersonalData.xml#L46)|Combined/Joined view of the Data Subject Identity which contains the entire personal information of the Data Subject including multiple addresses, emails, phone, facsimile, etc.
[LegalGround](PersonalData.xml#L51)|Provides information regarding the legal ground (consent/contract/purpose) maintained for the application.
[ReadAccessLog](PersonalData.xml#L56)|Provides a view of the read access logs that are logged by the application. It provides the information about how all have read the sensitive data.
[ChangeLog](PersonalData.xml#L61)|Provides a view of the change logs that are logged by the application. It provides the information about changes to the personal data done in the application.
[AuthorizationReport](PersonalData.xml#L66)|Provides a report about which users/roles have permissions to view the personal data of a Data Subject.
[PersonRelatedData](PersonalData.xml#L71)|The entities of this set are related to a person
