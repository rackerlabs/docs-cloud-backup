.. _get-list-events-for-a-cleanup:

Retrieve the events for a cleanup
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/cleanups/{cleanup_id}/events

This operation retrieves all the events for the specified cleanup. You should consider
these events to be transient because they might disappear after a minute or so.
Therefore, this operation is most useful for monitoring a running cleanup.

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
|{cleanup_id}              |String                   |Cleanup ID. For example, |
|                          |                         |``2f8708b3-d16b-11e4-    |
|                          |                         |bc22-c8e0eb190e3d``.     |
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

**Example: Retrieve the events for a cleanup, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d/events?marker=5152883998&limit=100&sort_dir=desc HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+-------------------------+------------------------+---------------------------+
|Name                     |Type                    |Description                |
+=========================+========================+===========================+
|\ **events**             |String                  |Information about the      |
|                         |                        |events for the backup.     |
+-------------------------+------------------------+---------------------------+
|events.\ **id**          |String                  |ID of the event.           |
+-------------------------+------------------------+---------------------------+
|events.\ **time**        |String                  |Time of the event.         |
+-------------------------+------------------------+---------------------------+
|events.\ **event**       |String                  |Type of the event.         |
+-------------------------+------------------------+---------------------------+
|events.\ **agent**       |String                  |Information about the      |
|                         |                        |agent for each ``event``.  |
+-------------------------+------------------------+---------------------------+
|events.agent.\ **id**    |String                  |Agent ID.                  |
+-------------------------+------------------------+---------------------------+
|events.agent.\ **vault** |String                  |Information about the      |
|                         |                        |agent'svault for the       |
|                         |                        |cleanup.                   |
+-------------------------+------------------------+---------------------------+
|events.agent.vault.\     |String                  |ID of the vault.           |
|**id**                   |                        |                           |
+-------------------------+------------------------+---------------------------+
|events.agent.vault.\     |Boolean                 |Specifies whether the      |
|**encrypted**            |                        |vault is encrypted.        |
+-------------------------+------------------------+---------------------------+
|events.\ **cleanup**     |String                  |Information about the      |
|                         |                        |cleanup for each ``event``.|
+-------------------------+------------------------+---------------------------+
|events.cleanup.\ **id**  |String                  |ID of the cleanup.         |
+-------------------------+------------------------+---------------------------+
|events.\ **request_id**  |String                  |For                        |
|                         |                        |``cleanup_start_request``  |
|                         |                        |and                        |
|                         |                        |``cleanup_stop_request``   |
|                         |                        |events, the request ID.    |
+-------------------------+------------------------+---------------------------+
|\ **links**              |String                  |Link information for the   |
|                         |                        |next and previous events.  |
+-------------------------+------------------------+---------------------------+
|links.\ **href**         |String                  |Location (URI).            |
+-------------------------+------------------------+---------------------------+
|links.\ **rel**          |String                  |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+

**Example: Retrieve the events for a cleanup, JSON response**

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
               },
               "request_id": "cb09ab38-c98b-4910-8034-99127beb07b0"
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
               },
               "request_id": "ea588e78-e33c-4c3d-af0c-32103928f399"
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
