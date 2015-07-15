=============================================================================
List Configuration Settings For An Agent -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

List Configuration Settings For An Agent
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <GET_list_configuration_settings_for_an_agent_v2_project_id_agents_agent_id_configuration.rst#request>`__
`Response <GET_list_configuration_settings_for_an_agent_v2_project_id_agents_agent_id_configuration.rst#response>`__

.. code-block:: javascript

    GET /v2/{project_id}/agents/{agent_id}/configuration

Lists the configuration settings for the specified agent.

This operation lists the configuration settings for the specified agent.



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








**Example List Configuration Settings For An Agent: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/configuration HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json
    


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|system_preferences        |                         |Information about the    |
|                          |                         |preferences set for the  |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|environment               |                         |Information about the    |
|                          |                         |system's environment.    |
+--------------------------+-------------------------+-------------------------+
|minimum_disk_space_mb     |                         |Minimum disk space in    |
|                          |                         |megabytes (MB) set each  |
|                          |                         |for the following        |
|                          |                         |specified                |
|                          |                         |events:``backup``,       |
|                          |                         |``restore``,             |
|                          |                         |and``cleanup``.          |
+--------------------------+-------------------------+-------------------------+
|logging                   |                         |Information about        |
|                          |                         |logging.                 |
+--------------------------+-------------------------+-------------------------+
|level                     |                         |Logging level.           |
+--------------------------+-------------------------+-------------------------+
|events                    |                         |Information about events.|
+--------------------------+-------------------------+-------------------------+
|rse                       |                         |Information about the    |
|                          |                         |Really Simple Event      |
|                          |                         |(RSE).                   |
+--------------------------+-------------------------+-------------------------+
|host                      |                         |Path for the host.       |
+--------------------------+-------------------------+-------------------------+
|channel                   |                         |Path for the channel.    |
+--------------------------+-------------------------+-------------------------+
|polling                   |                         |Information about        |
|                          |                         |polling.                 |
+--------------------------+-------------------------+-------------------------+
|interval_ms               |                         |Polling interval in      |
|                          |                         |milliseconds (ms).       |
|                          |                         |Includes the interval    |
|                          |                         |for``idle``,``active``,  |
|                          |                         |and``real_time``.        |
+--------------------------+-------------------------+-------------------------+
|timeout_ms                |                         |Timeout setting in       |
|                          |                         |milliseconds (ms).       |
|                          |                         |Includes the timeout     |
|                          |                         |setting for``idle``,     |
|                          |                         |``active``,              |
|                          |                         |and``real_time``.        |
+--------------------------+-------------------------+-------------------------+
|heartbeat                 |                         |Information about the    |
|                          |                         |heartbeat.               |
+--------------------------+-------------------------+-------------------------+
|interval_ms               |                         |Heartbeat interval in    |
|                          |                         |milliseconds (ms).       |
|                          |                         |Includes the interval    |
|                          |                         |for``idle``,``active``,  |
|                          |                         |and``real_time``.        |
+--------------------------+-------------------------+-------------------------+
|timeout_ms                |                         |Timeout setting in       |
|                          |                         |milliseconds (ms).       |
|                          |                         |Includes the timeout     |
|                          |                         |setting for``idle``,     |
|                          |                         |``active``,              |
|                          |                         |and``real_time``.        |
+--------------------------+-------------------------+-------------------------+
|backup_controls           |                         |Information about backup |
|                          |                         |controls.                |
+--------------------------+-------------------------+-------------------------+
|disable_vss               |                         |Volume shadow copy       |
|                          |                         |service (vss)            |
|                          |                         |disablement.             |
+--------------------------+-------------------------+-------------------------+
|vaults                    |                         |Information about vaults.|
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the vault.         |
+--------------------------+-------------------------+-------------------------+
|use_internal              |                         |Specifies whether the    |
|                          |                         |use of the vault is      |
|                          |                         |internal.                |
+--------------------------+-------------------------+-------------------------+
|encrypted                 |                         |Specifies whether the    |
|                          |                         |vault is encrypted.      |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information about   |
|                          |                         |the vault.               |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) of the    |
|                          |                         |vault.                   |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|configurations            |                         |Information about        |
|                          |                         |configurations.          |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the configuration. |
+--------------------------+-------------------------+-------------------------+
|name                      |                         |Configuration name.      |
+--------------------------+-------------------------+-------------------------+
|enabled                   |                         |Specifies whether the    |
|                          |                         |configuration is enabled.|
+--------------------------+-------------------------+-------------------------+
|vault_id                  |                         |ID of the vault.         |
+--------------------------+-------------------------+-------------------------+
|retention                 |                         |Information about        |
|                          |                         |retention specified in   |
|                          |                         |the configuration.       |
+--------------------------+-------------------------+-------------------------+
|days                      |                         |Number of days that a    |
|                          |                         |backup is retained.      |
+--------------------------+-------------------------+-------------------------+
|schedule                  |                         |Information about backup |
|                          |                         |schedule specified in    |
|                          |                         |the configuration.       |
+--------------------------+-------------------------+-------------------------+
|start                     |                         |Start time of the backup.|
+--------------------------+-------------------------+-------------------------+
|recurrence                |                         |How often the backup     |
|                          |                         |occurs.                  |
+--------------------------+-------------------------+-------------------------+
|time_zone                 |                         |Time zone where the      |
|                          |                         |backup occurs.           |
+--------------------------+-------------------------+-------------------------+
|backups                   |                         |Information about        |
|                          |                         |backups specified in the |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|next                      |                         |Start time of the next   |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|scheduled_time            |                         |Start time scheduled for |
|                          |                         |the next backup.         |
+--------------------------+-------------------------+-------------------------+
|inclusions                |                         |Information about        |
|                          |                         |objects included in      |
|                          |                         |backups in this          |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|type                      |                         |Type of object to be     |
|                          |                         |included.                |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |Path to the object to be |
|                          |                         |included.                |
+--------------------------+-------------------------+-------------------------+
|exclusions                |                         |Information about        |
|                          |                         |objects excluded in      |
|                          |                         |backups in this          |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|type                      |                         |Type of object to be     |
|                          |                         |excluded.                |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |Path to the object to be |
|                          |                         |excluded.                |
+--------------------------+-------------------------+-------------------------+





**Example List Configuration Settings For An Agent: JSON request**


.. code::

    200 (OK)
    Content-Type: application/json

