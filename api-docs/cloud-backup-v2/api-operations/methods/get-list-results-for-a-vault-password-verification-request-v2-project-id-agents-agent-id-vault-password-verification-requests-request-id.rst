
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-list-results-for-a-vault-password-verification-request:

List results for a vault password verification request
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/agents/{agent_id}/vault-password-verification-requests/{request_id}

This operation lists the results for the specified password verification request for the specified agent's vault.

The operation returns a 404 response code until the agent reports the results of the vault password verification request. Consider this response transient because it might disappear after a minute or so.



This table shows the possible response codes for this operation:


+---------------+-----------------+-----------------------------------------------------------+
|Response Code  |Name             |Description                                                |
+===============+=================+===========================================================+
|200            | OK              | The request succeeded.                                    |
+---------------+-----------------+-----------------------------------------------------------+
|400            | Bad Request     | The server cannot or will not process the request         |
|               |                 | due to something that is perceived as a client error      |
|               |                 | (for example, malformed syntax, invalid request framing,  |
|               |                 | or deceptive request routing).                            |
+---------------+-----------------+-----------------------------------------------------------+
|401            | Unauthorized    | The request has not been applied because it lacks         |
|               |                 | valid authentication credentials for the target           |
|               |                 | resource. The credentials are either expired or invalid.  |
+---------------+-----------------+-----------------------------------------------------------+
|403            | Forbidden       | The server understood the request but refuses             |
|               |                 | to authorize it.                                          |
+---------------+-----------------+-----------------------------------------------------------+
|404            | Not Found       | The server did not find a current representation          |
|               |                 | for the target resource or is not willing to              |
|               |                 | disclose that one exists.                                 |
+---------------+-----------------+-----------------------------------------------------------+
|405            | Method Not      | The method received in the request line is                |
|               | Allowed         | known by the origin server but is not supported by        |
|               |                 | the target resource.                                      |
+---------------+-----------------+-----------------------------------------------------------+
|409            | Conflict        | The request could not be completed due to a conflict with |
|               |                 | the current state of the resource.                        |
+---------------+-----------------+-----------------------------------------------------------+
|500            | Internal Server | The server encountered an unexpected condition            |
|               | Error           | that prevented it from fulfilling the request.            |
+---------------+-----------------+-----------------------------------------------------------+
|503            | Service         | The server is currently unable to handle the request      |
|               | Unavailable     | due to a temporary overload or scheduled maintenance,     |
|               |                 | which will likely be alleviated after some delay.         |
+---------------+-----------------+-----------------------------------------------------------+


Request
""""""""""""""""




This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{agent_id}                |String *(Required)*      |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+
|{request_id}              |String *(Required)*      |Password verification    |
|                          |                         |request ID. For example, |
|                          |                         |``f353f472-4931-463a-    |
|                          |                         |9920-1dcad25f88e7``.     |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List results for a vault password verification request: HTTP request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-password-verification-requests/f353f472-4931-463a-9920-1dcad25f88e7 HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **id**                  |String                   |ID of verification event.|
+--------------------------+-------------------------+-------------------------+
|\ **time**                |String                   |Time of the verification |
|                          |                         |event.                   |
+--------------------------+-------------------------+-------------------------+
|\ **event**               |String                   |Name of the verification |
|                          |                         |event.                   |
+--------------------------+-------------------------+-------------------------+
|\ **agent**               |String                   |Agent information.       |
+--------------------------+-------------------------+-------------------------+
|agent.\ **id**            |String                   |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|\ **request_id**          |String                   |ID of the request.       |
+--------------------------+-------------------------+-------------------------+
|\ **valid**               |String                   |Indication of validity   |
|                          |                         |for the password.        |
+--------------------------+-------------------------+-------------------------+







**Example List results for a vault password verification request: JSON response**


.. code::

   200 (OK)


.. code::

   {
       "id": "5650135586",
       "time": "2014-10-09T12:26:18.233501Z",
       "event": "vault_password_verified",
       "agent": {
           "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
       },
       "request_id": "f353f472-4931-463a-9920-1dcad25f88e7",
       "valid": true
   }
   
   




