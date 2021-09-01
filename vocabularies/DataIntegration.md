# DataIntegration Vocabulary
**Namespace: [com.sap.vocabularies.DataIntegration.v1](DataIntegration.xml)**

Terms for Data Integration


## Terms

Term|Type|Description
:---|:---|:----------
[Extractable](./DataIntegration.xml#L32:~:text=Name="-,Extractable,-")|Boolean|<a name="Extractable"></a>Defines if entity set is extractable
[OriginalDataType](./DataIntegration.xml#L35:~:text=Name="-,OriginalDataType,-")|String?|<a name="OriginalDataType"></a>Original data type of the annotated property in its source system ([Example](./DataIntegration.xml#L38))<br>The provider of an OData service maps its local type definitions to Edm types. Sometimes, specific type information is lost. This additional annotation gives the consumer hints about the type original type definition.
[ConversionExit](./DataIntegration.xml#L44:~:text=Name="-,ConversionExit,-")|String?|<a name="ConversionExit"></a>Identifier that describes the special output conversion of the annotated property in the source system ([Example](./DataIntegration.xml#L47))<br>The provider of an OData service maps its local type definitions to Edm types. Sometimes, specific type information is lost. This additional annotation gives the consumer hints about the type original type definition.
[SourceSystem](./DataIntegration.xml#L53:~:text=Name="-,SourceSystem,-")|String?|<a name="SourceSystem"></a>Identifier that classifies the type of the source system<br>The original type name used in annotation OriginalDataType depend are specific to different source system. Sourc system type ABAP uses other type names as source system type HANA.
[DeltaMethod](./DataIntegration.xml#L68:~:text=Name="-,DeltaMethod,-")|[DeltaMethodType?](#DeltaMethodType)|<a name="DeltaMethod"></a>Defines which delta method the entity set supports. Only evaluated if Capabilities.ChangeTracking/Supported is true

## <a name="DeltaMethodType"></a>[DeltaMethodType](./DataIntegration.xml#L57:~:text=Name="-,DeltaMethodType,-")


Flag Member|Value|Description
:-----|----:|:----------
[INSERT](./DataIntegration.xml#L58:~:text=Name="-,DeltaMethodType,-")|1|Delta is supported for inserts
[UPDATE](./DataIntegration.xml#L61:~:text=Name="-,DeltaMethodType,-")|2|Delta is supported for updates
[DELETE](./DataIntegration.xml#L64:~:text=Name="-,DeltaMethodType,-")|4|Delta is supported for deletes
