
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _post-move-a-vault-from-one-agent-to-another-agent-v2-project-id-agents-agent-id-vault:

Move a vault from one agent to another agent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/agents/{agent_id}/vault

Moves a vault from one agent to another agent.

This operation takes the vault assigned to the source agent and assigns it to the agent specified in the request URL. If the migration is successful, the vault is no longer assigned to the source agent.

A 403 response code is returned in any of the following error conditions: 

* Either the source or destination agent is not owned by the project.
* The vault is encrypted.
* The destination agent has already created a vault and that vault contains data.






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





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **source_agent_id**     |String *(Required)*      |ID of the agent whose    |
|                          |                         |vault you want to move.  |
+--------------------------+-------------------------+-------------------------+





**Example Move a vault from one agent to another agent: JSON request**


.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json


.. code::

   {
       "source_agent_id": "2240a3eb-1d4e-4e52-bbcd-24417917c361"
   }





Response
""""""""""""""""










**Example Move a vault from one agent to another agent: JSON response**


.. code::

   204 (No Content)




