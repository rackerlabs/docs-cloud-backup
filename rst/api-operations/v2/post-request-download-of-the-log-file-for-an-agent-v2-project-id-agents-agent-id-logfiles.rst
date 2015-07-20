
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

=============================================================================
Request Download Of The Log File For An Agent -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

Request Download Of The Log File For An Agent
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <post-request-download-of-the-log-file-for-an-agent-v2-project-id-agents-agent-id-logfiles.html#request>`__
`Response <post-request-download-of-the-log-file-for-an-agent-v2-project-id-agents-agent-id-logfiles.html#response>`__

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
^^^^^^^^^^^^^^^^^

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








**Example Request Download Of The Log File For An Agent: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|id                        |                         |ID of the log file.      |
+--------------------------+-------------------------+-------------------------+
|date                      |                         |Date of the log file.    |
+--------------------------+-------------------------+-------------------------+
|state                     |                         |State of the log file.   |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information for the |
|                          |                         |log file.                |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) of the    |
|                          |                         |log file.                |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example Request Download Of The Log File For An Agent: JSON response**


.. code::

    202 (Accepted)
    Content-Type: application/json
    Location: https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles/a533a845-4279-4838-af13-276114e90234

