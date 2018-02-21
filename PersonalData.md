# PersonalData Vocabulary
**Namespace: [com.sap.vocabularies.PersonalData.v1](PersonalData.xml)**

Terms for annotating Personal Data


## Open Issues

### Address-related fields        

Field | Question
------|---------
address-district | Not part of vCard: why is this needed? Usually the district isn't part of an address
address-care-of-name | c/o: not part of vCard: why needed?
address-building | Not part of vCard: why is this needed?

### Tagging of fields as "personal data"

- Is it really necessary to tag contact-related fields as "personal data"? Can a firstname, lastname, or birthdate ever be "non-personal data"?
        


## Terms

Term|Type|Description
:---|:---|:----------
[IsSensitive](PersonalData.xml#L51)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSensitive"></a>Property contains sensitive personal data
[Semantics](PersonalData.xml#L55) *(Experimental)*|[SemanticsType](#SemanticsType)|<a name="Semantics"></a>Primary purpose/meaning of the data contained in the annotated entity set
[FieldSemantics](PersonalData.xml#L110) *(Experimental)*|[FieldSemanticsType](#FieldSemanticsType)|<a name="FieldSemantics"></a>Primary purpose/meaning of the data contained in the annotated property

## <a name="SemanticsType"></a>[SemanticsType](PersonalData.xml#L59) *(Experimental)*
**Type:** String

Primary purpose/meaning of data set

Allowed Value|Description
:------------|:----------
[DataSubjectIdentity](PersonalData.xml#L64)|Data Subject Identity, e.g. CustomerMasterHeader, VendorMasterHeader (The entity that identifies/contain Personal Data about the data subject).<p>The structure of this entity set can be as per the business requirement.  The fields of the entity set should be annotated suitably so that we can relate the content with Data Privacy (Fields are defined further in the document)<br/>*TODO: How does this differ from the similarly named DataSubjectId in [FieldSemanticsType](#FieldSemanticsType)? Should this rather just be a DataSubject or a DataSubjectType? Would fit to CustomerMasterHeader -> Data Subject, CustomerID -> DataSubjectId*                 </p>
[SearchProvider](PersonalData.xml#L75)|Combined/Joined view of the Data Subject Identity which contains the entire personal information of the Data Subject including multiple addresses, emails, phone, facsimile, etc.
[LegalGround](PersonalData.xml#L80)|Provides information regarding the legal ground (consent/contract/purpose) maintained for the application.
[ReadAccessLog](PersonalData.xml#L85)|Provides a view of the read access logs that are logged by the application. It provides the information about how all have read the sensitive data.
[ChangeLog](PersonalData.xml#L90)|Provides a view of the change logs that are logged by the application. It provides the information about changes to the personal data done in the application.<p>*TODO: Align with Steffen Weinstock and Wolfgang Koch how the counterpart annotation for 'please keep a change log for this view' will be named*</p>
[AuthorizationReport](PersonalData.xml#L97)|Provides a report about which users/roles have permissions to view the personal data of a Data Subject.
[PersonRelatedData](PersonalData.xml#L102)|The entities of this set are related to a person

## <a name="FieldSemanticsType"></a>[FieldSemanticsType](PersonalData.xml#L114) *(Experimental)*
**Type:** String

Primary purpose/meaning of a data field

Allowed Value|Description
:------------|:----------
[DataSubjectId](PersonalData.xml#L119)|Human-readable id of the data subject<p>*TODO: How does this differ from the similarly named DataSubjectIdentity in [SemanticsType](#SemanticsType)?*</p>
[DataSubjectTechId](PersonalData.xml#L125)|Generated id or UUID of the data subject which could be specific to the application
[LegalGroundType](PersonalData.xml#L129)|The annotated field holds the type of Legal Ground on which the Business Data is holding reference to Data Subject Data.<p>Field values can be<br/>                - Consent<br/>                - Name of Business Process                 </p>
[LegalGroundId](PersonalData.xml#L142)|The annotated field holds the actual ID of the Legal Ground on which the Business Data is holding reference to Data Subject Data.<p>Field values can be<br/>                - Consent ID<br/>                - Sales Contract ID<br/>                - Purchase Contract ID<br/>                - Service Contract ID                 </p>
[UserProfileId](PersonalData.xml#L159)|*TODO: description is missing - what is a user profile id, and is it tied to some specific identity provider or authorization management tool?*
[PersonalData](PersonalData.xml#L164)|Personal Identifiable Information<p>*TODO: Is this annotation really necessary on fields that are already marked as being contact data or address data?*</p>
