.. _patch-update-a-backup:

Update a backup
~~~~~~~~~~~~~~~

.. code::

    PATCH /v2/{project_id}/backups/{backup_id}

This operation updates the specified backup. Backups are updated with the
`JSON Patch <http://tools.ietf.org/html/rfc6902>`__.

You can issue updates for the following scenarios only:

*  The agent is reporting the state of the backup. For example,
   ``[{ "op": "replace", "path": "/state", "value": "queued" }]``.
   The following values are valid for ``value`` :

   *  ``queued``
   *  ``preparing``
   *  ``in_progress``

*  The agent is reporting the results of the finished backup (see the example
   request in this section). The following values are valid for ``/state``:

   *  ``completed``
   *  ``completed_with_errors``
   *  ``failed``
   *  ``stopped``
   *  ``skipped``

*  You are issuing a request to stop the backup. For example,
   ``[{ "op": "replace", "path": "/state", "value": "stop_requested" }]``.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|204            | No Content      | The server successfully fulfilled the request, and there  |
|               |                 | is no additional content to send in the response body.    |
+---------------+-----------------+-----------------------------------------------------------+
|400            | Bad Request     | The server cannot process the request because of a client |
|               |                 | error (for example, malformed syntax, invalid request     |
|               |                 | framing, or deceptive request routing).                   |
+---------------+-----------------+-----------------------------------------------------------+
|401            | Unauthorized    | The request was not applied because it lacks valid        |
|               |                 | authentication credentials for the target resource.       |
|               |                 | The credentials are either expired or invalid.            |
+---------------+-----------------+-----------------------------------------------------------+
|403            | Forbidden       | The server understood the request but did not authorize   |
|               |                 | it.                                                       |
+---------------+-----------------+-----------------------------------------------------------+
|404            | Not Found       | The server did not find a current representation for the  |
|               |                 | target resource or cannot disclose that one exists.       |
+---------------+-----------------+-----------------------------------------------------------+
|405            | Method Not      | The method received in the request line is                |
|               | Allowed         | known by the origin server but is not supported by        |
|               |                 | the target resource.                                      |
+---------------+-----------------+-----------------------------------------------------------+
|409            | Conflict        | The request was not completed because of a conflict with  |
|               |                 | the current state of the resource.                        |
+---------------+-----------------+-----------------------------------------------------------+
|500            | Internal Server | The server encountered an unexpected condition            |
|               | Error           | that prevented it from fulfilling the request.            |
+---------------+-----------------+-----------------------------------------------------------+
|501            | Not Implemented | The requested method or resource is not implemented.      |
+---------------+-----------------+-----------------------------------------------------------+
|503            | Service         | The server is currently unable to handle the request      |
|               | Unavailable     | because of a temporary overload or scheduled maintenance, |
|               |                 | which will likely be alleviated after some delay.         |
+---------------+-----------------+-----------------------------------------------------------+

Request
-------

The following table shows the URI parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{backup_id}               |String                   |Backup ID. For example,  |
|                          |                         |``0d95d699-d16b-11e4-    |
|                          |                         |93bd-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+

The following table shows the body parameters for the request.

+------------------------+------------------+----------------------------------+
|Name                    |Type              |Description                       |
+========================+==================+==================================+
|\ **op**                |String            |*(Required)*                      |
|                        |                  |The ``replace`` or ``add``        |
|                        |                  |operation to update the backup.   |
|                        |                  |You can use them interchangeably  |
|                        |                  |because they are interpreted      |
|                        |                  |identically.                      |
+------------------------+------------------+----------------------------------+
|\ **path**              |String            |*(Required)*                      |
|                        |                  |Path of the item to change.       |
+------------------------+------------------+----------------------------------+
|\ **value**             |String            |*(Required)*                      |
|                        |                  |Value related to the ``path``.    |
|                        |                  |See the beginning of this section |
|                        |                  |for additional information.       |
+------------------------+------------------+----------------------------------+
|value.\ **count**       |Integer           |Number of errors, when ``path``   |
|                        |                  |is ``/errors``.                   |
+------------------------+------------------+----------------------------------+
|value.\ **reason**      |String            |Cause of the error, when ``path`` |
|                        |                  |is ``/errors``. For example,      |
|                        |                  |``unable_to_process_some_files``. |
+------------------------+------------------+----------------------------------+
|value.\ **diagnostics** |String            |Additional information about the  |
|                        |                  |cause of the error, when ``path`` |
|                        |                  |is ``/errors``. For example,      |
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

**Example: Update a backup, JSON request**

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
--------

This operation does not require a response body for the 204 response.

**Example: Update a backup, HTTP 204 response**

.. code::

   204 (No Content)

When the response code is something other than 204, a response body is returned
with additional information about the error.


**Example: Update a backup, JSON 409 response**

.. code::

   409 (Conflict)

.. code::

   {
       "message": "Modifying a backup that is already in a state of ['completed', 'completed_with_errors', 'failed', 'stopped', 'skipped', 'missed'] is not allowed."
   }
