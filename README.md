# odata-vocabularies

SAP Vocabularies for semantic markup of structured data published via [OData](https://www.odata.org) services.

## SAP Vocabularies

This repository defines the following SAP vocabularies:

- [Analytics: Analytical resources](vocabularies/Analytics.md)
- [CodeList: Code Lists](vocabularies/CodeList.md)
- [Common: Semantics common to all types of APIs](vocabularies/Common.md)
- [Common_401: Semantics common to all types of APIs](vocabularies/Common_401.md) - _experimental_
- [Communication: Contact information based on vCard](vocabularies/Communication.md)
- [DataIntegration: Data Integration](vocabularies/DataIntegration.md)
- [DirectEdit: Terms for Direct-Edit User Interfaces](vocabularies/DirectEdit.md) - _experimental_
- [Graph: SAP Graph](vocabularies/Graph.md) - _experimental_
- [Hierarchy: Hierarchies](vocabularies/Hierarchy.md) - _experimental_
- [ODM: One Domain Model](vocabularies/ODM.md) - _experimental_
- [PersonalData: Personal data / GDPR](vocabularies/PersonalData.md)
- [Session: Sticky Sessions](vocabularies/Session.md)
- [UI: Representing data in user interfaces](vocabularies/UI.md)
- [HTML5: Rendering directives for UI5](vocabularies/HTML5.md)

These vocabularies complement the [OASIS OData Vocabularies](https://github.com/oasis-tcs/odata-vocabularies) published by the [OASIS OData Technical Committee](https://www.oasis-open.org/committees/odata).

To learn how to construct an annotation value from a term definition, or vice versa, look here:

- [Annotation Cheat-Sheet for CSDL JSON](https://oasis-tcs.github.io/odata-vocabularies/docs/annotation-cheat-sheet-json.html)
- [Annotation Cheat-Sheet for CSDL XML](https://oasis-tcs.github.io/odata-vocabularies/docs/annotation-cheat-sheet.html)
- [Annotation Cheat-Sheet for CAP CDS](https://sap.github.io/odata-vocabularies/docs/annotation-cheat-sheet-cap.html)

## Requirements

Each vocabulary in this repository is described by three files: the `*.xml` source file, an auto-generated equivalent `*.json` representation, and a `*.md` Markdown description, also auto-generated from the `*.xml` source.

No specific tools are needed to use these vocabulary files.

Contributors to this repository will need to run the generators, which require [Node.js](https://nodejs.org/) to be installed.

## Download and Installation

The tools in this repository are only needed by contributors to refresh the `*.json` and `*.md` files after changing the `*.xml` source files. These tools require [Node.js](https://nodejs.org/) to be installed.

### Installation

Clone or download this repository, go to its root folder, and type

```sh
npm install
```

### Editing

Edit only the XML files, then refresh the JSON and Markdown files with

```sh
npm run build
```

## Known Issues

No known issues.

## How to obtain support

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

[![REUSE status](https://api.reuse.software/badge/github.com/SAP/odata-vocabularies)](https://api.reuse.software/info/github.com/SAP/odata-vocabularies)
