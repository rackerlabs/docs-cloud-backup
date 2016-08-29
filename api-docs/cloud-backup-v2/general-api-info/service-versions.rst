.. _service-version:

===============
Service version
===============

The Rackspace Cloud Backup version defines the contract and build information
for the API.

.. _service-version-contract:

Contract version
~~~~~~~~~~~~~~~~

The contract version denotes the data model and behavior that the API supports.
The contract version is included in all request URIs. Different contract
versions of the API might be available at any given time and are not guaranteed
to be compatible with one another.

**Example request URI**

.. code::

    https://dfw.backup.api.rackspacecloud.com/v2/1234/

.. _service-version-list:

Retrieve API version
~~~~~~~~~~~~~~~~~~~~

You can retrieve which API versions are available for your account by using the
retrieve versions request.

Issue a **GET** request to the root endpoint for a service. In the request,
omit the version and everything to the right of it.

**Example: Retrieve versions request**

.. code::

    GET HTTP/1.1
    Host: https://dfw.backup.api.rackspacecloud.com/

This operation does not require a request body. For a list of possible response
codes, see :ref:`Response codes <response-codes>`.
