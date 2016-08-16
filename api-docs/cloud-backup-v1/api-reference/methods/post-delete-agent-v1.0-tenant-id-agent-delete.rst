.. _delete-agent:

Delete an agent
~~~~~~~~~~~~~~~

.. code::

    POST /v1.0/{tenant_id}/agent/delete

This operation immediately permanently deletes an agent and its backup data.

You can delete an agent at any time. If the agent is in the middle of an
operation, it is allowed to complete. After it completes, it no longer
authenticates.

This table shows the possible response codes for this operation:

+--------------------------+-------------------------+------------------------+
|Response Code             |Name                     |Description             |
+==========================+=========================+========================+
|204                       |No Content               |The request succeeded.  |
+--------------------------+-------------------------+------------------------+
|400                       |Bad Request              |There were one or more  |
|                          |                         |errors in the request.  |
+--------------------------+-------------------------+------------------------+
|401                       |Unauthorized             |The supplied token was  |
|                          |                         |not authorized to access|
|                          |                         |the resources. Either it|
|                          |                         |is expired or invalid.  |
+--------------------------+-------------------------+------------------------+
|403                       |Forbidden                |Access to the requested |
|                          |                         |resource was denied.    |
+--------------------------+-------------------------+------------------------+
|500                       |Instance Fault           |This is a generic server|
|                          |                         |error. The message      |
|                          |                         |contains the reason for |
|                          |                         |the error. This error   |
|                          |                         |could wrap several error|
|                          |                         |messages.               |
+--------------------------+-------------------------+------------------------+
|503                       |Service Unavailable      |This is a generic server|
|                          |                         |error. The message      |
|                          |                         |contains the reason for |
|                          |                         |the error. This error   |
|                          |                         |could wrap several error|
|                          |                         |messages.               |
+--------------------------+-------------------------+------------------------+

Request
-------

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{tenant_id}               |String                   |The unique identifier of |
|                          |                         |the tenant or account.   |
+--------------------------+-------------------------+-------------------------+

This table shows the body parameters for the request:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|**MachineAgentId**        |String *(Required)*      |ID that uniquely        |
|                          |                         |identifies a Cloud      |
|                          |                         |Backup agent.           |
+--------------------------+-------------------------+------------------------+

**Example: Delete agent JSON request**

.. code::

   {
       "MachineAgentId": 92384579
   }

Response
--------

This table shows the body parameters for the response:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|**MachineAgentId**        |String                   |ID that uniquely        |
|                          |                         |identifies a Cloud      |
|                          |                         |Backup agent.           |
+--------------------------+-------------------------+------------------------+

**Example: Delete agent JSON response**

.. code::

   {
       "MachineAgentId": 92384579
   }
