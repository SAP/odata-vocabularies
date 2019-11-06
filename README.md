# SAP Vocabularies
SAP Vocabularies for annotating OData services - [SCN Wiki](https://wiki.scn.sap.com/wiki/display/EmTech/OData+4.0+Vocabularies)
* [Analytics: Analytical resources](Analytics.md) - [SCN Wiki](https://wiki.scn.sap.com/wiki/x/gwWKGw) - [Upload](https://wiki.scn.sap.com/wiki/pages/viewpageattachments.action?pageId=462030211)
* [CodeList: Code Lists](CodeList.md) - [SCN Wiki](https://wiki.scn.sap.com/wiki/x/s4k7Hw) - [Upload](https://wiki.scn.sap.com/wiki/pages/viewpageattachments.action?pageId=523995571)
* [Common: Semantics common to all types of APIs](Common.md) - [SCN Wiki](https://wiki.scn.sap.com/wiki/x/vh_7Gg) - [Upload](https://wiki.scn.sap.com/wiki/pages/viewpageattachments.action?pageId=448470974)
* [Communication: Contact information based on vCard](Communication.md) - [SCN Wiki](https://wiki.scn.sap.com/wiki/x/ux_7Gg) - [Upload](https://wiki.scn.sap.com/wiki/pages/viewpageattachments.action?pageId=448470971)
* [Hierarchy: Hierarchies](Hierarchy.md) - *experimental*
* [PersonalData: Personal data / GDPR](PersonalData.md) - [SCN Wiki](https://wiki.scn.sap.com/wiki/x/tQGXHQ) - [Upload](https://wiki.scn.sap.com/wiki/pages/viewpageattachments.action?pageId=496435637)
* [Session: Sticky Sessions](Session.md) - [SCN Wiki](https://wiki.scn.sap.com/wiki/x/BIB6Hw) - [Upload](https://wiki.scn.sap.com/wiki/pages/viewpageattachments.action?pageId=528121860)
* [UI: Representing data in user interfaces](UI.md) - [SCN Wiki](https://wiki.scn.sap.com/wiki/x/uB_7Gg) - [Upload](https://wiki.scn.sap.com/wiki/pages/viewpageattachments.action?pageId=448470968)


# OASIS Vocabularies
Standard vocabularies
* [Aggregation: Aggregation capabilities and hierarchy functions](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Aggregation.V1.md)
* [Authorization: Web authorization flows](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Authorization.V1.md)
* [Capabilities: API capabilities (sorting, filtering, ...)](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Capabilities.V1.md)
* [Core: API and vocabulary documentation](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Core.V1.md)
* [Measures: Monetary amounts and measured quantities](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Measures.V1.md)
* [Repeatability: Repeatable requests](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Repeatability.V1.md)  - *experimental*
* [Temporal: Time-dependent data](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Temporal.V1.md)  - *experimental*
* [Validation: Validation rules](https://github.com/oasis-tcs/odata-vocabularies/blob/master/vocabularies/Org.OData.Validation.V1.md)


# Hints for Vocabulary Editors

The tools in this repository only require [Node.js](https://nodejs.org/) to be installed.

## Installation

Clone or download this repository, go to its root folder and type
```sh
npm install
```

## Editing

Edit only the XML vocabulary files, then refresh the Markdown files and the CSDL JSON files with
```sh
npm run build
```
