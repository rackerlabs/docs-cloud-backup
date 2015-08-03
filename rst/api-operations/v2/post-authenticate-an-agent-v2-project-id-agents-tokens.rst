
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Authenticate An Agent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/agents/tokens

Authenticates an agent.

This operation authenticates an agent.

Agents authenticate with the API and retrieve an authentication token. The authentication token returned is the token issued by Cloud Identity for the user who originally registered the agent. The token is used for communicating with the Cloud Backup API and other products associated with the same Cloud Identity server.

The following error conditions are returned if the request is not successful: 

* 401 (Unauthorized) is returned if the provided credentials are rejected.
* 409 (Conflict) is returned with a message in the response body if the provided fingerprint does not match the agent's fingerprint submitted during registration. Such a case likely indicates two agents (likely on different hosts) are attempting to authenticate as one.
* 503 (Service Unavailable) is returned with the ``Retry-After`` header if communication with any upstream service fails during authentication. Use the ``Retry-After`` header to determine when to retry authentication.






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

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|project_id                |                         |ID of the project        |
|                          |                         |associated with the      |
|                          |                         |token.                   |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the agent          |
|                          |                         |associated with the      |
|                          |                         |token.                   |
+--------------------------+-------------------------+-------------------------+
|password                  |                         |Password associated with |
|                          |                         |the token.               |
+--------------------------+-------------------------+-------------------------+
|name                      |                         |Name of the server.      |
+--------------------------+-------------------------+-------------------------+
|version                   |                         |Version of the server.   |
+--------------------------+-------------------------+-------------------------+
|host                      |                         |Information about the    |
|                          |                         |host.                    |
+--------------------------+-------------------------+-------------------------+
|os                        |                         |Information about the    |
|                          |                         |operating system.        |
+--------------------------+-------------------------+-------------------------+
|name                      |                         |Name of the operating    |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|version                   |                         |Version of the operating |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|architecture              |                         |Architecture of the      |
|                          |                         |operating system.        |
+--------------------------+-------------------------+-------------------------+
|fingerprint               |                         |Fingerprint for the      |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|addresses                 |                         |Information about the IP |
|                          |                         |addresses for the agent. |
+--------------------------+-------------------------+-------------------------+
|version                   |                         |Version for the address  |
|                          |                         |(4 for IPv4 or 6 for     |
|                          |                         |IPv6).                   |
+--------------------------+-------------------------+-------------------------+
|addr                      |                         |IP address.              |
+--------------------------+-------------------------+-------------------------+





**Example Authenticate An Agent: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/tokens HTTP/1.1
    Content-type: application/json


Response
""""""""""""""""


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|token                     |                         |Information about the    |
|                          |                         |authentication token.    |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the authentication |
|                          |                         |token.                   |
+--------------------------+-------------------------+-------------------------+
|expires                   |                         |Expiration date and time |
|                          |                         |for the authentication   |
|                          |                         |token.                   |
+--------------------------+-------------------------+-------------------------+





**Example Authenticate An Agent: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

