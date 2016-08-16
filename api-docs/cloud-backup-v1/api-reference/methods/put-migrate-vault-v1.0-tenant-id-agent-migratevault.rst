.. _migrate-vault:

Migrate a vault
~~~~~~~~~~~~~~~

.. code::

    PUT /v1.0/{tenant_id}/agent/migratevault

This operation migrates a backup vault from one machine agent to another.

To use the migrate vault operation, the two agents should be under the same
user and their backups should not be encrypted. The destination machine agent
should not have any backups already configured and running.

This table shows the possible response codes for this operation:

+--------------------------+-------------------------+------------------------+
|Response Code             |Name                     |Description             |
+==========================+=========================+========================+
|200                       |OK                       |The request succeeded.  |
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

+------------------------------+-----------------------+----------------------+
|Name                          |Type                   |Description           |
+==============================+=======================+======================+
|**SourceMachineAgentId**      |String *(Required)*    |Agent ID of the       |
|                              |                       |source. Backups are   |
|                              |                       |migrated from this    |
|                              |                       |agent.                |
+------------------------------+-----------------------+----------------------+
|**DestinationMachineAgentID** |String *(Required)*    |Agent ID of the       |
|                              |                       |destination. Backups  |
|                              |                       |are migrated to this  |
|                              |                       |agent.                |
+------------------------------+-----------------------+----------------------+

**Example: Migrate vault JSON request**

.. code::

   {
       "SourceMachineAgentId": 1,
       "DestinationMachineAgentId": 2
   }

Response
--------

This operation does not return a response body.
