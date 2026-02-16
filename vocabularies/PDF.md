# PDF Vocabulary
**Namespace: [com.sap.vocabularies.PDF.v1](PDF.xml)**

Terms for PDF response format

The PDF vocabulary provides information about the PDF format of a response


## Terms

Term|Type|Description
:---|:---|:----------
[Features](PDF.xml#L38)|[FeaturesType](#FeaturesType)|<a name="Features"></a>Features for the PDF
[Printable](PDF.xml#L128) *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="Printable"></a>Entity can be printed<br>Marks an entity as printable. For that, the entity needs at least one field of type Edm.Stream. The filename of the file to be printed is determined via Core.ContentDispotion on the print content field.

<a name="FeaturesType"></a>
## [FeaturesType](PDF.xml#L42)


Property|Type|Description
:-------|:---|:----------
[DocumentDescriptionReference](PDF.xml#L43)|URL|Reference of the Service for the DocumentDescription
[DocumentDescriptionCollection](PDF.xml#L47)|String|Name of entity set containing the DocumentDescription
[ArchiveFormat](PDF.xml#L50)|Boolean|PDF/A conformant format supported
[Signature](PDF.xml#L53)|Boolean|Signing the document supported
[CoverPage](PDF.xml#L56)|Boolean|Cover Page supported
[FontName](PDF.xml#L59)|Boolean|Font name supported
[FontSize](PDF.xml#L62)|Boolean|Font size supported
[Margin](PDF.xml#L65)|Boolean|Margin size supported
[Border](PDF.xml#L68)|Boolean|Border size of the table supported
[FitToPage](PDF.xml#L71)|Boolean|Fit to page supported<br>If this option is selected, the font size is automatically selected in such a way that all columns of a table fit on one page. Other layout options like margin, border and composite cell spacing are adapted accordingly, with respect to the chose scaling factor.
[Padding](PDF.xml#L77)|Boolean|Padding of document supported<br>Is padding (left, right, bottom, top) supported?
[HeaderFooter](PDF.xml#L83) *([Experimental](Common.md#Experimental))*|Boolean|Page header and footer supported<br>Headers and footers are areas in the top and the bottom page margins, where you can add page number and date information
[ResultSizeDefault](PDF.xml#L90)|Int32?|Default result size<br>Default result size for PDF documents. Used if $top has not been provided.
[ResultSizeMaximum](PDF.xml#L96)|Int32?|Maximum result size<br>Max result size for PDF documents. Used if $top has been provided and $top > ResultSizeMaximum
[IANATimezoneFormat](PDF.xml#L102)|Boolean|If this is true, the PDF format supports formatting columns of type `Edm.DateTimeOffset` in a IANA time zone given in the document description
[Treeview](PDF.xml#L105) *([Experimental](Common.md#Experimental))*|Boolean|Treeview output supported<br>If this is true, treeview output is supported for hierarchical data
[TextDirectionLayout](PDF.xml#L112)|Boolean|Setting the text direction-layout is supported<br>PDF supports setting the text direction-layout (e.g. left-to-right or right-to-left) in the document description
[UploadToFileShare](PDF.xml#L118) *([Experimental](Common.md#Experimental))*|Boolean|Support of PDF document upload<br>A file share connection needs to be configured on the server. The response of a corresponding request is then `301 Moved Permanently` with a `Location` header containing the link to the document on the file share server.
