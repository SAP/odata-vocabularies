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
          * Consumption contracts?!
        


## Terms

Term|Type|Description
:---|:---|:----------
[Extensible](./Extensibility.xml#L51:~:text=<Term%20Name="-,Extensible,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Extensible"></a>The annotated entity type allows all extensibility features the server provides.
[Enabled](./Extensibility.xml#L56:~:text=<Term%20Name="-,Enabled,-") *([Experimental](Common.md#Experimental))*|[EnabledType?](#EnabledType)|<a name="Enabled"></a>The annotated entity type allows only the specified extensions to the entity
[FieldExtensibilityMechanism](./Extensibility.xml#L86:~:text=<Term%20Name="-,FieldExtensibilityMechanism,-") *([Experimental](Common.md#Experimental))*|[FieldExtensibilityMechanismType](#FieldExtensibilityMechanismType)|<a name="FieldExtensibilityMechanism"></a>TODO: Clarify if necessary; The extension mechanism used by the annotated entity
[ExtensionPoints](./Extensibility.xml#L108:~:text=<Term%20Name="-,ExtensionPoints,-") *([Experimental](Common.md#Experimental))*|\[String\]|<a name="ExtensionPoints"></a>The annotated entity type is extensible at these extension points.

## <a name="EnabledType"></a>[EnabledType](./Extensibility.xml#L61:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*
Enable fine grained extensibility features

Property|Type|Description
:-------|:---|:----------
[Fields](./Extensibility.xml#L64:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Allows to extend the entity with additional attributes and annotations for these extension attribute
[Composition](./Extensibility.xml#L68:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Allows adding compositions, also called node-extensibility, which might result in new entities to be created
[NewDataSource](./Extensibility.xml#L72:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Allows adding new associations to other entities/data sources, which might result in expensive joins and potential circular dependencies
[Annotations](./Extensibility.xml#L76:~:text=<ComplexType%20Name="-,EnabledType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Allows manipulating the annotations of the annotated entity and any of its attrirbutes, annotations define themselves if they can be overwritten

## <a name="FieldExtensibilityMechanismType"></a>[FieldExtensibilityMechanismType](./Extensibility.xml#L91:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*
The extension mechanism used by the annotated service

Property|Type|Description
:-------|:---|:----------
[DiscoveryUrl](./Extensibility.xml#L94:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*|URL|URL to discovery which field extensibility feature sets the backend supports and under which path the extensions can be created<br>In the short run the server would return something like { "flavor" : "CAP", "path": "/add-cap-extension } In the future the frontend might use a more detailed protocol and the server response might look like { "feat1" : true, "feat2": true, "path": "/add-cap-extension }
