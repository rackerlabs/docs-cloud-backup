
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _post-request-download-of-the-log-file-for-an-agent-v2-project-id-agents-agent-id-logfiles:

Request download of the log file for an agent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/agents/{agent_id}/logfiles

Requests download of the log file for the specified agent.

This operation requests the download of the log file for the specified agent. The agent is requested to upload its log files to Cloud Files for object storage.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|202                       |Accepted                 |                         |
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





This operation does not accept a request body.




**Example Request download of the log file for an agent: JSON request**


.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **id**                  |String                   |ID of the log file.      |
+--------------------------+-------------------------+-------------------------+
|\ **date**                |String                   |Date of the log file.    |
+--------------------------+-------------------------+-------------------------+
|\ **state**               |String                   |State of the log file.   |
+--------------------------+-------------------------+-------------------------+
|\ **links**               |String                   |Link information for the |
|                          |                         |log file.                |
+--------------------------+-------------------------+-------------------------+
|links.\ **href**          |String                   |Location (URI) of the    |
|                          |                         |log file.                |
+--------------------------+-------------------------+-------------------------+
|links.\ **rel**           |String                   |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+







**Example Request download of the log file for an agent: JSON response**


.. code::

   202 (Accepted)
   Content-Type: application/json
   Location: https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles/a533a845-4279-4838-af13-276114e90234


.. code::

   {
       "id": "a533a845-4279-4838-af13-276114e90234",
       "date": "2014-09-23T12:22:40.606703Z",
       "state": "requested",
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles/a533a845-4279-4838-af13-276114e90234",
               "rel": "self"
           }
       ]
   }




