# Offline Vocabulary
**Namespace: [com.sap.vocabularies.Offline.v1](Offline.xml)**

Terms for annotating Offline OData


Offline OData is powerful solution for data sycnchronization between back-end and mobile devices.
It is built on top of in-house technology which has been designed and used in database synchronizing for over 20 years.
Plese refer to the Offline OData product home for details:
https://help.sap.com/doc/f53c64b93e5140918d676b927a3cd65b/Cloud/en-US/docs-en/guides/features/offline/overview.html
        


## Terms

Term|Type|Description
:---|:---|:----------
[ClientOnly](./Offline.xml#L42:~:text=<Term%20Name="-,ClientOnly,-") *([Experimental](Common.md#Experimental))*|[Tag](https://github.com/oasis-tcs/odata-vocabularies/blob/main/vocabularies/Org.OData.Core.V1.md#Tag)|<a name="ClientOnly"></a>The annotated model element exists only on client device<br>Occasionally a customer will want to store additional “client-only” entities in the same DB. The easiest way to accommodate this is for the client to extend the backend-returned $metadata (upon which the local persistence is based) and just to mark some entities as client-only so that the client won’t attempt to upload any changes that are made to them locally. The service as implemented on the server is described by the CSDL document with all elements removed that are tagged as @Offline.ClientOnly.
