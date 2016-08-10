.. _gsg-get-restore-report:

Getting a restore report
~~~~~~~~~~~~~~~~~~~~~~~~

You can request a restore report that provides information about the
restore operation and tells you if the operation ran successfully.

The HTTP request must include a header to specify the authentication
token.

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.
 
**Example: cURL get a restore report request**

.. code::

   curl -s -X GET $API_ENDPOINT/v1.0/$TENANT_ID/restore/report/yourRestoreID \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" | python -m json.tool

**Example: Get a restore report response**

.. code::

   {
      "BackupConfigurationId": 174084,
      "BackupConfigurationName": "Weekly Website Backup v2",
      "BackupReportId": 2437160,
      "CompletedTime": "/Date(1357151359000)/",
      "Diagnostics": "No errors",
      "Duration": "00:00:00",
      "ErrorList": [],
      "NumBytesRestored": "4 MB",
      "NumErrors": "0",
      "NumFilesRestored": "2",
      "OriginatingComputerName": "web02",
      "Reason": "Success",
      "RestoreDestination": "TestWindows2",
      "RestoreDestinationMachineId": 157512,
      "RestorePoint": "/Date(1357151359000)/",
      "StartTime": "/Date(1363790404000)/",
      "State": "Completed"
    }

Cloud Backup reports success. You can also check the folder listings on
your server.
