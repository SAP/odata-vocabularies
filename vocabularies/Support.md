# Support Vocabulary
**Namespace: [com.sap.vocabularies.Support.v1](Support.xml)**

Terms for support tools


## Terms

Term|Type|Description
:---|:---|:----------
[TechnicalInfo](Support.xml#L35)|[TechnicalInfoSource](#TechnicalInfoSource)|<a name="TechnicalInfo"></a>Correspondence between `Core.ContentID` in a parameter and in the return type of an action<br>If values in the action invocation are annotated with `Core.ContentID`, the corresponding values returned by the action are annotated with the same `Core.ContentID` and can thus be referenced in subsequent requests within the same batch request.


## Functions

<a name="Template_GetTechnicalInfo"></a>
### [Template_GetTechnicalInfo](Support.xml#L57)

Template for a function that retrieves technical info for a UI service and whose function import is named in [`TechnicalInfo/FunctionImport`](#TechnicalInfoType)

Parameter|Type|Description
:--------|:---|:----------
[ServiceDefinition](Support.xml#L59)|String|Name of the service definition
[ModelElementPath](Support.xml#L62)|String|Path to the model element for which technical info is requested<br>Uses the same syntax as [annotation targets](https://oasis-tcs.github.io/odata-specs/odata-csdl-xml/odata-csdl-xml.html#Target).
[&rarr;](Support.xml#L68)|\[[TechnicalInfoLink](#TechnicalInfoLink)\]|Collection of development objects related to the model element


<a name="TechnicalInfoSource"></a>
## [TechnicalInfoSource](Support.xml#L43)
A function import for retrieval of technical info

Property|Type|Description
:-------|:---|:----------
[Url](Support.xml#L45)|URL|URL of a CSDL document describing the function<br>The function must follow [this template](#Template_GetTechnicalInfo).
[FunctionImport](Support.xml#L52)|String|Name of the function import

<a name="TechnicalInfoLink"></a>
## [TechnicalInfoLink](Support.xml#L72)


Property|Type|Description
:-------|:---|:----------
[Text](Support.xml#L73)|String|Description of a development object
[Url](Support.xml#L77)|URL|Link to open the development object
