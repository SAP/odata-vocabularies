# DirectEdit Vocabulary
**Namespace: [com.sap.vocabularies.DirectEdit.v1](DirectEdit.xml)**

Terms for Direct-Edit User Interfaces


## Terms

Term|Type|Description
:---|:---|:----------
[SideEffects](DirectEdit.xml#L35) *([Experimental](Common.md#Experimental))*|[SideEffectsType?](#SideEffectsType)|<a name="SideEffects"></a>Determine side effects of client-side data modification

## <a name="SideEffectsType"></a>[SideEffectsType](DirectEdit.xml#L40)


A direct-edit side-effect consists of:

- a list of possible triggers, _preliminary_ syntax:
  - `Path:` followed by a path to the property whose change triggered the side-effects determination 
  - `Action:` followed by the name of the (UI) action that triggered the side-effects determination

- an action bound to the entity set with the following non-binding parameters:
  - `Qualifier` of type [`Core.SimpleIdentifier`](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)
    or cast-compatible: the qualifier of the `Sideeffects` annotation
  - `Trigger` of type `Edm.String`: the trigger of side-effects determination, see `Triggers` property
  - `Data` of a complex type that is structure-compatible with the entity type of the annotated entity set, 
    i.e.
    - all primitive properties are cast-compatible with corresponding properties of the entity type and are nullable,
    - all complex properties are structure-compatible with corresponding complex or navigation properties
      (for related entities necessary for side-effect determination)
    - it may contain properties without a corresponding property in the entity type, e.g. for end-user messages
  
    The return type of the action also needs to be structure-compatible with the entity type of the annotated entity set,
    it can be the same type as for `Data`.

Property|Type|Description
:-------|:---|:----------
[Triggers](DirectEdit.xml#L62)|\[String\]|List of possible triggers for determining side effects
[CalculationAction](DirectEdit.xml#L65)|[QualifiedName](Common.md#QualifiedName)|Name of the action for determining side effects
