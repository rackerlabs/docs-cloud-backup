
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _post-list-details-about-a-restore-v2-project-id-restores-restore-id:

List details about a restore
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/restores/{restore_id}

Lists details about the specified restore.

This operation lists details about the specified restore.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|200                       |OK                       |                         |
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
|{restore_id}              |String *(Required)*      |Restore ID. For example, |
|                          |                         |``e87e6f7d-d166-11e4-    |
|                          |                         |8689-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List details about a restore: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept: application/json
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

+---------------------------+------------------+-------------------------------+
|Name                       |Type              |Description                    |
+===========================+==================+===============================+
|\ **project_id**           |String            |ID of the project associated   |
|                           |                  |with the restore.              |
+---------------------------+------------------+-------------------------------+
|\ **id**                   |String            |ID of the restore.             |
+---------------------------+------------------+-------------------------------+
|\ **backup**               |String            |Information about the backup.  |
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
|\ **overwrite_files**      |String            |Specifies whether any existing |
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
|                           |                  |``preparing````in_progress``,  |
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
|errors.\ **count**         |String            |Number of errors encountered   |
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
|\ **files_restored**       |String            |Number of files restored.      |
+---------------------------+------------------+-------------------------------+
|\ **bytes_restored**       |String            |Number of bytes restored.      |
+---------------------------+------------------+-------------------------------+
|\ **links**                |String            |Information about the links    |
|                           |                  |for the restore.               |
+---------------------------+------------------+-------------------------------+
|links.\ **href**           |String            |Location (URI) for the restore.|
+---------------------------+------------------+-------------------------------+
|links.\ **rel**            |String            |How the href link provided is  |
|                           |                  |related to the resource URI.   |
+---------------------------+------------------+-------------------------------+







**Example List details about a restore: JSON response**


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




