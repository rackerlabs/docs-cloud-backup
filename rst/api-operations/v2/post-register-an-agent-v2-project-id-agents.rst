
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Register An Agent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/agents

Registers an agent. 

This operation registers an agent for the specified project.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|201                       |Created                  |                         |
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





This table shows the body parameters for the request:

+-----------------------+-----------------------+------------------------------+
|Name                   |Type                   |Description                   |
+=======================+=======================+==============================+
|name                   |*(Required)*           |Name of the agent.            |
+-----------------------+-----------------------+------------------------------+
|version                |*(Required)*           |Version of the agent.         |
+-----------------------+-----------------------+------------------------------+
|host                   |*(Required)*           |Information about the host.   |
+-----------------------+-----------------------+------------------------------+
|flavor                 |*(Required)*           |Flavor for the agent. The     |
|                       |                       |available flavors are         |
|                       |                       |``nova``,                     |
|                       |                       |``rackspace_dedicated``, and  |
|                       |                       |``rackspace_private_cloud``.  |
|                       |                       |Depending on the flavor       |
|                       |                       |specified, the following      |
|                       |                       |notes apply: * ``nova`` *     |
|                       |                       |Specification of              |
|                       |                       |``host/region`` is preferred, |
|                       |                       |but it can be ``null``. *     |
|                       |                       |Specification of the          |
|                       |                       |``vault/use_internal`` is     |
|                       |                       |optional. The default value   |
|                       |                       |is ``true``. *                |
|                       |                       |``rackspace_dedicated`` *     |
|                       |                       |Specification of              |
|                       |                       |``host/region`` is required.  |
|                       |                       |* Specification of the        |
|                       |                       |``vault/use_internal`` is     |
|                       |                       |optional. The default value   |
|                       |                       |is ``false``. *               |
|                       |                       |``rackspace_private_cloud`` * |
|                       |                       |Specification of              |
|                       |                       |``host/region`` is required.  |
|                       |                       |* Specification of the        |
|                       |                       |``vault/use_internal`` is     |
|                       |                       |optional. The default value   |
|                       |                       |is ``true``.                  |
+-----------------------+-----------------------+------------------------------+
|region                 |*(Required)*           |Region for the agent.         |
+-----------------------+-----------------------+------------------------------+
|machine                |*(Required)*           |Information about the machine.|
+-----------------------+-----------------------+------------------------------+
|id                     |*(Required)*           |Machine ID.                   |
+-----------------------+-----------------------+------------------------------+
|os                     |*(Required)*           |Information about the         |
|                       |                       |operating system.             |
+-----------------------+-----------------------+------------------------------+
|name                   |*(Required)*           |Name of the operating system. |
+-----------------------+-----------------------+------------------------------+
|version                |*(Required)*           |Version of the operating      |
|                       |                       |system.                       |
+-----------------------+-----------------------+------------------------------+
|architecture           |*(Required)*           |Architecture of the operating |
|                       |                       |system.                       |
+-----------------------+-----------------------+------------------------------+
|fingerprint            |*(Required)*           |String determined by the      |
|                       |                       |agent.                        |
+-----------------------+-----------------------+------------------------------+
|addresses              |*(Required)*           |Information about the IP      |
|                       |                       |addresses for the agent.      |
+-----------------------+-----------------------+------------------------------+
|version                |*(Required)*           |Version of the address (4 for |
|                       |                       |IPv4 or 6 for IPv6).          |
+-----------------------+-----------------------+------------------------------+
|addr                   |*(Required)*           |IP address.                   |
+-----------------------+-----------------------+------------------------------+
|rsa_public_key         |*(Required)*           |Information about the RSA     |
|                       |                       |public key.                   |
+-----------------------+-----------------------+------------------------------+
|modulus                |*(Required)*           |Modulus for the RSA public    |
|                       |                       |key.                          |
+-----------------------+-----------------------+------------------------------+
|exponent               |*(Required)*           |Exponent for the RSA public   |
|                       |                       |key.                          |
+-----------------------+-----------------------+------------------------------+
|vault                  |                       |Information about the vault.  |
+-----------------------+-----------------------+------------------------------+
|use_internal           |                       |Specifies whether the use of  |
|                       |                       |the vault is internal.        |
+-----------------------+-----------------------+------------------------------+





