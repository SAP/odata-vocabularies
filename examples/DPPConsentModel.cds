using ConsentUtil;

context ConsentModel {

  @PersonalData.Semantics: 'LegalGround'     // the Consent itself is a legal ground as a special case of 'PersonRelatedData' which will be used for related Entities which are not a legal ground itself 

  @PersonalData.ChangeLog.Operation: {Insert: false, Update: false, Delete: true}   // @D046777: these annotations should not appear in OData $metadata as they controlling audit logging granularity
  @PersonalDataChangeLog.Operation: {Insert: false, Update: false, Delete: true}    // should we rather use a separate top-level term?

  @PersonalData(.)ChangeLog.Action:    {WithdrawConsent: true}                      // beside the standard operations, we list Actions relevant for logging
  entity Consent {

    @PersonalData.RelatedEntityId                                                      // --> discuss with Suresh whether this is necessary or whether "key" combined with @PersonalData.Semantics is sufficient
    @PersonalData.FieldSemantics: 'LegalGroundId'                                      // --> discuss with Girish whether this is necessary or whether "key" combined with @PersonalData.Semantics is sufficient
    key ConsentId                       : ConsentUtil.TConsentId;
     	TemplateId                      : ConsentUtil.TTemplateId;
    	TemplateName                    : ConsentUtil.TTemplateName;
     	PurposeId                       : ConsentUtil.TPurposeId;
     	PurposeName                     : ConsentUtil.TPurposeName;
     	ControllerId                    : Integer;
        Country                         : String(2);
        ConsentModel                    : ConsentUtil.TModel;
        ApplicationId                   : ConsentUtil.TApplicationId;
        ApplicationTemplateId           : String(128);

		@PersonalData.FieldSemantics: 'PersonalData'
        ValidFrom                       : Timestamp;

        StartOfExpiration               : Timestamp;

     	@PersonalData.FieldSemantics: 'PersonalData' 
     	ValidTo                         : Timestamp;

     	@PersonalData.FieldSemantics: 'DataSubjectRole'                 // if there is a dedicated field in the entity then take it - if not, somebody (application or framework) should give a decent default
       'Data Subject' as DataSubjectRole;                              // calculated field for data subject role

     	@PersonalData.FieldSemantics: 'DataSubjectType'                 // this field could be filled dynamic like here, but also static in some other application
     	DataSubjectType                 : String(30);

     	@PersonalData.FieldSemantics: 'DataSubjectId'                   // this is a "technical" id 
     	DataSubjectId                   : String(128) not null;

     	@PersonalData.FieldSemantics: 'PersonalData'
     	DataSubjectFormattedDescription : String(255);

     	@PersonalData.FieldSemantics: 'RelatedData' 
     	GrantedAt                       : Timestamp;

     	@PersonalData.FieldSemantics: 'RelatedData' 
     	GrantedBy                       : String(128);

     	@PersonalData.FieldSemantics: 'RelatedData' 
     	WithdrawnAt                     : Timestamp;

        @PersonalData.FieldSemantics: 'RelatedData' 
     	WithdrawnBy                     : String(128);

     	Language                        : ConsentUtil.TLanguage;

     	@PersonalData.FieldSemantics: 'RelatedData' 
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

        @PersonalData.FieldSemantics: 'RelatedData' 
     	to_PurposeText                  : association[1, 0..1] to ConsentText on to_PurposeText.ConsentTextId = TextPurposeId;

     	@PersonalData.FieldSemantics: 'RelatedData' 
     	to_TemplateExplanatoryText      : association[1, 0..1] to ConsentText on to_TemplateExplanatoryText.ConsentTextId = TextExplanatoryTemplateId;

	@PersonalData.FieldSemantics: 'RelatedData' 
     	to_TemplateQuestionText         : association[1, 0..1] to ConsentText on to_TemplateQuestionText.ConsentTextId = TextQuestionTemplateId;

     	@PersonalData.FieldSemantics: 'RelatedData' 
     	to_TemplateConsequenceText      : association[1, 0..1] to ConsentText on to_TemplateConsequenceText.ConsentTextId = TextConsequenceTemplateId;
    };

    @PersonalData.Semantics: 'PersonRelatedData'
    entity ConsentText {
        key ConsentTextId  : ConsentUtil.TTextUUID;
            SourceObjectId : ConsentUtil.TUUID;
            Language       : ConsentUtil.TLanguage;
            Type           : ConsentUtil.TType;

            @PersonalData.FieldSemantics: 'RelatedData' 
            Text           : ConsentUtil.TText;

            @PersonalData.FieldSemantics: 'RelatedData' 
            OriginChangedAt: ConsentUtil.TChangedAt;
    };	
};

<<<<<<<<<<<<<<<<<<<<<<< Impact of the Annotations on Runtime >>>>>>>>>>>>>>>>>>>>>

* First Level       --> @PersonalData.Semantics: 'PersonRelatedData'     // ( or in special cases 'LegalGround' ) indicates if an entity is relevant for audit logging at all

** Second Level (a) --> @PersonalData(.)ChangeLog.Operation: {<StandardOperation>: true || false, ...}         // indicates if a certain StandardOperation (like Insert, Update, Delete) on the entity is relevant for audit logging 

** Second Level (b) --> @PersonalData(.)ChangeLog.Action:    {<ActionName>: true || false, ...}                // indicates if a certain Action on the entity is relevant for audit logging 

*** Third level     --> Fill the corresponding "header" fields in the audit log API (see https://github.wdf.sap.corp/xs-audit-log/audit-java-client/wiki/Audit-Log-V2)

static  "type": @PersonalData.Semantics:      'LegalGround'     / 'PersonRelatedData'  -->   auditedObject.setType("...");               // Example : "Consent" as name of the Entity
dynamic "type": @PersonalData.FieldSemantics: 'LegalGroundType' / 'RelatedEntityType'  -->   auditedObject.setType("...");               // Example : "Consent" as a field value in a more generic entity 
@PersonalData.FieldSemantics: 'LegalGroundId' / 'RelatedEntityId'                      -->   auditedObject.addIdentifier("...");         // Example : ConsentId = '4711'

@PesonalData.FieldSemantics: 'DataSubjectType'     -->   auditedDataSubject.setType("...");          // Example : BusinessPartner
@PesonalData.FieldSemantics: 'DataSubjectRole'     -->   auditedDataSubject.setRole("...");          // Example : Vendor
@PesonalData.FieldSemantics: 'DataSubjectId'       -->   auditedDataSubject.addIdentifier("...");    // Example : BusinessPartnerId = '0815'

**** Fourth level   --> Fill the relavent name value pairs into the audit log API 

@PersonalData.FieldSemantics: 'PersonalData' --> personal data like e-mail-address, birthday, name, ...
(here the changes have to be tracked into the API as name-value-pairs containing "old" image and/or "new" image depending on the operation type like Insert, Update, Delete)

@PersonalData.FieldSemantics: 'RelatedData'  --> related data like mySalesOrders, myAssets, ...
(this is just for information purpose, changes are NOT logged in the audit log API)