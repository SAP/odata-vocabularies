# Extensibility Vocabulary
**Namespace: [com.sap.vocabularies.Extensibility.v1](Extensibility.xml)**


          Terms for Extensibility
          With the following requirements:
          * Tell the UI5 frontend that the backend has field extensibility features with a specific flavor, alternative approach might be to use Open Resource Discovery 
          => Do we need the flavor or can we do discovery
          * Annotate CDS entities to be extensible
            * fine grained or simple? => both
            * with inheritance? with include or exclude semantics? => only include
            * Link between extension points and entity => to avoid implicit magic, have it as additional annotation
          * How to tell there are extension attributes
        


## Terms

Term|Type|Description
:---|:---|:----------
[IsFieldExtensible](./Extensibility.xml#L49:~:text=<Term%20Name="-,IsFieldExtensible,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsFieldExtensible"></a>The annotated entity type allows adding extension fields
[Enabled](./Extensibility.xml#L54:~:text=<Term%20Name="-,Enabled,-") *([Experimental](Common.md#Experimental))*|[EnabledType?](#EnabledType)|<a name="Enabled"></a>The annotated entity type allows extension to the entity
[FieldExtensibilityMechanism](./Extensibility.xml#L82:~:text=<Term%20Name="-,FieldExtensibilityMechanism,-") *([Experimental](Common.md#Experimental))*|[FieldExtensibilityMechanismType](#FieldExtensibilityMechanismType)|<a name="FieldExtensibilityMechanism"></a>The extension mechanism used by the annotated service
[ExtensionPoints](./Extensibility.xml#L127:~:text=<Term%20Name="-,ExtensionPoints,-") *([Experimental](Common.md#Experimental))*|\[String\]|<a name="ExtensionPoints"></a>The annotated entity type is extensible at these extension points.

## <a name="EnabledType"></a>[EnabledType](./Extensibility.xml#L59:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*
Enable fine grained extensibility features

Property|Type|Description
:-------|:---|:----------
[Primitive](./Extensibility.xml#L63:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Adding plain attributes
[Structured](./Extensibility.xml#L67:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Adding attributes with structured types
[Composition](./Extensibility.xml#L71:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Allows adding compositions which might result in new entities to be created
[Annotations](./Extensibility.xml#L75:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Adding and overwriting annotations

## <a name="FieldExtensibilityMechanismType"></a>[FieldExtensibilityMechanismType](./Extensibility.xml#L87:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*
The extension mechanism used by the annotated service


            SEC-236:
            Ensure that no attackers can obtain intelligence about the internal structure or 
            state of a protected domain. Information which is internal to a system can provide 
            details particularly useful for attackers. Note that in this context, also an 
            authenticated legitimate user could expose malicious behavior and shall not have access
             to information he or she doesn't need to know.
            At the same time, attention has to be paid that no sensitive information gets disclosed 
            to unauthorized persons, such as IT Support staff.

            _TODO: is `Flavor` sufficient and the `Path` "well-known", or is the `Path` sufficient and leads to a "discovery document" that describes the flavor?_

Property|Type|Description
:-------|:---|:----------
[Flavor](./Extensibility.xml#L103:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*|[Flavor](#Flavor)|_TODO: Flavor/identifier of extension mechanism (version)_
[Path](./Extensibility.xml#L107:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*|URL|_TODO: URL to discovery document of extensibility mechanism_

## <a name="Flavor"></a>[Flavor](./Extensibility.xml#L114:~:text=<TypeDefinition%20Name="-,Flavor,-") *([Experimental](Common.md#Experimental))*
**Type:** String

Different Flavors have different extensibility feature-sets

Allowed Value|Description
:------------|:----------
[CSN???](./Extensibility.xml#L119:~:text=<TypeDefinition%20Name="-,Flavor,-")|_TODO: Extension via Core Data Services Schema Notation (CSN)_, Cloud Application Programming Model Feature-Set for Handling Extensibility
