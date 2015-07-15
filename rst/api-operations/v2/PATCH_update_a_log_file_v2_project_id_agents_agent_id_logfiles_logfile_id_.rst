=============================================================================
Update A Log File -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

Update A Log File
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <PATCH_update_a_log_file_v2_project_id_agents_agent_id_logfiles_logfile_id_.rst#request>`__
`Response <PATCH_update_a_log_file_v2_project_id_agents_agent_id_logfiles_logfile_id_.rst#response>`__

.. code-block:: javascript

    PATCH /v2/{project_id}/agents/{agent_id}/logfiles/{logfile_id}

Updates the specified log file for the specified agent.

This operation updates the specified log file for the specified agent. Agents update the state of a log file by updating the ``/state`` path via a JSON Patch document. The ``/state`` path is the only path that can be modified. Only the ``replace`` operation is permitted. For more information about the JSON Patch, see `RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

The initial state when the log file is requested is ``requested``. Agents update ``/state`` with the values ``started`` or ``completed``.



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
|{logfile_id}              |xsd:string *(Required)*  |Log file ID. For         |
|                          |                         |example, ``a533a845-4279-|
|                          |                         |4838-af13-276114e90234``.|
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+----------------------+----------------------+--------------------------------+
|Name                  |Type                  |Description                     |
+======================+======================+================================+
|op                    |*(Required)*          |The``replace``operation to      |
|                      |                      |update the log file.            |
+----------------------+----------------------+--------------------------------+
|path                  |*(Required)*          |Path. The valid value           |
|                      |                      |is``/state``.                   |
+----------------------+----------------------+--------------------------------+
|value                 |*(Required)*          |Value related to the``path``.   |
|                      |                      |Valid values                    |
|                      |                      |are``started``and``completed``. |
+----------------------+----------------------+--------------------------------+





**Example Update A Log File: JSON request**


.. code::

    PATCH https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles/a533a845-4279-4838-af13-276114e90234 HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-Type: application/json-patch+json


Response
^^^^^^^^^^^^^^^^^^





**Example Update A Log File: JSON request**


.. code::

    204 (No Content)

