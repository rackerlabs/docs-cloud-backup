=============================================================================
List Events For An Agent -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

List Events For An Agent
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <GET_list_events_for_an_agent_v2_project_id_agents_agent_id_events.rst#request>`__
`Response <GET_list_events_for_an_agent_v2_project_id_agents_agent_id_events.rst#response>`__

.. code-block:: javascript

    GET /v2/{project_id}/agents/{agent_id}/events

Lists events for the specified agent.

This operation lists all events for the specified agent. You should consider these events to be transient because they might disappear after a minute or so. Therefore, this operation is most useful for monitoring an agent's current activity.

You can find additional event information in the following operation descriptions: GET /v2/agents/{id}/browse-request/{request_id} (See "View results of a browse request for an agent".) GET /v2/agents/{id}/vault-encryption-request/{request_id} (See "Lists results of a vault encryption request".) GET /v2/agents/{id}/vault-password-verification-request/{request_id} (See "View results for a vault password verification request".) GET /v2/backups/{id}/browse-request/{request_id} (See "View results of a browse request for a backup".) GET /v2/backups/{id}/events (See "List events for a backup".) GET /v2/cleanups/{id}/events (See "List events for a cleanup".) GET /v2/restores/{id}/events (See "List events for a restore".)



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



This table shows the query parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |xsd:string *(Required)*  |Event ID. For example,   |
|                          |                         |``5152883998``. Only     |
|                          |                         |events newer than the    |
|                          |                         |event specified by       |
|                          |                         |marker are returned. Use |
|                          |                         |of``marker``ismost       |
|                          |                         |useful when you are      |
|                          |                         |continuously monitoring  |
|                          |                         |this endpoint for new    |
|                          |                         |events, so that old      |
|                          |                         |events are not repeated  |
|                          |                         |back to you in           |
|                          |                         |subsequent calls.        |
+--------------------------+-------------------------+-------------------------+
|limit                     |xsd:integer *(Required)* |Number of events to      |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |xsd:string *(Required)*  |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are``asc``and``desc``.   |
|                          |                         |The default value        |
|                          |                         |is``desc``.              |
+--------------------------+-------------------------+-------------------------+







**Example List Events For An Agent: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/events?marker=5152883998&limit=100&sort_dir=desc HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+---------------------------+-----+-----------------------------------------------------------------------+
|Name                       |Type |Description                                                            |
+===========================+=====+=======================================================================+
|events                     |     |Information about events for the agent.                                |
+---------------------------+-----+-----------------------------------------------------------------------+
|id                         |     |ID of the event.                                                       |
+---------------------------+-----+-----------------------------------------------------------------------+
|time                       |     |Time of the event.                                                     |
+---------------------------+-----+-----------------------------------------------------------------------+
|event                      |     |Type of the event.                                                     |
+---------------------------+-----+-----------------------------------------------------------------------+
|agent                      |     |Information about the agent for each``event``except``mode``.           |
+---------------------------+-----+-----------------------------------------------------------------------+
|id                         |     |ID of agent.                                                           |
+---------------------------+-----+-----------------------------------------------------------------------+
|name                       |     |Name of the agent.                                                     |
+---------------------------+-----+-----------------------------------------------------------------------+
|host                       |     |Information about the host.                                            |
+---------------------------+-----+-----------------------------------------------------------------------+
|os                         |     |Information about the operating system for the host.                   |
+---------------------------+-----+-----------------------------------------------------------------------+
|name                       |     |Name of the operating system.                                          |
+---------------------------+-----+-----------------------------------------------------------------------+
|version                    |     |Version of the operating system.                                       |
+---------------------------+-----+-----------------------------------------------------------------------+
|architecture               |     |Architecture of the operating system.                                  |
+---------------------------+-----+-----------------------------------------------------------------------+
|mode                       |     |Mode of the event when``event``is``agent_activate``.                   |
+---------------------------+-----+-----------------------------------------------------------------------+
|request_id                 |     |ID of the request when``event``is``vault_encryption_enable``,          |
|                           |     |``vault_encryption_change``,``vault_password_verify``,                 |
|                           |     |``vault_db_download_in_progress``,``vault_db_download_completed``,     |
|                           |     |``vault_db_download_failed``,``host_browse``,``logfile_upload``,       |
|                           |     |``logfile_upload``, or``logfile_completed``.                           |
+---------------------------+-----+-----------------------------------------------------------------------+
|old_encrypted_password_hex |     |Encrypted old password when``event``is``vault_encryption_change``.     |
+---------------------------+-----+-----------------------------------------------------------------------+
|new_encrypted_password_hex |     |Encrypted new password when``event``is``vault_encryption_change``.     |
+---------------------------+-----+-----------------------------------------------------------------------+
|encrypted_password_hex     |     |Encrypted password                                                     |
|                           |     |when``event``is``vault_encryption_enable``or``vault_password_verify``. |
+---------------------------+-----+-----------------------------------------------------------------------+
|path                       |     |Path to browse when``event``is``host_browse``.                         |
+---------------------------+-----+-----------------------------------------------------------------------+
|path_encoded               |     |Encoded path to browse when``event``is``host_browse``.                 |
+---------------------------+-----+-----------------------------------------------------------------------+
|links                      |     |Link information when``event``is``logfile_upload``.                    |
+---------------------------+-----+-----------------------------------------------------------------------+
|href                       |     |Location (URI) of event.                                               |
+---------------------------+-----+-----------------------------------------------------------------------+
|rel                        |     |How the href link provided is related to this resource URI.            |
+---------------------------+-----+-----------------------------------------------------------------------+
|links                      |     |Link information for the next and previous events.                     |
+---------------------------+-----+-----------------------------------------------------------------------+
|href                       |     |Location (URI).                                                        |
+---------------------------+-----+-----------------------------------------------------------------------+
|rel                        |     |How the href link provided is related to this resource URI.            |
+---------------------------+-----+-----------------------------------------------------------------------+





**Example List Events For An Agent: JSON request**


.. code::

    200 (OK)
    Content-Type: application/json

