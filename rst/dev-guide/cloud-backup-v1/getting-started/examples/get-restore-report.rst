.. _gsg-get-restore-report:

Get a restore report
~~~~~~~~~~~~~~~~~~~~

You can request a restore report that provides information about the
restore operation and tells you if the operation ran successfully.

The HTTP request must include a header to specify the authentication
token.

The cURL request uses the ``-s`` option for silent or quiet mode (no
progress or error messages shown) and the ``-X`` option to specify the
request operation to use when communicating with the HTTP server
(instead of using the default operation).

If you have the tools, you can run the cURL JSON request examples with
the following option to format the output from cURL: **<cURL JSON
request example> \| python -m json.tool**.

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.

 
**Example: Get a restore report**

.. code::  

   curl -s -X GET https://dfw.backup.api.rackspacecloud.com/v1.0/yourAccountID/restore/report/yourRestoreID \
   -H "X-Auth-Token: yourAuthToken" \
   -H "Content-Type: application/json" | python -m json.tool

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
