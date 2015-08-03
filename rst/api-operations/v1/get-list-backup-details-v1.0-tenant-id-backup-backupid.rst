
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List Backup Details
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v1.0/{tenant_id}/backup/{backupId}

Lists details about the specified backup.

.. note::
   The authenticated user must have access to the specified backup in order to retrieve its details.
   
   



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|200                       |OK                       |The request succeeded.   |
+--------------------------+-------------------------+-------------------------+
|400                       |Bad Request              |There were one or more   |
|                          |                         |errors in the request.   |
+--------------------------+-------------------------+-------------------------+
|401                       |Unauthorized             |The supplied token was   |
|                          |                         |not authorized to access |
|                          |                         |the resources. Either it |
|                          |                         |is expired or invalid.   |
+--------------------------+-------------------------+-------------------------+
|403                       |Forbidden                |Access to the requested  |
|                          |                         |resource was denied.     |
+--------------------------+-------------------------+-------------------------+
|404                       |Not Found                |The backend services did |
|                          |                         |not find anything        |
|                          |                         |matching the request URI.|
+--------------------------+-------------------------+-------------------------+
|500                       |Instance Fault           |This is a generic server |
|                          |                         |error. The message       |
|                          |                         |contains the reason for  |
|                          |                         |the error. This error    |
|                          |                         |could wrap several error |
|                          |                         |messages.                |
+--------------------------+-------------------------+-------------------------+
|503                       |Service Unavailable      |This is a generic server |
|                          |                         |error. The message       |
|                          |                         |contains the reason for  |
|                          |                         |the error. This error    |
|                          |                         |could wrap several error |
|                          |                         |messages.                |
+--------------------------+-------------------------+-------------------------+


Request
""""""""""""""""

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{tenant_id}               |xsd:string               |The unique identifier of |
|                          |                         |the tenant or account.   |
+--------------------------+-------------------------+-------------------------+
|{backupId}                |xsd:integer              |The unique identifier of |
|                          |                         |a backup.                |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List Backup Details: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v1.0/1234/backup/134332
    User-Agent: controlpanel.drivesrvr.com
    Host: dfw.backup.api.rackspacecloud.com
    Content-Type: application/json;
    Content-Length: 0
    X-Auth-Token: 95b1788906f74d279d03001c6a14f3fe


Response
""""""""""""""""


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|BackupId                  |                         |Identifies a unique      |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|BackupConfigurationId     |                         |Autogenerated ID that    |
|                          |                         |uniquely identifies the  |
|                          |                         |backup configuration     |
|                          |                         |that is associated with  |
|                          |                         |this backup.             |
+--------------------------+-------------------------+-------------------------+
|CurrentState              |                         |Indicates the current    |
|                          |                         |state of the backup.     |
|                          |                         |Valid values are Queued, |
|                          |                         |InProgress, Skipped,     |
|                          |                         |Missed, Stopped,         |
|                          |                         |Completed, Failed,       |
|                          |                         |Preparing,               |
|                          |                         |StartRequested,          |
|                          |                         |StartScheduled,          |
|                          |                         |StopRequested, and       |
|                          |                         |CompletedWithErrors.     |
+--------------------------+-------------------------+-------------------------+
|BackupConfigurationName   |                         |Specifies the name of    |
|                          |                         |the backup configuration.|
+--------------------------+-------------------------+-------------------------+
|MachineAgentId            |                         |ID that uniquely         |
|                          |                         |identifies a Cloud       |
|                          |                         |Backup agent.            |
+--------------------------+-------------------------+-------------------------+
|MachineName               |                         |Name of the Cloud Server |
|                          |                         |where the Cloud Backup   |
|                          |                         |agent resides.           |
+--------------------------+-------------------------+-------------------------+
|StateChangeTime           |                         |Indicates when the       |
|                          |                         |backup last changed      |
|                          |                         |state.                   |
+--------------------------+-------------------------+-------------------------+
|IsEncrypted               |                         |Indicates if backups are |
|                          |                         |encrypted. Valid values  |
|                          |                         |are true or false.       |
+--------------------------+-------------------------+-------------------------+
|EncryptionKey             |                         |Specifies the encryption |
|                          |                         |key.                     |
+--------------------------+-------------------------+-------------------------+





**Example List Backup Details: JSON response**


.. code::

    {
        "BackupId": 134332,
        "BackupConfigurationId": 158519,
        "CurrentState": "Queued",
        "BackupConfigurationName": "Weekly Website Backup",
        "MachineAgentId": 224321,
        "MachineName": "Web Server",
        "StateChangeTime": "\/Date(1358530097000)\/",
        "IsEncrypted": false,
        "EncryptionKey": {
            "ModulusHex": "a3261939975948bb7a58dffe5ff54e65f0498f9 175f5a09288810b8975871e99af3b5dd94057b0fc07535f5f97444 504fa35169d461d0d30cf0192e307727c065168c788771c561a940 0fb49175e9e6aa4e23fe11af69e9412dd23b0cb6684c4c2429bce1 39e848ab26d0829073351f4acd36074eafd036a5eb83359d2a698d5",
            "ExponentHex": 20010
        }
    }

