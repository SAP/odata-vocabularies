# Contributing

Contributions to the SAP Vocabularies are highly welcome. These contributions could be
* Corrections and improvements to existing terms 
* Examples for using an existing term 
* New properties in an existing structured term
* New terms in an existing vocabulary
* New vocabularies (well, this is probably rare :-)

We prefer pull requests over issues, so 
* If you find a typo in a term description, please create a pull request
* If a term description is confusing, please create a pull request and provide a description that you find helpful
* If you wonder how to apply a term, please create a pull request with a usage example
* If you want to extend a term, please create a pull request with the new definition and a usage example
* If you want to propose new terms or vocabularies, please first check whether this should be a SAP term or vocabulary, or whether it is more generic and belongs to an [OASIS OData Vocabulary](https://github.com/oasis-tcs/odata-vocabularies) , and then create a pull request in the corresponding repository


## Issues

Please report bugs in English, so all users can understand them. 

And please create a pull request with a proposed fix to the bug instead of an issue.


## Pull Requests

Please keep changes to a minimum, e.g. preserve line ends, indentation, line breaks etc.

For proposed terms and term properties: provide a usage example.

The XML files are the source of truth, don't edit the Markdown or JSON files.

After editing an XML file, execute `npm run build` in the repository root to refresh the Markdown and JSON files. This of course requires to run `npm install` once after forking and cloning the repository.


## Contributor License Agreement

When you contribute (code, documentation, examples, or anything else), you have to be aware that your contribution is covered by the same [Apache 2.0 License](LICENSE) that is applied to the SAP Vocabularies themselves.
In particular you need to agree to the Individual Contributor License Agreement,
which can be [found here](https://gist.github.com/CLAassistant/bd1ea8ec8aa0357414e8).
(This applies to all contributors, including those contributing on behalf of a company). If you agree to its content, you simply have to click on the link posted by the CLA assistant as a comment to the pull request. Click it to check the CLA, then accept it on the following screen if you agree to it. CLA assistant will save this decision for upcoming contributions and will notify you if there is any change to the CLA in the meantime.


## Company Contributors

If employees of a company contribute code, in addition to the individual agreement above, there needs to be one company agreement submitted. This is mainly for the protection of the contributing employees.

A company representative authorized to do so needs to download, fill, and print the [Corporate Contributor License Agreement](docs/SAP%20CCLA.pdf) form. Then either:

* Scan it and e-mail it to opensource@sap.com
* Fax it to: +49 6227 78-45813
* Send it by traditional letter to: OSPO Core, Dietmar-Hopp-Allee 16, 69190 Walldorf, Germany

The form contains a list of employees who are authorized to contribute on behalf of your company. When this list changes, please let us know.
