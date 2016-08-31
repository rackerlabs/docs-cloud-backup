.. _get-list-events-for-a-restore:

Retrieve the events for a restore
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/restores/{restore_id}/events

This operation retrieves the events for the specified restore.

.. note::
   Consider these events to be transient because they might be available only
   briefly. Therefore, this endpoint is most useful for monitoring a running
   restore.

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

The following table shows the query parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |String                   |Event ID , such as       |
|                          |                         |``282856510``. Only      |
|                          |                         |events newer than the    |
|                          |                         |event specified by       |
|                          |                         |``marker`` are returned. |
|                          |                         |This                     |
|                          |                         |parameter is most useful |
|                          |                         |when you are continuously|
|                          |                         |monitoring this endpoint |
|                          |                         |for new events, so that  |
|                          |                         |old events are not be    |
|                          |                         |repeatedly returned to   |
|                          |                         |you in subsequent calls. |
+--------------------------+-------------------------+-------------------------+
|limit                     |Integer                  |Number of events to      |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |String                   |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are ``asc`` and          |
|                          |                         |``desc``. The default    |
|                          |                         |value is ``asc``.        |
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve the events for a restore, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/events?marker=282856510&limit=100&sort_dir=desc HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept: application/json
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+-----------------------------+--------------------+---------------------------+
|Name                         |Type                |Description                |
+=============================+====================+===========================+
|\ **events**                 |String              |Information about events.  |
+-----------------------------+--------------------+---------------------------+
|events.\ **id**              |String              |ID of the event.           |
+-----------------------------+--------------------+---------------------------+
|events.\ **time**            |String              |Time of the event.         |
+-----------------------------+--------------------+---------------------------+
|events.\ **event**           |String              |Type of the event.         |
+-----------------------------+--------------------+---------------------------+
|events.\ **agent**           |String              |Agent information for the  |
|                             |                    |event.                     |
+-----------------------------+--------------------+---------------------------+
|events.agent.\ **id**        |String              |ID of the agent.           |
+-----------------------------+--------------------+---------------------------+
|events.\ **source_agent**    |String              |Source agent information   |
|                             |                    |for the event.             |
+-----------------------------+--------------------+---------------------------+
|events.source_agent.\        |String              |Vault information for the  |
|**vault**                    |                    |source agent for the event.|
+-----------------------------+--------------------+---------------------------+
|events.source_agent.vault.\  |String              |ID of the vault for the    |
|**id**                       |                    |source agent for the event.|
+-----------------------------+--------------------+---------------------------+
|events.source_agent.vault.\  |Boolean             |Specifies whether the      |
|**encrypted**                |                    |vault is encrypted.        |
+-----------------------------+--------------------+---------------------------+
|events.\ **configuration**   |String              |Information about the      |
|                             |                    |configuration.             |
+-----------------------------+--------------------+---------------------------+
|events.configuration.\ **id**|String              |ID of the configuration.   |
+-----------------------------+--------------------+---------------------------+
|events.\ **backup**          |String              |Information about the      |
|                             |                    |backup.                    |
+-----------------------------+--------------------+---------------------------+
|events.backup.\              |String              |ID of the snapshot.        |
|**snapshot_id**              |                    |                           |
+-----------------------------+--------------------+---------------------------+
|events.\ **restore**         |String              |Information about the      |
|                             |                    |restore.                   |
+-----------------------------+--------------------+---------------------------+
|events.restore.\ **id**      |String              |ID of the restore.         |
+-----------------------------+--------------------+---------------------------+
|events.restore.\             |String              |Destination path for the   |
|**destination_path**         |                    |restore.                   |
+-----------------------------+--------------------+---------------------------+
|events.restore.\             |Boolean             |Specifies whether existing |
|**overwrite_files**          |                    |files were overwritten     |
|                             |                    |during the restore.        |
+-----------------------------+--------------------+---------------------------+
|events.restore.\             |String              |Resources included in the  |
|**inclusions**               |                    |restore.                   |
+-----------------------------+--------------------+---------------------------+
|events.restore.inclusions.\  |String              |Type of resources included |
|**type**                     |                    |in the restore.            |
+-----------------------------+--------------------+---------------------------+
|events.restore.inclusions.\  |String              |Path to the resources      |
|**path**                     |                    |included in the restore.   |
+-----------------------------+--------------------+---------------------------+
|events.restore.\             |String              |Resources excluded from    |
|**exclusions**               |                    |the restore.               |
+-----------------------------+--------------------+---------------------------+
|events.restore.exclusions.\  |String              |Type of resources excluded |
|**type**                     |                    |from the restore.          |
+-----------------------------+--------------------+---------------------------+
|events.restore.exclusions.\  |String              |Path of the resources      |
|**path**                     |                    |excluded from the restore. |
+-----------------------------+--------------------+---------------------------+
|events.\ **request_id**      |String              |For the                    |
|                             |                    |``restore_start_request``  |
|                             |                    |and                        |
|                             |                    |``restore_stop_request``   |
|                             |                    |events, the ID of the      |
|                             |                    |request.                   |
+-----------------------------+--------------------+---------------------------+
|events.\ **bytes_completed** |Integer             |Bytes completed.           |
+-----------------------------+--------------------+---------------------------+
|events.\ **bytes_remaining** |Integer             |Bytes remaining.           |
+-----------------------------+--------------------+---------------------------+
|events.\ **total_bytes**     |Integer             |Total bytes.               |
+-----------------------------+--------------------+---------------------------+
|\ **links**                  |String              |Information about the      |
|                             |                    |links for the events for   |
|                             |                    |the restore.               |
+-----------------------------+--------------------+---------------------------+
|links.\ **href**             |String              |Location (URI) for the     |
|                             |                    |events for the restore.    |
+-----------------------------+--------------------+---------------------------+
|links.\ **rel**              |String              |How the href link provided |
|                             |                    |is related to this         |
|                             |                    |resource URL.              |
+-----------------------------+--------------------+---------------------------+

