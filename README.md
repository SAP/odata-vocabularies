# odata-vocabularies

SAP Vocabularies for semantic markup of structured data published via [OData](https://www.odata.org) services.


## SAP Vocabularies

This repository defines the following SAP vocabularies:

* [Analytics: Analytical resources](vocabularies/Analytics.md)
* [CodeList: Code Lists](vocabularies/CodeList.md) 
* [Common: Semantics common to all types of APIs](vocabularies/Common.md)
* [Communication: Contact information based on vCard](vocabularies/Communication.md)
* [Hierarchy: Hierarchies](vocabularies/Hierarchy.md) - *experimental*
* [PersonalData: Personal data / GDPR](vocabularies/PersonalData.md)
* [Session: Sticky Sessions](vocabularies/Session.md)
* [UI: Representing data in user interfaces](vocabularies/UI.md)

These vocabularies complement the [OASIS OData Vocabularies](https://github.com/oasis-tcs/odata-vocabularies) published by the [OASIS OData Technical Committee](https://www.oasis-open.org/committees/odata).


## Hints for Vocabulary Editors

The tools in this repository only require [Node.js](https://nodejs.org/) to be installed.


### Installation

Clone or download this repository, go to its root folder and type

```sh
npm install
```


### Editing

Edit only the XML vocabulary files, then refresh the Markdown files and the CSDL JSON files with

```sh
npm run build
```
