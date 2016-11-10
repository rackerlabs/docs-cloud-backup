.. _enable-or-disable-a-backup-configuration:

Enable or disable a backup configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    POST /v1.0/{tenant_id}/backup-configuration/enable/{backupConfigurationId}

This operation enables or disables a backup configuration.

Disabling a backup configuration does not delete it or its data. You can
re-enabled disabled backup configurations later.

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
|{backupConfigurationId}   |Integer                  |The unique identifier of|
|                          |                         |the backup              |
|                          |                         |configuration.          |
+--------------------------+-------------------------+------------------------+

This table shows the body parameters for the request:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|**Enable**                |String *(Required)*      |Indicates if backup     |
|                          |                         |configuration is enabled|
|                          |                         |(true) or disabled      |
|                          |                         |(false).                |
+--------------------------+-------------------------+------------------------+

**Example: Enable or disable a backup configuration request**

.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v1.0/1234/backup-configuration/enable/148325
   User-Agent: controlpanel.drivesrvr.com
   Host: dfw.backup.api.rackspacecloud.com
   Content-Type: application/json;
   Content-Length: 0
   X-Auth-Token: 95b1788906f74d279d03001c6a14f3fe

**Example: Enable a backup configuration JSON request**

.. code::

   {
       "Enable": true
   }

**Example: Disable a backup configuration JSON request**


.. code::

   {
       "Enable": false
   }

Response
--------

This table shows the body parameters for the response:

+---------------------------------+----------------------+--------------------+
|Name                             |Type                  |Description         |
+=================================+======================+====================+
|**BackupConfigurationId**        |String                |Autogenerated ID    |
|                                 |                      |that uniquely       |
|                                 |                      |identifies a backup |
|                                 |                      |configuration. This |
|                                 |                      |ID is required on   |
|                                 |                      |subsequent          |
|                                 |                      |GET/UPDATE/DELETE   |
|                                 |                      |calls.              |
+---------------------------------+----------------------+--------------------+
|**MachineAgentId**               |String                |ID that uniquely    |
|                                 |                      |identifies a Cloud  |
|                                 |                      |Backup agent.       |
+---------------------------------+----------------------+--------------------+
|**MachineName**                  |String                |Name of the Cloud   |
|                                 |                      |Server where the    |
|                                 |                      |Cloud Backup agent  |
|                                 |                      |resides.            |
+---------------------------------+----------------------+--------------------+
|**Flavor**                       |String                |RaxCloudServer - for|
|                                 |                      |Rackspace Cloud     |
|                                 |                      |Servers.            |
+---------------------------------+----------------------+--------------------+
|**IsEncrypted**                  |String                |Indicates if backups|
|                                 |                      |are encrypted. Valid|
|                                 |                      |values are true or  |
|                                 |                      |false.              |
+---------------------------------+----------------------+--------------------+
|**BackupConfigurationName**      |String                |The name of the     |
|                                 |                      |backup              |
|                                 |                      |configuration. The  |
|                                 |                      |configuration       |
|                                 |                      |typically has the   |
|                                 |                      |backup schedule,    |
|                                 |                      |files to backup, and|
|                                 |                      |notification        |
|                                 |                      |options.            |
+---------------------------------+----------------------+--------------------+
|**IsActive**                     |String                |Indicates if a      |
|                                 |                      |backup configuration|
|                                 |                      |is active. Valid    |
|                                 |                      |values are true or  |
|                                 |                      |false.              |
+---------------------------------+----------------------+--------------------+
|**IsDeleted**                    |String                |Indicates if the    |
|                                 |                      |backup configuration|
|                                 |                      |is deleted. Valid   |
|                                 |                      |values are true or  |
|                                 |                      |false.              |
+---------------------------------+----------------------+--------------------+
|**VersionRetention**             |String                |Indicates how many  |
|                                 |                      |days backup         |
|                                 |                      |revisions are       |
|                                 |                      |maintained. Valid   |
|                                 |                      |values are 0, 30,   |
|                                 |                      |and 60. 0 means     |
|                                 |                      |indefinite.         |
+---------------------------------+----------------------+--------------------+
|**BackupConfigurationScheduleId**|String                |Uniquely identifies |
|                                 |                      |the schedule that is|
|                                 |                      |associated with this|
|                                 |                      |configuration.      |
+---------------------------------+----------------------+--------------------+
|**MissedBackupActionId**         |String                |Specifies when to   |
|                                 |                      |send notification.  |
|                                 |                      |Valid values are as |
|                                 |                      |follows: 1 that     |
|                                 |                      |indicates that      |
|                                 |                      |notifications are   |
|                                 |                      |sent as soon as     |
|                                 |                      |possible, or 2 that |
|                                 |                      |indicates that      |
|                                 |                      |notifications are   |
|                                 |                      |sent at the next    |
|                                 |                      |scheduled time.     |
+---------------------------------+----------------------+--------------------+
|**Frequency**                    |String                |Frequency of backup |
|                                 |                      |schedule. Valid     |
|                                 |                      |values are          |
|                                 |                      |"Manually",         |
|                                 |                      |"Hourly", "Daily",  |
|                                 |                      |and "Weekly".       |
+---------------------------------+----------------------+--------------------+
|**StartTimeHour**                |String                |Indicates the hour  |
|                                 |                      |when the backup     |
|                                 |                      |runs. Valid values  |
|                                 |                      |are 1 through 12, as|
|                                 |                      |well as null when   |
|                                 |                      |the Frequency value |
|                                 |                      |is "Manually" or    |
|                                 |                      |"Hourly".           |
+---------------------------------+----------------------+--------------------+
|**StartTimeMinute**              |String                |Indicates the minute|
|                                 |                      |when the backup     |
|                                 |                      |runs. Valid values  |
|                                 |                      |are 0 through 59, as|
|                                 |                      |well as null when   |
|                                 |                      |the Frequency value |
|                                 |                      |is "Manually" or    |
|                                 |                      |"Hourly".           |
+---------------------------------+----------------------+--------------------+
|**StartTimeAmPm**                |String                |Indicates AM or PM. |
|                                 |                      |Valid values are    |
|                                 |                      |"AM" or "PM", as    |
|                                 |                      |well as null when   |
|                                 |                      |the Frequency value |
|                                 |                      |is "Manually" or    |
|                                 |                      |"Hourly".           |
+---------------------------------+----------------------+--------------------+
|**DayOfWeekId**                  |String                |Indicates the day of|
|                                 |                      |the week. Valid     |
|                                 |                      |values are 0 through|
|                                 |                      |6, with 0           |
|                                 |                      |representing Sunday |
|                                 |                      |and 6 representing  |
|                                 |                      |Saturday. null is   |
|                                 |                      |also a valid value  |
|                                 |                      |when the Frequency  |
|                                 |                      |value is "Manually",|
|                                 |                      |"Hourly", or        |
|                                 |                      |"Daily".            |
+---------------------------------+----------------------+--------------------+
|**HourInterval**                 |String                |Indicates the hour. |
|                                 |                      |Valid values are 1  |
|                                 |                      |through 23, as well |
|                                 |                      |as null when the    |
|                                 |                      |Frequency value is  |
|                                 |                      |"Manually" ,"Daily",|
|                                 |                      |or "Weekly".        |
+---------------------------------+----------------------+--------------------+
| **TimeZoneId**                  |String                |Specifies the time  |
|                                 |                      |zone where the      |
|                                 |                      |backup runs, for    |
|                                 |                      |example "Eastern    |
|                                 |                      |Standard Time".     |
+---------------------------------+----------------------+--------------------+
|**NotifyRecipients**             |String                |Indicates the email |
|                                 |                      |address to notify in|
|                                 |                      |case of backup      |
|                                 |                      |success or failure. |
+---------------------------------+----------------------+--------------------+
|**NotifySuccess**                |String                |Indicates if emails |
|                                 |                      |are sent after a    |
|                                 |                      |successful backup.  |
|                                 |                      |Valid values are    |
|                                 |                      |true or false.      |
+---------------------------------+----------------------+--------------------+
|**NotifyFailure**                |String                |Indicates if emails |
|                                 |                      |are sent after a    |
|                                 |                      |failed backup. Valid|
|                                 |                      |values are true or  |
|                                 |                      |false.              |
+---------------------------------+----------------------+--------------------+
|**Inclusions**                   |String                |Indicates the list  |
|                                 |                      |of files and folders|
|                                 |                      |to back up.         |
+---------------------------------+----------------------+--------------------+
|**Exclusions**                   |String                |Indicates the list  |
|                                 |                      |of files and folders|
|                                 |                      |not to back up.     |
+---------------------------------+----------------------+--------------------+

