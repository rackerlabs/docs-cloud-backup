.. _patch-update-an-agent:

Update an agent
~~~~~~~~~~~~~~~

.. code::

    PATCH /v2/{project_id}/agents/{agent_id}

This operation updates the specified agent. Agents are updated with the JSON
Patch. For more information about the JSON Patch, see
`RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

You can modify values only for the following parameters, which are represented
as paths:

*  ``/enabled``

   Valid values are ``true`` and ``false``.

*  ``/vault/region``

   A valid value is any of the vendor's valid region identifiers. Values can
   only modified only if the vault is empty.

*  ``/vault/use_internal``

   Valid values are ``true`` and ``false``.

*  ``/log_level``

   Valid values are ``all``, ``trace``, ``debug``, ``info`` (which is the
   default value), ``warn``, ``error`` , and ``fatal``.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|204            | No content      | The server successfully fulfilled the request, and there  |
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
|{agent_id}                |String                   |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+

The following table shows the body parameters for the request.

+-------------------------+-------------------------+--------------------------+
|Name                     |Type                     |Description               |
+=========================+=========================+==========================+
|\ **op**                 |String                   |*(Required)*              |
|                         |                         |The ``replace`` or        |
|                         |                         |``add`` operation used to |
|                         |                         |update the agent. You can |
|                         |                         |use these operations      |
|                         |                         |interchangeably because   |
|                         |                         |they are interpreted      |
|                         |                         |identically.              |
+-------------------------+-------------------------+--------------------------+
|\ **path**               |String                   |*(Required)*              |
|                         |                         |Path of the parameter to  |
|                         |                         |update. Valid values are  |
|                         |                         |``/enabled``,             |
|                         |                         |``/vault/region``,        |
|                         |                         |``/vault/use_internal``,  |
|                         |                         |and ``/log-level``.       |
+-------------------------+-------------------------+--------------------------+
|\ **value**              |String                   |*(Required)*              |
|                         |                         |Value related to the      |
|                         |                         |``path`` as described at  |
|                         |                         |the beginning of this     |
|                         |                         |section.                  |
+-------------------------+-------------------------+--------------------------+

**Example: Update an agent, JSON request**

.. code::

   PATCH https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97 HTTP/1.1
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

This operation does not require a response body for the 204 response.

**Example: Update an agent, 204 response**

.. code::

   204 (No Content)

When the response code is something other than 204, a response body is returned
with additional information about the error.

**Example: Update an agent, 403 response**

.. code::

   403 (Forbidden)
   Content-Type:application/json

.. code::

   {
  "message": "The vault property (region) cannot be updated, reason: vault is not empty."
   }

**Example: Update an agent, 404 response**

.. code::

   404 (Not Found)
   Content-Type:application/json

.. code::

   {
  "message": "Agent not found."
   }
