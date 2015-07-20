
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

=============================================================================
Request To Verify The Password For An Agent'S Vault -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

Request To Verify The Password For An Agent'S Vault
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <post-request-to-verify-the-password-for-an-agent's-vault-v2-project-id-agents-agent-id-vault-password-verification-requests.html#request>`__
`Response <post-request-to-verify-the-password-for-an-agent's-vault-v2-project-id-agents-agent-id-vault-password-verification-requests.html#response>`__

.. code::

    POST /v2/{project_id}/agents/{agent_id}/vault-password-verification-requests

Requests verification of the password for the specified agent's vault.

This operation requests verification of the password for the specified agent's vault.

To verify the current agent's vault, specify ``null`` for the ``agent_id`` parameter in the request body. To use the current agent to verify another agent's vault password, provide the target agent's ID for ``agent_id``. If encryption is not enabled for the agent's vault, a 403 response code is returned with a message in the response body.



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
|encrypted_password_hex    |*(Required)*             |Encrypted password for   |
|                          |                         |the vault.               |
+--------------------------+-------------------------+-------------------------+
|agent_id                  |*(Required)*             |ID of the agent for      |
|                          |                         |current agent or target  |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+





**Example Request To Verify The Password For An Agent'S Vault: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-password-verification-requests HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^





**Example Request To Verify The Password For An Agent'S Vault: JSON response**


.. code::

    202 (Accepted)
    Location: https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-password-verification-request/f353f472-4931-463a-9920-1dcad25f88e7
    
    
    or
    
    
    403 (Forbidden)
    Content-Type: application/json
    
    {
        "message": "Encryption is not enabled for this agent's vault."
    }

