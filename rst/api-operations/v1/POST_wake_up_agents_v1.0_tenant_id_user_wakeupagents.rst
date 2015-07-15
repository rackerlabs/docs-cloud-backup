=============================================================================
Wake Up Agents -  Rackspace Cloud Backup Developer Guide v1
=============================================================================

Wake Up Agents
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <POST_wake_up_agents_v1.0_tenant_id_user_wakeupagents.rst#request>`__
`Response <POST_wake_up_agents_v1.0_tenant_id_user_wakeupagents.rst#response>`__

.. code-block:: javascript

    POST /v1.0/{tenant_id}/user/wakeupagents

Wakes up the agent before you perform tasks.

This operation sends a message to an agent to wakeup. You should wait 10 to 20 seconds after using this operation before starting a backup or restore.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|200                       |OK                       |The request succeeded.   |
+--------------------------+-------------------------+-------------------------+
|400                       |Bad Request              |There were one or more   |
|                          |                         |errors in the request.   |
+--------------------------+-------------------------+-------------------------+
|401                       |Unauthorized             |The supplied token was   |
|                          |                         |not authorized to access |
|                          |                         |the resources. Either it |
|                          |                         |is expired or invalid.   |
+--------------------------+-------------------------+-------------------------+
|403                       |Forbidden                |Access to the requested  |
|                          |                         |resource was denied.     |
+--------------------------+-------------------------+-------------------------+
|503                       |Service Unavailable      |This is a generic server |
|                          |                         |error. The message       |
|                          |                         |contains the reason for  |
|                          |                         |the error. This error    |
|                          |                         |could wrap several error |
|                          |                         |messages.                |
+--------------------------+-------------------------+-------------------------+


Request
^^^^^^^^^^^^^^^^^

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{tenant_id}               |xsd:string               |The unique identifier of |
|                          |                         |the tenant or account.   |
+--------------------------+-------------------------+-------------------------+








**Example Wake Up Agents: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v1.0/1234/user/wakeupagents
    User-Agent: controlpanel.drivesrvr.com
    Host: dfw.backup.api.rackspacecloud.com
    Content-Type: application/json;
    Content-Length: 0
    X-Auth-Token: 95b1788906f74d279d03001c6a14f3fe


Response
^^^^^^^^^^^^^^^^^^




