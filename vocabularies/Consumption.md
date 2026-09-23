# Consumption Vocabulary
**Namespace: [com.sap.vocabularies.Consumption.v1](Consumption.xml)**

Terms for consumption metadata


## Terms

Term|Type|Description
:---|:---|:----------
[aiHint](Consumption.xml#L35) *([Experimental](Common.md#Experimental))*|String|<a name="aiHint"></a>A free-text hint for AI consumers (e.g., large language models or AI agents) on how to use or interpret the annotated element.<br><p>Provides guidance for AI consumers (e.g., LLMs or AI agents) on how to use or interpret the annotated OData element. It is intentionally kept separate from human-readable descriptions (e.g., Core.Description) so that end-user-facing documentation and AI-targeted guidance can evolve independently.</p> <p>The annotation value is a plain string, optionally formatted using lightweight Markdown (bold labels, bullet points, inline code). Typical content includes:</p> <ul> <li>Business context: what business concept or domain object the element represents</li> <li>Usage guidance: when and how to use this entity, property, or service</li> <li>Disambiguation: how to distinguish from similar entities or operations</li> <li>Value constraints: valid values, formats, coding standards (e.g., ISO codes, enums)</li> <li>Authorization: required scopes or roles for write operations (service level)</li> <li>Routing guidance: when NOT to use this element and what to use instead</li> </ul> <p>The annotation value MUST NOT be displayed to end users and MUST be filtered when publishing metadata externally (e.g., to public API catalogs).</p> <p>The corresponding annotation in ABAP CDS / CSN Interop is @Consumption.aiHint. In JSON Schema-based formats (OpenAPI, AsyncAPI), the equivalent is x-sap-ai-hint.</p> 
