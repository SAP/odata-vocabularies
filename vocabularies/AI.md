# AI Vocabulary
**Namespace: [com.sap.vocabularies.AI.v1](AI.xml)**

Terms for providing AI-specific guidance on API resources


## Terms

Term|Type|Description
:---|:---|:----------
[hint](AI.xml#L35) *([Experimental](Common.md#Experimental))*|String|<a name="hint"></a>A free-text hint for AI consumers (e.g., large language models or AI agents) on how to use or interpret the annotated element.<br><p>Provides AI-specific guidance on how to use or interpret the annotated OData element. It is intentionally kept separate from human-readable descriptions (e.g., Core.Description) so that end-user-facing documentation and AI-targeted guidance can evolve independently.</p> <p>The annotation value is a plain string, optionally formatted using lightweight Markdown (bold labels, bullet points, inline code). Typical content includes:</p> <ul> <li>Business context: what business concept or domain object the element represents</li> <li>Usage guidance: when and how to use this entity, property, or service</li> <li>Disambiguation: how to distinguish from similar entities or operations</li> <li>Value constraints: valid values, formats, coding standards (e.g., ISO codes, enums)</li> <li>Authorization: required scopes or roles for write operations (service level)</li> <li>Routing guidance: when NOT to use this element and what to use instead</li> </ul> <p>The content of AI.hint is not intended for display to end users and MUST be filtered when publishing metadata externally (e.g., to public API catalogs).</p> <p>The corresponding annotation in ABAP CDS / CSN Interop is @AI.hint. In JSON Schema-based formats (OpenAPI, AsyncAPI), the equivalent is x-sap-ai-hint.</p> 
