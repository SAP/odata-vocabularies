# ILM Vocabulary
**Namespace: [com.sap.vocabularies.ILM.v1](ILM.xml)**

Terms for annotating Information Lifecycle Management


Information Lifecycle Management allows to mark entities with relevant information so retention, archiving and destruction policies can be attached to them. 
While this is usually the case for [PersonalData](PersonalData.md) entities, other entities can also be hooked in to destroy or archive old records for example.

At SAP the annotations are used to hook entities from the BTP application development frameworks into the Data Privacy Information (DPI) service on BTP, which is responsible for archiving, blocking and destruction, even for personal data unrelated entities.
       


## Terms

Term|Type|Description
:---|:---|:----------
[BlockingEnabled](ILM.xml#L46)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="BlockingEnabled"></a>Entity can be blocked by ILM<br>Marks an entity as being able to be blocked by ILM. Blocked means a flag is set on the record, so that it no longer can be used for its original purpose, but remains in persistence for a specified time to be potentially accessed by Auditors.
[ArchivingEnabled](ILM.xml#L54)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ArchivingEnabled"></a>Entity can be blocked by ILM<br>Marks an entity as being able to be archived by ILM. Archived means the record is deleted from its current persistence and moved to a cheaper storage location for long-term storage.
[FieldSemantics](ILM.xml#L62)|[FieldSemanticsType](#FieldSemanticsType)|<a name="FieldSemantics"></a>Primary meaning for the Information Lifecycle contained in the annotated property<br>Use this annotation on fields to semantically mark-up properties relevant for the Information Lifecycle, like describing the related business process or who is responsible for the record.

<a name="FieldSemanticsType"></a>
## [FieldSemanticsType](ILM.xml#L66)
**Type:** String

Primary meaning of a data field

Allowed Value|Description
:------------|:----------
[ProcessOrganizationAttribute](ILM.xml#L70) *([Experimental](Common.md#Experimental))*|An identifier for the process organization.<br>The process organization answers the 'What' question, acting as a condition when defining retention and archiving policies, allowing to filter out the correct entities based on the business process intention. In terms of PersonalData it marks the purpose of a record.
[LineOrganizationAttribute](ILM.xml#L79) *([Experimental](Common.md#Experimental))*|An identifier for the line organization.<br>The line organization answers the 'Who' question, acting as a condition when defining retention and archiving policies, allowing to filter out the correct entities based on who is responsible for a specific record. In terms of PersonalData it is the data controller.
