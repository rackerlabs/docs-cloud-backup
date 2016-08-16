.. _get-list-backups-available-for-a-restore:

List the backups available for a restore
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v1.0/{tenant_id}/backup/availableforrestore

This operation lists the backups that are eligible for restore (a backup that
has completed at least once and has not been deleted and is not expired).

This table shows the possible response codes for this operation:

+--------------------------+-------------------------+------------------------+
|Response Code             |Name                     |Description             |
+==========================+=========================+========================+
|200                       |OK                       |The request succeeded.  |
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
|404                       |Not Found                |The backend services did|
|                          |                         |not find anything       |
|                          |                         |matching the request    |
|                          |                         |URI.                    |
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

This operation does not accept a request body.

**Example: List backups available for a restore JSON request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v1.0/1234/backup/availableforrestore
   User-Agent: controlpanel.drivesrvr.com
   Host: dfw.backup.api.rackspacecloud.com
   Content-Type: application/json;
   Content-Length: 0
   X-Auth-Token: 95b1788906f74d279d03001c6a14f3fe

Response
--------

**Example: List backups available for a restore JSON response**

.. code::

   [
       {
           "BackupConfigurationId":172418,
           "BackupConfigurationName":"BackupConfig1",
           "MachineName":"MBP0",
           "MachineAgentId":252036,
           "IsEncrypted":false,
           "PublicKeyHex":10001,
           "PublicKeyMod":"a5261939975948bb7a58dffe5ff54e65f0498f9175f5a0928 8810b8975871e99af3b5dd94057b0fc07535f5f97444504fa35169d461d0d30cf0 192e307727c065168c788771c561a9400fb49175e9e6aa4e23fe11af69e9412dd2 3b0cb6684c4c2429bce139e848ab26d0829073351f4acd36074eafd036a5eb8335 9d2a698d3",
           "Flavor":"RaxCloudServer",
           "LastSuccessfulBackupTime":"\/Date(1360701971000)\/"
       },
       {
           "BackupConfigurationId":172417,
           "BackupConfigurationName":"BackupCOnfig2",
           "MachineName":"MBP2",
           "MachineAgentId":252034,
           "IsEncrypted":false,
           "PublicKeyHex":10001,
           "PublicKeyMod":"a5261939975948bb7a58dffe5ff54e65f0498f9175f5a09288 810b8975871e99af3b5dd94057b0fc07535f5f97444504fa35169d461d0d30cf019 2e307727c065168c788771c561a9400fb49175e9e6aa4e23fe11af69e9412dd23b0 cb6684c4c2429bce139e848ab26d0829073351f4acd36074eafd036a5eb83359d2a 698d3",
           "Flavor":"RaxCloudServer",
           "LastSuccessfulBackupTime":"\/Date(1360701957000)\/"
       }
   ]
