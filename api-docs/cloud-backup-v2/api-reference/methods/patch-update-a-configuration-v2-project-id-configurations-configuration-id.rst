.. _patch-update-a-configuration:

Update a configuration
~~~~~~~~~~~~~~~~~~~~~~

.. code::

    PATCH /v2/{project_id}/configurations/{configuration_id}

This operation updates the specified configuration. Configurations are updated
with the JSON Patch. For more information about the JSON Patch, see
`RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

You can use only the ``replace`` operation to update a configuration.

You can issue updates only for the following paths:

*  ``/name``
*  ``/enabled``
*  ``/schedule``
*  ``/retention/days``
*  ``/inclusions``
*  ``/exclusions``
*  ``/notifications``

The restrictions that apply to the
:ref:`create configuration operation<post-create-a-configuration>`
also apply to this operation.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|204            | No Content      | The server successfully fulfilled the request, and there  |
|               |                 | is no additional content to send in the response body.    |
+---------------+-----------------+-----------------------------------------------------------+
|400            | Bad Request     | The server cannot process the request because of a client |
|               |                 | error (for example, malformed syntax, invalid request     |
|               |                 | framing, or deceptive request routing).                   |
+---------------+-----------------+-----------------------------------------------------------+
|401            | Unauthorized    | The request was not applied because it lacks valid        |
|               |                 | authentication credentials for the target resource.       |
|               |                 | The credentials are either expired or invalid.            |
+---------------+-----------------+-----------------------------------------------------------+
|403            | Forbidden       | The server understood the request but did not authorize   |
|               |                 | it.                                                       |
+---------------+-----------------+-----------------------------------------------------------+
|404            | Not Found       | The server did not find a current representation for the  |
|               |                 | target resource or cannot disclose that one exists.       |
+---------------+-----------------+-----------------------------------------------------------+
|405            | Method Not      | The method received in the request line is                |
|               | Allowed         | known by the origin server but is not supported by        |
|               |                 | the target resource.                                      |
+---------------+-----------------+-----------------------------------------------------------+
|409            | Conflict        | The request was not completed because of a conflict with  |
|               |                 | the current state of the resource.                        |
+---------------+-----------------+-----------------------------------------------------------+
|500            | Internal Server | The server encountered an unexpected condition            |
|               | Error           | that prevented it from fulfilling the request.            |
+---------------+-----------------+-----------------------------------------------------------+
|501            | Not Implemented | The requested method or resource is not implemented.      |
+---------------+-----------------+-----------------------------------------------------------+
|503            | Service         | The server is currently unable to handle the request      |
|               | Unavailable     | because of a temporary overload or scheduled maintenance, |
|               |                 | which will likely be alleviated after some delay.         |
+---------------+-----------------+-----------------------------------------------------------+

Request
-------

The following table shows the URI parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{configuration_id}        |String                   |Configuration ID. For    |
|                          |                         |example, ``7c8ee069-568f-|
|                          |                         |4d5a-932f-fb2af86b5fd5``.|
+--------------------------+-------------------------+-------------------------+

The following table shows the body parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **op**                  |String                   |*(Required)*             |
|                          |                         |The ``replace``          |
|                          |                         |operation to update the  |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|\ **path**                |String                   |*(Required)*             |
|                          |                         |Path to the item to      |
|                          |                         |change in the            |
|                          |                         |configuration. See the   |
|                          |                         |beginning of this section|
|                          |                         |for the valid values.    |
+--------------------------+-------------------------+-------------------------+
|\ **value**               |String                   |*(Required)*             |
|                          |                         |Value to which you want  |
|                          |                         |to change the            |
|                          |                         |information in the       |
|                          |                         |``path``.                |
+--------------------------+-------------------------+-------------------------+

**Example: Update a configuration, JSON request**


.. code::

   PATCH https://dfw.backup.api.rackspacecloud.com/v2/110011/v2/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5 HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-Type: application/json-patch+json

.. code::

   [
       {
           "op": "replace",
           "path": "/enabled",
           "value": true
       }
   ]

Response
--------

This operation does not return a response body.

**Example: Update a configuration, HTTP response**


.. code::

   204 (No Content)
