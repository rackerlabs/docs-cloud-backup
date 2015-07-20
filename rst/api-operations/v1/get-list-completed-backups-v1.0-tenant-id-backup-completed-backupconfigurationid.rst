
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

=============================================================================
List Completed Backups -  Rackspace Cloud Backup Developer Guide v1
=============================================================================

List Completed Backups
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <get-list-completed-backups-v1.0-tenant-id-backup-completed-backupconfigurationid.html#request>`__
`Response <get-list-completed-backups-v1.0-tenant-id-backup-completed-backupconfigurationid.html#response>`__

.. code::

    GET /v1.0/{tenant_id}/backup/completed/{backupConfigurationId}

Lists the details for backups that can still be restored. 

Backups are returned only for the specified backup configuration ID (BackupConfigurationId). 

The backup configuration ID is specific to the agent. You can retrieve a list of all backup configurations for an agent with the "List all backup configurations for an agent" operation. 

.. note::
   The authenticated user must have access to the specified backup configuration.
   
   



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
^^^^^^^^^^^^^^^^^

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{tenant_id}               |xsd:string               |The unique identifier of |
|                          |                         |the tenant or account.   |
+--------------------------+-------------------------+-------------------------+
|{backupConfigurationId}   |xsd:integer              |The unique identifier of |
|                          |                         |the backup configuration.|
+--------------------------+-------------------------+-------------------------+








**Example List Completed Backups: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v1.0/1234/backup/completed/158638
    User-Agent: controlpanel.drivesrvr.com
    Host: dfw.backup.api.rackspacecloud.com
    Content-Type: application/json;
    Content-Length: 0
    X-Auth-Token: 95b1788906f74d279d03001c6a14f3fe


Response
^^^^^^^^^^^^^^^^^^


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
|CompletedTime             |                         |Indicates the time when  |
|                          |                         |the backup completed.    |
+--------------------------+-------------------------+-------------------------+
|BytesSearched             |                         |Indicates how many bytes |
|                          |                         |were searched for this   |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|NumErrors                 |                         |Indicates the numbers of |
|                          |                         |errors that were         |
|                          |                         |encountered during the   |
|                          |                         |run for this backup.     |
+--------------------------+-------------------------+-------------------------+





**Example List Completed Backups: JSON response**


.. code::

       [
            {
                "BackupId": 134386,
                "BackupConfigurationId": 158638,
                "BackupConfigurationName": "Weekly Website Backup",
                "MachineName": "Web Server",
                "MachineAgentId": 224505,
                "CompletedTime": "\/Date(1358535352000)\/",
                "BytesSearched": 10245674584,
                "NumErrors": 0
            }
       ]

