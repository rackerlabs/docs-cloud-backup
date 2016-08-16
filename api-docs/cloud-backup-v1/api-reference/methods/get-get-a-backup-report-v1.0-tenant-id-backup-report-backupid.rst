.. _get-a-backup-report:

Get a backup report
~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v1.0/{tenant_id}/backup/report/{backupId}

This operation gets details about a completed backup.

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
|{backupId}                |Integer                  |The unique identifier of|
|                          |                         |a backup.               |
+--------------------------+-------------------------+------------------------+

This operation does not accept a request body.

**Example: Get a backup report JSON request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v1.0/1234/backup/report/92500
   User-Agent: controlpanel.drivesrvr.com
   Host: dfw.backup.api.rackspacecloud.com
   Content-Type: application/json;
   Content-Length: 0
   X-Auth-Token: 95b1788906f74d279d03001c6a14f3fe

Response
--------

**Example: Get a backup report JSON response**

.. code::

   {
       "BackupId": 92500,
       "BackupConfigurationId": 101145,
       "BackupConfigurationName": "Database Server Backup",
       "BackupConfigurationIsDeleted": false,
       "ComputerName": "Database Server",
       "MachineAgentId": 95874,
       "State": "CompletedWithErrors",
       "CanRestore": true,
       "StartTime": "\/Date(1351118760000)\/",
       "CompletedTime": "\/Date(1351119033000)\/",
       "Duration": "00:04:33",
       "FilesSearched": "11936",
       "BytesSearched": "3.7 GB",
       "FilesBackedUp": "6",
       "BytesBackedUp": "178.1 MB",
       "NumErrors": 2,
       "Reason": "Success",
       "Diagnostics": "Completed With Errors",
       "ErrorList": [
           {
               "BackupReportID": 48785,
               "ListIndex": 3210,
               "ErrorType": 101,
               "ErrorDesc": "The agent experienced a problem. (Rax)",
               "ExceptionDesc": "Cannot open file \"C:\\Program Files\\MicrosoftSQL Server\\MSSQL10_50.MSSQLSERVER\\MSSQL\\DATA\\tempdb.mdf\". The process cannot access the file because it is beingused by another process. .",
               "ExceptionDetails": "1: [WindowsFs.cpp: 157-rax::WindowsFs::Open]Error Code(313): Cannot open file \"C:\\Program Files\\Microsoft SQL Server\\MSSQL10_50.MSSQLSERVER\\MSSQL\\DATA\\tempdb.mdf\". The process cannot access the file because it is being used by another process. .",
               "ExceptionCode": 313,
               "Path": "C:\\Program Files\\Microsoft SQL Server\\MSSQL10_50.MSSQLSERVER\\MSSQL\\DATA\\tempdb.mdf"
           },
           {
               "BackupReportID": 48785,
               "ListIndex": 3211,
               "ErrorType": 101,
               "ErrorDesc": "The agent experienced a problem. (Rax)",
               "ExceptionDesc": "Cannot open file \"C:\\Program Files\\MicrosoftSQL Server\\MSSQL10_50.MSSQLSERVER\\MSSQL\\DATA\\templog.ldf\". The process cannot access the file because it is being used by another process. .",
               "ExceptionDetails": "1: [WindowsFs.cpp: 157-rax::WindowsFs::Open]Error Code(313): Cannot open file \"C:\\Program Files\\Microsoft SQL Server\\MSSQL10_50.MSSQLSERVER\\MSSQL\\DATA\\templog.ldf\". The process cannot access the file because it is being used by another process. .",
               "ExceptionCode": 313,
               "Path": "C:\\Program Files\\Microsoft SQL Server\\MSSQL10_50.MSSQLSERVER\\MSSQL\\DATA\\templog.ldf"
           }
       ]
   }      
