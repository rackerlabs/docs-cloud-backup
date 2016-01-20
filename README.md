# Rackspace Cloud Backup API documentation

This github repository contains the source files for the Rackspace Cloud Backup API documentation, which includes the following:

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

To build the project, you need to install Sphinx and virtualenv.  However to contribute content, all you need is an editor and a 
basic understanding of the project layout and [Restructured Text](http://sphinx-doc.org/rest.html) syntax.

You can use the Github editor or any text editor to work with documentation source files. For quick syntax checking, try the 
[Online Restructured text editor](http://rst.ninjs.org/). 

## Source format

The Rackspace developer documentation is developed and built using the [Python Sphinx documentation generator](http://sphinx-doc.org/). Content is 
written in [reStructuredText](http://sphinx-doc.org/rest.html), the markup syntax and parser component of 
[Python Docutils](http://docutils.sourceforge.net/index.html).

The repository includes the documentation source files, 
Sphinx configuration and build files, as well any required Sphinx 
extensions and build tools. 

## Structure

Source files for the Sphinx documentation project are in the ``rst/dev-guide`` (https://github.com/rackerlabs/docs-cloud-backup/tree/master/rst/dev-guide) directory. Here are the key files that define 
the Sphinx project and content architecture for the documentation. 

* [conf.py](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/cloud-backup-v1/conf.py) Sphinx documentation configuration file (Typically, this file does not require changes.)
* [index.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/cloud-backup-v1/index.rst): Index page for the main content structure
* [getting-started/index.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/cloud-backup-v1/getting-started/index.rst): Topic index for the Getting Started section
* [general-api-info/index.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/cloud-backup-v1/general-api-info/index.rst): Topic index for the General API section
* [api-reference.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/cloud-backup-v1/api-reference.rst): Introduction to API reference
* [api-operations/index.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/cloud-backup-v1/api-operations/index.rst): Index for API Reference
* [api-operations/methods](https://github.com/rackerlabs/docs-cloud-backup/tree/master/rst/dev-guide/cloud-backup-v1/api-operations/methods): All rst files for the methods
* [release-notes](https://github.com/rackerlabs/docs-cloud-backup/tree/master/rst/dev-guide/cloud-backup-v1/release-notes): 
Individual files for each release note - release_notes.rst is at the top-level is the index page for this.
* [developer-guide.rst]https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/cloud-backup-v1/developer-guide.rst): Introduction to Developer Guide
* [overview/index.rst](https://github.com/rackerlabs/docs-cloud-backup/blob/master/rst/dev-guide/cloud-backup-v1/overview/index.rst): Index for the Overview section
* **make.bat**: windows build script
* **Makefile**: linux/osx build

### Building from Source

These instructions are for local builds using the default Sphinx templates. If you want to build locally using the Rackspace 
documentation templates, use the [Deconst client](https://github.com/deconst/client).

**Prerequisites**

- Python 2.7 or later
- Mac OSx: Install [virtualenv](http://docs.python-guide.org/en/latest/dev/virtualenvs/) or [pyenv](https://github.com/yyuu/pyenv)
- Windows: Install Python, pip, and virtualenv (See [How to install Python, pip, and virtualenv with PowerShell](http://www.tylerbutler.com/2012/05/how-to-install-python-pip-and-virtualenv-on-windows-with-powershell/)).

To set up your build environment:

1. Run the following commands to Activate your virtual environment:
   ```
    bin activate env-name
   ```   

2. Run the following commands to install Sphinx and other required packages::

    ```
    pip install -r requirements.txt
    
    ```
    
To build the documentation, run the following commands:

    cd dev-guide
    make clean singlehtml

To view the HTML build results in the target directory (``_build/html/``), run the following command:

    open _build/html/index.html


### Support and Feedback

If you find a problem, open a Github [issue](https://github.com/rackerlabs/docs-cloud-backup/issues).

If you need additional assistance, drop us a note at 
[devdoc@rackspace.com](mailto:devdoc@rackspace.com).



