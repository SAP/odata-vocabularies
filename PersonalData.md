# PersonalData Vocabulary
**Namespace: [com.sap.vocabularies.PersonalData.v1](PersonalData.xml)**

Terms for annotating Personal Data


## Open Issues


### Tagging of contact-related fields as "personal data"

- Is it really necessary to tag contact-related fields as "personal data"? Can a firstname, lastname, or birthdate ever be "non-personal data"?


### Address-related fields        

Field | Question
------|---------
address-district | Not part of vCard: why is this needed? Usually the district isn't part of an address
address-care-of-name | c/o: not part of vCard: why needed?
address-building | Not part of vCard: why is this needed?
        


## Terms

Term|Type|Description
:---|:---|:----------
[Semantics](PersonalData.xml#L53) *(Experimental)*|[SemanticsType](#SemanticsType)|<a name="Semantics"></a>Primary purpose/meaning of the data contained in the annotated entity set
[FieldSemantics](PersonalData.xml#L109) *(Experimental)*|[FieldSemanticsType](#FieldSemanticsType)|<a name="FieldSemantics"></a>Primary purpose/meaning of the data contained in the annotated property
[IsSensitive](PersonalData.xml#L188) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSensitive"></a>Property contains sensitive personal data<p>*TODO: crisp definition of 'sensitive' needed*</p>

## <a name="SemanticsType"></a>[SemanticsType](PersonalData.xml#L57) *(Experimental)*
**Type:** String

Primary purpose/meaning of data set

Allowed Value|Description
:------------|:----------
[DataSubject](PersonalData.xml#L62)|The entities of this set identify/describe a 'data subject' (an identified or identifiable natural person), e.g. CustomerMasterHeader, VendorMasterHeader<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics)</p>
[PersonRelatedData](PersonalData.xml#L70)|The entities of this set are related to a person but do not by themselves identify/describe a person<p>These entities are relevant for audit logging.</p>
[SearchProvider](PersonalData.xml#L76)|Combined/Joined view of the Data Subject Identity which contains the entire personal information of the Data Subject including multiple addresses, emails, phone, facsimile, etc.<p>*TODO: this seems rather special: isn't this just another `DataSubject`?*</p>
[LegalGround](PersonalData.xml#L83)|Provides information regarding the legal ground (consent/contract/purpose) maintained for the application.
[ReadAccessLog](PersonalData.xml#L88)|Provides a view of the read access logs that are logged by the application. It provides the information about how all have read the sensitive data.
[ChangeLog/AuditLog](PersonalData.xml#L93)|Provides a view of the change logs that are logged by the application. It provides the information about changes to the personal data done in the application.<p>*TODO: what is the aligned/correct name: change log or audit log?*</p>
[AuthorizationReport](PersonalData.xml#L100)|Provides a report about which users/roles have permissions to view the personal data of a Data Subject.

## <a name="FieldSemanticsType"></a>[FieldSemanticsType](PersonalData.xml#L113) *(Experimental)*
**Type:** String

Primary purpose/meaning of a data field

Allowed Value|Description
:------------|:----------
[DataSubjectId](PersonalData.xml#L118)|ID of the data subject
[DataSubjectType???](PersonalData.xml#L122)|Type of the data subject<p>*TODO: crisp definition needed*</p>
[DataSubjectRole???](PersonalData.xml#L127)|Role of the data subject<p>*TODO: crisp definition needed*</p>
[~~DataSubjectTechId~~](PersonalData.xml#L132)|Obsolete: a generic concept for pairs of internal and external ID (e.g. UUID plus 'rememberable' ID) - Common.ExternalID - is in the works, no need for a special case here
[LegalGroundType](PersonalData.xml#L137)|The annotated field holds the type of Legal Ground on which the Business Data is holding reference to Data Subject Data.<p>Examples:<br/>                - Consent<br/>                - Name of Business Process                 </p>
[LegalGroundId](PersonalData.xml#L150)|The annotated field holds the actual ID of the Legal Ground on which the Business Data is holding reference to Data Subject Data.<p>Examples:<br/>                - Consent ID<br/>                - Sales Contract ID<br/>                - Purchase Contract ID<br/>                - Service Contract ID                 </p>
[~~UserProfileId~~](PersonalData.xml#L167)|*TODO: description is missing - what is a user profile id, and is it tied to some specific identity provider or authorization management tool? Who is going to need this, and why?*
[PersonalData](PersonalData.xml#L172)|Personal Identifiable Information<p>Changes are tracked in the change log.<br/>*TODO: Is this annotation really necessary on fields that are already marked as being contact data or address data?*</p>
[RelatedData](PersonalData.xml#L178)|Related Entity Information<p>Changes are _not_ tracked in the change log.<br/>*TODO: discuss with Girish*</p>
