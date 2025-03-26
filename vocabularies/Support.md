# Support Vocabulary
**Namespace: [com.sap.vocabularies.Support.v1](Support.xml)**

Terms for support tools


## Terms

Term|Type|Description
:---|:---|:----------
[TechnicalInfo](Support.xml#L35)|[TechnicalInfoSource](#TechnicalInfoSource)|<a name="TechnicalInfo"></a>Correspondence between `Core.ContentID` in a parameter and in the return type of an action<br>If values in the action invocation are annotated with `Core.ContentID`, the corresponding values returned by the action are annotated with the same `Core.ContentID` and can thus be referenced in subsequent requests within the same batch request.


## Functions

<a name="Template_GetTechnicalInfo"></a>
### [Template_GetTechnicalInfo](Support.xml#L58)

Template for a function that retrieves technical info for a UI service and whose function import is named in [`TechnicalInfo/FunctionImport`](#TechnicalInfoType)

Parameter|Type|Description
:--------|:---|:----------
[ServiceRoot](Support.xml#L60)|URL|Root URL of the UI service<br>This URL is interpreted relative to the root URL of the service containing the function.
[EdmPath](Support.xml#L67)|String|Path to the model element for which technical info is requested<br>Uses the same syntax as [annotation targets](https://oasis-tcs.github.io/odata-specs/odata-csdl-xml/odata-csdl-xml.html#Target).
[&rarr;](Support.xml#L73)|\[[TechnicalInfoLink](#TechnicalInfoLink)\]|Collection of development objects related to the model element


<a name="TechnicalInfoSource"></a>
## [TechnicalInfoSource](Support.xml#L43)
A function import for retrieval of technical info

Property|Type|Description
:-------|:---|:----------
[Url](Support.xml#L45)|URL|URL of a CSDL document describing the function<br>This URL is interpreted relative to the URL of the CSDL document containing the annotation. The function must follow [this template](#Template_GetTechnicalInfo).
[FunctionImport](Support.xml#L53)|String|Name of the function import

<a name="TechnicalInfoLink"></a>
## [TechnicalInfoLink](Support.xml#L77)


Property|Type|Description
:-------|:---|:----------
[Text](Support.xml#L78)|String|Description of a development object
[Url](Support.xml#L82)|URL|Link to open the development object<br>This URL is interpreted relative to the root URL of the service containing the function.
