namespace gdpr.gra;

service sample {

  @Communication.Contact : {
    n : {
      given: firstName,
      additional : middleName,
      surname : lastName
    },
    adr: "addresses/@Communication.Address",
    email: [
      { 
        address : email
      }
    ],
    gender : genderCode,
    bday : birthDate
  }
  @PersonalData.EntitySemantics : 'DataSubject'
  entity Employee {
    @PersonalData.FieldSemantics : 'DataSubjectID'
    @PersonalData.IsUserID
    key userId : String(16);
    @Communication.IsEmailAddress
    @Core.Description : 'Email address, e.g. foo@bar.com'
    email : String(256);
    firstName : String(256) not null;
    middleName : String(256);
    lastName : String(256) not null;
    @PersonalData.IsSensitive
    genderCode : String(1);
    birthDate : Date; 
    addresses : Association to many Address on addresses.employee = $self;
    leaveRequests : Association to many LeaveRequest on leaveRequests.employee = $self;
  }

  @PersonalData.EntitySemantics : 'DataSubjectDetails'
  @Communication.Address : {
    country : country,
    region : region,
    locality : city,
    district : district,
    code : streetPostalCode,
    street : streetName,
    ext : houseID,
    careof : careOfName,
    building : buildingID
  }
  entity Address {
    key addressId : String;
    country : String(256);
    region : String(256);
    city : String(256);
    district : String(256);
    streetPostalCode : String(10);
    streetName : String(60);
    houseID : String(10);
    careOfName : String(40);
    buildingID : String(10);
    @PersonalData.FieldSemantics : 'DataSubjectID'
    @PersonalData.IsUserID
    employee : Association to Employee not null;   
  }

  @PersonalData.EntitySemantics : 'LegalGround'
  entity LeaveRequest {
    @PersonalData.FieldSemantics : 'LegalGroundID'
    key leaveRequestId : Integer64;
    leaveType : String(32) not null;
    leaveStartDate : Date not null;
    leaveEndDate : Date not null;
    leaveReason : String(1024);
    leaveRequestStatus : String(10) not null;
    @PersonalData.FieldSemantics : 'DataSubjectID'
    @PersonalData.IsUserID
    employee : Association to Employee not null;   
  }  

}
