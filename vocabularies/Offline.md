# Offline Vocabulary
**Namespace: [com.sap.vocabularies.Offline.v1](Offline.xml)**

Terms for annotating Offline OData


Offline OData is a solution for data synchronization between back-ends and mobile devices.
It is built on top of in-house technology which has been designed and used in database synchronization for over 20 years.
        


## Terms

Term|Type|Description
:---|:---|:----------
[ClientOnly](./Offline.xml#L37:~:text=<Term%20Name="-,ClientOnly,-") *([Experimental](Common.md#Experimental))*|[ClientOnlyType](#ClientOnlyType)|<a name="ClientOnly"></a>The annotated model element exists only on client devices<br>Occasionally a customer will want to store additional “client-only” entities in the same database. The easiest way to accommodate this is for the client to extend the backend-returned $metadata (upon which the local persistence is based) and to mark some entities as client-only so that the client won’t attempt to upload any changes that are made to them locally. The service as implemented on the server is described by the CSDL document if all elements tagged as `Offline.ClientOnly` are removed together with all subsequently dangling references.

## <a name="ClientOnlyType"></a>[ClientOnlyType](./Offline.xml#L51:~:text=<ComplexType%20Name="-,ClientOnlyType,-") *([Experimental](Common.md#Experimental))*
Tag type for annotating client-only model elements.

**Derived Types:**
- [LocalDraft](#LocalDraft)

## <a name="LocalDraft"></a>[LocalDraft](./Offline.xml#L55:~:text=<ComplexType%20Name="-,LocalDraft,-"): [ClientOnlyType](#ClientOnlyType) *([Experimental](Common.md#Experimental))*
Marks a local draft version of an entity set, which uses the same entity type as a non-draft entity set defined in the backend defined metadata


Typically for each entity type there is one corresponding entity set. However OData permits having multiple entity sets sharing the same entity type.
This can be taken advantage of to enable a facility for local (offline) drafts by defining an additional local draft entity set corresponding to an existing backend-defined entity set.
For example, with a server-side entity set `Orders` and entity type `Order`, an additional `DraftOrders` entity set could be defined, marked with a `ClientOnly` annotation using the `LocalDraft` term type.
The annotation value is the name of the non-draft entity set using the same entity type.
When a client application creates an entity instance, it could be created locally in the `DraftOrders` entity set. 
A subsequent offline entity upload operation will not upload any local draft entities.
Draft entities and their children need to be transitioned into non-draft entities to become uploadable.
          

Property|Type|Description
:-------|:---|:----------
[ActiveEntitySet](./Offline.xml#L69:~:text=<ComplexType%20Name="-,LocalDraft,-")|[SimpleIdentifier](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#SimpleIdentifier)|Unqualified name of the corresponding non-draft entity set in the backend-defined metadata
