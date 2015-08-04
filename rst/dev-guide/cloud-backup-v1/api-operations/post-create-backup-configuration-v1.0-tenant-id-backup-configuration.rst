
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Create Backup Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v1.0/{tenant_id}/backup-configuration

Creates a backup configuration for the authenticated user. Returns details of a backup configuration.

To view a list of all backup configurations, use `"List all backup configurations for an agent" <http://docs.rackspace.com/rcbu/api/v1.0/rcbu-devguide/content/GET_getAllBackupConfigforAgent_v1.0__tenant_id__backup-configuration_system__machineAgentId__backupConfig.html>`__.



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
|409                       |Conflict                 |The request could not be |
|                          |                         |completed due to a       |
|                          |                         |conflict with the        |
|                          |                         |current state of the     |
|                          |                         |resource.                |
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





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|BackupConfigurationName   |*(Required)*             |The name of the backup   |
|                          |                         |configuration. The       |
|                          |                         |configuration typically  |
|                          |                         |has the backup schedule, |
|                          |                         |files to backup, and     |
|                          |                         |notification options.    |
+--------------------------+-------------------------+-------------------------+
|MachineAgentId            |*(Required)*             |ID that uniquely         |
|                          |                         |identifies a Cloud       |
|                          |                         |Backup agent.            |
+--------------------------+-------------------------+-------------------------+
|IsActive                  |*(Required)*             |Indicates if a backup    |
|                          |                         |configuration is active. |
|                          |                         |Valid values are true or |
|                          |                         |false.                   |
+--------------------------+-------------------------+-------------------------+
|VersionRetention          |*(Required)*             |Indicates how many days  |
|                          |                         |backup revisions are     |
|                          |                         |maintained. Valid values |
|                          |                         |are 0, 30 , and 60. 0    |
|                          |                         |means indefinite.        |
+--------------------------+-------------------------+-------------------------+
|Frequency                 |*(Required)*             |Frequency of backup      |
|                          |                         |schedule. Valid values   |
|                          |                         |are "Manually",          |
|                          |                         |"Hourly", "Daily", and   |
|                          |                         |"Weekly".                |
+--------------------------+-------------------------+-------------------------+
|StartTimeHour             |*(Required)*             |Indicates the hour when  |
|                          |                         |the backup runs. Valid   |
|                          |                         |values are 1 through 12, |
|                          |                         |as well as null when the |
|                          |                         |Frequency value is       |
|                          |                         |"Manually" or "Hourly".  |
+--------------------------+-------------------------+-------------------------+
|StartTimeMinute           |*(Required)*             |Indicates the minute     |
|                          |                         |when the backup runs.    |
|                          |                         |Valid values are 0       |
|                          |                         |through 59, as well as   |
|                          |                         |null when the Frequency  |
|                          |                         |value is "Manually" or   |
|                          |                         |"Hourly".                |
+--------------------------+-------------------------+-------------------------+
|StartTimeAmPm             |*(Required)*             |Indicates AM or PM.      |
|                          |                         |Valid values are "AM" or |
|                          |                         |"PM", as well as null    |
|                          |                         |when the Frequency value |
|                          |                         |is "Manually" or         |
|                          |                         |"Hourly".                |
+--------------------------+-------------------------+-------------------------+
|DayOfWeekId               |*(Required)*             |Indicates the day of the |
|                          |                         |week. Valid values are 0 |
|                          |                         |through 6, with 0        |
|                          |                         |representing Sunday and  |
|                          |                         |6 representing Saturday. |
|                          |                         |null is also a valid     |
|                          |                         |value when the Frequency |
|                          |                         |value is "Manually" ,    |
|                          |                         |"Hourly", or "Daily".    |
+--------------------------+-------------------------+-------------------------+
|HourInterval              |*(Required)*             |Indicates the hour.      |
|                          |                         |Valid values are 1       |
|                          |                         |through 23, as well as   |
|                          |                         |null when the Frequency  |
|                          |                         |value is "Manually" ,    |
|                          |                         |"Daily", or "Weekly".    |
+--------------------------+-------------------------+-------------------------+
|TimeZoneId                |*(Required)*             |Specifies the time zone  |
|                          |                         |where the backup runs,   |
|                          |                         |for example "Eastern     |
|                          |                         |Standard Time".          |
+--------------------------+-------------------------+-------------------------+
|NotifyRecipients          |*(Required)*             |Indicates the email      |
|                          |                         |address to notify in     |
|                          |                         |case of backup success   |
|                          |                         |or failure.              |
+--------------------------+-------------------------+-------------------------+
|NotifySuccess             |*(Required)*             |Indicates if emails are  |
|                          |                         |sent after a successful  |
|                          |                         |backup. Valid values are |
|                          |                         |true or false.           |
+--------------------------+-------------------------+-------------------------+
|NotifyFailure             |*(Required)*             |Indicates if emails are  |
|                          |                         |sent after a failed      |
|                          |                         |backup. Valid values are |
|                          |                         |true or false.           |
+--------------------------+-------------------------+-------------------------+
|Inclusions                |*(Optional)*             |Indicates the list of    |
|                          |                         |files and folders to     |
|                          |                         |back up.                 |
+--------------------------+-------------------------+-------------------------+
|Exclusions                |*(Optional)*             |Indicates the list of    |
|                          |                         |files and folders not to |
|                          |                         |back up.                 |
+--------------------------+-------------------------+-------------------------+





