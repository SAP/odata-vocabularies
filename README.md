# odata-vocabularies

SAP Vocabularies for semantic markup of structured data published via [OData](https://www.odata.org) services.

## SAP Vocabularies

* [Analytics: Analytical resources](Analytics.md)
* [CodeList: Code Lists](CodeList.md) 
* [Common: Semantics common to all types of APIs](Common.md)
* [Communication: Contact information based on vCard](Communication.md)
* [Hierarchy: Hierarchies](Hierarchy.md) - *experimental*
* [PersonalData: Personal data / GDPR](PersonalData.md)
* [Session: Sticky Sessions](Session.md)
* [UI: Representing data in user interfaces](UI.md)

<!--
## OASIS Vocabularies

Standard vocabularies defined by the [OASIS OData Technical Committee](https://www.oasis-open.org/committees/odata).

* [Aggregation: Aggregation capabilities and hierarchy functions](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Aggregation.V1.md)
* [Authorization: Web authorization flows](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Authorization.V1.md)
* [Capabilities: API capabilities (sorting, filtering, ...)](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Capabilities.V1.md)
* [Core: API and vocabulary documentation](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md)
* [Measures: Monetary amounts and measured quantities](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Measures.V1.md)
* [Repeatability: Repeatable requests](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Repeatability.V1.md)  - *experimental*
* [Temporal: Time-dependent data](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Temporal.V1.md)  - *experimental*
* [Validation: Validation rules](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Validation.V1.md)
* -->


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
