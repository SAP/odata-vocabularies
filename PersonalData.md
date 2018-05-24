# PersonalData Vocabulary
**Namespace: [com.sap.vocabularies.PersonalData.v1](PersonalData.xml)**

Terms for annotating Personal Data


## Definition

Personal Data is any information relating to an identified or identifiable natural person ("data subject"). An identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier, or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural, or social identity of that natural person.


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
[Semantics](PersonalData.xml#L56) *(Experimental)*|[SemanticsType](#SemanticsType)|<a name="Semantics"></a>Primary purpose/meaning of the data contained in the annotated entity set
[FieldSemantics](PersonalData.xml#L112) *(Experimental)*|[FieldSemanticsType](#FieldSemanticsType)|<a name="FieldSemantics"></a>Primary purpose/meaning of the data contained in the annotated property
[IsSensitive](PersonalData.xml#L211) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSensitive"></a>Property contains sensitive personal data<p>*TODO: crisp definition of 'sensitive' needed*</p>

## <a name="SemanticsType"></a>[SemanticsType](PersonalData.xml#L60) *(Experimental)*
**Type:** String

Primary purpose/meaning of data set

Allowed Value|Description
:------------|:----------
[DataSubject](PersonalData.xml#L65)|The entities of this set describe a 'data subject' (an identified or identifiable natural person), e.g. CustomerMasterHeader, VendorMasterHeader<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics)</p>
[PersonRelatedData/PersonRelatedEntity?](PersonalData.xml#L73)|The entities of this set are related to a person but do not by themselves identify/describe a person<p>These entities are relevant for audit logging.</p>
[SearchProvider](PersonalData.xml#L79)|Combined/joined view which contains the entire personal data of the data subject including multiple addresses, emails, phone, facsimile, etc.<p>*TODO: this seems rather special: isn't this just another `DataSubject`?*</p>
[LegalBasis](PersonalData.xml#L86)|Provides information regarding the legal basis (consent/contract/purpose) maintained for the application.<p>This is a special case of `PersonRelatedData`.</p>
[ReadAccessLog](PersonalData.xml#L92)|Provides a view of the read access logs that are logged by the application. It provides the information about how all have read the sensitive data.
[ChangeLog/AuditLog](PersonalData.xml#L97)|Provides a view of the change logs that are logged by the application. It provides the information about changes to the personal data done in the application.<p>*TODO: what is the aligned/correct name: change log or audit log?*</p>
[AuthorizationReport](PersonalData.xml#L103)|Provides a report about which users/roles have permissions to view the personal data of a Data Subject.

## <a name="FieldSemanticsType"></a>[FieldSemanticsType](PersonalData.xml#L116) *(Experimental)*
**Type:** String

Primary purpose/meaning of a data field

Allowed Value|Description
:------------|:----------
[DataSubjectID](PersonalData.xml#L121)|The unique identifier for a data subject
[DataSubjectType???](PersonalData.xml#L125)|Type of the data subject<p>*TODO: crisp definition needed* - SAPTerm only defines a Data Subject ID Type, e.g. email address, phone number</p>
[DataSubjectRole???](PersonalData.xml#L130)|Role of the data subject<p>*TODO: crisp definition needed*</p>
[~~DataSubjectTechId~~](PersonalData.xml#L135)|Obsolete: a generic concept for pairs of internal and external ID (e.g. UUID plus 'rememberable' ID) - Common.ExternalID - is in the works, no need for a special case here
[LegalBasisType](PersonalData.xml#L140)|The annotated field holds the type of Legal Basis on which the Business Data is holding reference to Data Subject Data.<p>Examples:<br/>                - Consent<br/>                - Name of Business Process                 </p>
[LegalBasisId](PersonalData.xml#L153)|The annotated field holds the actual ID of the Legal Basis on which the Business Data is holding reference to Data Subject Data.<p>Examples:<br/>                - Consent ID<br/>                - Sales Contract ID<br/>                - Purchase Contract ID<br/>                - Service Contract ID                 </p>
[RelatedEntityType???](PersonalData.xml#L170)|The annotated field holds the type of ???<p>Examples:<br/>                - ???                 </p>
[RelatedEntityId](PersonalData.xml#L180)|The annotated field holds the actual ID of the related entity???<p>Examples:<br/>                - ???                 </p>
[~~UserProfileId~~](PersonalData.xml#L190)|*TODO: description is missing - what is a user profile id, and is it tied to some specific identity provider or authorization management tool? Who is going to need this, and why?*
[PersonalData](PersonalData.xml#L195)|Information relating to an identified or identifiable natural person (data subject)<p>Changes are tracked in the change log.<br/>*TODO: Is this annotation really necessary on fields that are already marked as being contact data (name, email address, birthday, ...)or address data (street, city, ...)?*</p>
[RelatedData](PersonalData.xml#L201)|Related Entity Information<p>Changes are _not_ tracked in the change log.<br/>*TODO: discuss with Girish*</p>
