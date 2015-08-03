
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Delete A Log File
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    DELETE /v2/{project_id}/agents/{agent_id}/logfiles/{logfile_id}

Deletes the specified log file for the specified agent.

This operation deletes the specified log file for the specified agent.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|204                       |No Content               |                         |
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
|{logfile_id}              |xsd:string *(Required)*  |Log file ID. For         |
|                          |                         |example, ``a533a845-4279-|
|                          |                         |4838-af13-276114e90234``.|
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example Delete A Log File: JSON request**


.. code::

    DELETE https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles/a533a845-4279-4838-af13-276114e90234 HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-Type: application/json


Response
""""""""""""""""


This operation does not accept a response body.




**Example Delete A Log File: JSON response**


.. code::

    204 (No Content)
    Content-Type: application/json
    
    
    
    
    404 (Not Found)
    Content-Type: application/json

