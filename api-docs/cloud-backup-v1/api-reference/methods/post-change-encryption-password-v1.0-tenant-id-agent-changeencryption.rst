.. _change-encryption-password:

Change the encryption password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    POST /v1.0/{tenant_id}/agent/changeencryption

This operation changes the encryption password.

This operation changes the encryption password. If you need assistance
generating your encrypted key, see
:how-to:`Generate your encrypted key in Cloud Backup<generate-your-encrypted-key-in-cloud-backup>`.

.. note::
   After you turn on encryption, you cannot turn it off. This is a security
   measure. If anyone ever gained access to your account, they would not be
   able to access your backups without your passphrase.


If you lose or forget your passphrase, you will not be able to recover your
encrypted backups.

This table shows the possible response codes for this operation:


+--------------------------+-------------------------+------------------------+
|Response Code             |Name                     |Description             |
+==========================+=========================+========================+
|200                       |OK                       |The request succeeded.  |
+--------------------------+-------------------------+------------------------+
|400                       |Bad request              |There were one or more  |
|                          |                         |errors in the request.  |
+--------------------------+-------------------------+------------------------+
|401                       |Unauthorized             |The supplied token was  |
|                          |                         |not authorized to access|
|                          |                         |the resources. Either it|
|                          |                         |is expired or invalid.  |
+--------------------------+-------------------------+------------------------+
|403                       |Forbidden                |Access to the requested |
|                          |                         |resource was denied.    |
+--------------------------+-------------------------+------------------------+
|500                       |Instance Fault           |This is a generic server|
|                          |                         |error. The message      |
|                          |                         |contains the reason for |
|                          |                         |the error. This error   |
|                          |                         |could wrap several error|
|                          |                         |messages.               |
+--------------------------+-------------------------+------------------------+
|503                       |Service Unavailable      |This is a generic server|
|                          |                         |error. The message      |
|                          |                         |contains the reason for |
|                          |                         |the error. This error   |
|                          |                         |could wrap several error|
|                          |                         |messages.               |
+--------------------------+-------------------------+------------------------+

Request
-------

This table shows the URI parameters for the request:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|{tenant_id}               |String                   |The unique identifier of|
|                          |                         |the tenant or account.  |
+--------------------------+-------------------------+------------------------+

This table shows the body parameters for the request:

+----------------------------+------------------------+-----------------------+
|Name                        |Type                    |Description            |
+============================+========================+=======================+
|**MachineAgentId**          |String *(Required)*     |ID that uniquely       |
|                            |                        |identifies a Cloud     |
|                            |                        |Backup agent.          |
+----------------------------+------------------------+-----------------------+
|**OldEncryptedPasswordHex** |String *(Required)*     |Your old encrypted     |
|                            |                        |password.              |
+----------------------------+------------------------+-----------------------+
|**NewEncryptedPasswordHex** |String *(Required)*     |Your new encrypted     |
|                            |                        |password.              |
+----------------------------+------------------------+-----------------------+

**Example: Change encryption password JSON request**

.. code::

   {
       "MachineAgentId" : 869,
       "OldEncryptedPasswordHex" : "0bff42a526c78076a3d986fa75eecd 83211f166fd7692797cdde2317faee544e3300614fd54b8c0d81f975 3e58cb1ffbd62d3faf0d2bf52e79ce5cd9c6d84b5295e3dea629e71b 0a5e26efda50ff8e05a5475bb7cbd553d238c05655f56ece2df070ce 374ff1e0724827c2300e373241e94c4bc13441561604e3e70b5034eb 58d717864f304c9c73b6d1d46c4276d7ec2f0e2bd9a42a8ab0ba99eb adda84f4cbb5b3611bd319627436246912139c2dde62bd00528b1464 20dceae949d1926ae05fc7df9b474e1ee176f89069fb424b12f8f357 e6e2909ba05152e9f72a68de0046b3e1520838ff5e723af02a96f51a c1e6ef4254226249b872676af76a319cbe",
       "NewEncryptedPasswordHex" : "0bff42a526c78076a3d986fa75eecd 83211f166fd7692797cdde2317faee544e3300614fd54b8c0d81f975 3e58cb1ffbd62d3faf0d2bf52e79ce5cd9c6d84b5295e3dea629e71b 0a5e26efda50ff8e05a5475bb7cbd553d238c05655f56ece2df070ce 374ff1e0724827c2300e373241e94c4bc13441561604e3e70b5034eb 58d717864f304c9c73b6d1d46c4276d7ec2f0e2bd9a42a8ab0ba99eb adda84f4cbb5b3611bd319627436246912139c2dde62bd00528b1464 20dceae949d1926ae05fc7df9b474e1ee176f89069fb424b12f8f357 e6e2909ba05152e9f72a68de0046b3e1520838ff5e723af02a96f51a c1e6ef4254226249b872676af76a319fgh"
   }

Response
--------

**Example: Change encryption password response**


.. code::

         0cee72c7-015c-493b-b5fe-a896ae444c34
