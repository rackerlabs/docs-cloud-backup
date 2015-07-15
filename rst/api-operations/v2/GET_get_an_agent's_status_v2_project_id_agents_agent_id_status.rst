=============================================================================
Get An Agent'S Status -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

Get An Agent'S Status
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <GET_get_an_agent's_status_v2_project_id_agents_agent_id_status.rst#request>`__
`Response <GET_get_an_agent's_status_v2_project_id_agents_agent_id_status.rst#response>`__

.. code-block:: javascript

    GET /v2/{project_id}/agents/{agent_id}/status

Gets the status of the specified agent.

This operation gets the status of the specified agent.



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








**Example Get An Agent'S Status: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/status HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|busy                      |                         |Specifies whether the    |
|                          |                         |agent is busy.           |
+--------------------------+-------------------------+-------------------------+
|online                    |                         |Specifies whether the    |
|                          |                         |agent is online.         |
+--------------------------+-------------------------+-------------------------+





**Example Get An Agent'S Status: JSON request**


.. code::

    200 (OK)
    Content-Type: application/json

