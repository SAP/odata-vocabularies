# Extensibility Vocabulary
**Namespace: [com.sap.vocabularies.Extensibility.v1](Extensibility.xml)**


          Terms for Extensibility
          With the following requirements:
          * Tell the UI5 frontend that the backend has field extensibility features with a specific flavor, alternative approach might be to use Open Resource Discovery 
          * Annotate CDS entities to be extensible
            * fine grained or detailed?
            * with inheritance? with include or exclude semantics?
            * Link between extension points and entity
          * How to tell there are extension attributes
        


## Terms

Term|Type|Description
:---|:---|:----------
[IsFieldExtensible](./Extensibility.xml#L48:~:text=<Term%20Name="-,IsFieldExtensible,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFieldExtensible"></a>The annotated entity type allows adding extension fields
[Enabled](./Extensibility.xml#L53:~:text=<Term%20Name="-,Enabled,-") *([Experimental](Common.md#Experimental))*|[EnabledType?](#EnabledType)|<a name="Enabled"></a>The annotated entity type allows extension to the entity
[FieldExtensibilityMechanism](./Extensibility.xml#L81:~:text=<Term%20Name="-,FieldExtensibilityMechanism,-") *([Experimental](Common.md#Experimental))*|[FieldExtensibilityMechanismType](#FieldExtensibilityMechanismType)|<a name="FieldExtensibilityMechanism"></a>The extension mechanism used by the annotated service
[ExtensionPoints](./Extensibility.xml#L116:~:text=<Term%20Name="-,ExtensionPoints,-") *([Experimental](Common.md#Experimental))*|\[String\]|<a name="ExtensionPoints"></a>The annotated entity type is extensible at these extension points.

## <a name="EnabledType"></a>[EnabledType](./Extensibility.xml#L58:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*
Enable fine grained extensibility features

Property|Type|Description
:-------|:---|:----------
[Primitive](./Extensibility.xml#L62:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Adding plain attributes
[Structured](./Extensibility.xml#L66:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Adding attributes with structured types
[Composition](./Extensibility.xml#L70:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Allows adding compositions which might result in new entities to be created
[Annotations](./Extensibility.xml#L74:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Adding and overwriting annotations

## <a name="FieldExtensibilityMechanismType"></a>[FieldExtensibilityMechanismType](./Extensibility.xml#L86:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*
The extension mechanism used by the annotated service

_TODO: is `Flavor` sufficient and the `Path` "well-known", or is the `Path` sufficient and leads to a "discovery document" that describes the flavor?_

Property|Type|Description
:-------|:---|:----------
[Flavor](./Extensibility.xml#L92:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*|[Flavor](#Flavor)|_TODO: Flavor/identifier of extension mechanism (version)_
[Path](./Extensibility.xml#L96:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*|URL|_TODO: URL to discovery document of extensibility mechanism_

## <a name="Flavor"></a>[Flavor](./Extensibility.xml#L103:~:text=<TypeDefinition%20Name="-,Flavor,-") *([Experimental](Common.md#Experimental))*
**Type:** String

Different Flavors have different extensibility feature-sets

Allowed Value|Description
:------------|:----------
[CSN???](./Extensibility.xml#L108:~:text=<TypeDefinition%20Name="-,Flavor,-")|_TODO: Extension via Core Data Services Schema Notation (CSN)_, Cloud Application Programming Model Feature-Set for Handling Extensibility
