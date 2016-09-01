.. _get-list-details-about-a-cleanup:

Retrieve the details about a cleanup
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/cleanups/{cleanup_id}

This operation retrieves the details about the specified cleanup.

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

This operation does not accept a request body.

**Example: Retrieve the details about a cleanup, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept: application/json
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+-------------------------+------------------------+---------------------------+
|Name                     |Type                    |Description                |
+=========================+========================+===========================+
|\ **project_id**         |String                  |ID of the project.         |
+-------------------------+------------------------+---------------------------+
|\ **id**                 |String                  |ID of the cleanup.         |
+-------------------------+------------------------+---------------------------+
|\ **agent**              |String                  |Information about the      |
|                         |                        |agent for the cleanup.     |
+-------------------------+------------------------+---------------------------+
|agent.\ **id**           |String                  |ID of the agent.           |
+-------------------------+------------------------+---------------------------+
|agent.\ **links**        |String                  |Link information for the   |
|                         |                        |agent.                     |
+-------------------------+------------------------+---------------------------+
|agent.links.\ **href**   |String                  |Location (URI) of the      |
|                         |                        |agent.                     |
+-------------------------+------------------------+---------------------------+
|agent.links.\ **rel**    |String                  |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+
|\ **state**              |String                  |State of the cleanup. For  |
|                         |                        |example,                   |
|                         |                        |``completed_with_errors``. |
+-------------------------+------------------------+---------------------------+
|\ **started_time**       |String                  |Time that the cleanup      |
|                         |                        |started.                   |
+-------------------------+------------------------+---------------------------+
|\ **ended_time**         |String                  |Time that the cleanup      |
|                         |                        |ended.                     |
+-------------------------+------------------------+---------------------------+
|\ **snapshot_ids**       |String                  |IDs of the snapshots.      |
+-------------------------+------------------------+---------------------------+
|\ **errors**             |String                  |Information about errors   |
|                         |                        |that occurred during the   |
|                         |                        |cleanup.                   |
+-------------------------+------------------------+---------------------------+
|errors.\ **count**       |Integer                 |Number of errors.          |
+-------------------------+------------------------+---------------------------+
|errors.\ **reason**      |String                  |Cause of the error. For    |
|                         |                        |example, ``Error deleting  |
|                         |                        |object. Server returned    |
|                         |                        |HTTP 503.``                |
+-------------------------+------------------------+---------------------------+
|errors.\ **diagnostics** |String                  |Additional information     |
|                         |                        |about the cause of the     |
|                         |                        |error, if available.       |
+-------------------------+------------------------+---------------------------+
|errors.\ **links**       |String                  |Links for information      |
|                         |                        |about the errors.          |
+-------------------------+------------------------+---------------------------+
|errors.links.\ **href**  |String                  |Location (URI) of the      |
|                         |                        |errors.                    |
+-------------------------+------------------------+---------------------------+
|errors.links.\ **rel**   |String                  |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+
|\ **bytes_before**       |Integer                 |Number of bytes before the |
|                         |                        |cleanup.                   |
+-------------------------+------------------------+---------------------------+
|\ **bytes_after**        |Integer                 |Number of bytes after the  |
|                         |                        |cleanup.                   |
+-------------------------+------------------------+---------------------------+
|\ **links**              |String                  |Links with information     |
|                         |                        |about the cleanups.        |
+-------------------------+------------------------+---------------------------+
|links.\ **href**         |String                  |Location (URI).            |
+-------------------------+------------------------+---------------------------+
|links.\ **rel**          |String                  |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+

**Example: Retrieve the details about a cleanup, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "project_id": "123456",
       "id": "2f8708b3-d16b-11e4-bc22-c8e0eb190e3d",
       "agent": {
           "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                   "rel": "full"
               }
           ]
       },
       "state": "completed_with_errors",
       "started_time": "2014-10-10T19:05:44.632393Z",
       "ended_time": "2014-10-10T19:35:44.632393Z",
       "snapshot_ids": [23, 51],
       "errors": {
           "count": 1,
           "reason": "Error deleting object. Server returned HTTP 503",
           "diagnostics": null,
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d/errors",
                   "rel": "full"
               }
           ]
       },
       "bytes_before": 1073741824,
       "bytes_after": 1067030938,
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d",
               "rel": "self"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d/events",
               "rel": "events"
           }
       ]
   }
