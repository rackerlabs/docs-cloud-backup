
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List Configurations For An Agent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/agents/{agent_id}/configurations

Lists the configurations for the specified agent.

This operation lists the configurations for the specified agent. Note that the response is identical to the response for the operation to list the configurations for a project (see List the configurations for a project). 



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





This operation does not accept a request body.




**Example List Configurations For An Agent: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/configurations HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json
    


Response
""""""""""""""""


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|configurations            |                         |Information about        |
|                          |                         |configurations.          |
+--------------------------+-------------------------+-------------------------+
|project_id                |                         |Project ID of the        |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the configuration. |
+--------------------------+-------------------------+-------------------------+
|agent                     |                         |Information about the    |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information about   |
|                          |                         |the agent.               |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) of the    |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|name                      |                         |Configuration name.      |
+--------------------------+-------------------------+-------------------------+
|enabled                   |                         |Specifies whether the    |
|                          |                         |configuration is enabled.|
+--------------------------+-------------------------+-------------------------+
|schedule                  |                         |Information about backup |
|                          |                         |schedule specified in    |
|                          |                         |the configuration.       |
+--------------------------+-------------------------+-------------------------+
|start                     |                         |Start time for the       |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|recurrence                |                         |How often the backup     |
|                          |                         |occurs.                  |
+--------------------------+-------------------------+-------------------------+
|time_zone                 |                         |Time zone where the      |
|                          |                         |backup occurs.           |
+--------------------------+-------------------------+-------------------------+
|retention                 |                         |Information about backup |
|                          |                         |retention specified in   |
|                          |                         |the configuration.       |
+--------------------------+-------------------------+-------------------------+
|days                      |                         |Number of days to retain |
|                          |                         |the backup.              |
+--------------------------+-------------------------+-------------------------+
|backups                   |                         |Information about        |
|                          |                         |backups specified in the |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|last_completed            |                         |Information about the    |
|                          |                         |last completed backup.   |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the last completed |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information about   |
|                          |                         |the backup.              |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) of the    |
|                          |                         |last completed backup.   |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|next                      |                         |Information about the    |
|                          |                         |next backup.             |
+--------------------------+-------------------------+-------------------------+
|scheduled_time            |                         |Scheduled time for the   |
|                          |                         |next backup.             |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information about   |
|                          |                         |the configuration.       |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example List Configurations For An Agent: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

