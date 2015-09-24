
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-list-results-for-a-vault-password-verification-request-v2-project-id-agents-agent-id-vault-password-verification-requests-request-id:

List results for a vault password verification request
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/agents/{agent_id}/vault-password-verification-requests/{request_id}

Lists results for the specified password verification request for the specified agent's vault.

This operation lists the results for the specified password verification request for the specified agent's vault.

The operation returns a 404 response code until the agent reports the results of the vault password verification request. Consider this response transient because it might disappear after a minute or so.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|200                       |OK                       |                         |
+--------------------------+-------------------------+-------------------------+
|400                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|401                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|403                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|404                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|405                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|409                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|500                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|503                       |                         |                         |
+--------------------------+-------------------------+-------------------------+


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




**Example List results for a vault password verification request: JSON request**


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
   
   




