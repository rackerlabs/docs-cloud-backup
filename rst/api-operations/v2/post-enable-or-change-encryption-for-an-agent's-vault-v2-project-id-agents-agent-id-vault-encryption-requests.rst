
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Enable Or Change Encryption For An Agent'S Vault
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/agents/{agent_id}/vault-encryption-requests

Enables or changes encryption for the specified agent's vault.

This operation enables or changes encryption for the specified agent's vault.

If encryption is already enabled for the vault, provide a value for the ``old_encrypted_password_hex`` parameter in the request. Otherwise, ``old_encrypted_password_hex`` can be null. 

If either of the following conditions is true, a 403 response code is returned with the message in the response body: 

* The ``old_encrypted_password_hex`` parameter is provided and the agent's vault is not already encrypted.
* The ``old_encrypted_password_hex`` parameter is not provided and the agent's vault is already encrypted.






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





This table shows the body parameters for the request:

+---------------------------+-------------------------+------------------------+
|Name                       |Type                     |Description             |
+===========================+=========================+========================+
|old_encrypted_password_hex |*(Required)*             |Old encrypted password  |
|                           |                         |in hexadecimal notation |
|                           |                         |for the vault.          |
+---------------------------+-------------------------+------------------------+
|new_encrypted_password_hex |*(Required)*             |New encrypted password  |
|                           |                         |in hexadecimal notation |
|                           |                         |for the vault.          |
+---------------------------+-------------------------+------------------------+





**Example Enable Or Change Encryption For An Agent'S Vault: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-encryption-requests HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
""""""""""""""""


This operation does not accept a response body.




**Example Enable Or Change Encryption For An Agent'S Vault: JSON response**


.. code::

    202 (Accepted)
    Location: https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-encryption-request/9072bb51-d5fd-4fc5-ad80-d62e573236b6
    
    
    
    
    403 (Forbidden)
    Content-Type: application/json
    
    {
        "message": "An old password was supplied, but the vault is unencrypted."
    }

