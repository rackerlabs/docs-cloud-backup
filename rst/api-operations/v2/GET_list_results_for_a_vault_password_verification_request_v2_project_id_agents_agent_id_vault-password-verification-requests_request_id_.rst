=============================================================================
List Results For A Vault Password Verification Request -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

List Results For A Vault Password Verification Request
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <GET_list_results_for_a_vault_password_verification_request_v2_project_id_agents_agent_id_vault-password-verification-requests_request_id_.rst#request>`__
`Response <GET_list_results_for_a_vault_password_verification_request_v2_project_id_agents_agent_id_vault-password-verification-requests_request_id_.rst#response>`__

.. code-block:: javascript

    GET /v2/{project_id}/agents/{agent_id}/vault-password-verification-requests/{request_id}

Lists results for the specified password verification request for the specified agent's vault.

This operation lists the results for the specified password verification request for the specified agent's vault.

The operation returns a 404 response code until the agent reports the results of the vault password verification request. Consider this response transient because it might disappear after a minute or so.



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
|{request_id}              |xsd:string *(Required)*  |Password verification    |
|                          |                         |request ID. For example, |
|                          |                         |``f353f472-4931-463a-    |
|                          |                         |9920-1dcad25f88e7``.     |
+--------------------------+-------------------------+-------------------------+








**Example List Results For A Vault Password Verification Request: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-password-verification-requests/f353f472-4931-463a-9920-1dcad25f88e7 HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|id                        |                         |ID of verification event.|
+--------------------------+-------------------------+-------------------------+
|time                      |                         |Time of the verification |
|                          |                         |event.                   |
+--------------------------+-------------------------+-------------------------+
|event                     |                         |Name of the verification |
|                          |                         |event.                   |
+--------------------------+-------------------------+-------------------------+
|agent                     |                         |Agent information.       |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|request_id                |                         |ID of the request.       |
+--------------------------+-------------------------+-------------------------+
|valid                     |                         |Indication of validity   |
|                          |                         |for the password.        |
+--------------------------+-------------------------+-------------------------+





**Example List Results For A Vault Password Verification Request: JSON request**


.. code::

    200 (OK)

