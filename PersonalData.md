# PersonalData Vocabulary
**Namespace: [com.sap.vocabularies.PersonalData.v1](PersonalData.xml)**

Terms for annotating Personal Data


## Definition

Personal Data is any information relating to an identified or identifiable natural person ("data subject"). An identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier, or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural, or social identity of that natural person.

## TODO

- "ConsentDependentData" is data that needs to be deleted if a consent is withdrawn -> to be discussed with Bjoern Dederichs whether we need this


## Background Info

"Order" or other contract-like thing is a stronger "Legal Ground" than a "Consent"

Legal grounds may be part of the "primary" micro-service or just referenced from another 

"Marketing Campaign" is a legal ground that is itself justified by a "Consent"



## Open Issues

### Missing annotations on fields

Annotation | Question
-----------|---------
sap:pdm-semantics="legal-entity" | ???
sap:pdm-legal-entity-key="sales-org" | "Usually legal entities are propagated to the application via OAuth token attributes this annotation provides the name of the attribute" - this is rather technical and relying on a specific authentication mechanism and a specific implementation and creates a technical dependency of the service and the currently used identity provider. Also: the OAuth token would contain the legal entity of the authenticated user, whereas the data would contain the legal entity of a data subject (customer, employee, ...) that is represented by that data record - why should these match except in very special cases?
sap:pdm-display-seq-no="-1" | ???
sap:pdm-semantics="user-profile-id" | Still needed? See question below on UserProfileID
sap:pdm-semantics="consent-purpose-id" | ???
sap:pdm-semantics="consent-purpose-name" | ???
sap:pdm-semantics="consent-type" | ???
sap:pdm-semantics="consent-valid-from"  | ???
sap:pdm-semantics="consent-valid-to" | ???
sap:pdm-semantics="consent-status" | ???


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
[Semantics](PersonalData.xml#L86) *(Experimental)*|[SemanticsType](#SemanticsType)|<a name="Semantics"></a>Primary meaning of the data contained in the annotated entity set
[DataSubjectRole](PersonalData.xml#L90) *(Experimental)*|String|<a name="DataSubjectRole"></a>Role of the data subjects in this set (e.g. employee, customer)<p>Values are application-specific.                      If the role varies per entity, a property containing the entity-specific role should be annotated with  [FieldSemantics](#FieldSemantics) and a value of `DataSubjectRole`</p>
[DataSubjectRoleDescription](PersonalData.xml#L99) *(Experimental)*|String|<a name="DataSubjectRoleDescription"></a>Language-dependent description of the role of the data subjects in this set (e.g. employee, customer)<p>If the role varies per entity, a property containing the entity-specific role should be annotated with  [FieldSemantics](#FieldSemantics) and a value of `DataSubjectRole`, and optionally with Common.Text pointing to a property containing the role description</p>
[FieldSemantics](PersonalData.xml#L155) *(Experimental)*|[FieldSemanticsType](#FieldSemanticsType)|<a name="FieldSemantics"></a>Primary meaning of the data contained in the annotated property
[IsSensitive](PersonalData.xml#L286) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSensitive"></a>Property contains sensitive personal data<p>Sensitive data is a colloquial term usually including the following data:<br/>-  Special categories of personal data such as data revealing racial or ethnic origin, political opinions, religious or philosophical beliefs, or trade union membership, and the processing of genetic data, biometric data, data concerning health or sex life or sexual orientation<br/>-  Personal data subject to professional secrecy<br/>-  Personal data relating to criminal or administrative offences<br/>-  Personal data concerning bank or credit card accounts</p>

## <a name="SemanticsType"></a>[SemanticsType](PersonalData.xml#L108) *(Experimental)*
**Type:** String

Primary meaning of the data contained in the annotated entity set

Allowed Value|Description
:------------|:----------
[DataSubject](PersonalData.xml#L113)|The entities of this set describe a data subject (an identified or identifiable natural person), e.g. Customer, Vendor<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).</p>
[DataSubjectDetails](PersonalData.xml#L122)|The entities of this set contain details to a data subject (an identified or identifiable natural person) but do not by themselves identify/describe a data subject, e.g. CustomerAddress<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).</p>
[Consent](PersonalData.xml#L131)|The entities of this set represent a consent<p>A consent is the action of the data subject confirming that                  the usage of his or her personal data shall be allowed for a given purpose.                  A consent functionality allows the storage of a consent record in relation                  to a specific purpose and shows if a data subject has granted, withdrawn,                  or denied consent.                                  A purpose is the information that specifies the reason and the goal for the                 processing of a specific set of personal data. As a rule, the purpose                 references the relevant legal basis for the processing of personal data.</p>
[LegalGround](PersonalData.xml#L146)|Provides information regarding the legal ground (e.g. order or contract) maintained for the application.

## <a name="FieldSemanticsType"></a>[FieldSemanticsType](PersonalData.xml#L159) *(Experimental)*
**Type:** String

Primary meaning of a data field

Allowed Value|Description
:------------|:----------
[DataSubjectID](PersonalData.xml#L164)|The unique identifier for a data subject
[DataSubjectType???](PersonalData.xml#L168)|Type of the data subject<p>*TODO: crisp definition needed* - SAPTerm only defines a Data Subject ID Type, e.g. email address, phone number</p>
[DataSubjectRole???](PersonalData.xml#L174)|Role of the data subject<p>*TODO: crisp definition needed*</p>
[ConsentID](PersonalData.xml#L179)|The unique identifier for a consent
[LegalGroundID](PersonalData.xml#L183)|The annotated field holds the actual ID of the Legal Ground on which the Business Data is holding reference to Data Subject Data.<p>Examples:<br/>                - Sales Contract ID<br/>                - Purchase Contract ID<br/>                - Service Contract ID                 </p>
[LegalGroundType/BusinessObjectType???](PersonalData.xml#L198)|The type of Legal Ground on which the Business Data is holding a reference to Data Subject Data.<p>Examples:<br/>                - Consent<br/>                - Name of Business Object                                  _TODO: do we really need this (now)?_                 </p>
[RelatedEntityID???](PersonalData.xml#L213)|The annotated field holds the actual ID of the related entity???<p>Examples:<br/>                - ???                 </p>
[RelatedEntityType???](PersonalData.xml#L223)|The annotated field holds the type of ???<p>Examples:<br/>                - ???                 </p>
[~~UserProfileID~~](PersonalData.xml#L233)|*TODO: description is missing - what is a user profile id, and is it tied to some specific identity provider or authorization management tool? Who is going to need this, and why?*
[PersonalData](PersonalData.xml#L238)|Information relating to an identified or identifiable natural person (data subject)<p>Changes are tracked in the audit log.<br/>*TODO: Is this annotation really necessary on fields that are already marked as being contact data (name, email address, birthday, ...)or address data (street, city, ...)?*</p>
[RelatedData](PersonalData.xml#L245)|Related Entity Information<p>Changes are _not_ tracked in the audit log.<br/>*TODO: discuss with Girish whether this is actually needed, especially: how is this different from other/unrelated data?*</p>
[LegalEntity???](PersonalData.xml#L251)|Related Entity Information<p>The annotated field holds (the identifier of???) a legal entity                                   A legal entity is a corporation, an association, or any other organization of legal capacity, which has statutory rights and responsibilities.</p>
[CreditCardNumber???](PersonalData.xml#L260)|Credit Card Number<p>TODO: do we really need this semantics? Isn't it enough to know that it is sensitve?</p>
[NationalIdentificationNumber???](PersonalData.xml#L267)|A national identification number, national identity number, or national insurance number is used by the governments of many countries as a means of tracking their citizens, permanent residents, and temporary residents for the purposes of work, taxation, government benefits, health care, and other governmentally-related functions. The number appears on identity documents issued by several of the countries. ([Source: Wikipedia](https://en.wikipedia.org/wiki/National_identification_number))<p>TODO: do we really need this semantics? Isn't it enough to know that it is a data subject id?</p>
[PassportNumber???](PersonalData.xml#L275)|Passport Number<p>TODO: do we really need this semantics? Isn't it enough to know that it is a data subject id?</p>
