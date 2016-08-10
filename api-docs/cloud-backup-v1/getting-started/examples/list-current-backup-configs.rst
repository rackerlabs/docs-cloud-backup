

Listing all backup configurations for an agent 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To verify that your backup configuration exists, you can list all of the
backup configurations for your agent. The output is similar to that in
:ref:`Create a backup configuration <gsg-create-backup-config>`.

The HTTP request must include a header to specify the authentication
token.

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.

**Example: cURL list all backup configurations for an agent request**

.. code::

   curl -s -X GET $API_ENDPOINT/v1.0/$TENANT_ID/backup-configuration/system/youMachineAgentID \
   -H "X-Auth-Token: $AUTH_TOKEN" | python -m json.tool

**Example: List all backup configurations for an agent response**

.. code::

   [
        {
            "BackupConfigurationId": 174084,
            "BackupConfigurationName": "Weekly Website Backup",
            "BackupConfigurationScheduleId": 173131,
            "BackupPostscript": "",
            "BackupPrescript": "",
            "Datacenter": "DFW",
            "DayOfWeekId": 5,
            "EncryptionKey": {
                "ExponentHex": 10001,
                "ModulusHex": "C6054E90E32D2B25E16F3A560E1B4DC580B1E4AB74E0C66268 0DD8A1BD83956051F6A526B16C55225D1BE6E0B1265F4085FB2F61B61337F5D32198E5CAFFEA CD50E90517A329146E43B20194C082A9C890060AD07A542FBC035B2A96F9F212C6D94887BECB 5E15F3E55397B975B1896CFC66EBB5DD7D83587467A0E7F669ADB925A7BE4C1ECED1BC9E92DB 768CE76FDC86CCDD04BDF469679FE3261AA66C22AC6263E540B79780AAF09CFC798CDC4D1218 867388632EA4BD1BF511E4881E07C5387DDDBE741E615ACA0C32A738F5B952F1C17051EC3BAF 9F64C629515EA2AF93E6BB450A8B1B3E02963471679D5670AF93CFEA649172EDA7AC5E071E2D 3AF0BD"
            },
            "Exclusions": [
                {
                    "FileId": 657293,
                    "FileItemType": "File",
                    "FilePath": "C:\\backed_up_folder\\excluded_file.txt",
                    "FilePathEncoded": null,
                    "Filter": "Exclude",
                    "ParentId": 174084
                }
            ],
            "Flavor": "RaxCloudServer",
            "Frequency": "Weekly",
            "HourInterval": null,
            "Inclusions": [
                {
                    "FileId": 657291,
                    "FileItemType": "File",
                    "FilePath": "C:\\backup_up_file.txt",
                    "FilePathEncoded": null,
                    "Filter": "Include",
                    "ParentId": 174084
                },
                {
                    "FileId": 657292,
                    "FileItemType": "Folder",
                    "FilePath": "C:\\backed_up_folder",
                    "FilePathEncoded": null,
                    "Filter": "Include",
                    "ParentId": 174084
                }
            ],
            "IsActive": true,
            "IsDeleted": false,
            "IsEncrypted": false,
            "LastRunBackupReportId": null,
            "LastRunTime": null,
            "MachineAgentId": 202743,
            "MachineName": "web2",
            "MissedBackupActionId": 1,
            "NextScheduledRunTime": "/Date(1406935800000)/",
            "NotifyFailure": true,
            "NotifyRecipients": "test@my-email-address.com",
            "NotifySuccess": true,
            "StartTimeAmPm": "PM",
            "StartTimeHour": 11,
            "StartTimeMinute": 30,
            "TimeZoneId": "Eastern Standard Time",
            "VersionRetention": 30
        }
    ]
