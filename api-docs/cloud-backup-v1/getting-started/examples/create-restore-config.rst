.. _gsg-create-restore-config:

Creating a restore configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now that you have a backup, you can restore it to a different location
on your server. You can also restore it to a different server, or to the
same folder on the same server. You must set the ``BackupMachineId``,
``DestinationMachineId``, and ``DestinationPath`` values properly.
``BackupId`` identifies the backup that you want to use to restore.

The HTTP request must include a header to specify the authentication
token.

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.

 
**Example: cURL create a restore configuration request**

.. code::

   curl -s -X PUT $API_ENDPOINT/v1.0/$TENANT_ID/restore /
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" \
   -d '{ "BackupId": 368785,
          "BackupMachineId": 157512,
          "DestinationMachineId": 157512,
          "DestinationPath": "C:\\FolderPathForRestore\\",
          "OverwriteFiles": false }' | python -m json.tool

**Example: Create a restore configuration response**

.. code::

   {
        "RestoreId": 1394,
        "BackupId": 368785,
        "DestinationMachineId": 157512,
        "OverwriteFiles": false,
        "BackupConfigurationId": 174084,
        "BackupConfigurationName": "Weekly Website Backup v2",
        "BackupRestorePoint": "\Date(1357151359000)\",
        "BackupMachineId": 157512,
        "BackupMachineName": "TestWindows1",
        "BackupFlavor": "RaxCloudServer",
        "DestinationMachineName": "TestWindows2",
        "DestinationPath": "C:\\FolderPathForRestore\\",
        "IsEncrypted": false,
        "EncryptedPassword": null,
        "PublicKey": {
            "ExponentHex": 10001,
            "ModulusHex": "C6054E90E32D2B25E16F3A560E1B4DC580B1E4AB74E0C66268 0DD8A1BD83956051F6A526B16C55225D1BE6E0B1265F4085FB2F61B61337F5D32198E5CAFFEA CD50E90517A329146E43B20194C082A9C890060AD07A542FBC035B2A96F9F212C6D94887BECB 5E15F3E55397B975B1896CFC66EBB5DD7D83587467A0E7F669ADB925A7BE4C1ECED1BC9E92DB 768CE76FDC86CCDD04BDF469679FE3261AA66C22AC6263E540B79780AAF09CFC798CDC4D1218 867388632EA4BD1BF511E4881E07C5387DDDBE741E615ACA0C32A738F5B952F1C17051EC3BAF 9F64C629515EA2AF93E6BB450A8B1B3E02963471679D5670AF93CFEA649172EDA7AC5E071E2D 3AF0BD"
        },
        "RestoreStateId": 0
    }
