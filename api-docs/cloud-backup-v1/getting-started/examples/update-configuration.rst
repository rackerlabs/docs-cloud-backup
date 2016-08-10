.. _gsg-update-configuration:

Updating a backup configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To schedule the backup for one hour later, for example, you can update
the backup configuration that you created earlier. Specify the
``BackupConfigurationId`` value in the URI. Send the same JSON content
that you used in :ref:`Create a backup configuration <gsg-create-backup-config>`
but make the following changes:

-  Add ``v2`` to ``BackupConfigurationName``.

-  Change ``StartTimeHour`` to ``8``.

The HTTP request must include a header to specify the authentication
token.

This operation does not return a response body. An HTTP status code of
200 (OK) in the response indicates that the request succeeded.

**Example: cURL update a backup configuration request**

.. code::

   curl -i -X PUT $API_ENDPOINT/v1.0/$TENANT_ID/backup-configuration/yourBackupConfigurationID \
   -H "X-Auth-Token: $AUTH_TOKEN" \
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

**Example: cURL list a backup configuration request**

.. code::

   curl -s -X GET $API_ENDPOINT/v1.0/$TENANT_ID/backup-configuration/yourBackupConfigurationID \
   -H "X-Auth-Token: $AUTH_TOKEN" | python -m
