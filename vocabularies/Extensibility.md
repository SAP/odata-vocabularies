# Extensibility Vocabulary
**Namespace: [com.sap.vocabularies.Extensibility.v1](Extensibility.xml)**

Terms for Extensibility


## Terms

Term|Type|Description
:---|:---|:----------
[IsFieldExtensible](./Extensibility.xml#L39:~:text=<Term%20Name="-,IsFieldExtensible,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFieldExtensible"></a>The annotated entity type allows adding extension fields
[FieldExtensibilityConfiguration](./Extensibility.xml#L44:~:text=<Term%20Name="-,FieldExtensibilityConfiguration,-") *([Experimental](Common.md#Experimental))*|[FieldExtensibilityConfigurationType?](#FieldExtensibilityConfigurationType)|<a name="FieldExtensibilityConfiguration"></a>The annotated entity type allows adding extension fields

## <a name="FieldExtensibilityConfigurationType"></a>[FieldExtensibilityConfigurationType](./Extensibility.xml#L49:~:text=<ComplexType%20Name="-,FieldExtensibilityConfigurationType,-") *([Experimental](Common.md#Experimental))*
...

Property|Type|Description
:-------|:---|:----------
[Flavor](./Extensibility.xml#L52:~:text=<ComplexType%20Name="-,FieldExtensibilityConfigurationType,-") *([Experimental](Common.md#Experimental))*|[Flavor?](#Flavor)|...
[Path](./Extensibility.xml#L56:~:text=<ComplexType%20Name="-,FieldExtensibilityConfigurationType,-") *([Experimental](Common.md#Experimental))*|URL?|...

## <a name="Flavor"></a>[Flavor](./Extensibility.xml#L63:~:text=<TypeDefinition%20Name="-,Flavor,-") *([Experimental](Common.md#Experimental))*
**Type:** String

...

Allowed Value|Description
:------------|:----------
[CAP](./Extensibility.xml#L68:~:text=<TypeDefinition%20Name="-,Flavor,-")|Cloud Application Programming Model