**Example Register An Agent: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
""""""""""""""""


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|project_id                |                         |Project ID.              |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |Agent ID.                |
+--------------------------+-------------------------+-------------------------+
|password                  |                         |Password for the agent.  |
+--------------------------+-------------------------+-------------------------+
|name                      |*(Required)*             |Name of the agent.       |
+--------------------------+-------------------------+-------------------------+
|version                   |*(Required)*             |Version of the agent.    |
+--------------------------+-------------------------+-------------------------+
|host                      |*(Required)*             |Information about the    |
|                          |                         |host.                    |
+--------------------------+-------------------------+-------------------------+
|flavor                    |*(Required)*             |Flavor for the agent.    |
+--------------------------+-------------------------+-------------------------+
|region                    |*(Required)*             |Region for the agent.    |
+--------------------------+-------------------------+-------------------------+
|machine                   |*(Required)*             |Information about the    |
|                          |                         |machine.                 |
+--------------------------+-------------------------+-------------------------+
|id                        |*(Required)*             |Machine ID.              |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Links with information   |
|                          |                         |about the machine.       |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) of the    |
|                          |                         |machine.                 |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|os                        |*(Required)*             |Information about the    |
|                          |                         |operating system.        |
+--------------------------+-------------------------+-------------------------+
|name                      |*(Required)*             |Name of the operating    |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|version                   |*(Required)*             |Version of the operating |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|architecture              |*(Required)*             |Architecture of the      |
|                          |                         |operating system.        |
+--------------------------+-------------------------+-------------------------+
|addresses                 |*(Required)*             |Information about the IP |
|                          |                         |addresses for the agent. |
+--------------------------+-------------------------+-------------------------+
|version                   |*(Required)*             |Version for the address  |
|                          |                         |(4 for IPv4 or 6 for     |
|                          |                         |IPv6) .                  |
+--------------------------+-------------------------+-------------------------+
|addr                      |*(Required)*             |IP address.              |
+--------------------------+-------------------------+-------------------------+
|enabled                   |                         |Specifies whether the    |
|                          |                         |agent is enabled.        |
+--------------------------+-------------------------+-------------------------+
|rsa_public_key            |*(Required)*             |Information about the    |
|                          |                         |RSA public key.          |
+--------------------------+-------------------------+-------------------------+
|modulus                   |*(Required)*             |Modulus for the RSA      |
|                          |                         |public key.              |
+--------------------------+-------------------------+-------------------------+
|exponent                  |*(Required)*             |Exponent for the RSA     |
|                          |                         |public key.              |
+--------------------------+-------------------------+-------------------------+
|vault                     |                         |Information about the    |
|                          |                         |vault.                   |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the vault.         |
+--------------------------+-------------------------+-------------------------+
|name                      |                         |Name of the vault.       |
+--------------------------+-------------------------+-------------------------+
|flavor                    |                         |Flavor of the vault.     |
+--------------------------+-------------------------+-------------------------+
|encrypted                 |                         |Specifies whether the    |
|                          |                         |vault is encrypted.      |
+--------------------------+-------------------------+-------------------------+
|region                    |                         |Region of the vault.     |
+--------------------------+-------------------------+-------------------------+
|use_internal              |                         |Specifies whether the    |
|                          |                         |use of the vault is      |
|                          |                         |internal.                |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Links with information   |
|                          |                         |about the vault.         |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) of the    |
|                          |                         |vault.                   |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|log_level                 |                         |Level for the logs.      |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Links with information   |
|                          |                         |about the agents.        |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example Register An Agent: JSON response**


.. code::

    201 (Created)
    Location: https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd9

