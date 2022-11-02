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