**Example Create Backup Configuration: JSON request**


.. code::

    {
        "MachineAgentId": 202743,
        "BackupConfigurationName": "Weekly Website Backup",
        "IsActive": true,
        "VersionRetention": 30,
        "MissedBackupActionId": 1,
        "Frequency": "Weekly",
        "StartTimeHour": 7,
        "StartTimeMinute": 30,
        "StartTimeAmPm": "PM",
        "DayOfWeekId": 5,
        "HourInterval": null,
        "TimeZoneId": "Eastern Standard Time",
        "NotifyRecipients": "test@my-email-address.com",
        "NotifySuccess": true,
        "NotifyFailure": true,
        "Inclusions": [
            {
                "FilePath": "C:\\backup_up_file.txt",
                "FileItemType": "File"
            },
            {
                "FilePath": "C:\\backed_up_folder",
                "FileItemType": "Folder"
            }
        ],
        "Exclusions": [
            {
                "FilePath": "C:\\backed_up_folder\\excluded_file.txt",
                "FileItemType": "File"
            }
        ]
    }


Response
""""""""""""""""


This table shows the body parameters for the response:

+-----------------------------+------------------------+-----------------------+
|Name                         |Type                    |Description            |
+=============================+========================+=======================+
|MachineAgentId               |                        |ID that uniquely       |
|                             |                        |identifies a Cloud     |
|                             |                        |Backup agent.          |
+-----------------------------+------------------------+-----------------------+
|BackupConfigurationName      |                        |The name of the backup |
|                             |                        |configuration. The     |
|                             |                        |configuration          |
|                             |                        |typically has the      |
|                             |                        |backup schedule, files |
|                             |                        |to backup, and         |
|                             |                        |notification options.  |
+-----------------------------+------------------------+-----------------------+
|IsActive                     |                        |Indicates if a backup  |
|                             |                        |configuration is       |
|                             |                        |active. Valid values   |
|                             |                        |are true or false.     |
+-----------------------------+------------------------+-----------------------+
|VersionRetention             |                        |Indicates how many     |
|                             |                        |days backup revisions  |
|                             |                        |are maintained. Valid  |
|                             |                        |values are 0, 30 , and |
|                             |                        |60. 0 means indefinite.|
+-----------------------------+------------------------+-----------------------+
|BackupConfigurationScheduled |                        |Uniquely identifies    |
|                             |                        |the schedule that is   |
|                             |                        |associated with this   |
|                             |                        |configuration.         |
+-----------------------------+------------------------+-----------------------+
|MissedBackupActionId         |                        |Specifies when to send |
|                             |                        |notification. Valid    |
|                             |                        |values are as follows: |
|                             |                        |1 that indicates that  |
|                             |                        |notifications are sent |
|                             |                        |as soon as possible,   |
|                             |                        |or 2 that indicates    |
|                             |                        |that notifications are |
|                             |                        |sent at the next       |
|                             |                        |scheduled time.        |
+-----------------------------+------------------------+-----------------------+
|Frequency                    |                        |Frequency of backup    |
|                             |                        |schedule. Valid values |
|                             |                        |are "Manually",        |
|                             |                        |"Hourly", "Daily", and |
|                             |                        |"Weekly".              |
+-----------------------------+------------------------+-----------------------+
|StartTimeHour                |                        |Indicates the hour     |
|                             |                        |when the backup runs.  |
|                             |                        |Valid values are 1     |
|                             |                        |through 12, as well as |
|                             |                        |null when the          |
|                             |                        |Frequency value is     |
|                             |                        |"Manually" or "Hourly".|
+-----------------------------+------------------------+-----------------------+
|StartTimeMinute              |                        |Indicates the minute   |
|                             |                        |when the backup runs.  |
|                             |                        |Valid values are 0     |
|                             |                        |through 59, as well as |
|                             |                        |null when the          |
|                             |                        |Frequency value is     |
|                             |                        |"Manually" or "Hourly".|
+-----------------------------+------------------------+-----------------------+
|StartTimeAmPm                |                        |Indicates AM or PM.    |
|                             |                        |Valid values are "AM"  |
|                             |                        |or "PM", as well as    |
|                             |                        |null when the          |
|                             |                        |Frequency value is     |
|                             |                        |"Manually" or "Hourly".|
+-----------------------------+------------------------+-----------------------+
|DayOfWeekId                  |                        |Indicates the day of   |
|                             |                        |the week. Valid values |
|                             |                        |are 0 through 6, with  |
|                             |                        |0 representing Sunday  |
|                             |                        |and 6 representing     |
|                             |                        |Saturday. null is also |
|                             |                        |a valid value when the |
|                             |                        |Frequency value is     |
|                             |                        |"Manually" ,"Hourly",  |
|                             |                        |or "Daily".            |
+-----------------------------+------------------------+-----------------------+
|HourInterval                 |                        |Indicates the hour.    |
|                             |                        |Valid values are 1     |
|                             |                        |through 23, as well as |
|                             |                        |null when the          |
|                             |                        |Frequency value is     |
|                             |                        |"Manually" ,"Daily",   |
|                             |                        |or "Weekly".           |
+-----------------------------+------------------------+-----------------------+
|TimeZoneId                   |                        |Specifies the time     |
|                             |                        |zone where the backup  |
|                             |                        |runs, for example      |
|                             |                        |"Eastern Standard      |
|                             |                        |Time".                 |
+-----------------------------+------------------------+-----------------------+
|NotifyRecipients             |                        |Indicates the email    |
|                             |                        |address to notify in   |
|                             |                        |case of backup success |
|                             |                        |or failure.            |
+-----------------------------+------------------------+-----------------------+
|NotifySuccess                |                        |Indicates if emails    |
|                             |                        |are sent after a       |
|                             |                        |successful backup.     |
|                             |                        |Valid values are true  |
|                             |                        |or false.              |
+-----------------------------+------------------------+-----------------------+
|NotifyFailure                |                        |Indicates if emails    |
|                             |                        |are sent after a       |
|                             |                        |failed backup. Valid   |
|                             |                        |values are true or     |
|                             |                        |false.                 |
+-----------------------------+------------------------+-----------------------+
|Inclusions                   |*(Optional)*            |Indicates the list of  |
|                             |                        |files and folders to   |
|                             |                        |back up.               |
+-----------------------------+------------------------+-----------------------+
|Exclusions                   |*(Optional)*            |Indicates the list of  |
|                             |                        |files and folders not  |
|                             |                        |to back up.            |
+-----------------------------+------------------------+-----------------------+





**Example Create Backup Configuration: JSON response**


.. code::

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
            "ModulusHex": "C6054E90E32D2B25E16F3A560E1B4DC580B1E4AB74E0C662680DD8A1BD83956051F6A526B16C55225D1BE6E0B1265F4085FB2F61B61337F5D32198E5CAFFEACD50E90517A329146E43B20194C082A9C890060AD07A542FBC035B2A96F9F212C6D94887BECB5E15F3E55397B975B1896CFC66EBB5DD7D83587467A0E7F669ADB925A7BE4C1ECED1BC9E92DB768CE76FDC86CCDD04BDF469679FE3261AA66C22AC6263E540B79780AAF09CFC798CDC4D1218867388632EA4BD1BF511E4881E07C5387DDDBE741E615ACA0C32A738F5B952F1C17051EC3BAF9F64C629515EA2AF93E6BB450A8B1B3E02963471679D5670AF93CFEA649172EDA7AC5E071E2D3AF0BD"
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
    


