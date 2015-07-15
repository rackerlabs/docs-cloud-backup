=============================================================================
Report Results Of A Vault Password Verification Request -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

Report Results Of A Vault Password Verification Request
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <POST_report_results_of_a_vault_password_verification_request_v2_project_id_agents_agent_id_vault-password-verification-requests_request_id_.rst#request>`__
`Response <POST_report_results_of_a_vault_password_verification_request_v2_project_id_agents_agent_id_vault-password-verification-requests_request_id_.rst#response>`__

.. code-block:: javascript

    POST /v2/{project_id}/agents/{agent_id}/vault-password-verification-requests/{request_id}

Reports results of the specified password verification request for the specified agent's vault.

This operation reports the results of the specified password verification request for the specified agent's vault.

The agent uses this operation to report the results of a request to verify the vault encryption password.



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
|{request_id}              |xsd:string *(Required)*  |Password verification    |
|                          |                         |request ID. For example, |
|                          |                         |``f353f472-4931-463a-    |
|                          |                         |9920-1dcad25f88e7``.     |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|verified                  |*(Required)*             |Specifies whether the    |
|                          |                         |password is verified.    |
+--------------------------+-------------------------+-------------------------+





**Example Report Results Of A Vault Password Verification Request: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-password-verification-requests/f353f472-4931-463a-9920-1dcad25f88e7 HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^





**Example Report Results Of A Vault Password Verification Request: JSON request**


.. code::

    204 (No Content)

