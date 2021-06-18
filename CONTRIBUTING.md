# Contributing

Contributions to the SAP Vocabularies are highly welcome. These contributions could be
* Corrections and improvements to existing terms 
* Examples for using an existing term 
* New properties in an existing structured term
* New terms in an existing vocabulary
* New vocabularies (well, this is probably rare :-)

We prefer pull requests over issues, so 
* If you find a typo in a term description, please create a pull request that corrects the typo
* If a term description is confusing, please create a pull request and provide a description that you find helpful
* If you wonder how to apply a term, please create a pull request with a usage example
* If you want to extend a term, please create a pull request with the new definition and a usage example
* If you want to propose new terms or vocabularies, please first check whether this should be an SAP term or vocabulary, or whether it is more generic and belongs to an [OASIS OData Vocabulary](https://github.com/oasis-tcs/odata-vocabularies), then create a pull request in the corresponding repository


## Issues

Please report bugs in English, so all users can understand them. 

And please create a pull request with a proposed fix to the bug instead of an issue.


## Pull Requests

Keep changes to a minimum, e.g. preserve line ends, indentation, line breaks etc.

Provide a usage example for proposed terms and term properties.

The XML files are the source of truth, don't edit the JSON or Markdown files! Direct edits to the JSON or Markdown files will be lost after the next build. See [README - Download and Installation](README.md#download-and-installation).

Execute `npm run build` before committing a change, so that the JSON and Markdown files are in sync with the edited XML files.


## Developer Certificate of Origin (DCO)

Due to legal reasons, contributors will be asked to accept a DCO before they submit the first pull request to this projects, this happens in an automated fashion during the submission process. SAP uses [the standard DCO text of the Linux Foundation](https://developercertificate.org/).
