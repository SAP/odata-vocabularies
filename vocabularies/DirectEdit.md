# DirectEdit Vocabulary
**Namespace: [com.sap.vocabularies.DirectEdit.v1](DirectEdit.xml)**

Terms for Direct-Edit User Interfaces


## Terms

Term|Type|Description
:---|:---|:----------
[SideEffects](DirectEdit.xml#L35) *([Experimental](Common.md#Experimental))*|[SideEffectsType](#SideEffectsType)|<a name="SideEffects"></a>Determine side effects of client-side data modification

## <a name="SideEffectsType"></a>[SideEffectsType](DirectEdit.xml#L40)


A direct-edit side-effect consists of:

- a list of possible triggers, _preliminary_ syntax:
  - `Path:` followed by a path to the property whose change triggered the side-effects determination 
  - `Action:` followed by the name of the (UI) action that triggered the side-effects determination

- an action bound to the entity set with the following non-binding parameters:
  - `Trigger` of type `Edm.String`: the trigger of side-effects determination, see `Triggers` property
  - `Data` of a complex type that is structure-compatible with the entity type of the annotated entity set, 
    i.e. all primitive leaf properties have the same type as the corresponding property of the entity type and are nullable

Property|Type|Description
:-------|:---|:----------
[Triggers](DirectEdit.xml#L53)|\[String\]|List of possible triggers for determining side effects
[CalculationAction](DirectEdit.xml#L56)|[QualifiedName](Common.md#QualifiedName)|Name of the action for determining side effects
