.. _post-list-details-about-a-restore:

Retrieve the details about a restore
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/restores/{restore_id}

This operation retrieves details about the specified restore.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|200            | OK              | The request succeeded.                                    |
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
|{restore_id}              |String                   |Restore ID. For example, |
|                          |                         |``e87e6f7d-d166-11e4-    |
|                          |                         |8689-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve the details about a restore, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept: application/json
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+---------------------------+------------------+-------------------------------+
|Name                       |Type              |Description                    |
+===========================+==================+===============================+
|\ **project_id**           |String            |ID of the project associated   |
|                           |                  |with the restore.              |
+---------------------------+------------------+-------------------------------+
|\ **id**                   |String            |ID of the restore.             |
+---------------------------+------------------+-------------------------------+
|\ **backup**               |String            |Information about the backup   |
|                           |                  |used for the restore.          |
+---------------------------+------------------+-------------------------------+
|backup.\ **id**            |String            |ID of the backup.              |
+---------------------------+------------------+-------------------------------+
|backup.\ **links**         |String            |Information about the links    |
|                           |                  |for the backup.                |
+---------------------------+------------------+-------------------------------+
|backup.links.\ **href**    |String            |Location (URI) for the backup. |
+---------------------------+------------------+-------------------------------+
|backup.links.\ **rel**     |String            |How the href link provided is  |
|                           |                  |related to this resource URI.  |
+---------------------------+------------------+-------------------------------+
|\ **destination_agent**    |String            |Information about the          |
|                           |                  |destination agent.             |
+---------------------------+------------------+-------------------------------+
|destination_agent.\ **id** |String            |ID of the destination agent.   |
+---------------------------+------------------+-------------------------------+
|destination_agent.\        |String            |Information about the links    |
|**links**                  |                  |for the destination agent.     |
+---------------------------+------------------+-------------------------------+
|destination_agent.links.\  |String            |Location (URI) for the         |
|**href**                   |                  |destination agent.             |
+---------------------------+------------------+-------------------------------+
|destination_agent.links.\  |String            |How the href link provided is  |
|**rel**                    |                  |related to the resource URI.   |
+---------------------------+------------------+-------------------------------+
|\ **destination_path**     |String            |Path for the destination.      |
+---------------------------+------------------+-------------------------------+
|\ **overwrite_files**      |Boolean           |Specifies whether any existing |
|                           |                  |files were overwritten.        |
+---------------------------+------------------+-------------------------------+
|\ **inclusions**           |String            |Resources included in the      |
|                           |                  |restore.                       |
+---------------------------+------------------+-------------------------------+
|inclusions.\ **type**      |String            |Type of resources included in  |
|                           |                  |the restore.                   |
+---------------------------+------------------+-------------------------------+
|inclusions.\ **path**      |String            |Path to the resources included |
|                           |                  |in the restore.                |
+---------------------------+------------------+-------------------------------+
|\ **exclusions**           |String            |Resources excluded from the    |
|                           |                  |restore.                       |
+---------------------------+------------------+-------------------------------+
|exclusions.\ **type**      |String            |Type of resources excluded     |
|                           |                  |from the restore.              |
+---------------------------+------------------+-------------------------------+
|exclusions.\ **path**      |String            |Path of the resources excluded |
|                           |                  |from the restore.              |
+---------------------------+------------------+-------------------------------+
|\ **state**                |String            |Current status of the restore. |
|                           |                  |Valid values are ``queued``,   |
|                           |                  |``preparing``, ``in_progress``,|
|                           |                  |``completed``,                 |
|                           |                  |``completed_with_errors``,     |
|                           |                  |``failed``, and ``stopped``.   |
+---------------------------+------------------+-------------------------------+
|\ **started_time**         |String            |Time that the restore started. |
+---------------------------+------------------+-------------------------------+
|\ **ended_time**           |String            |Time that the restore ended.   |
+---------------------------+------------------+-------------------------------+
|\ **errors**               |String            |Information about any errors   |
|                           |                  |encountered by the restore.    |
+---------------------------+------------------+-------------------------------+
|errors.\ **count**         |Integer           |Number of errors encountered   |
|                           |                  |by the restore.                |
+---------------------------+------------------+-------------------------------+
|errors.\ **reason**        |String            |Reason for the errors          |
|                           |                  |encountered by the restore.    |
+---------------------------+------------------+-------------------------------+
|errors.\ **diagnostics**   |String            |Information about possible     |
|                           |                  |reasons for the errors         |
|                           |                  |encountered by the restore.    |
+---------------------------+------------------+-------------------------------+
|errors.\ **links**         |String            |Information about the links    |
|                           |                  |for the errors.                |
+---------------------------+------------------+-------------------------------+
|errors.links.\ **href**    |String            |Location (URI) for the errors. |
+---------------------------+------------------+-------------------------------+
|errors.links.\ **rel**     |String            |How the href link provided is  |
|                           |                  |related to the resource URI.   |
+---------------------------+------------------+-------------------------------+
|\ **files_restored**       |Integer           |Number of files restored.      |
+---------------------------+------------------+-------------------------------+
|\ **bytes_restored**       |Integer           |Number of bytes restored.      |
+---------------------------+------------------+-------------------------------+
|\ **links**                |String            |Information about the links    |
|                           |                  |for the restore.               |
+---------------------------+------------------+-------------------------------+
|links.\ **href**           |String            |Location (URI) for the restore.|
+---------------------------+------------------+-------------------------------+
|links.\ **rel**            |String            |How the href link provided is  |
|                           |                  |related to the resource URI.   |
+---------------------------+------------------+-------------------------------+

**Example: Retrieve the details about a restore, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "project_id": "123456",
       "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d",
       "backup": {
           "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
                   "rel": "full"
               }
           ]
       },
       "destination_agent": {
           "id": "74124b09-5bd3-4436-b3e4-87ef362e4df5",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/74124b09-5bd3-4436-b3e4-87ef362e4df5",
                   "rel": "full"
               }
           ]
       },
       "destination_path": "/tmp/restore",
       "overwrite_files": false,
       "inclusions": [
           {
               "type": "folder",
               "path": "/web/"
           },
           {
               "type": "file",
               "path": "/etc/web/app.conf"
           }
       ],
       "exclusions": [
           {
               "type": "folder",
               "path": "/web/cache/"
           },
           {
               "type": "file",
               "path": "/web/cache.jpg"
           }
       ],
       "state": "completed_with_errors",
       "started_time": "2014-10-20T13:11:58.985151Z",
       "ended_time": "2014-10-20T13:12:58.985151Z",
       "errors": {
           "count": 1,
           "reason": "unable_to_process_some_files",
           "diagnostics": "Some files may not have been restored.",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/errors",
                   "rel": "full"
               }
           ]
       },
       "files_restored": 2,
       "bytes_restored": 1512,
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d",
               "rel": "self"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/events",
               "rel": "events"
           }
       ]
   }
