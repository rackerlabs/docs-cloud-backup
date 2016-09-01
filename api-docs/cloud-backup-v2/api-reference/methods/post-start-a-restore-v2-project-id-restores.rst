.. _post-start-a-restore:

Start a restore
~~~~~~~~~~~~~~~

.. code::

    POST /v2/{project_id}/restores

This operation starts a restore.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|201            | Created         | The request has been accepted for processing, but the     |
|               |                 | processing has not been completed.                        |
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

The following table shows the body parameters for the request.

+---------------------------+-------------------------+------------------------+
|Name                       |Type                     |Description             |
+===========================+=========================+========================+
|\ **backup_id**            |String                   |*(Required)*            |
|                           |                         |ID of the backup to use |
|                           |                         |for the restore.        |
+---------------------------+-------------------------+------------------------+
|\ **destination_agent_ID** |String                   |*(Required)*            |
|                           |                         |ID of the destination   |
|                           |                         |agent.                  |
+---------------------------+-------------------------+------------------------+
|\ **destination_path**     |String                   |*(Required)*            |
|                           |                         |Path for the destination|
|                           |                         |of the restored files.  |
|                           |                         |If restoring to the same|
|                           |                         |host that the backup was|
|                           |                         |performed on, provide   |
|                           |                         |``null`` to restore     |
|                           |                         |files to their original |
|                           |                         |locations.              |
+---------------------------+-------------------------+------------------------+
|\ **overwrite_files**      |Boolean                  |Specifies whether to    |
|                           |                         |overwrite any existing  |
|                           |                         |files. The default is   |
|                           |                         |``false``.              |
+---------------------------+-------------------------+------------------------+
|\                          |String                   |*(Required)*            |
|**encrypted_password_hex** |                         |Encrypted password in   |
|                           |                         |hexadecimal notation.   |
+---------------------------+-------------------------+------------------------+
|\ **inclusions**           |String                   |*(Required)*            |
|                           |                         |Resources to include in |
|                           |                         |the restore.            |
+---------------------------+-------------------------+------------------------+
|inclusions.\ **type**      |String                   |*(Required)*            |
|                           |                         |Type of resources to    |
|                           |                         |include in the restore: |
|                           |                         |``file`` or ``folder``. |
+---------------------------+-------------------------+------------------------+
|inclusions.\ **path**      |String                   |*(Required)*            |
|                           |                         |Path to the resources   |
|                           |                         |to include in the       |
|                           |                         |restore.                |
+---------------------------+-------------------------+------------------------+
|\ **exclusions**           |String                   |*(Required)*            |
|                           |                         |Resources to exclude    |
|                           |                         |from the restore.       |
+---------------------------+-------------------------+------------------------+
|exclusions.\ **type**      |String                   |*(Required)*            |
|                           |                         |Type of resources to    |
|                           |                         |exclude from the        |
|                           |                         |restore: ``file`` or    |
|                           |                         |``folder``.             |
+---------------------------+-------------------------+------------------------+
|exclusions.\ **path**      |String                   |*(Required)*            |
|                           |                         |Path of the resources   |
|                           |                         |to exclude from the     |
|                           |                         |restore.                |
+---------------------------+-------------------------+------------------------+

**Example: Start a restore, JSON request**

.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/restores HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

.. code::

   {
       "backup_id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
       "destination_agent_id": "74124b09-5bd3-4436-b3e4-87ef362e4df5",
       "destination_path": "/tmp/restore",
       "overwrite_files": false,
       "encrypted_password_hex": "0bff42a526c78076a3d986fa75eecd 83211f166fd7692797cdde2317faee544e3300614fd54b8c0d81f975 3e58cb1ffbd62d3faf0d2bf52e79ce5cd9c6d84b5295e3dea629e71b 0a5e26efda50ff8e05a5475bb7cbd553d238c05655f56ece2df070ce 374ff1e0724827c2300e373241e94c4bc13441561604e3e70b5034eb 58d717864f304c9c73b6d1d46c4276d7ec2f0e2bd9a42a8ab0ba99eb adda84f4cbb5b3611bd319627436246912139c2dde62bd00528b1464 20dceae949d1926ae05fc7df9b474e1ee176f89069fb424b12f8f357 e6e2909ba05152e9f72a68de0046b3e1520838ff5e723af02a96f51a c1e6ef4254226249b872676af76a319cbe",
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
       ]
   }

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
|\ **destination_path**     |String            |Path for the destination of the|
|                           |                  |restored files. ``null``       |
|                           |                  |indicates that the files were  |
|                           |                  |restored to their original     |
|                           |                  |locations.                     |
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

**Example: Start a restore, JSON response**

.. code::

   201 (Created)
   Content-Type: application/json
   Location: https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d

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
       "state": "start_requested",
       "started_time": null,
       "ended_time": null,
       "errors": {
           "count": 0,
           "reason": "",
           "diagnostics": "",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/errors",
                   "rel": "full"
               }
           ]
       },
       "files_restored": 0,
       "bytes_restored": 0,
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
