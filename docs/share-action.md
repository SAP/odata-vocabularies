# Draft Share Action

## Specification

||External (OData) Name|Internal (ABAP) Name|Realization|Comment|
|---|---|---|---|---|
|Action|Share|`SHARE`| ||
|Action Parameter|ShareAll|`SHAREALL`|`ABP_BEHV_PAR_SHARE`||
|Action Parameter|IsDeltaUpdate|`ISDELTAUPDATE`|`ABP_BEHV_PAR_SHARE`||
|Action Parameter|Users|`USERS`|`ABP_BEHV_PAR_SHARE`|Table of `ABP_BEHV_DRAFT_USER_ACCESS`|
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
  <Parameter Name="ShareAll" Type="Edm.Boolean" Nullable="false">
    <Annotation Term="Core.OptionalParameter">
      <Record/>
    </Annotation>
  </Parameter>
  <Parameter Name="IsDeltaUpdate" Type="Edm.Boolean" Nullable="false" DefaultValue="false"/>
  <Parameter Name="Users" Type="Collection(com.sap.gateway.srvd.i_shareddemoaction_sd.v0001.DraftUserAccessType)" Nullable="false">
    <Annotation Term="Core.OptionalParameter">
      <Record/>
    </Annotation>
  </Parameter>
</Action>
```

## Semantics

ShareAll = true, IsDeltaUpdate = true, Users = $[]$ or $[C]$ (the current user)
- Semantics: ShareAll Draft
  - Check if current (= session) user is authorized for EDIT
    - If ok: Add current user to user list if check was successful and user not yet added
  - Switch draft to _ShareAll_ if not yet done
- Response:
  - Check fails: _No authorization for user XY to work on this draft._
  - Check successful and user added to user list: _User XY can now work on this draft._
  - Check successful and user not added to user list: tbd.

ShareAll = true, IsDeltaUpdate = true, Users = $[A]$ or $[A,B]$
- Semantics: ShareAll Draft
  - Not implemented
- Response:
  - Not implemented

ShareAll = true, IsDeltaUpdate = true, Users not provided
- Semantics: ShareAll Draft
  - Inconsistent
- Response:
  - %fail-cause = unspecific

ShareAll = true, IsDeltaUpdate = false, Users = $[]$
- Semantics: ShareAll Draft
  - Empty user list
  - Add user who has _created_ the draft to user list
  - Switch draft to _ShareAll_ if not yet done

ShareAll = true, IsDeltaUpdate = false, Users = $[A,B]$
- Semantics: ShareAll Draft
  - Check if users are authorized for EDIT
  - Add users to user list for which the check was successful and which are not yet on the list
  - Remove other user from user list which are not in provided users
  - Add user who has _created_ the draft to user list if not yet on the user list
  - Switch draft to _ShareAll_ if not yet done
- Response:
  - For each user for which the check fails: _No authorization for user XY to work on this draft._

ShareAll = false, IsDeltaUpdate = true, Users = $[]$ or $[C]$ (the current user)
- Semantics: Collaborative Draft
  - Check if current (= session) user is authorized for EDIT
    - If ok: Add current user to user list if check was successful and user not yet added
  - Switch draft to _collaborative_ if not yet done
- Response:
  - Check fails: _No authorization for user XY to work on this draft._
  - Check successful and user added to user list: _User XY can now work on this draft._
  - Check successful and user not added to user list: tbd.

ShareAll = false, IsDeltaUpdate = true, Users = $[A]$ or $[A,B]$
- Semantics: Collaborative Draft / Shared Draft
  - Not implemented
- Response:
  - Not implemented

ShareAll = false, IsDeltaUpdate = true, Users not provided
- Semantics: Collaborative Draft
  - Inconsistent
- Response:
  - %fail-cause = unspecific

ShareAll = false, IsDeltaUpdate = false, Users = $[]$
- Semantics: Collaborative Draft
  - Empty user list
  - Add user who has _created_ the draft to user list
  - Switch draft to _collaborative_ if not yet done

ShareAll = false, IsDeltaUpdate = false, Users = $[A,B]$
- Semantics: Collaborative Draft
  - Check if users are authorized for EDIT
  - Add users to user list for which the check was successful and which are not yet on the list
  - Remove other user from user list which are not in provided users
  - Add user who has _created_ the draft to user list if not yet on the user list
  - Switch draft to _collaborative_ if not yet done
- Response:
  - For each user for which the check fails: _No authorization for user XY to work on this draft._

ShareAll not provided, IsDeltaUpdate irrelevant, Users = $[]$ or not provided
- Semantics: Exclusive Draft
  - Switch draft to _exclusive_ if not yet done

ShareAll not provided, IsDeltaUpdate irrelevant, Users = $[A]$ or $[A,B]$
- Semantics: Exclusive Draft
  - Inconsistent
- Response:
  - %fail-cause = unspecific

## Authorization

Rule 1: A change in sharing (i.e. exclusive vs. share all vs. collaborative) is only allowed by
- the draft owner or
- all (admin, UserRole=Owner) users in the user list.

Rule 2: A call of the share action to change the user list is only allowed
- in case of ShareAll = true
  - by a user in the list
  - by the current user if (a) it is a delta update and (b) users is empty or only contains the current user
- in case of ShareAll = false
  - by a user in the list
