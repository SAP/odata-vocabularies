# MCP Vocabulary
**Namespace: [com.sap.vocabularies.MCP.v1](MCP.xml)**

Terms that define exposure of an OData service in the Model Context Protocol

An OData server can double as a generic MCP server:
        (Parts of) the functionality of one or more OData services can be exposed in MCP
        based on an [`MCP.Service`](#Service) annotation.
        Annotations from this vocabulary are not meant for consumers of the OData services themselves,
        but can be exposed as resources for MCP clients.


## Terms

Term|Type|Description
:---|:---|:----------
[Service](MCP.xml#L49)|[ServiceType](#ServiceType)|<a name="Service"></a>An MCP service consists of resources and tools
[EntityTool](MCP.xml#L82)|[EntityToolType](#EntityToolType)|<a name="EntityTool"></a>Exposes in an MCP tool an entity that is addressed via a certain resource path
[OperationToolParameter](MCP.xml#L147)|[OperationToolParameterType](#OperationToolParameterType)|<a name="OperationToolParameter"></a>Exposes in an MCP tool a non-binding parameter of an operation that is addressed via a certain resource path
[OperationToolReturnType](MCP.xml#L166)|[OperationToolReturnTypeType](#OperationToolReturnTypeType)|<a name="OperationToolReturnType"></a>Exposes in an MCP tool the return type of an operation that is addressed via a certain resource path

<a name="ServiceType"></a>
## [ServiceType](MCP.xml#L52)


Property|Type|Description
:-------|:---|:----------
[Resources](MCP.xml#L53) *([Experimental](Common.md#Experimental))*|\[URL\]|A collection of MCP resources
[Tools](MCP.xml#L58)|\[[ToolType](#ToolType)\]|A collection of MCP tools that expose (part of) the functionality of an OData service

<a name="ToolType"></a>
## [ToolType](MCP.xml#L62)


Property|Type|Description
:-------|:---|:----------
[Name](MCP.xml#L63)|String|Name of the MCP tool
[Definition](MCP.xml#L66)|AnnotationPath|Annotation defining the MCP tool<br>A tool exposing an operation is defined by one annotation per parameter and return type, all with the same `Name`.<br>Allowed Terms:<ul><li>[EntityTool](#EntityTool)</li><li>[OperationToolParameter](#OperationToolParameter)</li><li>[OperationToolReturnType](#OperationToolReturnType)</li></ul>

<a name="AbstractToolType"></a>
## [*AbstractToolType*](MCP.xml#L86)


**Derived Types:**
- [EntityToolType](#EntityToolType)
- [OperationToolParameterType](#OperationToolParameterType)
- [OperationToolReturnTypeType](#OperationToolReturnTypeType)

Property|Type|Description
:-------|:---|:----------
[InputKeyValues](MCP.xml#L87)|\[[InputValue](#InputValue)\]|The n-th entry contains a JSON path that determines the n-th key value in the resource path by querying the MCP tool's input schema<br>Key values are ordered like in the key-as-segment convention.
[QueryOptionsTemplate](MCP.xml#L93)|String|URI template (RFC6570) for query options for the tool execution
[QueryOptionsLabeledElements](MCP.xml#L96)|\[[LabeledElement](#LabeledElement)\]|Labeled elements for the `QueryOptionsTemplate`

<a name="InputValue"></a>
## [InputValue](MCP.xml#L100)


**Derived Types:**
- [LabeledElement](#LabeledElement)
- [InputProperty](#InputProperty)

Property|Type|Description
:-------|:---|:----------
[Value](MCP.xml#L101)|[Path](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.JSON.V1.md#Path)|JSON path that determines a value by querying the input schema

<a name="LabeledElement"></a>
## [LabeledElement](MCP.xml#L105): [InputValue](#InputValue)


Property|Type|Description
:-------|:---|:----------
[*Value*](MCP.xml#L101)|[Path](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.JSON.V1.md#Path)|JSON path that determines a value by querying the input schema
[Label](MCP.xml#L106)|String|

<a name="EntityToolType"></a>
## [EntityToolType](MCP.xml#L108): [AbstractToolType](#AbstractToolType)


Property|Type|Description
:-------|:---|:----------
[*InputKeyValues*](MCP.xml#L87)|\[[InputValue](#InputValue)\]|The n-th entry contains a JSON path that determines the n-th key value in the resource path by querying the MCP tool's input schema<br>Key values are ordered like in the key-as-segment convention.
[*QueryOptionsTemplate*](MCP.xml#L93)|String|URI template (RFC6570) for query options for the tool execution
[*QueryOptionsLabeledElements*](MCP.xml#L96)|\[[LabeledElement](#LabeledElement)\]|Labeled elements for the `QueryOptionsTemplate`
[HttpMethod](MCP.xml#L109)|String|HTTP method used in the tool execution
[InputStructuralProperties](MCP.xml#L112)|\[[InputProperty](#InputProperty)\]|Structural properties exposed in the MCP tool's input schema
[InputNavigationProperties](MCP.xml#L115)|\[NavigationPropertyPath\]|Navigation properties exposed in the MCP tool's input schema<br>The target entity type of an exposed navigation property has an `EntityTool` annotation with the same qualifier.
[OutputStructuralProperties](MCP.xml#L121)|\[[OutputProperty](#OutputProperty)\]|Structural properties exposed in the MCP tool's output schema
[OutputNavigationProperties](MCP.xml#L124)|\[NavigationPropertyPath\]|Navigation properties exposed in the MCP tool's output schema<br>The target entity type of an exposed navigation property has an `EntityTool` annotation with the same qualifier.

<a name="InputProperty"></a>
## [InputProperty](MCP.xml#L131): [InputValue](#InputValue)


Property|Type|Description
:-------|:---|:----------
[*Value*](MCP.xml#L101)|[Path](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.JSON.V1.md#Path)|JSON path that determines a value by querying the input schema
[Property](MCP.xml#L132)|PropertyPath|Structural property exposed in the MCP tool's input schema

<a name="OutputValue"></a>
## [OutputValue](MCP.xml#L136)


**Derived Types:**
- [OutputProperty](#OutputProperty)

Property|Type|Description
:-------|:---|:----------
[Value](MCP.xml#L137)|PrimitiveType|Property value expressed in terms of the annotation target in the OData response

<a name="OutputProperty"></a>
## [OutputProperty](MCP.xml#L141): [OutputValue](#OutputValue)


Property|Type|Description
:-------|:---|:----------
[*Value*](MCP.xml#L137)|PrimitiveType|Property value expressed in terms of the annotation target in the OData response
[Property](MCP.xml#L142)|[Path](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.JSON.V1.md#Path)|JSON path in the MCP tool's output schema that addresses an exposed property

<a name="OperationToolParameterType"></a>
## [OperationToolParameterType](MCP.xml#L151): [AbstractToolType](#AbstractToolType)


Property|Type|Description
:-------|:---|:----------
[*InputKeyValues*](MCP.xml#L87)|\[[InputValue](#InputValue)\]|The n-th entry contains a JSON path that determines the n-th key value in the resource path by querying the MCP tool's input schema<br>Key values are ordered like in the key-as-segment convention.
[*QueryOptionsTemplate*](MCP.xml#L93)|String|URI template (RFC6570) for query options for the tool execution
[*QueryOptionsLabeledElements*](MCP.xml#L96)|\[[LabeledElement](#LabeledElement)\]|Labeled elements for the `QueryOptionsTemplate`
[PrimitiveValue](MCP.xml#L152)|[InputValue?](#InputValue)|Primitive parameter exposed in the MCP tool's input schema
[StructuralProperties](MCP.xml#L155)|\[[InputProperty](#InputProperty)\]|Structural properties exposed in the MCP tool's input schema
[NavigationProperties](MCP.xml#L158)|\[NavigationPropertyPath\]|Navigation properties exposed in the MCP tool's input schema<br>The target entity type of an exposed navigation property has an `EntityTool` annotation with the same qualifier.

<a name="OperationToolReturnTypeType"></a>
## [OperationToolReturnTypeType](MCP.xml#L170): [AbstractToolType](#AbstractToolType)


Property|Type|Description
:-------|:---|:----------
[*InputKeyValues*](MCP.xml#L87)|\[[InputValue](#InputValue)\]|The n-th entry contains a JSON path that determines the n-th key value in the resource path by querying the MCP tool's input schema<br>Key values are ordered like in the key-as-segment convention.
[*QueryOptionsTemplate*](MCP.xml#L93)|String|URI template (RFC6570) for query options for the tool execution
[*QueryOptionsLabeledElements*](MCP.xml#L96)|\[[LabeledElement](#LabeledElement)\]|Labeled elements for the `QueryOptionsTemplate`
[PrimitiveValue](MCP.xml#L171)|[OutputValue?](#OutputValue)|Primitive return type exposed in the MCP tool's input schema
[StructuralProperties](MCP.xml#L174)|\[[OutputProperty](#OutputProperty)\]|Structural properties exposed in the MCP tool's output schema
[NavigationProperties](MCP.xml#L177)|\[NavigationPropertyPath\]|Navigation properties exposed in the MCP tool's output schema<br>The target entity type of an exposed navigation property has an `EntityTool` annotation with the same qualifier.
