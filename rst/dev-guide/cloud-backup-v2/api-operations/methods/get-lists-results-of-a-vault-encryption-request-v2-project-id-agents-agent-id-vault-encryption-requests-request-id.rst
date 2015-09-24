
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-lists-results-of-a-vault-encryption-request-v2-project-id-agents-agent-id-vault-encryption-requests-request-id:

Lists results of a vault encryption request
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/agents/{agent_id}/vault-encryption-requests/{request_id}

Lists results of the specified vault encryption request for the specified agent's vault.

This operation lists results of the specified vault encryption request for the specified agent's vault.

The ``event`` parameter in the response body will either be ``vault_encryption_enabled`` or ``vault_encryption_changed`` depending on what type of request was made.

This operation returns a 404 status code until the agent has reported the results of the vault encryption request. This response is to be considered transient because it might disappear after a minute or so.



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
|{request_id}              |String *(Required)*      |Encryption request ID.   |
|                          |                         |For example, ``9072bb51- |
|                          |                         |d5fd-4fc5-ad80-          |
|                          |                         |d62e573236b6``.          |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example Lists results of a vault encryption request: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-encryption-requests/9072bb51-d5fd-4fc5-ad80-d62e573236b6 HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **id**                  |String                   |ID of the vault.         |
+--------------------------+-------------------------+-------------------------+
|\ **time**                |String                   |Time of the request.     |
+--------------------------+-------------------------+-------------------------+
|\ **event**               |String                   |Type of event.           |
+--------------------------+-------------------------+-------------------------+
|\ **agent**               |String                   |Information about the    |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|agent.\ **id**            |String                   |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|\ **request_id**          |String                   |ID of the request.       |
+--------------------------+-------------------------+-------------------------+
|\ **succeeded**           |String                   |Specifies whether the    |
|                          |                         |action succeeded.        |
+--------------------------+-------------------------+-------------------------+







**Example Lists results of a vault encryption request: JSON response**


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




