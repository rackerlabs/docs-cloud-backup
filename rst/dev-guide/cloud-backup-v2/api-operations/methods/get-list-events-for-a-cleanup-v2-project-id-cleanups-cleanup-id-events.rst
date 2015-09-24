
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-list-events-for-a-cleanup-v2-project-id-cleanups-cleanup-id-events:

List events for a cleanup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/cleanups/{cleanup_id}/events

Lists the events for the specified cleanup.

This operation lists all events for the specified cleanup. You should consider these events to be transient because they might disappear after a minute or so. Therefore, this operation is most useful for monitoring a running cleanup. 



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
|{cleanup_id}              |String *(Required)*      |Cleanup ID. For example, |
|                          |                         |``2f8708b3-d16b-11e4-    |
|                          |                         |bc22-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+



This table shows the query parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |String *(Optional)*      |ID of the event, for     |
|                          |                         |example, ``5152883998``. |
|                          |                         |Only events newer than   |
|                          |                         |the event specified by   |
|                          |                         |marker are returned. Use |
|                          |                         |of ``marker`` is most    |
|                          |                         |useful when you are      |
|                          |                         |continuously monitoring  |
|                          |                         |this endpoint for new    |
|                          |                         |events, so that old      |
|                          |                         |events are not repeated  |
|                          |                         |back to you in           |
|                          |                         |subsequent calls.        |
+--------------------------+-------------------------+-------------------------+
|limit                     |Integer *(Optional)*     |Number of events to      |
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




**Example List events for a cleanup: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d/events?marker=5152883998&limit=100&sort_dir=desc HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **events**              |String                   |Information about events |
|                          |                         |for the backup.          |
+--------------------------+-------------------------+-------------------------+
|events.\ **id**           |String                   |ID of the event.         |
+--------------------------+-------------------------+-------------------------+
|events.\ **time**         |String                   |Time of the event.       |
+--------------------------+-------------------------+-------------------------+
|\ **event**s.\ **event**  |String                   |Type of the event.       |
+--------------------------+-------------------------+-------------------------+
|events.\ **agent**        |String                   |Information about the    |
|                          |                         |agent for each ``event``.|
+--------------------------+-------------------------+-------------------------+
|events.agent.\ **id**     |String                   |Agent ID.                |
+--------------------------+-------------------------+-------------------------+
|events.agent.\ **vault**  |String                   |Information about the    |
|                          |                         |vault for the cleanup.   |
+--------------------------+-------------------------+-------------------------+
|events.agent.vault.\      |String                   |ID of the vault.         |
|**id**                    |                         |                         |
+--------------------------+-------------------------+-------------------------+
|events.agent.vault.\      |String                   |Specifies whether the    |
|**encrypted**             |                         |vault is encrypted.      |
+--------------------------+-------------------------+-------------------------+
|events.\ **cleanup**      |String                   |Information about the    |
|                          |                         |cleanup for each         |
|                          |                         |``event``.               |
+--------------------------+-------------------------+-------------------------+
|events.cleanup.\ **id**   |String                   |ID of the cleanup.       |
+--------------------------+-------------------------+-------------------------+
|\ **links**               |String                   |Link information for the |
|                          |                         |next and previous events.|
+--------------------------+-------------------------+-------------------------+
|links.\ **href**          |String                   |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|links.\ **rel**           |String                   |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+







**Example List events for a cleanup: JSON response**


.. code::

   200 (OK)
   Content-Type: application/json


.. code::

   {
       "events": [
           {
               "id": "5690138408",
               "time": "2014-10-14T14:17:40.238641Z",
               "event": "cleanup_start_request",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                   "vault": {
                       "id": "7cd999c3-a0c3-4985-99d4-42b544685456",
                       "encrypted": true
                   }
               },
               "cleanup": {
                   "id": "2f8708b3-d16b-11e4-bc22-c8e0eb190e3d"
               }
           },
           {
               "id": "5690138409",
               "time": "2014-10-14T14:17:41.238641Z",
               "event": "cleanup_queued",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "cleanup": {
                   "id": "2f8708b3-d16b-11e4-bc22-c8e0eb190e3d"
               }
           },
           {
               "id": "5690138410",
               "time": "2014-10-14T14:17:42.238641Z",
               "event": "cleanup_in_progress",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "cleanup": {
                   "id": "2f8708b3-d16b-11e4-bc22-c8e0eb190e3d"
               }
           },
           {
               "id": "5690138411",
               "time": "2014-10-14T14:17:43.238641Z",
               "event": "cleanup_completed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "cleanup": {
                   "id": "2f8708b3-d16b-11e4-bc22-c8e0eb190e3d"
               }
           },
           {
               "id": "5690138412",
               "time": "2014-10-14T14:17:44.238641Z",
               "event": "cleanup_failed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "cleanup": {
                   "id": "2f8708b3-d16b-11e4-bc22-c8e0eb190e3d"
               }
           },
           {
               "id": "5690138413",
               "time": "2014-10-14T14:17:45.238641Z",
               "event": "cleanup_stop_request",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "cleanup": {
                   "id": "2f8708b3-d16b-11e4-bc22-c8e0eb190e3d"
               }
           },
           {
               "id": "5690138414",
               "time": "2014-10-14T14:17:46.238641Z",
               "event": "cleanup_stopped",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "cleanup": {
                   "id": "2f8708b3-d16b-11e4-bc22-c8e0eb190e3d"
               }
           }
       ],
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d/events?marker=5690138414",
               "rel": "next"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d/events?marker=5690138408&sort_dir=desc",
               "rel": "previous"
           }
       ]
   }




