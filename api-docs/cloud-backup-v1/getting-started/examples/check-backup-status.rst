.. _check-backup-status:

Checking backup status
~~~~~~~~~~~~~~~~~~~~~~

You can verify whether your backup jobs ran properly, and if they did
not, what errors occurred.

The HTTP request must include a header to specify the authentication
token.

The following example output shows ``"CurrentState": "Queued"``. Other
valid values for ``CurrentState`` are as follows:

-  ``Completed``

-  ``CompletedWithErrors``

-  ``Failed``

-  ``InProgress``

-  ``Missed``

-  ``Preparing``

-  ``Skipped``

-  ``StartRequested``

-  ``StartScheduled``

-  ``Stopped``

-  ``StopRequested``

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.
 
**Example: cURL check backup status request**

.. code::

   curl -s -X GET $API_ENDPOINT/v1.0/$TENANT_ID/backup/yourBackupID \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json | python -m json.tool

**Example: Check backup status response**

.. code::

   {
        "BackupId": 368785,
        "BackupConfigurationId": 174084,
        "CurrentState": "Queued",
        "BackupConfigurationName": "Weekly Website Backup v2",
        "MachineAgentId": 202743,
        "MachineName": "web2",
        "StateChangeTime": "/Date(1406935800000)/",
        "IsEncrypted": false,
        "EncryptionKey": {
            "ExponentHex": 10001,
            "ModulusHex": "C6054E90E32D2B25E16F3A560E1B4DC580B1E4AB74E0C66268 0DD8A1BD83956051F6A526B16C55225D1BE6E0B1265F4085FB2F61B61337F5D32198E5CAFFEA CD50E90517A329146E43B20194C082A9C890060AD07A542FBC035B2A96F9F212C6D94887BECB 5E15F3E55397B975B1896CFC66EBB5DD7D83587467A0E7F669ADB925A7BE4C1ECED1BC9E92DB 768CE76FDC86CCDD04BDF469679FE3261AA66C22AC6263E540B79780AAF09CFC798CDC4D1218 867388632EA4BD1BF511E4881E07C5387DDDBE741E615ACA0C32A738F5B952F1C17051EC3BAF 9F64C629515EA2AF93E6BB450A8B1B3E02963471679D5670AF93CFEA649172EDA7AC5E071E2D 3AF0BD"
        }
    }
