.. _update-a-restore-configuration:

Update a restore configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    POST /v1.0/{tenant_id}/restore

This operation updates an existing restore configuration.

You can only update restore configurations while they are in the "Creating"
state. For details about the operation that you use to view the current state
of a restore, see
:ref:`List details about a restore <get-details-about-a-restore>`.

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

This table shows the body parameters for the request:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|**RestoreId**             |String *(Required)*      |Creates a restore       |
|                          |                         |configuration and in    |
|                          |                         |response you get        |
|                          |                         |RestoreID.              |
+--------------------------+-------------------------+------------------------+
|**BackupId**              |String *(Required)*      |Identifies a unique     |
|                          |                         |backup.                 |
+--------------------------+-------------------------+------------------------+
|**BackupMachineId**       |String *(Required)*      |Identifies the machine  |
|                          |                         |where your backup was   |
|                          |                         |originally made. (If you|
|                          |                         |restore files to the    |
|                          |                         |same system,            |
|                          |                         |BackupMachineId and     |
|                          |                         |DestinationMachineId are|
|                          |                         |the same. If you decide |
|                          |                         |to restore to another   |
|                          |                         |system, different from  |
|                          |                         |where the files were    |
|                          |                         |originally backed up,   |
|                          |                         |DestinationMachineId is |
|                          |                         |different from          |
|                          |                         |BackupMachineId.)       |
+--------------------------+-------------------------+------------------------+
|**DestinationMachineId**  |String *(Required)*      |Identifies the machine  |
|                          |                         |to which you want the   |
|                          |                         |backups to restore. (If |
|                          |                         |you restore files to the|
|                          |                         |same system,            |
|                          |                         |BackupMachineId and     |
|                          |                         |DestinationMachineId are|
|                          |                         |the same. If you decide |
|                          |                         |to restore to another   |
|                          |                         |system, different from  |
|                          |                         |where the files were    |
|                          |                         |originally backed up,   |
|                          |                         |DestinationMachineId is |
|                          |                         |different from          |
|                          |                         |BackupMachineId.)       |
+--------------------------+-------------------------+------------------------+
|**OverwriteFiles**        |String *(Required)*      |Indicates if files are  |
|                          |                         |overwritten. Valid      |
|                          |                         |values are true and     |
|                          |                         |false.                  |
+--------------------------+-------------------------+------------------------+
|**BackupDataCenter**      |String *(Optional)*      |Specifies the datacenter|
|                          |                         |where the original      |
|                          |                         |machine agent that was  |
|                          |                         |responsible for creating|
|                          |                         |the backup, that is     |
|                          |                         |being used for the      |
|                          |                         |restore, is or was      |
|                          |                         |located (the source     |
|                          |                         |machine does not have to|
|                          |                         |be online).             |
+--------------------------+-------------------------+------------------------+
|**BackupConfigurationId** |String *(Required)*      |Autogenerated ID that   |
|                          |                         |uniquely identifies the |
|                          |                         |backup configuration    |
|                          |                         |that is associated with |
|                          |                         |this backup.            |
+--------------------------+-------------------------+------------------------+
|**DestinationPath**       |String *(Required)*      |Specifies the path where|
|                          |                         |you want the backup to  |
|                          |                         |restore.                |
+--------------------------+-------------------------+------------------------+
|**RestoreStateId**        |String *(Required)*      |Specifies the restore   |
|                          |                         |state ID. Valid values  |
|                          |                         |are 0 for Creating, 1   |
|                          |                         |for Queued, 2 for       |
|                          |                         |InProgress, 3 for       |
|                          |                         |Completed, 4 for        |
|                          |                         |stopped, 5 for Failed, 6|
|                          |                         |for startRequested, 7   |
|                          |                         |for Stoprequested, 8 for|
|                          |                         |Completed WithErrors,   |
|                          |                         |and 9 for Preparing.    |
+--------------------------+-------------------------+------------------------+

**Example: Update a restore configuration JSON request**

.. code::

   {
       "RestoreId": 14387,
       "BackupConfigurationId": 148325,
       "RestoreStateId": 1,
       "BackupMachineId": 156953,
       "DestinationMachineId": 156953,
       "DestinationPath": "C:\\RestoredPath",
       "BackupDataCenter": "DFW",
       "BackupId": 133599,
       "OverwriteFiles": true
   }

Response
--------

This operation does not return a response body.
