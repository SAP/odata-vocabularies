# Extensibility Vocabulary
**Namespace: [com.sap.vocabularies.Extensibility.v1](Extensibility.xml)**

Terms for Extensibility


## Terms

Term|Type|Description
:---|:---|:----------
[IsFieldExtensible](./Extensibility.xml#L39:~:text=<Term%20Name="-,IsFieldExtensible,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFieldExtensible"></a>The annotated entity type allows adding extension fields
[FieldExtensibilityMechanism](./Extensibility.xml#L44:~:text=<Term%20Name="-,FieldExtensibilityMechanism,-") *([Experimental](Common.md#Experimental))*|[FieldExtensibilityMechanismType?](#FieldExtensibilityMechanismType)|<a name="FieldExtensibilityMechanism"></a>The extension mechanism used by the annotated service

## <a name="FieldExtensibilityMechanismType"></a>[FieldExtensibilityMechanismType](./Extensibility.xml#L49:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*
The extension mechanism used by the annotated service

_TODO: is `Flavor` sufficient and the `Path` "well-known", or is the `Path` sufficient and leads to a "discovery document" that describes the flavor?_

Property|Type|Description
:-------|:---|:----------
[Flavor](./Extensibility.xml#L55:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*|[Flavor?](#Flavor)|_TODO: Flavor/identifier of extension mechanism (version)_
[Path](./Extensibility.xml#L59:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*|URL?|_TODO: URL to discovery document of extensibility mechanism_

## <a name="Flavor"></a>[Flavor](./Extensibility.xml#L66:~:text=<TypeDefinition%20Name="-,Flavor,-") *([Experimental](Common.md#Experimental))*
**Type:** String

Flavor of extensibility mechanism

Allowed Value|Description
:------------|:----------
[CSN???](./Extensibility.xml#L71:~:text=<TypeDefinition%20Name="-,Flavor,-")|_TODO: Extension via Core Data Services Schema Notation (CSN)_
