# ABAP Vocabulary
**Namespace: [com.sap.vocabularies.ABAP.v1](ABAP.xml)**

Terms for ABAP-specific annotations


## Terms

Term|Type|Description
:---|:---|:----------
[IsRightAlignedIfNumeric](ABAP.xml#L32)|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="IsRightAlignedIfNumeric"></a>Values that consist purely of digits are considered right-aligned (i.e., filled with leading zeros) when it comes to ordering.<p>Applied to a property with `Type="Edm.String"` and `MaxLength="4"`, this means `"2" < "11" < "2A"`, because `"0002" < "0011" < "2A"`. This behavior affects, e.g., the `$orderby` and `$filter=… le …` operations and corresponds to the ABAP conversion exit `ALPHA`.</p>
