# Rackspace Cloud Backup API documentation

This GitHub repository contains the source files for the Rackspace Cloud Backup API documentation, which includes the following:

* [Cloud Backup Getting Started Guide](https://developer.rackspace.com/docs/cloud-backup/v1/developer-guide/#document-getting-started)
* [Cloud Backup Developer Guide](https://developer.rackspace.com/docs/cloud-backup/v1/developer-guide/#document-developer-guide)
* [Cloud Backup API Reference](https://developer.rackspace.com/docs/cloud-backup/v1/developer-guide/#document-api-reference)
* [Cloud Backup Release Notes](https://developer.rackspace.com/docs/cloud-backup/v1/developer-guide/#document-release-notes)

## Contributing

Contributions are welcome! 

* To suggest changes or report a problem, submit an [issue](https://github.com/rackerlabs/docs-cloud-backup/issues). 

* To make changes to a project, create your own fork of the repository. Then, submit a [pull 
request](https://github.com/rackerlabs/docs-cloud-backup/pulls) to have your changes reviewed 
and merged into the master branch as appropriate.

To contribute content, all you need is an editor and a 
basic understanding of the project layout and [reStructuredText](http://sphinx-doc.org/rest.html) syntax.

You can use the GitHub editor or any text editor to work with documentation source files. For quick syntax checking, try the 
[Online restructuredText editor](http://rst.ninjs.org/). 

**Note:** If you want to build the project, you need to install the [Sphinx documentation generator](http://www.sphinx-doc.org/en/stable/install.html). 

## Source format

The Rackspace developer documentation is developed and built using the [Python Sphinx documentation generator](http://sphinx-doc.org/). Content is 
written in [reStructuredText](http://sphinx-doc.org/rest.html), the markup syntax and parser component of 
[Python Docutils](http://docutils.sourceforge.net/index.html).

The repository includes the documentation source files, 
Sphinx configuration and build files, as well any required Sphinx 
extensions and build tools. 

## Structure

Source files for the Sphinx documentation project are in the ``rst/dev-guide`` directory. Here are the key files that define 
the Sphinx project and content architecture for the documentation: 

Content | File
--- | ---
|Sphinx documentation configuration file| [conf.py](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/conf.py) (Typically, this file does not require changes.)
|Index page for the main content structure| [index.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/index.rst)
|About the API index| [overview/index.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/overview/index.rst)
|Getting Started introduction| [getting-started.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/getting-started.rst)
|Getting Started index|[getting-started/index.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/getting-started/index.rst)
|Developer Guide introduction|[developer-guide.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/developer-guide.rst)
|Concepts section| [concepts.rst](https://github.com/rackerlabs/docs-docs-cloud-backup/blob/master/rst/dev-guide/concepts.rst)
|General API information index|[general-api-info/index.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/general-api-info/index.rst)
|API Reference introduction|[api-reference.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/api-reference.rst)
|API Reference index|[api-operations/index.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/api-operations/index.rst)
|API operations methods, including code samples|[api-operations/methods](https://github.com/rackerlabs/docs-cloud-backup/tree/master/rst/dev-guide/api-operations/methods) 
|Release notes introduction and index|[release-notes.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/release-notes.rst)
|Release notes by version|[release notes folder](https://github.com/rackerlabs/docs-cloud-backup/tree/master/rst/dev-guide/release-notes)
|**make.bat**|Windows build script
|**Makefile**| Linux and OS X build

### Support and feedback

If you find a problem, open a GitHub [issue](https://github.com/rackerlabs/docs-cloud-backup/issues).

If you need additional assistance, contact us at 
[devdoc@rackspace.com](mailto:devdoc@rackspace.com).



