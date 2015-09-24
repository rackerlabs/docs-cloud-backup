
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _post-list-the-restores-for-a-project-v2-project-id-restores:

List the restores for a project
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/restores

Lists the restores available for the specified project.

This operation retrieves a list of restores available for the specified project. If no restores have been created, the ``restores`` parameter in the response is an empty array.



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



This table shows the query parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |String *(Optional)*      |The ``id`` of the last   |
|                          |                         |known restore; for       |
|                          |                         |example, ``e87e6f7d-d166-|
|                          |                         |11e4-8689-c8e0eb190e3d``.|
+--------------------------+-------------------------+-------------------------+
|limit                     |Integer *(Optional)*     |Number of restores to    |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |String *(Optional)*      |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are ``asc`` and          |
|                          |                         |``desc``. The default    |
|                          |                         |value is ``desc``.       |
+--------------------------+-------------------------+-------------------------+




This operation does not accept a request body.




**Example List the restores for a project: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/restores?marker=e87e6f7d-d166-11e4-8689-c8e0eb190e3d&limit=100&sort_dir=asc HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

+------------------------------------+---------+-------------------------------+
|Name                                |Type     |Description                    |
+====================================+=========+===============================+
|\ **restores**                      |String   |Information about the restores.|
+------------------------------------+---------+-------------------------------+
|restores.\ **project_id**           |String   |ID of the project associated   |
|                                    |         |with the restore.              |
+------------------------------------+---------+-------------------------------+
|restores.\ **id**                   |String   |ID of the restore.             |
+------------------------------------+---------+-------------------------------+
|restores.\ **backup**               |String   |Information about the backup.  |
+------------------------------------+---------+-------------------------------+
|restores.backup.\ **id**            |String   |ID of the backup.              |
+------------------------------------+---------+-------------------------------+
|restores.backup.\ **links**         |String   |Information about the links    |
|                                    |         |for the backup.                |
+------------------------------------+---------+-------------------------------+
|restores.backup.links.\ **href**    |String   |Location (URI) for the backup. |
+------------------------------------+---------+-------------------------------+
|restores.backup.links.\ **rel**     |String   |How the href link provided is  |
|                                    |         |related to this resource URI.  |
+------------------------------------+---------+-------------------------------+
|restores.\ **destination_agent**    |String   |Information about the          |
|                                    |         |destination agent.             |
+------------------------------------+---------+-------------------------------+
|restores.destination_agent.\ **id** |String   |ID of the destination agent.   |
+------------------------------------+---------+-------------------------------+
|restores.destination_agent.\        |String   |Information about the links    |
|**links**                           |         |for the destination agent.     |
+------------------------------------+---------+-------------------------------+
|restores.destination_agent.links.\  |String   |Location (URI) for the         |
|**href**                            |         |destination agent.             |
+------------------------------------+---------+-------------------------------+
|restores.destination_agent.links.\  |String   |How the href link provided is  |
|**rel**                             |         |related to the resource URI.   |
+------------------------------------+---------+-------------------------------+
|restores.\ **destination_path**     |String   |Path for the destination.      |
+------------------------------------+---------+-------------------------------+
|restores.\ **overwrite_files**      |String   |Specifies whether any existing |
|                                    |         |files were overwritten.        |
+------------------------------------+---------+-------------------------------+
|restores.\ **state**                |String   |Current status of the restore. |
|                                    |         |Valid values are ``queued``,   |
|                                    |         |``preparing````in_progress``,  |
|                                    |         |``completed``,                 |
|                                    |         |``completed_with_errors``,     |
|                                    |         |``failed``, and ``stopped``.   |
+------------------------------------+---------+-------------------------------+
|restores.\ **started_time**         |String   |Time that the restore started. |
+------------------------------------+---------+-------------------------------+
|restores.\ **ended_time**           |String   |Time that the restore ended.   |
+------------------------------------+---------+-------------------------------+
|restores.\ **errors**               |String   |Information about any errors   |
|                                    |         |encountered by the restore.    |
+------------------------------------+---------+-------------------------------+
|restores.errors.\ **count**         |String   |Number of errors encountered   |
|                                    |         |by the restore.                |
+------------------------------------+---------+-------------------------------+
|restores.errors.\ **reason**        |String   |Reason for the errors          |
|                                    |         |encountered by the restore.    |
+------------------------------------+---------+-------------------------------+
|restores.errors.\ **diagnostics**   |String   |Information about possible     |
|                                    |         |reasons for the errors         |
|                                    |         |encountered by the restore.    |
+------------------------------------+---------+-------------------------------+
|restores.errors.\ **links**         |String   |Information about the links    |
|                                    |         |for the errors.                |
+------------------------------------+---------+-------------------------------+
|restores.errors.links.\ **href**    |String   |Location (URI) for the errors. |
+------------------------------------+---------+-------------------------------+
|restores.errors.links.\ **rel**     |String   |How the href link provided is  |
|                                    |         |related to the resource URI.   |
+------------------------------------+---------+-------------------------------+
|restores.\ **files_restored**       |String   |Number of files restored.      |
+------------------------------------+---------+-------------------------------+
|restores.\ **bytes_restored**       |String   |Number of bytes restored.      |
+------------------------------------+---------+-------------------------------+
|restores.\ **links**                |String   |Information about the links    |
|                                    |         |for the restore.               |
+------------------------------------+---------+-------------------------------+
|restores.links.\ **href**           |String   |Location (URI) for the restore.|
+------------------------------------+---------+-------------------------------+
|restores.links.\ **rel**            |String   |How the href link provided is  |
|                                    |         |related to the resource URI.   |
+------------------------------------+---------+-------------------------------+
|\ **links**                         |String   |Information for the next and   |
|                                    |         |previous links for the restore.|
+------------------------------------+---------+-------------------------------+
|links.\ **href**                    |String   |Location (URI) for the restore.|
+------------------------------------+---------+-------------------------------+
|links.\ **rel**                     |String   |How the href link provided is  |
|                                    |         |related to the resource URI.   |
+------------------------------------+---------+-------------------------------+







**Example List the restores for a project: JSON response**


.. code::

   200 (OK)
   Content-Type: application/json


.. code::

   {
       "restores": [
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
                       "rel": "full"
                   },
                   {
                       "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/events",
                       "rel": "events"
                   }
               ]
           }
       ],
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/restores?marker=e87e6f7d-d166-11e4-8689-c8e0eb190e3d",
               "rel": "next"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/restores?marker=e87e6f7d-d166-11e4-8689-c8e0eb190e3d&sort_dir=asc",
               "rel": "previous"
           }
       ]
   }




