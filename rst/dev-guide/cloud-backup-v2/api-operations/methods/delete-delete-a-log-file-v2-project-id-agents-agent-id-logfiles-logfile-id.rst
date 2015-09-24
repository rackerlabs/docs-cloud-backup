
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _delete-delete-a-log-file-v2-project-id-agents-agent-id-logfiles-logfile-id:

Delete a log file
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
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{agent_id}                |String *(Required)*      |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+
|{logfile_id}              |String *(Required)*      |Log file ID. For         |
|                          |                         |example, ``a533a845-4279-|
|                          |                         |4838-af13-276114e90234``.|
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example Delete a log file: JSON request**


.. code::

   DELETE https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles/a533a845-4279-4838-af13-276114e90234 HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-Type: application/json





Response
""""""""""""""""










**Example Delete a log file: JSON response**


.. code::

   204 (No Content)
   Content-Type: application/json
   
   
   
   
   404 (Not Found)
   Content-Type: application/json