**Example: Disable a backup configuration JSON response**

.. code::

   {
       "BackupConfigurationId": 148325,
       "MachineAgentId": 156953,
       "MachineName": "Web Server",
       "Flavor": "RaxCloudServer",
       "IsEncrypted": false,
       "BackupConfigurationName": "Weekly Website Backup",
       "IsActive": true,
       "IsDeleted": false,
       "VersionRetention": 60,
       "BackupConfigurationScheduleId": 145406,
       "MissedBackupActionId": 1,
       "Frequency": "Weekly",
       "StartTimeHour": 11,
       "StartTimeMinute": 30,
       "StartTimeAmPm": "AM",
       "DayOfWeekId": 4,
       "HourInterval": null,
       "TimeZoneId": "Eastern Standard Time",
       "NextScheduledRunTime": "\/Date(1357817400000)\/",
       "LastRunTime": null,
       "LastRunBackupReportId": null,
       "NotifyRecipients": "raxtestaddress@rackspace.com",
       "NotifySuccess": false,
       "NotifyFailure": false,
       "Inclusions": [
           {
               "FilePath": "C:\\backed_up_folder",
               "ParentId": 148325,
               "FileItemType": "Folder",
               "FileId": 35000
           },
           {
               "FilePath": "C:\\backup_up_file.txt",
               "ParentId": 148325,
               "FileItemType": "File",
               "FileId": 34999
           }
       ],
       "Exclusions":[
           {
               "FilePath": "C:\\backed_up_folder\\excluded_folder",
               "ParentId": 148325,
               "FileItemType": "Folder",
               "FileId": 35002
           },
           {
               "FilePath": "C:\\backed_up_folder\\excluded_file.txt",
               "ParentId": 148325,
               "FileItemType": "File",
               "FileId": 35001
           }
       ]
   }
