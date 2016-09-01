.. _get-view-results-of-a-browse-request-for-an-agent:

Retrieve the results of a browse request for an agent
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/agents/{agent_id}/browse-requests/{request_id}

This operation retrieves the results for the specified browse request for the
specified agent's files. The request returns a 404 response code until the
agent responds to the browse request (see
:ref:`Request to browse an agent's files<get-list-the-log-files-for-an-agent>`).
Consider this response transient because it might disappear after a minute or
so.

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
|{agent_id}                |String                   |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+
|{request_id}              |String                   |Browse request ID. For   |
|                          |                         |example, ``16ce47f7-88b2-|
|                          |                         |4983-8b1c-d4a82306ae87``.|
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve the results of a browse request for an agent, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/browse-requests/16ce47f7-88b2-4983-8b1c-d4a82306ae87 HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **id**                  |String                   |ID of the browse event.  |
+--------------------------+-------------------------+-------------------------+
|\ **time**                |String                   |Time of the browse event.|
+--------------------------+-------------------------+-------------------------+
|\ **event**               |String                   |Type of the event.       |
+--------------------------+-------------------------+-------------------------+
|\ **agent**               |String                   |Information about the    |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|agent.\ **id**            |String                   |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|\ **request_id**          |String                   |ID of the request.       |
+--------------------------+-------------------------+-------------------------+
|\ **succeeded**           |Boolean                  |Indicates whether the    |
|                          |                         |request succeeded.       |
+--------------------------+-------------------------+-------------------------+
|\ **path**                |String                   |Path that was browsed.   |
+--------------------------+-------------------------+-------------------------+
|\ **path_encoded**        |String                   |Encoded path for the     |
|                          |                         |path that was browsed.   |
+--------------------------+-------------------------+-------------------------+
|\ **items**               |String                   |Information about the    |
|                          |                         |items that were browsed. |
+--------------------------+-------------------------+-------------------------+
|items.\ **name**          |String                   |Name of the item that was|
|                          |                         |browsed.                 |
+--------------------------+-------------------------+-------------------------+
|items.\ **name_encoded**  |String                   |Encoded name for the     |
|                          |                         |item that was browsed.   |
+--------------------------+-------------------------+-------------------------+
|items.\ **bytes**         |String                   |Number of bytes that were|
|                          |                         |browsed.                 |
+--------------------------+-------------------------+-------------------------+
|items.\ **mime_type**     |String                   |Mime type for the item   |
|                          |                         |that was browsed.        |
+--------------------------+-------------------------+-------------------------+

**Example: Retrieve the results of a browse request for an agent, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "id": "5650135594",
       "time": "2014-10-09T12:26:26.233501Z",
       "event": "host_browsed",
       "agent": {
           "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
       },
       "request_id": "16ce47f7-88b2-4983-8b1c-d4a82306ae87",
       "succeeded": true,
       "path": "/path/to/browse/",
       "path_encoded": "/optional/base64encoded/path/if/non-utf-8/characters/present/",
       "items": [
           {
               "name": "initrd.img",
               "name_encoded": "optional_base64encoded_name_if_non-utf-8_characters_present",
               "bytes": 0,
               "mime_type": "application/x-symlink-file"
           }
       ]
   }
