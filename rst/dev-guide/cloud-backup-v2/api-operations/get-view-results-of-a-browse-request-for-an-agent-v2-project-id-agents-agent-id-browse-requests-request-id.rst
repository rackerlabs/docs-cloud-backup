
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

View Results Of A Browse Request For An Agent
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
|{project_id}              |xsd:string               |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{agent_id}                |xsd:string *(Required)*  |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+
|{request_id}              |xsd:string *(Required)*  |Browse request ID. For   |
|                          |                         |example, ``16ce47f7-88b2-|
|                          |                         |4983-8b1c-d4a82306ae87``.|
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example View Results Of A Browse Request For An Agent: JSON request**


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
|id                        |                         |ID of the browse event.  |
+--------------------------+-------------------------+-------------------------+
|time                      |                         |Time of the browse event.|
+--------------------------+-------------------------+-------------------------+
|event                     |                         |Type of the event.       |
+--------------------------+-------------------------+-------------------------+
|agent                     |                         |Information about the    |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|request_id                |                         |ID of the request.       |
+--------------------------+-------------------------+-------------------------+
|succeeded                 |                         |Indicates if the request |
|                          |                         |succeeded.               |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |Path browsed.            |
+--------------------------+-------------------------+-------------------------+
|path_encoded              |                         |Encoded path for the     |
|                          |                         |path browsed.            |
+--------------------------+-------------------------+-------------------------+
|items                     |                         |Information about items  |
|                          |                         |browsed.                 |
+--------------------------+-------------------------+-------------------------+
|name                      |                         |Name of the item browsed.|
+--------------------------+-------------------------+-------------------------+
|name_encoded              |                         |Encoded name for the     |
|                          |                         |item browsed.            |
+--------------------------+-------------------------+-------------------------+
|bytes                     |                         |Number of bytes browsed. |
+--------------------------+-------------------------+-------------------------+
|mime_type                 |                         |Mime type for the item   |
|                          |                         |browsed.                 |
+--------------------------+-------------------------+-------------------------+





**Example View Results Of A Browse Request For An Agent: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json


