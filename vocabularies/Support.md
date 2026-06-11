# Support Vocabulary
**Namespace: [com.sap.vocabularies.Support.v1](Support.xml)**

Terms for support tools


## Terms

Term|Type|Description
:---|:---|:----------
[DebugInfo](Support.xml#L35)|String|<a name="DebugInfo"></a>Debug information provided by the client in json batch requests
[TechnicalInfoLinks](Support.xml#L38)|[TechnicalInfoLinksType](#TechnicalInfoLinksType)|<a name="TechnicalInfoLinks"></a>How to retrieve links to technical information about the service


## Functions

<a name="Template_GetTechnicalInfoLinks"></a>
### [Template_GetTechnicalInfoLinks](Support.xml#L55)

Template for a function that retrieves links to technical information about a service and whose function import is named in [`TechnicalInfoLinks/FunctionImport`](#TechnicalInfoLinksType)

Parameter|Type|Description
:--------|:---|:----------
[ServiceRoot](Support.xml#L57)|URL|Root URL of the UI service<br>This URL is interpreted relative to the root URL of the service containing the function.
[EdmPath](Support.xml#L64)|String|Path to the model element for which technical info is requested<br>Uses the same syntax as [annotation targets](https://oasis-tcs.github.io/odata-specs/odata-csdl-xml/odata-csdl-xml.html#Target).
[&rarr;](Support.xml#L70)|\[[TechnicalInfoLink](#TechnicalInfoLink)\]|Collection of development objects related to the model element


<a name="TechnicalInfoLinksType"></a>
## [TechnicalInfoLinksType](Support.xml#L41)


Property|Type|Description
:-------|:---|:----------
[Url](Support.xml#L42)|URL|URL of a CSDL document describing the function<br>This URL is interpreted relative to the URL of the CSDL document containing the annotation. The function must follow [this template](#Template_GetTechnicalInfoLinks).
[FunctionImport](Support.xml#L50)|String|Name of a function import for retrieval of links to technical information about the service

<a name="TechnicalInfoLink"></a>
## [TechnicalInfoLink](Support.xml#L74)


Property|Type|Description
:-------|:---|:----------
[Text](Support.xml#L75)|String|Description of a development object
[Url](Support.xml#L79)|URL|Link to open the development object<br>This URL is interpreted relative to the root URL of the service containing the function.
