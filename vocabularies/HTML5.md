# HTML5 Vocabulary
**Namespace: [com.sap.vocabularies.HTML5.v1](HTML5.xml)**

Terms for HTML5

The HTML5 vocabulary provides rendering hints for HTML5 clients


## Terms

Term|Type|Description
:---|:---|:----------
[CssDefaults](./HTML5.xml#L35:~:text=<Term%20Name="-,CssDefaults,-")|[CssDefaultsType](#CssDefaultsType)|<a name="CssDefaults"></a>CSS definitions that may be used as defaults<br>This term can applied to e.g. UI.DataFieldAbstract records
[LinkTarget](./HTML5.xml#L52:~:text=<Term%20Name="-,LinkTarget,-")|[LinkTargetType?](#LinkTargetType)|<a name="LinkTarget"></a>Where to open a link for the annotated [URL](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Core.V1.html#IsURL)<br>Applicability of this term is governed by [`Validation.ApplicableTerms`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Validation.V1.html#ApplicableTerms) annotations. The value of this annotation is interpreted like the [target attribute](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-target) in HTML. If the value is null or absent, the link is opened in the current browsing context.

<a name="CssDefaultsType"></a>
## [CssDefaultsType](./HTML5.xml#L40:~:text=<ComplexType%20Name="-,CssDefaultsType,-")


Property|Type|Description
:-------|:---|:----------
[width](./HTML5.xml#L41:~:text=<ComplexType%20Name="-,CssDefaultsType,-")|String?|css: width, see https://www.w3.org/TR/CSS21/visudet.html#propdef-width<br>The property allows all values specified for the original css width property. Note that clients consuming this annotation may only support selected length units.

<a name="LinkTargetType"></a>
## [LinkTargetType](./HTML5.xml#L61:~:text=<TypeDefinition%20Name="-,LinkTargetType,-")
**Type:** String


