
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _post-request-to-verify-the-password-for-an-agent's-vault-v2-project-id-agents-agent-id-vault-password-verification-requests:

Request to verify the password for an agent's vault
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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
""""""""""""""""




This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{agent_id}                |String *(Required)*      |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+---------------------------+-------------------------+------------------------+
|Name                       |Type                     |Description             |
+===========================+=========================+========================+
|\                          |String *(Required)*      |Encrypted password for  |
|**encrypted_password_hex** |                         |the vault.              |
+---------------------------+-------------------------+------------------------+
|\ **agent_id**             |String *(Required)*      |ID of the agent for     |
|                           |                         |current agent or target |
|                           |                         |agent.                  |
+---------------------------+-------------------------+------------------------+





**Example Request to verify the password for an agent's vault: JSON request**


.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-password-verification-requests HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json


.. code::

   {
       "encrypted_password_hex": "0bff42a526c78076a3d986fa75eecd 83211f166fd7692797cdde2317faee544e3300614fd54b8c0d81f975 3e58cb1ffbd62d3faf0d2bf52e79ce5cd9c6d84b5295e3dea629e71b 0a5e26efda50ff8e05a5475bb7cbd553d238c05655f56ece2df070ce 374ff1e0724827c2300e373241e94c4bc13441561604e3e70b5034eb 58d717864f304c9c73b6d1d46c4276d7ec2f0e2bd9a42a8ab0ba99eb adda84f4cbb5b3611bd319627436246912139c2dde62bd00528b1464 20dceae949d1926ae05fc7df9b474e1ee176f89069fb424b12f8f357 e6e2909ba05152e9f72a68de0046b3e1520838ff5e723af02a96f51a c1e6ef4254226249b872676af76a319cbe",
       "agent_id": "8e84d320-77a9-4eb4-a39d-25878a3b9f16"
   }





Response
""""""""""""""""










**Example Request to verify the password for an agent's vault: JSON response**


.. code::

   202 (Accepted)
   Location: https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/vault-password-verification-request/f353f472-4931-463a-9920-1dcad25f88e7
   
   
   or
   
   
   403 (Forbidden)
   Content-Type: application/json
   
   {
       "message": "Encryption is not enabled for this agent's vault."
   }




