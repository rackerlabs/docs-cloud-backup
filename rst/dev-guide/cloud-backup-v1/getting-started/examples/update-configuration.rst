.. _gsg-update-configuration:

Update a backup configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To schedule the backup for one hour later, for example, you can update
the backup configuration that you created earlier. Specify the
``BackupConfigurationId`` value in the URI. Send the same JSON content
that you used in :ref:`Create a backup configuration <gsg-create-backup-config>` but make the following changes:

-  Add ``v2`` to ``BackupConfigurationName``.

-  Change ``StartTimeHour`` to ``8``.

The HTTP request must include a header to specify the authentication
token.

The cURL request uses the ``-s`` option for silent or quiet mode (no
progress or error messages shown) and the ``-X`` option to specify the
request operation to use when communicating with the HTTP server
(instead of using the default operation).

If you have the tools, you can run the cURL JSON request examples with
the following option to format the output from cURL: **<cURL JSON
request example> \| python -m json.tool**.

This operation does not return a response body. An HTTP status code of
200 (OK) in the response indicates that the request succeeded.

 
**Example: Update a backup configuration**

.. code::  

   curl -i -X PUT https://dfw.backup.api.rackspacecloud.com/v1.0/yourAccountID/backup-configuration/yourBackupConfigurationID \
   -H "X-Auth-Token: yourAuthToken" \
   -H "Content-Type: application/json" \
   -d '{
        "MachineAgentId": 202743,
        "BackupConfigurationName": "Weekly Website Backup v2",
        "IsActive": true,
        "VersionRetention": 30,
        "MissedBackupActionId": 1,
        "Frequency": "Weekly",
        "StartTimeHour": 8,
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
    }'  | python -m json.tool  

You can verify that the configuration is updated by using the following
cURL request, specifying the same ``BackupConfigurationId`` that you
used in the update request.

.. code::  

   curl -s -X GET https://dfw.backup.api.rackspacecloud.com/v1.0/yourAccountID/backup-configuration/yourBackupConfigurationID \
   -H "X-Auth-Token: yourAuthToken" | python -m
