
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _post-report-results-of-a-vault-encryption-request-v2-project-id-agents-agent-id-vault-encryption-requests-request-id:

Report results of a vault encryption request
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/agents/{agent_id}/vault-encryption-requests/{request_id}

Reports results of the specified vault encryption request for the specified agent's vault.

This operation reports the results of the specified vault encryption request for the specified agent's vault.

The agent uses this operation to report the results of a request to set up encryption or change the encryption password. If encryption is initially being set up for the agent's vault and succeeds, the value of the encrypted property on the agent resource is updated.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|204                       |No Content               |                         |
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





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **action**              |String *(Required)*      |To report the results of |
|                          |                         |a request to enable      |
|                          |                         |vault encryption, send   |
|                          |                         |``enabled`` as the value |
|                          |                         |for ``action``. To       |
|                          |                         |report the results of a  |
|                          |                         |request to change the    |
|                          |                         |vault's encryption       |
|                          |                         |password, send           |
|                          |                         |``changed`` as the value |
|                          |                         |for ``action``.          |
+--------------------------+-------------------------+-------------------------+
|\ **succeeded**           |String *(Required)*      |Specifies whether the    |
|                          |                         |action succeeded.        |
+--------------------------+-------------------------+-------------------------+





**Example Report results of a vault encryption request: JSON request**


.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-encryption-requests/9072bb51-d5fd-4fc5-ad80-d62e573236b6 HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json


.. code::

   {
       "action": "enabled",
       "succeeded": true
   }





Response
""""""""""""""""










**Example Report results of a vault encryption request: JSON response**


.. code::

   204 (No Content)




