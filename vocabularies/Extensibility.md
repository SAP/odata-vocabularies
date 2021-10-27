# Extensibility Vocabulary
**Namespace: [com.sap.vocabularies.Extensibility.v1](Extensibility.xml)**


          Terms for Extensibility to tell consumers which extensibility features and capabilities are available on service and entity level.
        


## Terms

Term|Type|Description
:---|:---|:----------
[Extensible](./Extensibility.xml#L41:~:text=<Term%20Name="-,Extensible,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Extensible"></a>The annotated entity type allows all extensibility features the server provides. In case the entity is annotated with the more detailed @Extensibility.Fields, @Extensibility.Relations, @Extensibility.Annotations annotation, this annotation should be ignored.<br/> Exposing an entity using this annotation establishes a very broad extensibility contract. Only very limited changes to the entity can be considered compatible so that extensions will survive updates.
[Fields](./Extensibility.xml#L54:~:text=<Term%20Name="-,Fields,-") *([Experimental](Common.md#Experimental))*|[FieldsType?](#FieldsType)|<a name="Fields"></a>The annotated entity type has the specified field extension capabilities
[Relations](./Extensibility.xml#L68:~:text=<Term%20Name="-,Relations,-") *([Experimental](Common.md#Experimental))*|[RelationsType?](#RelationsType)|<a name="Relations"></a>The annotated entity type has the specified relational extension capabilities
[Annotations](./Extensibility.xml#L82:~:text=<Term%20Name="-,Annotations,-") *([Experimental](Common.md#Experimental))*|[AnnotationsType?](#AnnotationsType)|<a name="Annotations"></a>The annotated entity type has the specified annotations extension capabilities
[FieldExtensibilityMechanism](./Extensibility.xml#L96:~:text=<Term%20Name="-,FieldExtensibilityMechanism,-") *([Experimental](Common.md#Experimental))*|[FieldExtensibilityMechanismType](#FieldExtensibilityMechanismType)|<a name="FieldExtensibilityMechanism"></a>The extension mechanism used by the annotated service

## <a name="FieldsType"></a>[FieldsType](./Extensibility.xml#L59:~:text=<ComplexType%20Name="-,FieldsType,-") *([Experimental](Common.md#Experimental))*
The annotated entity type has the specified field extension capabilities

Property|Type|Description
:-------|:---|:----------
[Enabled](./Extensibility.xml#L62:~:text=<ComplexType%20Name="-,FieldsType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Allows to extend the entity with additional properties and annotations for these extension properties. The presence of this annotation means the @Extensibility.Extensible annotation must be ignored.

## <a name="RelationsType"></a>[RelationsType](./Extensibility.xml#L73:~:text=<ComplexType%20Name="-,RelationsType,-") *([Experimental](Common.md#Experimental))*
Enable fine grained extensibility features

Property|Type|Description
:-------|:---|:----------
[Enabled](./Extensibility.xml#L76:~:text=<ComplexType%20Name="-,RelationsType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Allows to extend the entity with additional compositions, also called node-extensibility, which might result in new entities to be created, as well as additional associations which might results in new data sources being part of join conditions. The presence of this annotation means the @Extensibility.Extensible annotation must be ignored.

## <a name="AnnotationsType"></a>[AnnotationsType](./Extensibility.xml#L87:~:text=<ComplexType%20Name="-,AnnotationsType,-") *([Experimental](Common.md#Experimental))*
Enable fine grained extensibility features

Property|Type|Description
:-------|:---|:----------
[Enabled](./Extensibility.xml#L90:~:text=<ComplexType%20Name="-,AnnotationsType,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|Allows manipulating the annotations of the annotated entity and any of its attrirbutes, annotations define themselves if they can be overwritten. The presence of this annotation means the @Extensibility.Extensible annotation must be ignored.

## <a name="FieldExtensibilityMechanismType"></a>[FieldExtensibilityMechanismType](./Extensibility.xml#L101:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*
The extension mechanism used by the annotated service

Property|Type|Description
:-------|:---|:----------
[DiscoveryUrl](./Extensibility.xml#L104:~:text=<ComplexType%20Name="-,FieldExtensibilityMechanismType,-") *([Experimental](Common.md#Experimental))*|URL|URL to discovery which field extensibility feature sets the backend supports and under which path the extensions can be created<br>In the short run the server would return something like { "flavor" : "CAP", "path": "/add-cap-extension } In the future the frontend might use a more detailed protocol and the server response might look like { "feat1" : true, "feat2": true, "path": "/add-cap-extension } or can be delegated to another metadata discovery standard.
