# PDF Vocabulary
**Namespace: [com.sap.vocabularies.PDF.v1](PDF.xml)**

Terms for PDF response format

The PDF vocabulary provides information about the PDF format of a response


## Terms

Term|Type|Description
:---|:---|:----------
[Features](./PDF.xml#L38:~:text=<Term%20Name="-,Features,-")|[FeaturesType](#FeaturesType)|<a name="Features"></a>Features for the PDF

## <a name="FeaturesType"></a>[FeaturesType](./PDF.xml#L42:~:text=<ComplexType%20Name="-,FeaturesType,-")


Property|Type|Description
:-------|:---|:----------
[DocumentDescriptionReference](./PDF.xml#L43:~:text=<ComplexType%20Name="-,FeaturesType,-")|URL|Reference of the Service for the DocumentDescription
[DocumentDescriptionCollection](./PDF.xml#L47:~:text=<ComplexType%20Name="-,FeaturesType,-")|String|Name of entity set containing the DocumentDescription
[ArchiveFormat](./PDF.xml#L50:~:text=<ComplexType%20Name="-,FeaturesType,-")|Boolean|PDFA conformant format
[Signature](./PDF.xml#L53:~:text=<ComplexType%20Name="-,FeaturesType,-")|Boolean|Signing the document
[CoverPage](./PDF.xml#L56:~:text=<ComplexType%20Name="-,FeaturesType,-")|Boolean|Cover Page
[FontName](./PDF.xml#L59:~:text=<ComplexType%20Name="-,FeaturesType,-")|Boolean|Font name
[FontSize](./PDF.xml#L62:~:text=<ComplexType%20Name="-,FeaturesType,-")|Boolean|Font size
[Margin](./PDF.xml#L65:~:text=<ComplexType%20Name="-,FeaturesType,-")|Boolean|Margin size
[Border](./PDF.xml#L68:~:text=<ComplexType%20Name="-,FeaturesType,-")|Boolean|Border size of the table
[FitToPage](./PDF.xml#L71:~:text=<ComplexType%20Name="-,FeaturesType,-")|Boolean|Fit to page<br>If this option is selected, the font size is automatically selected in such a way that all columns of a table fit on one page. Other layout options like margin, border and composite cell spacing are adapted accordingly, with respect to the chose scaling factor.
[ResultSizeDefault](./PDF.xml#L77:~:text=<ComplexType%20Name="-,FeaturesType,-")|Int32?|Default result size<br>Default result size for PDF documents. Used if $top has not been provided.
[ResultSizeMaximum](./PDF.xml#L83:~:text=<ComplexType%20Name="-,FeaturesType,-")|Int32?|Maximum result size<br>Max result size for PDF documents. Used if $top has been provided and $top > ResultSizeMaximum
