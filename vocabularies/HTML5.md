# HTML5 Vocabulary
**Namespace: [com.sap.vocabularies.HTML5.v1](HTML5.xml)**

Terms for HTML5

The HTML5 vocabulary provides rendering hints for HTML5 clients


## Terms

Term|Type|Description
:---|:---|:----------
[CssDefaults](./HTML5.xml#L35:~:text=<Term%20Name="-,CssDefaults,-")|[CssDefaultsType](#CssDefaultsType)|<a name="CssDefaults"></a>CSS definitions that may be used as defaults<br>This term can applied to e.g. UI.DataFieldAbstract records

## <a name="CssDefaultsType"></a>[CssDefaultsType](./HTML5.xml#L40:~:text=<ComplexType%20Name="-,CssDefaultsType,-")


Property|Type|Description
:-------|:---|:----------
[width](./HTML5.xml#L41:~:text=<ComplexType%20Name="-,CssDefaultsType,-")|String?|css: width, see https://www.w3.org/TR/CSS21/visudet.html#propdef-width<br>The property allows all values specified for the original css width property. Note that clients consuming this annotation may only support selected length units.
