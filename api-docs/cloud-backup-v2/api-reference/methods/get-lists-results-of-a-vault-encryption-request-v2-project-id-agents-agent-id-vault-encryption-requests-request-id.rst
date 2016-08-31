.. _get-lists-results-of-a-vault-encryption-request:

Retrieve the results of a vault encryption request
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/agents/{agent_id}/vault-encryption-requests/{request_id}

This operation retrieves the results of the specified vault encryption request
for the specified agent's vault.

Depending on the type of encryption request that was made, the ``event``
parameter in the response body is either ``vault_encryption_enabled`` or
``vault_encryption_changed``.

This operation returns a 404 status code until the agent has reported the
results of the vault encryption request. This response should be considered
transient because it might disappear after a minute or so.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|200            | OK              | The request succeeded.                                    |
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
|{request_id}              |String                   |Encryption request ID.   |
|                          |                         |For example, ``9072bb51- |
|                          |                         |d5fd-4fc5-ad80-          |
|                          |                         |d62e573236b6``.          |
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve the results of a vault encryption request, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-encryption-requests/9072bb51-d5fd-4fc5-ad80-d62e573236b6 HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **id**                  |String                   |ID of the vault.         |
+--------------------------+-------------------------+-------------------------+
|\ **time**                |String                   |Time of the encryption   |
|                          |                         |request.                 |
+--------------------------+-------------------------+-------------------------+
|\ **event**               |String                   |Type of event.           |
+--------------------------+-------------------------+-------------------------+
|\ **agent**               |String                   |Information about the    |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|agent.\ **id**            |String                   |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|\ **request_id**          |String                   |ID of the encryption     |
|                          |                         |request.                 |
+--------------------------+-------------------------+-------------------------+
|\ **succeeded**           |Boolean                  |Specifies whether the    |
|                          |                         |action succeeded.        |
+--------------------------+-------------------------+-------------------------+

**Example: Retrieve the results of a vault encryption request, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "id": "5650135586",
       "time": "2014-10-09T12:26:18.233501Z",
       "event": "vault_encryption_enabled",
       "agent": {
           "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
       },
       "request_id": "9072bb51-d5fd-4fc5-ad80-d62e573236b6",
       "succeeded": true
   }
