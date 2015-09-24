
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-view-results-of-a-browse-request-for-an-agent-v2-project-id-agents-agent-id-browse-requests-request-id:

View results of a browse request for an agent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/agents/{agent_id}/browse-requests/{request_id}

Shows the results for the specified browse request ID for the specified agent's files.

This operation shows the results for the specified browse request for the specified agent's files. The request returns a 404 response code until the agent responds to the browse request (see "Request to browse an agent's files"). Consider this response transient because it might disappear after a minute or so. 



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
|{agent_id}                |String *(Required)*      |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+
|{request_id}              |String *(Required)*      |Browse request ID. For   |
|                          |                         |example, ``16ce47f7-88b2-|
|                          |                         |4983-8b1c-d4a82306ae87``.|
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example View results of a browse request for an agent: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/browse-requests/16ce47f7-88b2-4983-8b1c-d4a82306ae87 HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

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
|\ **succeeded**           |String                   |Indicates if the request |
|                          |                         |succeeded.               |
+--------------------------+-------------------------+-------------------------+
|\ **path**                |String                   |Path browsed.            |
+--------------------------+-------------------------+-------------------------+
|\ **path_encoded**        |String                   |Encoded path for the     |
|                          |                         |path browsed.            |
+--------------------------+-------------------------+-------------------------+
|\ **items**               |String                   |Information about items  |
|                          |                         |browsed.                 |
+--------------------------+-------------------------+-------------------------+
|items.\ **name**          |String                   |Name of the item browsed.|
+--------------------------+-------------------------+-------------------------+
|items.\ **name_encoded**  |String                   |Encoded name for the     |
|                          |                         |item browsed.            |
+--------------------------+-------------------------+-------------------------+
|items.\ **bytes**         |String                   |Number of bytes browsed. |
+--------------------------+-------------------------+-------------------------+
|items.\ **mime_type**     |String                   |Mime type for the item   |
|                          |                         |browsed.                 |
+--------------------------+-------------------------+-------------------------+







**Example View results of a browse request for an agent: JSON response**


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




