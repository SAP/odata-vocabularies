# CodeList Vocabulary
**Namespace: [com.sap.vocabularies.CodeList.v1](CodeList.xml)**

Terms for Code Lists


## Terms

Term|Type|Description
:---|:---|:----------
[CurrencyCodes](CodeList.xml#L35)|[CodeListSource](#CodeListSource)|<a name="CurrencyCodes"></a>An entity set containing the code list for currencies
[UnitsOfMeasure](CodeList.xml#L39)|[CodeListSource](#CodeListSource)|<a name="UnitsOfMeasure"></a>An entity set containing the code list for units of measure
[StandardCode](CodeList.xml#L54) *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="StandardCode"></a>Property containing standard code values
[ExternalCode](CodeList.xml#L59) *([Experimental](Common.md#Experimental))*|PropertyPath|<a name="ExternalCode"></a>Property containing code values that can be used for visualization<br>The annotated property contains values that are not intended for visualization and should thus stay hidden from end-users. Instead the values of the referenced properties are used for visualization.
[IsConfigurationDeprecationCode](CodeList.xml#L65) *([Experimental](Common.md#Experimental))*|Boolean|<a name="IsConfigurationDeprecationCode"></a>Property contains a Configuration Deprecation Code<br>The Configuration Deprecation Code indicates whether a code list value is valid (deprecation code is empty/space), deprecated (deprecation code `W`), or revoked (deprecation code `E`).
[DoNotCheckScale](CodeList.xml#L73)|Boolean|<a name="DoNotCheckScale"></a>Do not check the allowed number of fractional digits<br>The annotated property contains a measured quantity, and the property value may have more fractional digits than defined for its unit of measure.

## <a name="CodeListSource"></a>[CodeListSource](CodeList.xml#L43)
An entity set containing the code list for currencies

Property|Type|Description
:-------|:---|:----------
[Url](CodeList.xml#L45)|URL|URL of a CSDL document describing an entity set for a code list
[CollectionPath](CodeList.xml#L49)|String|Name of the entity set for the code list
