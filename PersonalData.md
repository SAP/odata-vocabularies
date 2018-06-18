# PersonalData Vocabulary
**Namespace: [com.sap.vocabularies.PersonalData.v1](PersonalData.xml)**

Terms for annotating Personal Data


## Definition

Personal Data is any information relating to an identified or identifiable natural person ("data subject"). 

An identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier, or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural, or social identity of that natural person.

Personal data can only be processed under certain legal grounds, e.g. explicit consent of the data subject or a contractual obligation.

See also:
- [European Commission: Reform of EU data protection rules](https://ec.europa.eu/info/law/law-topic/data-protection/reform_en)
- [European Commission: Rules for business and organisations](https://ec.europa.eu/info/law/law-topic/data-protection/reform/rules-business-and-organisations_en)
- [European Commission: Legal grounds for processing data](https://ec.europa.eu/info/law/law-topic/data-protection/reform/rules-business-and-organisations/legal-grounds-processing-data_en).

## Open Issues

### Missing annotations on fields

TODO: New annotation IsUserID: Common or PersonalData?
        


## Terms

Term|Type|Description
:---|:---|:----------
[Semantics](PersonalData.xml#L56) *(Experimental)*|[SemanticsType](#SemanticsType)|<a name="Semantics"></a>Primary meaning of the data contained in the annotated entity set
[DataSubjectRole](PersonalData.xml#L60) *(Experimental)*|String|<a name="DataSubjectRole"></a>Role of the data subjects in this set (e.g. employee, customer)<p>Values are application-specific.                      If the role varies per entity, a property containing the entity-specific role should be annotated with  [FieldSemantics](#FieldSemantics) and a value of `DataSubjectRole`</p>
[DataSubjectRoleDescription](PersonalData.xml#L69) *(Experimental)*|String|<a name="DataSubjectRoleDescription"></a>Language-dependent description of the role of the data subjects in this set (e.g. employee, customer)<p>If the role varies per entity, a property containing the entity-specific role should be annotated with  [FieldSemantics](#FieldSemantics) and a value of `DataSubjectRole`, and optionally with Common.Text pointing to a property containing the role description</p>
[FieldSemantics](PersonalData.xml#L132) *(Experimental)*|[FieldSemanticsType](#FieldSemanticsType)|<a name="FieldSemantics"></a>Primary meaning of the data contained in the annotated property
[IsSensitive](PersonalData.xml#L233) *(Experimental)*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsSensitive"></a>Property contains sensitive personal data<p>Sensitive data is a colloquial term usually including the following data:<br/>-  Special categories of personal data such as data revealing racial or ethnic origin, political opinions, religious or philosophical beliefs, or trade union membership, and the processing of genetic data, biometric data, data concerning health or sex life or sexual orientation<br/>-  Personal data subject to professional secrecy<br/>-  Personal data relating to criminal or administrative offences<br/>-  Personal data concerning bank or credit card accounts<br/>See also: [What personal data is considered sensitive?](https://ec.europa.eu/info/law/law-topic/data-protection/reform/rules-business-and-organisations/legal-grounds-processing-data/sensitive-data/what-personal-data-considered-sensitive_en)</p>

## <a name="SemanticsType"></a>[SemanticsType](PersonalData.xml#L78) *(Experimental)*
**Type:** String

Primary meaning of the data contained in the annotated entity set

Allowed Value|Description
:------------|:----------
[DataSubject](PersonalData.xml#L83)|The entities of this set describe a data subject (an identified or identifiable natural person), e.g. Customer, Vendor<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).</p>
[DataSubjectDetails](PersonalData.xml#L92)|The entities of this set contain details to a data subject (an identified or identifiable natural person) but do not by themselves identify/describe a data subject, e.g. CustomerAddress<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).</p>
[Consent](PersonalData.xml#L101)|The entities of this set represent a consent<p>A consent is the action of the data subject confirming that                  the usage of his or her personal data shall be allowed for a given purpose.                  A consent functionality allows the storage of a consent record in relation                  to a specific purpose and shows if a data subject has granted, withdrawn,                  or denied consent.                                  A purpose is the information that specifies the reason and the goal for the                 processing of a specific set of personal data. As a rule, the purpose                 references the relevant legal basis for the processing of personal data.</p>
[ConsentDependent](PersonalData.xml#L116)|The entities of this set represent data whose processing depends on explicit consent<p>Consent-dependent data needs to be deleted if the consent is withdrawn.</p>
[LegalGround](PersonalData.xml#L123)|Provides information regarding the legal ground (e.g. order or contract) for processing personal data

## <a name="FieldSemanticsType"></a>[FieldSemanticsType](PersonalData.xml#L136) *(Experimental)*
**Type:** String

Primary meaning of a data field

Allowed Value|Description
:------------|:----------
[DataSubjectID](PersonalData.xml#L141)|The unique identifier for a data subject
[DataSubjectIDType](PersonalData.xml#L145)|The type of ID identifying the data subject and which is allocated when creating a consent record, e.g. an e-mail address or a phone number.
[DataSubjectRole](PersonalData.xml#L149)|Role of the data subject<p>*TODO: definition needed*</p>
[ConsentID](PersonalData.xml#L154)|The unique identifier for a consent<p>A consent is the action of the data subject confirming that                  the usage of his or her personal data shall be allowed for a given purpose.                  A consent functionality allows the storage of a consent record in relation                  to a specific purpose and shows if a data subject has granted, withdrawn,                  or denied consent.</p>
[ConsentPurposeID](PersonalData.xml#L165)|The unique identifier for the purpose of a consent<p>The purpose of a consent is the information that specifies the reason and the goal for                 the processing of a specific set of personal data. As a rule, the purpose                 references the relevant legal basis for the processing of personal data.</p>
[LegalGroundID](PersonalData.xml#L174)|The unique identifier for the legal ground (e.g. a contractual agreement) that requires processing of personal data<p>Examples:<br/>                - Sales Contract ID<br/>                - Purchase Contract ID<br/>                - Service Contract ID                 </p>
[~~RelatedEntityID~~](PersonalData.xml#L189)|The annotated field holds the actual ID of the related entity???<p>To be removed: check with Wolfgang Koch whether he needs this</p>
[~~RelatedEntityType~~](PersonalData.xml#L196)|The annotated field holds the type of ???<p>To be removed: check with Wolfgang Koch whether he needs this</p>
[User(Profile)ID???](PersonalData.xml#L203)|*TODO: description is missing - this is the user id known to/maintained by the central identity provider - check SAPTerm<p>PDM needs this for self-service scenarios in order to connect the stored data with the authenticated user.                  However backends often only store the backend-specific logon userid and don't know the connection of the backend user to the IDP user<br/>A user id is also (in most cases) a data subject id</p>
[PersonalData](PersonalData.xml#L215)|Information relating to an identified or identifiable natural person (data subject)<p>Changes are tracked in the audit log.<br/>*TODO: cross-check with Wolfgang Koch: this annotation SHOULD NOT be necessary on fields that are already marked as being contact data (name, email address, birthday, ...)or address data (street, city, ...)*</p>
[LegalEntityID](PersonalData.xml#L222)|The unique identifier of a legal entity<p>A legal entity is a corporation, an association, or any other organization of legal capacity, which has statutory rights and responsibilities.</p>
