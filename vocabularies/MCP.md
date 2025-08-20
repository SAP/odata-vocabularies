# MCP Vocabulary
**Namespace: [com.sap.vocabularies.MCP.v1](MCP.xml)**

Terms that define exposure of an OData service in the Model Context Protocol

An OData server can double as a generic MCP server:
        (Parts of) the functionality of one or more OData services can be exposed in MCP
        based on an [`MCP.Service`](#Service) annotation.
        Annotations from this vocabulary are not meant for consumers of the OData services themselves.


## Terms

Term|Type|Description
:---|:---|:----------
[Service](MCP.xml#L48)|\[[ServiceType](#ServiceType)\]|<a name="Service"></a>An MCP service is a collection of MCP tools that expose (part of) the functionality of an OData service
[EntityTool](MCP.xml#L71)|[EntityToolType](#EntityToolType)|<a name="EntityTool"></a>Exposes in an MCP tool an entity that is addressed via a certain resource path
[OperationToolParameter](MCP.xml#L136)|[OperationToolParameterType](#OperationToolParameterType)|<a name="OperationToolParameter"></a>Exposes in an MCP tool a non-binding parameter of an operation that is addressed via a certain resource path
[OperationToolReturnType](MCP.xml#L155)|[OperationToolReturnTypeType](#OperationToolReturnTypeType)|<a name="OperationToolReturnType"></a>Exposes in an MCP tool the return type of an operation that is addressed via a certain resource path

<a name="ServiceType"></a>
## [ServiceType](MCP.xml#L51)


Property|Type|Description
:-------|:---|:----------
[ToolName](MCP.xml#L52)|String|Name of the MCP tool
[ToolDefinition](MCP.xml#L55)|AnnotationPath|Annotation defining the MCP tool<br>A tool exposing an operation is defined by one annotation per parameter and return type, all with the same `ToolName`.<br>Allowed Terms:<ul><li>[EntityTool](#EntityTool)</li><li>[OperationToolParameter](#OperationToolParameter)</li><li>[OperationToolReturnType](#OperationToolReturnType)</li></ul>

<a name="AbstractToolType"></a>
## [*AbstractToolType*](MCP.xml#L75)


**Derived Types:**
- [EntityToolType](#EntityToolType)
- [OperationToolParameterType](#OperationToolParameterType)
- [OperationToolReturnTypeType](#OperationToolReturnTypeType)

Property|Type|Description
:-------|:---|:----------
[InputKeyValues](MCP.xml#L76)|\[[InputValue](#InputValue)\]|The n-th entry contains a JSON path that determines the n-th key value in the resource path by querying the MCP tool's input schema<br>Key values are ordered like in the key-as-segment convention.
[QueryOptionsTemplate](MCP.xml#L82)|String|URI template (RFC6570) for query options for the tool execution
[QueryOptionsLabeledElements](MCP.xml#L85)|\[[LabeledElement](#LabeledElement)\]|Labeled elements for the `QueryOptionsTemplate`

<a name="InputValue"></a>
## [InputValue](MCP.xml#L89)


**Derived Types:**
- [LabeledElement](#LabeledElement)
- [InputProperty](#InputProperty)

Property|Type|Description
:-------|:---|:----------
[Value](MCP.xml#L90)|[Path](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.JSON.V1.md#Path)|JSON path that determines a value by querying the input schema

<a name="LabeledElement"></a>
## [LabeledElement](MCP.xml#L94): [InputValue](#InputValue)


Property|Type|Description
:-------|:---|:----------
[*Value*](MCP.xml#L90)|[Path](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.JSON.V1.md#Path)|JSON path that determines a value by querying the input schema
[Label](MCP.xml#L95)|String|

<a name="EntityToolType"></a>
## [EntityToolType](MCP.xml#L97): [AbstractToolType](#AbstractToolType)


Property|Type|Description
:-------|:---|:----------
[*InputKeyValues*](MCP.xml#L76)|\[[InputValue](#InputValue)\]|The n-th entry contains a JSON path that determines the n-th key value in the resource path by querying the MCP tool's input schema<br>Key values are ordered like in the key-as-segment convention.
[*QueryOptionsTemplate*](MCP.xml#L82)|String|URI template (RFC6570) for query options for the tool execution
[*QueryOptionsLabeledElements*](MCP.xml#L85)|\[[LabeledElement](#LabeledElement)\]|Labeled elements for the `QueryOptionsTemplate`
[HttpMethod](MCP.xml#L98)|String|HTTP method used in the tool execution
[InputStructuralProperties](MCP.xml#L101)|\[[InputProperty](#InputProperty)\]|Structural properties exposed in the MCP tool's input schema
[InputNavigationProperties](MCP.xml#L104)|\[NavigationPropertyPath\]|Navigation properties exposed in the MCP tool's input schema<br>The target entity type of an exposed navigation property has an `EntityTool` annotation with the same qualifier.
[OutputStructuralProperties](MCP.xml#L110)|\[[OutputProperty](#OutputProperty)\]|Structural properties exposed in the MCP tool's output schema
[OutputNavigationProperties](MCP.xml#L113)|\[NavigationPropertyPath\]|Navigation properties exposed in the MCP tool's output schema<br>The target entity type of an exposed navigation property has an `EntityTool` annotation with the same qualifier.

<a name="InputProperty"></a>
## [InputProperty](MCP.xml#L120): [InputValue](#InputValue)


Property|Type|Description
:-------|:---|:----------
[*Value*](MCP.xml#L90)|[Path](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.JSON.V1.md#Path)|JSON path that determines a value by querying the input schema
[Property](MCP.xml#L121)|PropertyPath|Structural property exposed in the MCP tool's input schema

<a name="OutputValue"></a>
## [OutputValue](MCP.xml#L125)


**Derived Types:**
- [OutputProperty](#OutputProperty)

Property|Type|Description
:-------|:---|:----------
[Value](MCP.xml#L126)|PrimitiveType|Property value expressed in terms of the annotation target in the OData response

<a name="OutputProperty"></a>
## [OutputProperty](MCP.xml#L130): [OutputValue](#OutputValue)


Property|Type|Description
:-------|:---|:----------
[*Value*](MCP.xml#L126)|PrimitiveType|Property value expressed in terms of the annotation target in the OData response
[Property](MCP.xml#L131)|[Path](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.JSON.V1.md#Path)|JSON path in the MCP tool's output schema that addresses an exposed property

<a name="OperationToolParameterType"></a>
## [OperationToolParameterType](MCP.xml#L140): [AbstractToolType](#AbstractToolType)


Property|Type|Description
:-------|:---|:----------
[*InputKeyValues*](MCP.xml#L76)|\[[InputValue](#InputValue)\]|The n-th entry contains a JSON path that determines the n-th key value in the resource path by querying the MCP tool's input schema<br>Key values are ordered like in the key-as-segment convention.
[*QueryOptionsTemplate*](MCP.xml#L82)|String|URI template (RFC6570) for query options for the tool execution
[*QueryOptionsLabeledElements*](MCP.xml#L85)|\[[LabeledElement](#LabeledElement)\]|Labeled elements for the `QueryOptionsTemplate`
[PrimitiveValue](MCP.xml#L141)|[InputValue?](#InputValue)|Primitive parameter exposed in the MCP tool's input schema
[StructuralProperties](MCP.xml#L144)|\[[InputProperty](#InputProperty)\]|Structural properties exposed in the MCP tool's input schema
[NavigationProperties](MCP.xml#L147)|\[NavigationPropertyPath\]|Navigation properties exposed in the MCP tool's input schema<br>The target entity type of an exposed navigation property has an `EntityTool` annotation with the same qualifier.

<a name="OperationToolReturnTypeType"></a>
## [OperationToolReturnTypeType](MCP.xml#L159): [AbstractToolType](#AbstractToolType)


Property|Type|Description
:-------|:---|:----------
[*InputKeyValues*](MCP.xml#L76)|\[[InputValue](#InputValue)\]|The n-th entry contains a JSON path that determines the n-th key value in the resource path by querying the MCP tool's input schema<br>Key values are ordered like in the key-as-segment convention.
[*QueryOptionsTemplate*](MCP.xml#L82)|String|URI template (RFC6570) for query options for the tool execution
[*QueryOptionsLabeledElements*](MCP.xml#L85)|\[[LabeledElement](#LabeledElement)\]|Labeled elements for the `QueryOptionsTemplate`
[PrimitiveValue](MCP.xml#L160)|[OutputValue?](#OutputValue)|Primitive return type exposed in the MCP tool's input schema
[StructuralProperties](MCP.xml#L163)|\[[OutputProperty](#OutputProperty)\]|Structural properties exposed in the MCP tool's output schema
[NavigationProperties](MCP.xml#L166)|\[NavigationPropertyPath\]|Navigation properties exposed in the MCP tool's output schema<br>The target entity type of an exposed navigation property has an `EntityTool` annotation with the same qualifier.
