using ConsentUtil;

context ConsentModel {

  @PersonalData.EntitySemantics: 'Consent'     
  @PersonalData.DataSubjectRole: 'Data Subject'

  @AuditLog.Operation: {Insert: false, Update: false, Delete: true}  // @D046777: these annotations should not appear in OData $metadata as they controlling audit logging granularity
  @AuditLog.Action: {WithdrawConsent: true}                          // beside the standard operations, we list Actions relevant for logging
  entity Consent {

        @PersonalData.FieldSemantics: 'ConsentID'
    key ConsentId                       : ConsentUtil.TConsentId;

        TemplateId                      : ConsentUtil.TTemplateId;
        TemplateName                    : ConsentUtil.TTemplateName;

        @PersonalData.FieldSemantics: 'ConsentPurposeID'
        PurposeId                       : ConsentUtil.TPurposeId;

        PurposeName                     : ConsentUtil.TPurposeName;
        ControllerId                    : Integer;
        Country                         : String(2);
        ConsentModel                    : ConsentUtil.TModel;
        ApplicationId                   : ConsentUtil.TApplicationId;
        ApplicationTemplateId           : String(128);
        ValidFrom                       : Timestamp;
        StartOfExpiration               : Timestamp;
        ValidTo                         : Timestamp;

        @PersonalData.FieldSemantics: 'DataSubjectIDType'            // this field could be filled dynamic like here, but also static in some other application
        DataSubjectType                 : String(30);

        @PersonalData.FieldSemantics: 'DataSubjectID'                // this is a "technical" id 
        DataSubjectId                   : String(128) not null;

        @PersonalData.IsPersonal
        DataSubjectFormattedDescription : String(255);

        GrantedAt                       : Timestamp;
        GrantedBy                       : String(128);
        WithdrawnAt                     : Timestamp;
        WithdrawnBy                     : String(128);
        Language                        : ConsentUtil.TLanguage;
        ThirdPartyId                    : ConsentUtil.TThirdPartyId;
        ThirdPartyFunction              : Integer;
        CreatedAt                       : ConsentUtil.TCreatedAt;
        CreatedBy                       : ConsentUtil.TCreatedBy;
        ChangedAt                       : ConsentUtil.TChangedAt;
        ChangedBy                       : ConsentUtil.TChangedBy;

        @PersonalData.FieldSemantics: 'RelatedData' 
        ConsentStatus                   : Integer;

        LifecycleStatus                 : Integer;
        SourceSystemId                  : ConsentUtil.TSystemId;
        TextPurposeId                   : ConsentUtil.TTextUUID;
        PurposeDescription              : String(80);
        TextExplanatoryTemplateId       : ConsentUtil.TTextUUID;
        TextQuestionTemplateId          : ConsentUtil.TTextUUID;
        TextConsequenceTemplateId       : ConsentUtil.TTextUUID;
        TemplateDescription             : String(80);
        PurposePersDataCategory         : String(30);
        ThirdPartyPersDataCategory      : String(30);
        to_PurposeText                  : association[1, 0..1] to ConsentText on to_PurposeText.ConsentTextId = TextPurposeId;
        to_TemplateExplanatoryText      : association[1, 0..1] to ConsentText on to_TemplateExplanatoryText.ConsentTextId = TextExplanatoryTemplateId;
        to_TemplateQuestionText         : association[1, 0..1] to ConsentText on to_TemplateQuestionText.ConsentTextId = TextQuestionTemplateId;
        to_TemplateConsequenceText      : association[1, 0..1] to ConsentText on to_TemplateConsequenceText.ConsentTextId = TextConsequenceTemplateId;
    };

    entity ConsentText {
      key ConsentTextId  : ConsentUtil.TTextUUID;
          SourceObjectId : ConsentUtil.TUUID;
          Language       : ConsentUtil.TLanguage;
          Type           : ConsentUtil.TType;
          Text           : ConsentUtil.TText;
          OriginChangedAt: ConsentUtil.TChangedAt;
    };	
};

<<<<<<<<<<<<<<<<<<<<<<< Impact of the Annotations on Runtime >>>>>>>>>>>>>>>>>>>>>

* First Level       --> @PersonalData.EntitySemantics: 'DataSubject' / ...                           // indicates if an entity is relevant for audit logging at all

** Second Level (a) --> @AuditLog.Operation: {<StandardOperation>: true || false, ...}         // indicates if a certain StandardOperation (like Insert, Update, Delete) on the entity is relevant for audit logging 

** Second Level (b) --> @AuditLog.Action:    {<ActionName>: true || false, ...}                // indicates if a certain Action on the entity is relevant for audit logging 

*** Third level     --> Fill the corresponding "header" fields in the audit log API (see https://github.wdf.sap.corp/xs-audit-log/audit-java-client/wiki/Audit-Log-V2)

static "type": @PersonalData.EntitySemantics: 'DataSubject' / 'LegalGround' / ...           -->   auditedObject.setType("...");               // Example : "Consent" as name of the Entity
@PersonalData.FieldSemantics: 'DataSubjectID' / 'ConsentID' / 'LegalGroundID'         -->   auditedObject.addIdentifier("...");         // Example : ConsentId = '4711'

@PesonalData.FieldSemantics: 'DataSubjectIDType'   -->   auditedDataSubject.setType("...");          // Example : BusinessPartner
@PesonalData.DataSubjectRole                       -->   auditedDataSubject.setRole("...");          // Example : Vendor
@PesonalData.FieldSemantics: 'DataSubjectID'       -->   auditedDataSubject.addIdentifier("...");    // Example : BusinessPartnerId = '0815'

**** Fourth level   --> Fill the relavent name value pairs into the audit log API 

@PersonalData.FieldSemantics/IsPersonal            --> personal data like e-mail-address, birthday, name, ...
(here the changes have to be tracked into the API as name-value-pairs containing "old" image and/or "new" image depending on the operation type like Insert, Update, Delete)

TODO: what about data marked as sensitive? Should those values appear in the audit log at all?
TODO: contact/address data will not be explicitly tagged as PersonalData but implicitly by being tagged as first name, last name, street, city, ... 