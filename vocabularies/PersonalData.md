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
[EntitySemantics](PersonalData.xml#L58)|[EntitySemanticsType](#EntitySemanticsType)|<a name="EntitySemantics"></a>Primary meaning of the entities in the annotated entity set
[DataSubjectRole](PersonalData.xml#L61)|String?|<a name="DataSubjectRole"></a>Role of the data subjects in this set (e.g. employee, customer)<br>Values are application-specific. Can be a static value or a `Path` expression If the role varies per entity
[DataSubjectRoleDescription](PersonalData.xml#L68)|String?|<a name="DataSubjectRoleDescription"></a>Language-dependent description of the role of the data subjects in this set (e.g. employee, customer)<br>Values are application-specific. Can be a static value or a `Path` expression If the role varies per entity
[FieldSemantics](PersonalData.xml#L111)|[FieldSemanticsType](#FieldSemanticsType)|<a name="FieldSemantics"></a>Primary meaning of the personal data contained in the annotated property<br>Changes to values of annotated properties are tracked in the audit log. Use this annotation also on fields that are already marked as contact or address data.
[IsPotentiallyPersonal](PersonalData.xml#L227)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPotentiallyPersonal"></a>Property contains potentially personal data<br>Personal data describes any information which is related to an identified or identifiable natural person (data subject). An identifiable person is one who can be identified, directly or indirectly, in particular by a reference to an identifier such as a name, an identification number, location data, an online identifier, or to one or more factors specific to the physical, physiological, genetic, mental, economic, cultural, or social identity of that natural person.<br>Note: properties annotated with [`FieldSemantics`](#FieldSemantics) need not be additionally annotated with this term.<br>
[IsPotentiallySensitive](PersonalData.xml#L238)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsPotentiallySensitive"></a>Property contains potentially sensitive personal data<br><p>Sensitive personal data is a category of personal data that needs special handling. The determination which personal data is sensitive may differ for different legal areas or industries. Examples of sensitive personal data:
</p> <ul> <li>Special categories of personal data, such as data revealing racial or ethnic origin, political opinions, religious or philosophical beliefs, trade union membership, genetic data, biometric data, data concerning health or sex life or sexual orientation.</li> <li>Personal data subject to professional secrecy.</li> <li>Personal data relating to criminal or administrative offences.</li> <li>Personal data concerning insurances and bank or credit card accounts.</li> </ul>
<a name="EntitySemanticsType"></a>
## [EntitySemanticsType](PersonalData.xml#L76)
**Type:** String

Primary meaning of the data contained in the annotated entity set

Allowed Value|Description
:------------|:----------
[DataSubject](PersonalData.xml#L80)|Entities describing a data subject (an identified or identifiable natural person), e.g. customer, vendor, employee<br>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).
[DataSubjectDetails](PersonalData.xml#L89)|Entities containing details to a data subject (an identified or identifiable natural person) but not representing data subjects by themselves, e.g. street addresses, email addresses, phone numbers<br>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).
[Other](PersonalData.xml#L98)|Entities containing personal data or references to data subjects but not representing data subjects or data subject details by themselves, e.g. customer quote, customer order, purchase order with involved business partners<br>These entities are relevant for audit logging. There are no restrictions on their structure. The properties should be annotated suitably with [FieldSemantics](#FieldSemantics).

<a name="FieldSemanticsType"></a>
## [FieldSemanticsType](PersonalData.xml#L115)
**Type:** String

Primary meaning of a data field

Allowed Value|Description
:------------|:----------
[DataSubjectID](PersonalData.xml#L119)|The unique identifier for a data subject
[DataSubjectIDType](PersonalData.xml#L123) *([Experimental](Common.md#Experimental))*|The type of ID identifying the data subject and which is allocated when creating a consent record, e.g. an e-mail address or a phone number.
[ConsentID](PersonalData.xml#L128) *([Experimental](Common.md#Experimental))*|The unique identifier for a consent<br>A consent is the action of the data subject confirming that the usage of his or her personal data shall be allowed for a given purpose. A consent functionality allows the storage of a consent record in relation to a specific purpose and shows if a data subject has granted, withdrawn, or denied consent.
[PurposeID](PersonalData.xml#L140) *([Experimental](Common.md#Experimental))*|The unique identifier for the purpose of processing of personal data.<br>Any processing of personal data is based on a specified, explicit, and legitimate purposes and not further processed in a manner that is incompatible with those purposes. The purpose is defined by the data controller or joint data controllers.
[ContractRelatedID](PersonalData.xml#L150)|The unique identifier for transactional data that is related to a contract that requires processing of personal data<br>Examples:<br> - Sales Contract ID<br> - Purchase Contract ID<br> - Service Contract ID
[LegalEntityID](PersonalData.xml#L164) *(Deprecated)*|Deprecated in favor of [`DataControllerID`](#DataControllerID)
[UserID](PersonalData.xml#L179) *([Experimental](Common.md#Experimental))*|The unique identifier of a user<br>A user is an individual who interacts with the services supplied by a system.
[EndOfBusinessDate](PersonalData.xml#L187) *([Experimental](Common.md#Experimental))*|Defines the end of active business and the start of residence time and retention period<br>End of business is the point in time when the processing of a set of personal data is no longer required for the active business, for example, when a contract is fulfilled. After this has been reached and a customer-defined residence period has passed, the data is blocked and can only be accessed by users with special authorizations (for example, tax auditors). All fields of type `Edm.Date` or `Edm.DateTimeOffset` on which the end of business determination depends should be annotated.
[DataControllerID](PersonalData.xml#L198) *([Experimental](Common.md#Experimental))*|The unique identifier of a data controller<br>The unique identifier of a legal entity which alone or jointly with others determines the purposes and means of the processing of personal data. The Data Controller is fully responsible (and accountable) that data protection and privacy principles (such as purpose limitation or data minimization), defined in the European General Data Protection Regulation (GDPR) or any other data protection legislation, are adhered to when processing personal data. The DataControllerID succeeds the LegalEntityID.
[BlockingDate](PersonalData.xml#L207) *([Experimental](Common.md#Experimental))*|Defines a date that marks when the provider of the data will block these<br>Defines a date that marks when the provider of the data will block these. This is the point in time when the processing of a set of personal data is no longer required for the active business, for example, when a contract is fulfilled. After it has been reached, the data is blocked in the source and can only be displayed by users with special authorizations (for example, tax auditors); however, it is not allowed to create/change/copy/follow-up blocked data. Consumers of the data should consider if there is an additional purpose to process the data beyond the defined blocking date.
[EndOfRetentionDate](PersonalData.xml#L215) *([Experimental](Common.md#Experimental))*|Defines the date when the provider destroys the data<br>Defines a date that marks when the provider of the data can destroy these. Consumers of the data should consider if there is an additional purpose (or a legal hold) to process the data beyond the defined destruction date.
