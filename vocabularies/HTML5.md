# HTML5 Vocabulary
**Namespace: [com.sap.vocabularies.HTML5.v1](HTML5.xml)**

Terms for HTML5

The HTML5 vocabulary provides rendering hints for HTML5 clients


## Terms

Term|Type|Description
:---|:---|:----------
[CssDefaults](HTML5.xml#L44)|[CssDefaultsType](#CssDefaultsType)|<a name="CssDefaults"></a>CSS definitions that may be used as defaults<br>This term can applied to e.g. UI.DataFieldAbstract records
[LinkTarget](HTML5.xml#L61)|[LinkTargetType](#LinkTargetType)|<a name="LinkTarget"></a>Where to open a link for the annotated [URL](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Core.V1.html#IsURL)<br>When the UI contains a link to the URL, it shall open as specified by this annotation. This can be achieved, for example, by giving the UI5 `sap.m.Link` element a corresponding `target` property. Applicability of this term is governed by [`Validation.ApplicableTerms`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Validation.V1.html#ApplicableTerms) annotations.
[RowSpanForDuplicateValues](HTML5.xml#L93) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="RowSpanForDuplicateValues"></a>The annotated data field might use a rowSpan for adjacent duplicate values if used in a table.<br>In order to achieve a good user experience the respective columns should be sorted. Applicability of this term is governed by [`Validation.ApplicableTerms`](https://oasis-tcs.github.io/odata-vocabularies/vocabularies/Org.OData.Validation.V1.html#ApplicableTerms) annotations.

<a name="CssDefaultsType"></a>
## [CssDefaultsType](HTML5.xml#L49)


Property|Type|Description
:-------|:---|:----------
[width](HTML5.xml#L50)|String?|css: width, see https://www.w3.org/TR/CSS21/visudet.html#propdef-width<br>The property allows all values specified for the original css width property. Note that clients consuming this annotation may only support selected length units.

<a name="LinkTargetType"></a>
## [LinkTargetType](HTML5.xml#L69)
**Type:** String

The values are interpreted like the [target attribute](https://html.spec.whatwg.org/multipage/links.html#attr-hyperlink-target) in HTML

Allowed Value|Description
:------------|:----------
[_self](HTML5.xml#L73)|Open link in the current browsing context
[_blank](HTML5.xml#L77)|Open link in a new browsing context
[_parent](HTML5.xml#L81)|Open link in the parent browsing context
[_top](HTML5.xml#L85)|Open link in the top browsing context
