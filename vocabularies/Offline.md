# Offline Vocabulary
**Namespace: [com.sap.vocabularies.Offline.v1](Offline.xml)**

Terms for annotating Offline OData


Offline OData is a solution for data synchronization between back-ends and mobile devices.
It is built on top of in-house technology which has been designed and used in database synchronization for over 20 years.
Please refer to the [Offline OData product home](https://help.sap.com/doc/f53c64b93e5140918d676b927a3cd65b/Cloud/en-US/docs-en/guides/features/offline/overview.html) for details.
        


## Terms

Term|Type|Description
:---|:---|:----------
[ClientOnly](./Offline.xml#L41:~:text=<Term%20Name="-,ClientOnly,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ClientOnly"></a>The annotated model element exists only on client devices<br>Occasionally a customer will want to store additional “client-only” entities in the same DB. The easiest way to accommodate this is for the client to extend the backend-returned $metadata (upon which the local persistence is based) and just to mark some entities as client-only so that the client won’t attempt to upload any changes that are made to them locally. The service as implemented on the server is described by the CSDL document if all elements tagged as `Offline.ClientOnly` are removed together with all subsequently dangling references.
[LocalDraft](./Offline.xml#L55:~:text=<Term%20Name="-,LocalDraft,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="LocalDraft"></a>The annotated model is draft and exists only on client devices. A draft entity can be converted to non-draft entity for uploading<br>Typically for each entity type there is one corresponding entity set, however OData permits having multiple entity sets sharing the same entity type. This can be taken advantage of to enable a facility for local (offline) drafts by defining an additional (draft) entity set for an existing entity type. For example, with existing entity type "Order" and existing entity set "Orders", an additional "DraftOrders" entity set could be defined, annotated with this annotation. When a client application creates an entity instance, it could be created in the "DraftOrders" entity set. A subsequent offline entity upload operation should omit the uploading of any local draft entities. The DataService.activateDraft API can be used to transition a draft entity (and optionally its children) into non-draft entities so they will then become uploadable.
