# PersonalData Vocabulary
**Namespace: [com.sap.vocabularies.PersonalData.v1](PersonalData.xml)**

Terms for annotating Personal Data


## Definition

Personal Data is any information relating to an identified or identifiable natural person ("data subject"). 

An identifiable natural person is one who can be identified, directly or indirectly, in particular by reference to an identifier such as a name, an identification number, location data, an online identifier, or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural, or social identity of that natural person.

Personal data can only be processed under certain legal grounds, e.g. explicit consent of the data subject or a contractual obligation.

This vocabulary defines terms specific to the European [General Data Protection Regulation (GDPR)](https://ec.europa.eu/info/law/law-topic/data-protection_en).

Terms for contact and address information are defined in the [Communication vocabulary](Communication.md#).

### References
- [European Commission: Reform of EU data protection rules](https://ec.europa.eu/info/law/law-topic/data-protection/reform_en)
- [European Commission: Rules for business and organisations](https://ec.europa.eu/info/law/law-topic/data-protection/reform/rules-business-and-organisations_en)
- [European Commission: Legal grounds for processing data](https://ec.europa.eu/info/law/law-topic/data-protection/reform/rules-business-and-organisations/legal-grounds-processing-data_en).
       


## Terms

Term|Type|Description
:---|:---|:----------
[EntitySemantics](PersonalData.xml#L58) *([Experimental](Common.md#Experimental))*|[EntitySemanticsType?](#EntitySemanticsType)|<a name="EntitySemantics"></a>Primary meaning of the entities in the annotated entity set
[DataSubjectRole](PersonalData.xml#L62) *([Experimental](Common.md#Experimental))*|String?|<a name="DataSubjectRole"></a>Role of the data subjects in this set (e.g. employee, customer)<p>Values are application-specific. Can be a static value or a `Path` expression If the role varies per entity</p>
[DataSubjectRoleDescription](PersonalData.xml#L70) *([Experimental](Common.md#Experimental))*|String?|<a name="DataSubjectRoleDescription"></a>Language-dependent description of the role of the data subjects in this set (e.g. employee, customer)<p>Values are application-specific. Can be a static value or a `Path` expression If the role varies per entity</p>
[FieldSemantics](PersonalData.xml#L118) *([Experimental](Common.md#Experimental))*|[FieldSemanticsType?](#FieldSemanticsType)|<a name="FieldSemantics"></a>Primary meaning of the personal data contained in the annotated property<p>Changes to values of annotated properties are tracked in the audit log.<br/>*TODO: cross-check with Wolfgang Koch: this annotation SHOULD NOT be necessary on fields that are already marked as being contact data (name, phone number, email address, birthday, ...) or address data (street, city, ...)*</p>
[IsPotentiallyPersonal](PersonalData.xml#L195) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPotentiallyPersonal"></a>Property contains potentially personal data<p>Personal data is information relating to an identified or identifiable natural person (data subject).<br/>Note: properties annotated with [`FieldSemantics`](#FieldSemantics) need not be additionally annotated with this term.<br/>See also: [What is personal data?](https://ec.europa.eu/info/law/law-topic/data-protection/reform/what-personal-data_en)</p>
[IsPotentiallySensitive](PersonalData.xml#L207)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPotentiallySensitive"></a>Property contains potentially sensitive personal data<p>Sensitive data is a colloquial term usually including the following data:<br/>- Special categories of personal data such as data revealing racial or ethnic origin, political opinions, religious or philosophical beliefs, or trade union membership, and the processing of genetic data, biometric data, data concerning health or sex life or sexual orientation<br/>- Personal data subject to professional secrecy<br/>- Personal data relating to criminal or administrative offences<br/>- Personal data concerning bank or credit card accounts<br/>See also: [What personal data is considered sensitive?](https://ec.europa.eu/info/law/law-topic/data-protection/reform/rules-business-and-organisations/legal-grounds-processing-data/sensitive-data/what-personal-data-considered-sensitive_en)</p>

## <a name="EntitySemanticsType"></a>[EntitySemanticsType](PersonalData.xml#L79) *([Experimental](Common.md#Experimental))*
**Type:** String

Primary meaning of the data contained in the annotated entity set

Allowed Value|Description
:------------|:----------
[DataSubject](PersonalData.xml#L84) *([Experimental](Common.md#Experimental))*|Entities describing a data subject (an identified or identifiable natural person), e.g. customer, vendor, employee<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).</p>
[DataSubjectDetails](PersonalData.xml#L94) *([Experimental](Common.md#Experimental))*|Entities containing details to a data subject (an identified or identifiable natural person) but not representing data subjects by themselves, e.g. street addresses, email addresses, phone numbers<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).</p>
[Other](PersonalData.xml#L104) *([Experimental](Common.md#Experimental))*|Entities containing personal data or references to data subjects but not representing data subjects or data subject details by themselves, e.g. customer quote, customer order, purchase order with involved business partners<p>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).</p>

## <a name="FieldSemanticsType"></a>[FieldSemanticsType](PersonalData.xml#L123) *([Experimental](Common.md#Experimental))*
**Type:** String

Primary meaning of a data field

Allowed Value|Description
:------------|:----------
[DataSubjectID](PersonalData.xml#L128) *([Experimental](Common.md#Experimental))*|The unique identifier for a data subject
[DataSubjectIDType](PersonalData.xml#L133) *([Experimental](Common.md#Experimental))*|The type of ID identifying the data subject and which is allocated when creating a consent record, e.g. an e-mail address or a phone number.
[ConsentID](PersonalData.xml#L138) *([Experimental](Common.md#Experimental))*|The unique identifier for a consent<p>A consent is the action of the data subject confirming that the usage of his or her personal data shall be allowed for a given purpose. A consent functionality allows the storage of a consent record in relation to a specific purpose and shows if a data subject has granted, withdrawn, or denied consent.</p>
[PurposeID](PersonalData.xml#L150) *([Experimental](Common.md#Experimental))*|The unique identifier for the purpose of a consent<p>The purpose of a consent is the information that specifies the reason and the goal for the processing of a specific set of personal data. As a rule, the purpose references the relevant legal basis for the processing of personal data.</p>
[ContractRelatedID](PersonalData.xml#L160) *([Experimental](Common.md#Experimental))*|The unique identifier for transactional data that is related to a contract that requires processing of personal data<p>Examples:<br/> - Sales Contract ID<br/> - Purchase Contract ID<br/> - Service Contract ID</p>
[LegalEntityID](PersonalData.xml#L175) *([Experimental](Common.md#Experimental))*|The unique identifier of a legal entity<p>A legal entity is a corporation, an association, or any other organization of legal capacity, which has statutory rights and responsibilities.</p>
[UserID](PersonalData.xml#L183) *([Experimental](Common.md#Experimental))*|The unique identifier of a user<p>A user is an individual who interacts with the services supplied by a system.</p>
