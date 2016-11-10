.. _put-backup-configuration:

Update a backup configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    PUT /v1.0/{tenant_id}/backup-configuration/{backupConfigurationId}

This operation updates an existing backup configuration.

.. note::
   To view a list of all backup configurations and their backup configuration
   schedule IDs, see
   :ref:`List backup configuration details <get-backup-configuration-details>`.

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

+---------------------------------+----------------------+--------------------+
|Name                             |Type                  |Description         |
+=================================+======================+====================+
|**MachineAgentId**               |String *(Required)*   |ID that uniquely    |
|                                 |                      |identifies a Cloud  |
|                                 |                      |Backup agent.       |
+---------------------------------+----------------------+--------------------+
|**BackupConfigurationName**      |String *(Required)*   |The name of the     |
|                                 |                      |backup              |
|                                 |                      |configuration. The  |
|                                 |                      |configuration       |
|                                 |                      |typically has the   |
|                                 |                      |backup schedule,    |
|                                 |                      |files to backup, and|
|                                 |                      |notification        |
|                                 |                      |options.            |
+---------------------------------+----------------------+--------------------+
|**IsActive**                     |String *(Required)*   |Indicates if a      |
|                                 |                      |backup configuration|
|                                 |                      |is active. Valid    |
|                                 |                      |values are true or  |
|                                 |                      |false.              |
+---------------------------------+----------------------+--------------------+
|**VersionRetention**             |String *(Required)*   |Indicates how many  |
|                                 |                      |days backup         |
|                                 |                      |revisions are       |
|                                 |                      |maintained. Valid   |
|                                 |                      |values are 0, 30,   |
|                                 |                      |and 60. 0 means     |
|                                 |                      |indefinite.         |
+---------------------------------+----------------------+--------------------+
|**BackupConfigurationScheduleId**|String *(Required)*   |Uniquely identifies |
|                                 |                      |the schedule that is|
|                                 |                      |associated with this|
|                                 |                      |configuration.      |
+---------------------------------+----------------------+--------------------+
|**Frequency**                    |String *(Required)*   |Frequency of backup |
|                                 |                      |schedule. Valid     |
|                                 |                      |values are          |
|                                 |                      |"Manually",         |
|                                 |                      |"Hourly", "Daily",  |
|                                 |                      |and "Weekly".       |
+---------------------------------+----------------------+--------------------+
|**StartTimeHour**                |String *(Required)*   |Indicates the hour  |
|                                 |                      |when the backup     |
|                                 |                      |runs. Valid values  |
|                                 |                      |are 1 through 12, as|
|                                 |                      |well as null when   |
|                                 |                      |the Frequency value |
|                                 |                      |is "Manually" or    |
|                                 |                      |"Hourly".           |
+---------------------------------+----------------------+--------------------+
|**StartTimeMinute**              |String *(Required)*   |Indicates the minute|
|                                 |                      |when the backup     |
|                                 |                      |runs. Valid values  |
|                                 |                      |are 0 through 59, as|
|                                 |                      |well as null when   |
|                                 |                      |the Frequency value |
|                                 |                      |is "Manually" or    |
|                                 |                      |"Hourly".           |
+---------------------------------+----------------------+--------------------+
|**StartTimeAmPm**                |String *(Required)*   |Indicates AM or PM. |
|                                 |                      |Valid values are    |
|                                 |                      |"AM" or "PM", as    |
|                                 |                      |well as null when   |
|                                 |                      |the Frequency value |
|                                 |                      |is "Manually" or    |
|                                 |                      |"Hourly".           |
+---------------------------------+----------------------+--------------------+
|**DayOfWeekId**                  |String *(Required)*   |Indicates the day of|
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
|**HourInterval**                 |String *(Required)*   |Indicates the hour. |
|                                 |                      |Valid values are 1  |
|                                 |                      |through 23, as well |
|                                 |                      |as null when the    |
|                                 |                      |Frequency value is  |
|                                 |                      |"Manually" ,"Daily",|
|                                 |                      |or "Weekly".        |
+---------------------------------+----------------------+--------------------+
|**TimeZoneId**                   |String *(Required)*   |Specifies the time  |
|                                 |                      |zone where the      |
|                                 |                      |backup runs, for    |
|                                 |                      |example "Eastern    |
|                                 |                      |Standard Time".     |
+---------------------------------+----------------------+--------------------+
|**NotifyRecipients**             |String *(Required)*   |Indicates the email |
|                                 |                      |address to notify in|
|                                 |                      |case of backup      |
|                                 |                      |success or failure. |
+---------------------------------+----------------------+--------------------+
|**NotifySuccess**                |String *(Required)*   |Indicates if emails |
|                                 |                      |are sent after a    |
|                                 |                      |successful backup.  |
|                                 |                      |Valid values are    |
|                                 |                      |true or false.      |
+---------------------------------+----------------------+--------------------+
|**NotifyFailure**                |String *(Required)*   |Indicates if emails |
|                                 |                      |are sent after a    |
|                                 |                      |failed backup. Valid|
|                                 |                      |values are true or  |
|                                 |                      |false.              |
+---------------------------------+----------------------+--------------------+
|**Inclusions**                   |String *(Optional)*   |Indicates the list  |
|                                 |                      |of files and folders|
|                                 |                      |to back up.         |
+---------------------------------+----------------------+--------------------+
|**Exclusions**                   |String *(Optional)*   |Indicates the list  |
|                                 |                      |of files and folders|
|                                 |                      |not to back up.     |
+---------------------------------+----------------------+--------------------+

**Example: Update backup configuration JSON request**

.. code::

   {
       "MachineAgentId": 156953,
       "BackupConfigurationName": "Weekly Website Backup",
       "IsActive": true,
       "VersionRetention": 30,
       "BackupConfigurationScheduleId": 145393,
       "MissedBackupActionId": 1,
       "Frequency": "Weekly",
       "StartTimeHour": 6,
       "StartTimeMinute": 30,
       "StartTimeAmPm": "AM|PM",
       "DayOfWeekId": 4,
       "HourInterval": null,
       "TimeZoneId": "Eastern Standard Time",
       "NotifyRecipients": "raxtestaddress@rackspace.com",
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
           },
           {
               "FilePath": "C:\\backed_up_folder\\excluded_folder",
               "FileItemType": "Folder"
           }
       ]
   }

Response
--------

This operation does not return a response body.
