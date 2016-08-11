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

    https://dfw.backup.api.rackspacecloud.com/v1.0/1234/

.. _service-version-list:

List API version
~~~~~~~~~~~~~~~~

You can list which API versions are available for your account by using the
list versions request.

Issue a **GET** request to the root endpoint for a service. In the request,
truncate the version and everything to the right of it.

**Example list versions request**

.. code::

    GET HTTP/1.1
    Host: https://dfw.backup.api.rackspacecloud.com/

This operation does not require a request body.

Normal Response Codes: 200, 203

Error Response Codes: 400, 413, 500, 503
