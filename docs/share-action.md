# Draft Share Action

## Specification

||External (OData) Name|Internal (ABAP) Name|Realization|Comment|
|---|---|---|---|---|
|Action|Share|`SHARE`| ||
|Action Parameter|Users|`USERS`|`ABP_BEHV_PAR_SHARE`|Table of `ABP_BEHV_DRAFT_USER_ACCESS`|
|Action Parameter|ShareAll|`SHAREALL`|`ABP_BEHV_PAR_SHARE`||
|Action Parameter|IsDeltaUpdate|`ISDELTAUPDATE`|`ABP_BEHV_PAR_SHARE`||
|Complex Type|DraftUserAccessType||`ABP_BEHV_DRAFT_USER_ACCESS`||
|Complex Type Property|UserID|`USERID`|||
|Complex Type Property|UserAccessRole|`USERACCESSROLE`|||

### Example

```xml
<ComplexType Name="DraftUserAccessType">
  <Property Name="UserID" Type="Edm.String" Nullable="false" MaxLength="12"/>
  <Property Name="UserAccessRole" Type="Edm.String" Nullable="false" MaxLength="1"/>
</ComplexType>
<Action Name="Share" IsBound="true">
  <Parameter Name="_it" Type="com.sap.gateway.srvd.i_shareddemoaction_sd.v0001.SharedEntityType" Nullable="false"/>
  <Parameter Name="ShareAll" Type="Edm.Boolean" Nullable="false"/>
  <Parameter Name="IsDeltaUpdate" Type="Edm.Boolean" Nullable="false"/>
  <Parameter Name="Users" Type="Collection(com.sap.gateway.srvd.i_shareddemoaction_sd.v0001.DraftUserAccessType)" Nullable="false"/>
</Action>
```