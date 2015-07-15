=============================================================================
List Details About A Restore -  Rackspace Cloud Backup Developer Guide v1
=============================================================================

List Details About A Restore
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <GET_list_details_about_a_restore_v1.0_tenant_id_restore_restoreid_.rst#request>`__
`Response <GET_list_details_about_a_restore_v1.0_tenant_id_restore_restoreid_.rst#response>`__

.. code-block:: javascript

    GET /v1.0/{tenant_id}/restore/{restoreId}

Lists details about the specified restore.

For details about the operation that you can use to list included or excluded files in a restore configuration, see `"List included or excluded files in a restore configuration" <http://docs.rackspace.com/rcbu/api/v1.0/rcbu-devguide/content/GET_getRestoreFiles_v1.0__tenant_id__restore_files__restoreId__RestoreConfig.html>`__.



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
|{restoreId}               |xsd:integer              |The unique identifier    |
|                          |                         |for a restore.           |
+--------------------------+-------------------------+-------------------------+








**Example List Details About A Restore: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v1.0/1234/restore/1394
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
|RestoreId                 |                         |Creates a restore        |
|                          |                         |configuration and in     |
|                          |                         |response you get         |
|                          |                         |RestoreID.               |
+--------------------------+-------------------------+-------------------------+
|BackupId                  |                         |Identifies a unique      |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|BackupMachineId           |                         |Identifies the machine   |
|                          |                         |where your backup was    |
|                          |                         |originally made. (If you |
|                          |                         |restore files to the     |
|                          |                         |same system,             |
|                          |                         |BackupMachineId and      |
|                          |                         |DestinationMachineId are |
|                          |                         |the same.If you decide   |
|                          |                         |to restore to another    |
|                          |                         |system, different from   |
|                          |                         |where the files were     |
|                          |                         |originally backed up,    |
|                          |                         |DestinationMachineId is  |
|                          |                         |different from           |
|                          |                         |BackupMachineId.)        |
+--------------------------+-------------------------+-------------------------+
|DestinationMachineId      |                         |Identifies the machine   |
|                          |                         |to which you want the    |
|                          |                         |backups to restore. (If  |
|                          |                         |you restore files to the |
|                          |                         |same system,             |
|                          |                         |BackupMachineId and      |
|                          |                         |DestinationMachineId are |
|                          |                         |the same. If you decide  |
|                          |                         |to restore to another    |
|                          |                         |system,different from    |
|                          |                         |where the files were     |
|                          |                         |originally backed up,    |
|                          |                         |DestinationMachineId is  |
|                          |                         |different from           |
|                          |                         |BackupMachineId.)        |
+--------------------------+-------------------------+-------------------------+
|OverwriteFiles            |                         |Indicates if files are   |
|                          |                         |overwritten. Valid       |
|                          |                         |values are true and      |
|                          |                         |false.                   |
+--------------------------+-------------------------+-------------------------+
|BackupDataCenter          |                         |Specifies the datacenter |
|                          |                         |where the original       |
|                          |                         |machine agent that was   |
|                          |                         |responsible for creating |
|                          |                         |the backup, that is      |
|                          |                         |being used for the       |
|                          |                         |restore, is or was       |
|                          |                         |located (the source      |
|                          |                         |machine does not have to |
|                          |                         |be online).              |
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
|BackupRestorePoint        |                         |Identifies the date of   |
|                          |                         |the backup.              |
+--------------------------+-------------------------+-------------------------+
|MachineAgentId            |                         |ID that uniquely         |
|                          |                         |identifies a Cloud       |
|                          |                         |Backup agent.            |
+--------------------------+-------------------------+-------------------------+
|BackupMachineName         |                         |Indicates the machine    |
|                          |                         |name of the backup.      |
+--------------------------+-------------------------+-------------------------+
|BackupFlavor              |                         |RaxCloudServer – for     |
|                          |                         |Rackspace Cloud Servers. |
+--------------------------+-------------------------+-------------------------+
|DestinationMachineName    |                         |Indicates the machine to |
|                          |                         |which you want to        |
|                          |                         |restore the backup.      |
+--------------------------+-------------------------+-------------------------+
|DestinationPath           |                         |Specifies the path where |
|                          |                         |you want the backup to   |
|                          |                         |restore.                 |
+--------------------------+-------------------------+-------------------------+
|IsEncrypted               |                         |Indicates if backups are |
|                          |                         |encrypted. Valid values  |
|                          |                         |are true or false.       |
+--------------------------+-------------------------+-------------------------+
|EncryptedPassword         |                         |Specifies null or the    |
|                          |                         |encrypted key.           |
+--------------------------+-------------------------+-------------------------+
|PublicKey                 |                         |Specifies the public key |
|                          |                         |of the public/private    |
|                          |                         |encryption key pair.     |
+--------------------------+-------------------------+-------------------------+
|RestoreStateId            |                         |Specifies the restore    |
|                          |                         |state ID. Valid values   |
|                          |                         |are 0 for Creating, 1    |
|                          |                         |for Queued, 2 for        |
|                          |                         |InProgress, 3 for        |
|                          |                         |Completed, 4 for stopped,|
|                          |                         |5 for Failed, 6 for      |
|                          |                         |startRequested, 7 for    |
|                          |                         |Stoprequested, 8 for     |
|                          |                         |Completed WithErrors,    |
|                          |                         |and 9 for Preparing.     |
+--------------------------+-------------------------+-------------------------+
|Inclusions                |                         |Indicates the list of    |
|                          |                         |files and folders to     |
|                          |                         |restore.                 |
+--------------------------+-------------------------+-------------------------+
|Exclusions                |                         |Indicates the list of    |
|                          |                         |files and folders to not |
|                          |                         |restore.                 |
+--------------------------+-------------------------+-------------------------+





**Example List Details About A Restore: JSON request**


.. code::

    {
        "RestoreId":1394,
        "BackupId":133886,
        "DestinationMachineId":864,
        "OverwriteFiles":true,
        "BackupConfigurationId":6270,
        "BackupConfigurationName":"Restore_Backup",
        "BackupRestorePoint":"\/Date(1357151359000)\/",
        "BackupMachineId":866,
        "BackupMachineName":"sujala-test-centos",
        "BackupFlavor":"RaxCloudServer",
        "DestinationMachineName":"BILLS-TEST-WIN",
        "DestinationPath":"C:\\Test\\",
        "BackupDataCenter": "DFW",
        "IsEncrypted":false,
        "EncryptedPassword":null,
        "PublicKey":{"ModulusHex":"CA759606B13DC5350A3FAE3F851C7 6F260DCCD1EFF2DB7510AE74E00B4B2B6025422757493B2EC09B2C7 1DFACFF4901E4ADAA3C9F2E6BDE9392E80FEED6F1F81BFD1D3AD9F9 080646F46632C30A94275C85859C1EFCD21BF911F311841914BC719 B1397FD3B95BE7657495903936E3345E6083922F377610CBB6EB67C 62B719770B25C9AB17521C2AB51B75871ED5F04F965C5402443ABCD 05EE5E4A5201641309B8BA1100A04C62210B2900CDEAA40F6EBF267 B73634E471DB1420FF67CE41940D8ED8F4B6C199CF5D023B410C386 C58037546D34102D245AF068E891BB80F1799DDC4C9C85C6FF73DA1 E45AEC98792BCC1C2DE3AAD3F92F50F1661A4FFDC1",
            "ExponentHex":10001},
        "RestoreStateId":3
    }

