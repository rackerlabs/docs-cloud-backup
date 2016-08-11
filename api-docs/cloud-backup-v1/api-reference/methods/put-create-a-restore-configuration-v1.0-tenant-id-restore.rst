.. _create-a-restore-configuration:

Create a restore configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    PUT /v1.0/{tenant_id}/restore

This operation creates a new restore configuration and returns detailed
information about the restore.

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
|                          |                         |BackupMachineId. This is|
|                          |                         |an agent ID -           |
|                          |                         |MachineAgentID from the |
|                          |                         |List agent details      |
|                          |                         |operation.)             |
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
|                          |                         |BackupMachineId. This is|
|                          |                         |an agent ID -           |
|                          |                         |MachineAgentID from the |
|                          |                         |List agent details      |
|                          |                         |operation. )            |
+--------------------------+-------------------------+------------------------+
|**DestinationPath**       |String *(Required)*      |Specifies the path where|
|                          |                         |you want the backup to  |
|                          |                         |restore.                |
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

**Example: Create a restore configuration JSON request**

.. code::

   {
       "BackupId": 133599,
       "BackupMachineId": 156953,
       "DestinationMachineId": 156751,
       "DestinationPath": "C:\\FolderPathForRestore\\",
       "BackupDataCenter": "DFW",
       "OverwriteFiles": false
   }

Response
--------

This table shows the body parameters for the response:

+----------------------------+------------------------+-----------------------+
|Name                        |Type                    |Description            |
+============================+========================+=======================+
|**RestoreId**               |String                  |Creates a restore      |
|                            |                        |configuration and in   |
|                            |                        |response you get       |
|                            |                        |RestoreID.             |
+----------------------------+------------------------+-----------------------+
|**BackupId**                |String                  |Identifies a unique    |
|                            |                        |backup.                |
+----------------------------+------------------------+-----------------------+
|**BackupMachineId**         |String                  |Identifies the machine |
|                            |                        |where your backup was  |
|                            |                        |originally made. (If   |
|                            |                        |you restore files to   |
|                            |                        |the same system,       |
|                            |                        |BackupMachineId and    |
|                            |                        |DestinationMachineId   |
|                            |                        |are the same. If you   |
|                            |                        |decide to restore to   |
|                            |                        |another system,        |
|                            |                        |different from where   |
|                            |                        |the files were         |
|                            |                        |originally backed up,  |
|                            |                        |DestinationMachineId is|
|                            |                        |different from         |
|                            |                        |BackupMachineId.)      |
+----------------------------+------------------------+-----------------------+
|**DestinationMachineId**    |String                  |Identifies the machine |
|                            |                        |to which you want the  |
|                            |                        |backups to restore. (If|
|                            |                        |you restore files to   |
|                            |                        |the same system,       |
|                            |                        |BackupMachineId and    |
|                            |                        |DestinationMachineId   |
|                            |                        |are the same. If you   |
|                            |                        |decide to restore to   |
|                            |                        |another system,        |
|                            |                        |different from where   |
|                            |                        |the files were         |
|                            |                        |originally backed up,  |
|                            |                        |DestinationMachineId is|
|                            |                        |different from         |
|                            |                        |BackupMachineId.)      |
+----------------------------+------------------------+-----------------------+
|**OverwriteFiles**          |String                  |Indicates if files are |
|                            |                        |overwritten. Valid     |
|                            |                        |values are true and    |
|                            |                        |false.                 |
+----------------------------+------------------------+-----------------------+
|**BackupDataCenter**        |String                  |Specifies the          |
|                            |                        |datacenter where the   |
|                            |                        |original machine agent |
|                            |                        |that was responsible   |
|                            |                        |for creating the       |
|                            |                        |backup, that is being  |
|                            |                        |used for the restore,  |
|                            |                        |is or was located (the |
|                            |                        |source machine does not|
|                            |                        |have to be online).    |
+----------------------------+------------------------+-----------------------+
|**BackupConfigurationId**   |String                  |Autogenerated ID that  |
|                            |                        |uniquely identifies the|
|                            |                        |backup configuration   |
|                            |                        |that is associated with|
|                            |                        |this backup.           |
+----------------------------+------------------------+-----------------------+
|**BackupConfigurationName** |String                  |Specifies the name of  |
|                            |                        |the backup             |
|                            |                        |configuration.         |
+----------------------------+------------------------+-----------------------+
|**BackupRestorePoint**      |String                  |Identifies the date of |
|                            |                        |the backup.            |
+----------------------------+------------------------+-----------------------+
|**MachineAgentId**          |String                  |ID that uniquely       |
|                            |                        |identifies a Cloud     |
|                            |                        |Backup agent.          |
+----------------------------+------------------------+-----------------------+
|**BackupMachineName**       |String                  |Indicates the machine  |
|                            |                        |name of the backup.    |
+----------------------------+------------------------+-----------------------+
|**BackupFlavor**            |String                  |RaxCloudServer – for   |
|                            |                        |Rackspace Cloud        |
|                            |                        |Servers.               |
+----------------------------+------------------------+-----------------------+
|**DestinationMachineName**  |String                  |Indicates the machine  |
|                            |                        |to which you want to   |
|                            |                        |restore the backup.    |
+----------------------------+------------------------+-----------------------+
|**DestinationPath**         |String                  |Specifies the path     |
|                            |                        |where you want the     |
|                            |                        |backup to restore.     |
+----------------------------+------------------------+-----------------------+
|**IsEncrypted**             |String                  |Indicates if backups   |
|                            |                        |are encrypted. Valid   |
|                            |                        |values are true or     |
|                            |                        |false.                 |
+----------------------------+------------------------+-----------------------+
|**EncryptedPassword**       |String                  |Specifies null or the  |
|                            |                        |encrypted key.         |
+----------------------------+------------------------+-----------------------+
|**PublicKey**               |String                  |Indicates the public   |
|                            |                        |key of the             |
|                            |                        |public/private         |
|                            |                        |encryption key pair.   |
+----------------------------+------------------------+-----------------------+
|**RestoreStateId**          |String                  |Specifies the restore  |
|                            |                        |state ID. Valid values |
|                            |                        |are 0 for Creating, 1  |
|                            |                        |for Queued, 2 for      |
|                            |                        |InProgress, 3 for      |
|                            |                        |Completed, 4 for       |
|                            |                        |stopped, 5 for Failed, |
|                            |                        |6 for StartRequested, 7|
|                            |                        |for StopRequested, 8   |
|                            |                        |for Completed          |
|                            |                        |WithErrors, and 9 for  |
|                            |                        |Preparing.             |
+----------------------------+------------------------+-----------------------+
|**Inclusions**              |String                  |Indicates the list of  |
|                            |                        |files and folders to   |
|                            |                        |restore.               |
+----------------------------+------------------------+-----------------------+
|**Exclusions**              |String                  |Indicates the list of  |
|                            |                        |files and folders not  |
|                            |                        |to restore.            |
+----------------------------+------------------------+-----------------------+

