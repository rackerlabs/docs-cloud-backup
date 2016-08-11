.. _enable-or-disable-an-agent:

Enable or disable an agent
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    POST /v1.0/{tenant_id}/agent/enable

This operation enables or disables an agent. Disabling an agent does not delete
it or its data. You can re-enable disabled agents later.

.. note::
   Encryption is important for keeping your data confidential. However,
   encryption is also expensive. It takes significantly longer to backup and
   restore encrypted data. Consider if the data you are storing must be
   encrypted. If not, it is best to proceed without encryption. Encryption
   applies across the board, and once you encrypt a backup server, there is
   no turning back.

This table shows the possible response codes for this operation:

+--------------------------+-------------------------+------------------------+
|Response Code             |Name                     |Description             |
+==========================+=========================+========================+
|204                       |No Content               |The request succeeded.  |
+--------------------------+-------------------------+------------------------+
|400                       |Bad request              |There were one or more  |
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

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|{tenant_id}               |String                   |The unique identifier of|
|                          |                         |the tenant or account.  |
+--------------------------+-------------------------+------------------------+

This table shows the body parameters for the request:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|**MachineAgentId**        |String *(Required)*      |ID that uniquely        |
|                          |                         |identifies a Cloud      |
|                          |                         |Backup agent.           |
+--------------------------+-------------------------+------------------------+
|**Enable**                |String *(Required)*      |Indicates if agent is   |
|                          |                         |enabled (true) or       |
|                          |                         |disabled (false).       |
+--------------------------+-------------------------+------------------------+

**Example: Enable an agent JSON request**

.. code::

   {
       "MachineAgentId": 92384579,
       "Enable": true
   }

**Example: Disable an agent JSON request**

.. code::

   {
       "MachineAgentId": 92384579,
       "Enable": false
   }

Response
--------

This operation does not return a response body.
