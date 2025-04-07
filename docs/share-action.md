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

## Semantics

ShareAll = true, IsDeltaUpdate = true, Users = $[]$ or $[\{current\ user\}]$
- Semantics: ShareAll Draft
  - Check if current (= session) user is authorized for EDIT
    - If ok: Add current user to user list if check was successful and user not yet added
  - Switch draft to _ShareAll_ if not yet done
- Response:
  - Check fails: _No authorization for user XY to work on this draft._
  - Check successful and user added to user list: _User XY can now work on this draft._
  - Check successful and user not added to user list: tbd.

ShareAll = true, IsDeltaUpdate = true, Users = $[\{other\ user\}]$ or $[\{other\ user\},\{very\ other\ user\}]$
- Semantics: ShareAll Draft
  - Not implemented
- Response:
  - Not implemented

ShareAll = true, IsDeltaUpdate = true, Users not provided
- Semantics: ShareAll Draft
  - Inconsistent
- Response:
  - %fail-cause = unspecific
