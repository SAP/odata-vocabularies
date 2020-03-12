# odata-vocabularies

SAP Vocabularies for semantic markup of structured data published via [OData](https://www.odata.org) services.


## SAP Vocabularies

This repository defines the following SAP vocabularies:

* [Analytics: Analytical resources](vocabularies/Analytics.md)
* [CodeList: Code Lists](vocabularies/CodeList.md) 
* [Common: Semantics common to all types of APIs](vocabularies/Common.md)
* [Communication: Contact information based on vCard](vocabularies/Communication.md)
* [Graph: SAP Graph](vocabularies/Graph.md) - *experimental*
* [Hierarchy: Hierarchies](vocabularies/Hierarchy.md) - *experimental*
* [ODM: One Domain Model](vocabularies/ODM.md) - *experimental*
* [PersonalData: Personal data / GDPR](vocabularies/PersonalData.md)
* [Session: Sticky Sessions](vocabularies/Session.md)
* [UI: Representing data in user interfaces](vocabularies/UI.md)

These vocabularies complement the [OASIS OData Vocabularies](https://github.com/oasis-tcs/odata-vocabularies) published by the [OASIS OData Technical Committee](https://www.oasis-open.org/committees/odata).


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

Edit only the XML files, then refresh the JSON and  Markdown files with

```sh
npm run build
```


## Known Issues

No known issues.


## How to obtain support

See [CONTRIBUTING.md](CONTRIBUTING.md).


## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).


## License

Copyright (c) 2016 SAP SE or an SAP affiliate company. All rights reserved. This file is licensed under the Apache License Version 2.0, except as noted otherwise in the [LICENSE file](LICENSE).