**Example: Retrieve the events for a restore, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "events": [
           {
               "id": "282856406",
               "time": "2014-10-21T15:21:42.971997Z",
               "event": "restore_start_request",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "source_agent": {
                   "vault": {
                       "id": "7cd999c3-a0c3-4985-99d4-42b544685456",
                       "encrypted": true
                   }
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "snapshot_id": 1111
               },
               "restore": {
                   "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d",
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
                   ]
               },
               "request_id": "09be2f14-e9cd-466c-ade8-b3a81d6d12a8"
           },
           {
               "id": "282856407",
               "time": "2014-10-21T15:21:43.971997Z",
               "event": "restore_in_progress",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "restore": {
                   "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d"
               }
           },
           {
               "id": "282856408",
               "time": "2014-10-21T15:21:44.971997Z",
               "event": "restore_progress",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "restore": {
                   "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d"
               },
               "bytes_completed": 1,
               "bytes_remaining": 3,
               "total_bytes": 4
           },
           {
               "id": "282856409",
               "time": "2014-10-21T15:21:45.971997Z",
               "event": "restore_completed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "restore": {
                   "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d"
               }
           },
           {
               "id": "282856410",
               "time": "2014-10-21T15:21:46.971997Z",
               "event": "restore_failed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "restore": {
                   "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d"
               }
           },
           {
               "id": "282856509",
               "time": "2014-10-21T15:22:45.971997Z",
               "event": "restore_stop_request",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "restore": {
                   "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d"
               },
               "request_id": "d7cedd90-b668-4f00-abb0-54f46d123e68"
           },
           {
               "id": "282856510",
               "time": "2014-10-21T15:22:46.971997Z",
               "event": "restore_stopped",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "restore": {
                   "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d"
               }
           }
       ],
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/events?marker=282856510",
               "rel": "next"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/events?marker=282856406&sort_dir=desc",
               "rel": "previous"
           }
       ]
   }
