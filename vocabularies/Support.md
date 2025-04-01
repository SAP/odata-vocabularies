# Support Vocabulary
**Namespace: [com.sap.vocabularies.Support.v1](Support.xml)**

Terms for support tools


## Terms

Term|Type|Description
:---|:---|:----------
[TechnicalInfo](Support.xml#L35)|[TechnicalInfoSource](#TechnicalInfoSource)|<a name="TechnicalInfo"></a>A function import for retrieval of technical info


## Functions

<a name="Template_GetTechnicalInfo"></a>
### [Template_GetTechnicalInfo](Support.xml#L52)

Template for a function that retrieves technical info for a UI service and whose function import is named in [`TechnicalInfo/FunctionImport`](#TechnicalInfoType)

Parameter|Type|Description
:--------|:---|:----------
[ServiceRoot](Support.xml#L54)|URL|Root URL of the UI service<br>This URL is interpreted relative to the root URL of the service containing the function.
[EdmPath](Support.xml#L61)|String|Path to the model element for which technical info is requested<br>Uses the same syntax as [annotation targets](https://oasis-tcs.github.io/odata-specs/odata-csdl-xml/odata-csdl-xml.html#Target).
[&rarr;](Support.xml#L67)|\[[TechnicalInfoLink](#TechnicalInfoLink)\]|Collection of development objects related to the model element


<a name="TechnicalInfoSource"></a>
## [TechnicalInfoSource](Support.xml#L38)


Property|Type|Description
:-------|:---|:----------
[Url](Support.xml#L39)|URL|URL of a CSDL document describing the function<br>This URL is interpreted relative to the URL of the CSDL document containing the annotation. The function must follow [this template](#Template_GetTechnicalInfo).
[FunctionImport](Support.xml#L47)|String|Name of the function import

<a name="TechnicalInfoLink"></a>
## [TechnicalInfoLink](Support.xml#L71)


Property|Type|Description
:-------|:---|:----------
[Text](Support.xml#L72)|String|Description of a development object
[Url](Support.xml#L76)|URL|Link to open the development object<br>This URL is interpreted relative to the root URL of the service containing the function.
