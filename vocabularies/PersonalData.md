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
[EntitySemantics](./PersonalData.xml#L58:~:text=<Term%20Name="-,EntitySemantics,-")|[EntitySemanticsType](#EntitySemanticsType)|<a name="EntitySemantics"></a>Primary meaning of the entities in the annotated entity set
[DataSubjectRole](./PersonalData.xml#L61:~:text=<Term%20Name="-,DataSubjectRole,-") *([Experimental](Common.md#Experimental))*|String?|<a name="DataSubjectRole"></a>Role of the data subjects in this set (e.g. employee, customer)<br>Values are application-specific. Can be a static value or a `Path` expression If the role varies per entity
[DataSubjectRoleDescription](./PersonalData.xml#L69:~:text=<Term%20Name="-,DataSubjectRoleDescription,-") *([Experimental](Common.md#Experimental))*|String?|<a name="DataSubjectRoleDescription"></a>Language-dependent description of the role of the data subjects in this set (e.g. employee, customer)<br>Values are application-specific. Can be a static value or a `Path` expression If the role varies per entity
[FieldSemantics](./PersonalData.xml#L113:~:text=<Term%20Name="-,FieldSemantics,-")|[FieldSemanticsType](#FieldSemanticsType)|<a name="FieldSemantics"></a>Primary meaning of the personal data contained in the annotated property<br>Changes to values of annotated properties are tracked in the audit log.<br/>*TODO: cross-check with Wolfgang Koch: this annotation SHOULD NOT be necessary on fields that are already marked as being contact data (name, phone number, email address, birthday, ...) or address data (street, city, ...)*
[IsPotentiallyPersonal](./PersonalData.xml#L186:~:text=<Term%20Name="-,IsPotentiallyPersonal,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPotentiallyPersonal"></a>Property contains potentially personal data<br>Personal data is information relating to an identified or identifiable natural person (data subject).<br/>Note: properties annotated with [`FieldSemantics`](#FieldSemantics) need not be additionally annotated with this term.<br/>See also: [What is personal data?](https://ec.europa.eu/info/law/law-topic/data-protection/reform/what-personal-data_en)
[IsPotentiallySensitive](./PersonalData.xml#L197:~:text=<Term%20Name="-,IsPotentiallySensitive,-")|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPotentiallySensitive"></a>Property contains potentially sensitive personal data<br>Sensitive data is a colloquial term usually including the following data:<br/>- Special categories of personal data such as data revealing racial or ethnic origin, political opinions, religious or philosophical beliefs, or trade union membership, and the processing of genetic data, biometric data, data concerning health or sex life or sexual orientation<br/>- Personal data subject to professional secrecy<br/>- Personal data relating to criminal or administrative offences<br/>- Personal data concerning bank or credit card accounts<br/>See also: [What personal data is considered sensitive?](https://ec.europa.eu/info/law/law-topic/data-protection/reform/rules-business-and-organisations/legal-grounds-processing-data/sensitive-data/what-personal-data-considered-sensitive_en)

## <a name="EntitySemanticsType"></a>[EntitySemanticsType](./PersonalData.xml#L78:~:text=<TypeDefinition%20Name="-,EntitySemanticsType,-")
**Type:** String

Primary meaning of the data contained in the annotated entity set

Allowed Value|Description
:------------|:----------
[DataSubject](./PersonalData.xml#L82:~:text=<TypeDefinition%20Name="-,EntitySemanticsType,-")|Entities describing a data subject (an identified or identifiable natural person), e.g. customer, vendor, employee<br>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).
[DataSubjectDetails](./PersonalData.xml#L91:~:text=<TypeDefinition%20Name="-,EntitySemanticsType,-")|Entities containing details to a data subject (an identified or identifiable natural person) but not representing data subjects by themselves, e.g. street addresses, email addresses, phone numbers<br>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).
[Other](./PersonalData.xml#L100:~:text=<TypeDefinition%20Name="-,EntitySemanticsType,-")|Entities containing personal data or references to data subjects but not representing data subjects or data subject details by themselves, e.g. customer quote, customer order, purchase order with involved business partners<br>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).

## <a name="FieldSemanticsType"></a>[FieldSemanticsType](./PersonalData.xml#L117:~:text=<TypeDefinition%20Name="-,FieldSemanticsType,-")
**Type:** String

Primary meaning of a data field

Allowed Value|Description
:------------|:----------
[DataSubjectID](./PersonalData.xml#L121:~:text=<TypeDefinition%20Name="-,FieldSemanticsType,-")|The unique identifier for a data subject
[DataSubjectIDType](./PersonalData.xml#L125:~:text=<TypeDefinition%20Name="-,FieldSemanticsType,-") *([Experimental](Common.md#Experimental))*|The type of ID identifying the data subject and which is allocated when creating a consent record, e.g. an e-mail address or a phone number.
[ConsentID](./PersonalData.xml#L130:~:text=<TypeDefinition%20Name="-,FieldSemanticsType,-") *([Experimental](Common.md#Experimental))*|The unique identifier for a consent<br>A consent is the action of the data subject confirming that the usage of his or her personal data shall be allowed for a given purpose. A consent functionality allows the storage of a consent record in relation to a specific purpose and shows if a data subject has granted, withdrawn, or denied consent.
[PurposeID](./PersonalData.xml#L142:~:text=<TypeDefinition%20Name="-,FieldSemanticsType,-") *([Experimental](Common.md#Experimental))*|The unique identifier for the purpose of a consent<br>The purpose of a consent is the information that specifies the reason and the goal for the processing of a specific set of personal data. As a rule, the purpose references the relevant legal basis for the processing of personal data.
[ContractRelatedID](./PersonalData.xml#L152:~:text=<TypeDefinition%20Name="-,FieldSemanticsType,-")|The unique identifier for transactional data that is related to a contract that requires processing of personal data<br>Examples:<br/> - Sales Contract ID<br/> - Purchase Contract ID<br/> - Service Contract ID
[LegalEntityID](./PersonalData.xml#L166:~:text=<TypeDefinition%20Name="-,FieldSemanticsType,-") *([Experimental](Common.md#Experimental))*|The unique identifier of a legal entity<br>A legal entity is a corporation, an association, or any other organization of legal capacity, which has statutory rights and responsibilities.
[UserID](./PersonalData.xml#L174:~:text=<TypeDefinition%20Name="-,FieldSemanticsType,-") *([Experimental](Common.md#Experimental))*|The unique identifier of a user<br>A user is an individual who interacts with the services supplied by a system.
