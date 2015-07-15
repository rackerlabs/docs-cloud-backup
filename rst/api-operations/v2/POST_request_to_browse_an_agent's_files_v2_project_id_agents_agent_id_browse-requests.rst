=============================================================================
Request To Browse An Agent'S Files -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

Request To Browse An Agent'S Files
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <POST_request_to_browse_an_agent's_files_v2_project_id_agents_agent_id_browse-requests.rst#request>`__
`Response <POST_request_to_browse_an_agent's_files_v2_project_id_agents_agent_id_browse-requests.rst#response>`__

.. code-block:: javascript

    POST /v2/{project_id}/agents/{agent_id}/browse-requests

Makes a request to browse the specified agent's files.

This operation makes a request to browse the specified agent's files.



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





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|path                      |*(Required)*             |Path for the browse      |
|                          |                         |request.                 |
+--------------------------+-------------------------+-------------------------+
|path_encoded              |*(Required)*             |Encoded path for the     |
|                          |                         |browse request.          |
+--------------------------+-------------------------+-------------------------+





**Example Request To Browse An Agent'S Files: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/browse-requests HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^





**Example Request To Browse An Agent'S Files: JSON request**


.. code::

    202 (Accepted)
    Location: https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/browse-request/16ce47f7-88b2-4983-8b1c-d4a82306ae87

