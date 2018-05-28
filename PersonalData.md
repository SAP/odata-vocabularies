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
[FieldSemantics](PersonalData.xml#L93) *(Experimental)*|[FieldSemanticsType](#FieldSemanticsType)|<a name="FieldSemantics"></a>Primary purpose/meaning of the data contained in the annotated property
[IsSensitive](PersonalData.xml#L194) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSensitive"></a>Property contains sensitive personal data<p>Sensitive data is a colloquial term usually including the following data:<br/>-  Special categories of personal data such as data revealing racial or ethnic origin, political opinions, religious or philosophical beliefs, or trade union membership, and the processing of genetic data, biometric data, data concerning health or sex life or sexual orientation<br/>-  Personal data subject to professional secrecy<br/>-  Personal data relating to criminal or administrative offences<br/>-  Personal data concerning bank or credit card accounts</p>

## <a name="SemanticsType"></a>[SemanticsType](PersonalData.xml#L60) *(Experimental)*
**Type:** String

Primary purpose/meaning of data set

Allowed Value|Description
:------------|:----------
[DataSubject](PersonalData.xml#L65)|The entities of this set describe a data subject (an identified or identifiable natural person), e.g. Customer, Vendor<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).</p>
[DataSubjectDetails](PersonalData.xml#L74)|The entities of this set contain details to a data subject (an identified or identifiable natural person) but do not by themselves identify/describe a data subject, e.g. CustomerAddress<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).</p>
[LegalBasis](PersonalData.xml#L83)|Provides information regarding the legal basis (consent or contract) maintained for the application.<p>This is a special case of `DataSubjectDetails`.</p>

## <a name="FieldSemanticsType"></a>[FieldSemanticsType](PersonalData.xml#L97) *(Experimental)*
**Type:** String

Primary purpose/meaning of a data field

Allowed Value|Description
:------------|:----------
[DataSubjectID](PersonalData.xml#L102)|The unique identifier for a data subject
[DataSubjectType???](PersonalData.xml#L106)|Type of the data subject<p>*TODO: crisp definition needed* - SAPTerm only defines a Data Subject ID Type, e.g. email address, phone number</p>
[DataSubjectRole???](PersonalData.xml#L112)|Role of the data subject<p>*TODO: crisp definition needed*</p>
[~~DataSubjectTechId~~](PersonalData.xml#L117)|Obsolete: a generic concept for pairs of internal and external ID (e.g. UUID plus 'readable' ID) - Common.ExternalID - is in the works, no need for a special case here
[LegalBasisType](PersonalData.xml#L122)|The annotated field holds the type of Legal Basis on which the Business Data is holding reference to Data Subject Data.<p>Examples:<br/>                - Consent<br/>                - Name of Business Process                 </p>
[LegalBasisID](PersonalData.xml#L135)|The annotated field holds the actual ID of the Legal Basis on which the Business Data is holding reference to Data Subject Data.<p>Examples:<br/>                - Consent ID<br/>                - Sales Contract ID<br/>                - Purchase Contract ID<br/>                - Service Contract ID                 </p>
[RelatedEntityType???](PersonalData.xml#L152)|The annotated field holds the type of ???<p>Examples:<br/>                - ???                 </p>
[RelatedEntityID](PersonalData.xml#L162)|The annotated field holds the actual ID of the related entity???<p>Examples:<br/>                - ???                 </p>
[~~UserProfileId~~](PersonalData.xml#L172)|*TODO: description is missing - what is a user profile id, and is it tied to some specific identity provider or authorization management tool? Who is going to need this, and why?*
[PersonalData](PersonalData.xml#L177)|Information relating to an identified or identifiable natural person (data subject)<p>Changes are tracked in the audit log.<br/>*TODO: Is this annotation really necessary on fields that are already marked as being contact data (name, email address, birthday, ...)or address data (street, city, ...)?*</p>
[RelatedData](PersonalData.xml#L184)|Related Entity Information<p>Changes are _not_ tracked in the audit log.<br/>*TODO: discuss with Girish whether this is actually needed*</p>
