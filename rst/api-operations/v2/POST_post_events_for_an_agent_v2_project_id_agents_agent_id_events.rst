=============================================================================
Post Events For An Agent -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

Post Events For An Agent
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <POST_post_events_for_an_agent_v2_project_id_agents_agent_id_events.rst#request>`__
`Response <POST_post_events_for_an_agent_v2_project_id_agents_agent_id_events.rst#response>`__

.. code-block:: javascript

    POST /v2/{project_id}/agents/{agent_id}/events

Posts events for the specified agent.

This operation posts events for the specified agent. Note that the operation to post events for a project (see "Post project events") is similar.



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

+----------------------+----------------------+--------------------------------+
|Name                  |Type                  |Description                     |
+======================+======================+================================+
|event                 |*(Required)*          |The event to post. Valid values |
|                      |                      |are``startup``and``shutdown``.  |
|                      |                      |For the``startup``event,the     |
|                      |                      |agent is starting up, and the   |
|                      |                      |API communicates any pending    |
|                      |                      |work to the agent. For          |
|                      |                      |the``shutdown``event, the agent |
|                      |                      |is shutting down.               |
+----------------------+----------------------+--------------------------------+





**Example Post Events For An Agent: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/events HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^





**Example Post Events For An Agent: JSON request**


.. code::

    202 (Accepted)

