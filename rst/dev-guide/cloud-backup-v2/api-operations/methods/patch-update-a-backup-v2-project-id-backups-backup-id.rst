
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _patch-update-a-backup-v2-project-id-backups-backup-id:

Update a backup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    PATCH /v2/{project_id}/backups/{backup_id}

Updates the specified backup.

This operation updates the specified backup. Backups are updated with the JSON Patch. For more information about the JSON Patch, see `RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

You can issue updates only for the following scenarios:



*  The agent is reporting the state of the backup; for example, ``[{ "op": "replace", "path": "/state", "value": "queued" }]``. The following values are valid for ``value`` :
   
   
   
   *  ``queued``
   *  ``preparing``
   *  ``in_progress``
*  The agent is reporting the results of the finished backup (see the example request in this section). The following values are valid for ``/state`` :
   
   
   
   *  ``completed``
   *  ``completed_with_errors``
   *  ``failed``
   *  ``stopped``
   *  ``skipped``
*  You are issuing a request to stop the backup; for example, `` [{ "op": "replace", "path": "/state", "value": "stop_requested" }`` ].


You can use the ``add`` and ``replace`` operations interchangeably because they are interpreted identically for these scenarios.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|204                       |No Content               |                         |
+--------------------------+-------------------------+-------------------------+
|400                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|401                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|403                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|404                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|405                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|409                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|500                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|503                       |                         |                         |
+--------------------------+-------------------------+-------------------------+


Request
""""""""""""""""




This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{backup_id}               |String *(Required)*      |Backup ID. For example,  |
|                          |                         |``0d95d699-d16b-11e4-    |
|                          |                         |93bd-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+------------------------+------------------+----------------------------------+
|Name                    |Type              |Description                       |
+========================+==================+==================================+
|\ **op**                |String            |The ``replace`` or ``add``        |
|                        |*(Required)*      |operation to update the backup.   |
+------------------------+------------------+----------------------------------+
|\ **path**              |String            |Path of item to change.           |
|                        |*(Required)*      |                                  |
+------------------------+------------------+----------------------------------+
|\ **value**             |String            |Value related to the ``path``.    |
|                        |*(Required)*      |See the beginning of this section |
|                        |                  |for additional information.       |
+------------------------+------------------+----------------------------------+
|value.\ **count**       |String            |Number of errors, when ``path``   |
|                        |                  |is ``/errors``.                   |
+------------------------+------------------+----------------------------------+
|value.\ **reason**      |String            |Cause of the error, when ``path`` |
|                        |                  |is ``/errors``; for example,      |
|                        |                  |``unable_to_process_some_files``. |
+------------------------+------------------+----------------------------------+
|value.\ **diagnostics** |String            |Additional information about the  |
|                        |                  |cause of the error, when ``path`` |
|                        |                  |is ``/errors``; for example,      |
|                        |                  |``Some files could not be backed  |
|                        |                  |up. Partial list follows.``       |
+------------------------+------------------+----------------------------------+
|value.\ **list**        |String            |Additional information about the  |
|                        |                  |cause of the error, when ``path`` |
|                        |                  |is ``/errors``.                   |
+------------------------+------------------+----------------------------------+
|value.list.\ **index**  |String            |Index for the error.              |
+------------------------+------------------+----------------------------------+
|value.list.\ **path**   |String            |Path to the log.                  |
+------------------------+------------------+----------------------------------+
|value.list.\ **type**   |String            |Type of error.                    |
+------------------------+------------------+----------------------------------+
|value.list.\            |String            |Information about the exception.  |
|**exception**           |                  |                                  |
+------------------------+------------------+----------------------------------+
|value.list.exception.\  |String            |Exception code.                   |
|**code**                |                  |                                  |
+------------------------+------------------+----------------------------------+
|value.list.exception.\  |String            |Description of the exception.     |
|**description**         |                  |                                  |
+------------------------+------------------+----------------------------------+
|value.list.exception.\  |String            |Additional details about the      |
|**details**             |                  |exception.                        |
+------------------------+------------------+----------------------------------+





**Example Update a backup: JSON request**


.. code::

   PATCH https://dfw.backup.api.rackspacecloud.com/v2/110011/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-Type: application/json-patch+json


.. code::

   [
       {
           "op": "replace",
           "path": "/state",
           "value": "completed_with_errors"
       },
       {
           "op": "add",
           "path": "/started_time",
           "value": "2014-08-05T18:22:22.238641Z"
       },
       {
           "op": "add",
           "path": "/ended_time",
           "value": "2014-08-05T18:23:50.489715Z"
       },
       {
           "op": "add",
           "path": "/snapshot_id",
           "value": 1111
       },
       {
           "op": "add",
           "path": "/errors",
           "value": {
               "count": 1,
               "reason": "unable_to_process_some_files",
               "diagnostics": "Some files could not be backed up. Partial list follows.",
               "list": [
                   {
                       "index": 0,
                       "path": "C:\\Users\\admin\\AppData\\Local\\Temp\\3\\AdobeARM.log",
                       "type": "file_or_folder_missing",
                       "exception": {
                           "code": 3015,
                           "description": "GetLastError(The system cannot find the path specified. ) Cannot open file \"C:\\Users\\admin\\AppData\\Local\\Temp\\3\\AdobeARM.log\"",
                           "details": "1: [phx::WindowsFs::Open: 166-phx::WindowsFs::Open] Ex Code(3015): GetLastError(The system cannot find the path specified. ) Cannot open file \"C:\\Users\\admin\\AppData\\Local\\Temp\\3\\AdobeARM.log\""
                       }
                   }
               ]
           }
       },
       {
           "op": "add",
           "path": "/files_searched",
           "value": 1222
       },
       {
           "op": "add",
           "path": "/files_backed_up",
           "value": 6
       },
       {
           "op": "add",
           "path": "/bytes_searched",
           "value": 3700000000
       },
       {
           "op": "add",
           "path": "/bytes_backed_up",
           "value": 127000000
       },
       {
           "op": "add",
           "path": "/bytes_in_db",
           "value": 49340871
       },
       {
           "op": "add",
           "path": "/bandwidth_avg_bps",
           "value": 16628982
       }
   ]





Response
""""""""""""""""










**Example Update a backup: JSON response**


.. code::

   204 (No Content)




