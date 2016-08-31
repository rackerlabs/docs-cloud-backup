.. _get-list-events-for-a-backup:

Retrieve the events for a backup
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/backups/{backup_id}/events

This operation retrieves all the events for the specified backup. You should consider
these events to be transient because they might disappear after a minute or so.
Therefore, this operation is most useful for monitoring a running backup.

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
|{backup_id}               |String                   |Backup ID. For example,  |
|                          |                         |``0d95d699-d16b-11e4-    |
|                          |                         |93bd-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+

The following table shows the query parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |String                   |ID of the event. For     |
|                          |                         |example, ``5152883998``. |
|                          |                         |Only events newer than   |
|                          |                         |the event specified by   |
|                          |                         |``marker`` are returned. |
|                          |                         |This parameter is most   |
|                          |                         |useful when you are      |
|                          |                         |continuously monitoring  |
|                          |                         |this endpoint for new    |
|                          |                         |events, so that old      |
|                          |                         |events are not repeated  |
|                          |                         |back to you in           |
|                          |                         |subsequent calls.        |
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

**Example: Retrieve the events for a backup, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/events?marker=5152883998&limit=100&sort_dir=desc HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+---------------------------+-----------------------+--------------------------+
|Name                       |Type                   |Description               |
+===========================+=======================+==========================+
|\ **events**               |String                 |Information about the     |
|                           |                       |eventsfor the backup.     |
+---------------------------+-----------------------+--------------------------+
|events.\ **id**            |String                 |ID of the event.          |
+---------------------------+-----------------------+--------------------------+
|events.\ **time**          |String                 |Time of the event.        |
+---------------------------+-----------------------+--------------------------+
|events.\ **event**         |String                 |Type of the event.        |
+---------------------------+-----------------------+--------------------------+
|events.\ **agent**         |String                 |Information about the     |
|                           |                       |agent for each ``event``. |
+---------------------------+-----------------------+--------------------------+
|events.agent.\ **id**      |String                 |ID of the agent.          |
+---------------------------+-----------------------+--------------------------+
|events.agent.\ **vault**   |String                 |For ``backup_browse``     |
|                           |                       |events, information about |
|                           |                       |the vault for the backup. |
+---------------------------+-----------------------+--------------------------+
|events.agent.vault.\ **id**|String                 |For ``backup_browse``     |
|                           |                       |events, the ID of the     |
|                           |                       |vault.                    |
+---------------------------+-----------------------+--------------------------+
|events.agent.vault.\       |Boolean                |For ``backup_browse``     |
|**encrypted**              |                       |events, specifies whether |
|                           |                       |the vault is encrypted.   |
+---------------------------+-----------------------+--------------------------+
|events.\ **configuration** |String                 |Information about the     |
|                           |                       |configuration for each    |
|                           |                       |``event``.                |
+---------------------------+-----------------------+--------------------------+
|events.configuration.\     |String                 |ID of the configuration.  |
|**id**                     |                       |                          |
+---------------------------+-----------------------+--------------------------+
|events.\ **backup**        |String                 |Information about the     |
|                           |                       |backup for each ``event``.|
+---------------------------+-----------------------+--------------------------+
|events.backup.\ **id**     |String                 |ID of the backup.         |
+---------------------------+-----------------------+--------------------------+
|events.backup.\            |String                 |ID of the snapshot.       |
|**snapshot_id**            |                       |                          |
+---------------------------+-----------------------+--------------------------+
|events.\ **request_id**    |String                 |ID of the request (for    |
|                           |                       |``backup_start``,         |
|                           |                       |``backup_missed``,        |
|                           |                       |``backup_skipped``,       |
|                           |                       |``backup_stop_request``,  |
|                           |                       |and ``backup_browse``     |
|                           |                       |events.                   |
+---------------------------+-----------------------+--------------------------+
|events.\                   |Integer                |Number of bytes completed.|
|**bytes_completed**        |                       |                          |
+---------------------------+-----------------------+--------------------------+
|events.\                   |Integer                |Number of bytes remaining.|
|**bytes_remaining**        |                       |                          |
+---------------------------+-----------------------+--------------------------+
|events.\ **total_bytes**   |Integer                |Total number of bytes.    |
+---------------------------+-----------------------+--------------------------+
|events.\ **path**          |String                 |For ``backup_browse``     |
|                           |                       |events, the path for the  |
|                           |                       |browse request.           |
+---------------------------+-----------------------+--------------------------+
|events.\ **path_encoded**  |String                 |For ``backup_browse``     |
|                           |                       |events, the encoded path  |
|                           |                       |for the browse request.   |
+---------------------------+-----------------------+--------------------------+
|events.\                   |String                 |For ``backup_browse``     |
|**encrypted_password_hex** |                       |events, the encrypted     |
|                           |                       |password in hexadecimal   |
|                           |                       |notation.                 |
+---------------------------+-----------------------+--------------------------+
|\ **links**                |String                 |Links for the next and    |
|                           |                       |previous events.          |
+---------------------------+-----------------------+--------------------------+
|links.\ **href**           |String                 |Location (URI).           |
+---------------------------+-----------------------+--------------------------+
|links.\ **rel**            |String                 |How the href link         |
|                           |                       |provided is related to    |
|                           |                       |this resource URI.        |
+---------------------------+-----------------------+--------------------------+

**Example: Retrieve the events for a backup, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "events": [
           {
               "id": "5152883867",
               "time": "2014-08-05T18:22:21.238641Z",
               "event": "backup_start_request",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               },
               "request_id": "d459cff6-777a-4515-b042-9288c841f557"
           },
           {
               "id": "5152883868",
               "time": "2014-08-05T18:22:22.238641Z",
               "event": "backup_queued",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               }
           },
           {
               "id": "5152883922",
               "time": "2014-08-05T18:22:23.238641Z",
               "event": "backup_preparing",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               }
           },
           {
               "id": "5152883969",
               "time": "2014-08-05T18:22:24.238641Z",
               "event": "backup_in_progress",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               }
           },
           {
               "id": "5152883978",
               "time": "2014-08-05T18:22:59.238641Z",
               "event": "backup_progress",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               },
               "bytes_completed": 1,
               "bytes_remaining": 3,
               "total_bytes": 4
           },
           {
               "id": "5152883998",
               "time": "2014-08-05T18:23:50.489715Z",
               "event": "backup_completed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               }
           },
           {
               "id": "5152883998",
               "time": "2014-08-05T18:23:50.489715Z",
               "event": "backup_failed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               }
           },
           {
               "id": "5152883998",
               "time": "2014-08-05T18:23:50.489715Z",
               "event": "backup_missed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               },
               "request_id": "25243c6d-b853-41f1-86a9-7a90d2d656ba"
           },
           {
               "id": "5152883998",
               "time": "2014-08-05T18:23:50.489715Z",
               "event": "backup_skipped",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               },
               "request_id": "5a8714d4-8178-499c-8632-2e8792a08339"
           },
           {
               "id": "5152883999",
               "time": "2014-08-05T18:23:51.489715Z",
               "event": "backup_stop_request",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               },
               "request_id": "d60c3459-9f0b-4faf-98eb-4c2f40056c16"
           },
           {
               "id": "5152884000",
               "time": "2014-10-07T14:34:04.376357Z",
               "event": "backup_stopped",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5"
               },
               "backup": {
                   "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d"
               }
           },
           {
               "id": "5152884001",
               "time": "2014-10-07T14:34:05.376357Z",
               "event": "backup_browse",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
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
               "request_id": "ae7528c8-bcc3-4356-a237-f20fbdd79ee4",
               "path": "/path/to/browse",
               "path_encoded": "/optional/base64encoded/path/if/non-utf-8/characters/present",
               "encrypted_password_hex": "0bff42a526c78076a3d986fa75eecd 83211f166fd7692797cdde2317faee544e3300614fd54b8c0d81f975 3e58cb1ffbd62d3faf0d2bf52e79ce5cd9c6d84b5295e3dea629e71b 0a5e26efda50ff8e05a5475bb7cbd553d238c05655f56ece2df070ce 374ff1e0724827c2300e373241e94c4bc13441561604e3e70b5034eb 58d717864f304c9c73b6d1d46c4276d7ec2f0e2bd9a42a8ab0ba99eb adda84f4cbb5b3611bd319627436246912139c2dde62bd00528b1464 20dceae949d1926ae05fc7df9b474e1ee176f89069fb424b12f8f357 e6e2909ba05152e9f72a68de0046b3e1520838ff5e723af02a96f51a c1e6ef4254226249b872676af76a319cbe"
           }
       ],
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/events?marker=5152884001",
               "rel": "next"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/events?marker=5152883867&sort_dir=desc",
               "rel": "previous"
           }
       ]
   }