**Example: Create a restore configuration JSON response**

.. code::

   {
       "RestoreId": 1394,
       "BackupId": 133599,
       "DestinationMachineId": 156751,
       "OverwriteFiles": false,
       "BackupConfigurationId": 6265,
       "BackupConfigurationName": "Restore_Backup",
       "BackupRestorePoint": "\/Date(1357151359000)\/",
       "BackupMachineId": 5,
       "BackupMachineName": "BALAJIMBP",
       "BackupFlavor": "RaxCloudServer",
       "DestinationMachineName": "BILLS-TEST-WIN",
       "DestinationPath": "C:\\FolderPathForRestore\\",
       "BackupDataCenter": "DFW",
       "IsEncrypted": false,
       "EncryptedPassword": null,
       "PublicKey": {
           "ModulusHex": "CA759606B13DC5350A3FAE3F851C76F260DC CD1EFF2DB7510AE74E00B4B2B6025422757493B2EC09B2C71DF ACFF4901E4ADAA3C9F2E6BDE9392E80FEED6F1F81BFD1D3AD9F 9080646F46632C30A94275C85859C1EFCD21BF911F311841914 BC719B1397FD3B95BE7657495903936E3345E6F083922F37761 0CBB6EB67C62B719770B25C9AB17521C2AB51B75871ED5F04F9 65C5402443ABCD05EE5E4A5201641309B8BA1100A04C62210B2 900CDEAA40F6EBF267B73634E471DB1420FF67CE41940D8ED8F 4B6C199CF5D023B410C386C58037546D34102D245AF068E891B B80F1799DDC4C9C85C6FF73DA1E45AEC98792BCC1C2DE3AAD3F 92F50F1661A4FFDC1",
           "ExponentHex": 10001
       },
       "RestoreStateId": 0
   }
