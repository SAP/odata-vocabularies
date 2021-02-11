# DataIntegration Vocabulary
**Namespace: [com.sap.vocabularies.DataIntegration.v1](DataIntegration.xml)**

Terms for annotating analytical resources


## Terms

Term|Type|Description
:---|:---|:----------
[Extractable](DataIntegration.xml#L32)|Boolean|<a name="Extractable"></a>Defines if entity set is extractable
[OriginalDataType](DataIntegration.xml#L35)|String?|<a name="OriginalDataType"></a>Original data type of the annotated property in its source system ([Example](DataIntegration.xml#L38))<p>The provider of an OData service maps its local type definitions to Edm types. Sometimes, specific type information is lost. This additional annotation gives the consumer hints about the type original type definition.</p>
[ConversionExit](DataIntegration.xml#L51)|String?|<a name="ConversionExit"></a>Identifier that describes the special output conversion of the annotated property in the source system ([Example](DataIntegration.xml#L54))<p>The provider of an OData service maps its local type definitions to Edm types. Sometimes, specific type information is lost. This additional annotation gives the consumer hints about the type original type definition.</p>
[SourceSystem](DataIntegration.xml#L67)|String?|<a name="SourceSystem"></a>Identifier that classifies the type of the source system<p>The original type name used in annotation OriginalDataType depend are specific to different source system. Sourc system type ABAP uses other type names as source system type HANA.</p>
[DeltaMethod](DataIntegration.xml#L82)|[DeltaMethodType?](#DeltaMethodType)|<a name="DeltaMethod"></a>Defines which delta method the entity set supports. Only evaluated if Capabilities.ChangeTracking Supported is true

## <a name="DeltaMethodType"></a>[DeltaMethodType](DataIntegration.xml#L71)


Flag Member|Value|Description
:-----|----:|:----------
[INSERT](DataIntegration.xml#L72)|0|Delta is supported for inserts
[UPDATE](DataIntegration.xml#L75)|1|Delta is supported for updates
[DELETE](DataIntegration.xml#L78)|2|Delta is supported for deletes
