
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _post-authenticate-an-agent-v2-project-id-agents-tokens:

Authenticate an agent
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
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **project_id**          |String                   |ID of the project        |
|                          |                         |associated with the      |
|                          |                         |token.                   |
+--------------------------+-------------------------+-------------------------+
|\ **id**                  |String                   |ID of the agent          |
|                          |                         |associated with the      |
|                          |                         |token.                   |
+--------------------------+-------------------------+-------------------------+
|\ **password**            |String                   |Password associated with |
|                          |                         |the token.               |
+--------------------------+-------------------------+-------------------------+
|\ **name**                |String                   |Name of the server.      |
+--------------------------+-------------------------+-------------------------+
|\ **version**             |String                   |Version of the server.   |
+--------------------------+-------------------------+-------------------------+
|\ **host**                |String                   |Information about the    |
|                          |                         |host.                    |
+--------------------------+-------------------------+-------------------------+
|h\ **os**t.\ **os**       |String                   |Information about the    |
|                          |                         |operating system.        |
+--------------------------+-------------------------+-------------------------+
|host.os.\ **name**        |String                   |Name of the operating    |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|host.os.\ **version**     |String                   |Version of the operating |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|host.os.\ **architecture**|String                   |Architecture of the      |
|                          |                         |operating system.        |
+--------------------------+-------------------------+-------------------------+
|host.\ **fingerprint**    |String                   |Fingerprint for the      |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|host.\ **addresses**      |String                   |Information about the IP |
|                          |                         |addresses for the agent. |
+--------------------------+-------------------------+-------------------------+
|host.addresses.\          |String                   |Version for the address  |
|**version**               |                         |(4 for IPv4 or 6 for     |
|                          |                         |IPv6).                   |
+--------------------------+-------------------------+-------------------------+
|host.\ **addr**esses.\    |String                   |IP address.              |
|**addr**                  |                         |                         |
+--------------------------+-------------------------+-------------------------+





**Example Authenticate an agent: JSON request**


.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/tokens HTTP/1.1
   Content-type: application/json


.. code::

   {
       "project_id": "123456",
       "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
       "password": "2d0080f9-3a6a-4ef1-b7ea-4c67c5e92796",
       "name": "Web Server",
       "version": "1.23.008344",
       "host": {
           "os": {
               "name": "Ubuntu",
               "version": "14.04",
               "architecture": "64-bit"
           },
           "fingerprint": "arbitrary-string-determined-by-agent",
           "addresses": [
               {
                   "version": 4,
                   "addr": "67.23.10.132"
               },
               {
                   "version": 6,
                   "addr": "::babe:4317:0A83"
               }
           ]
       }
   }





Response
""""""""""""""""





This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **token**               |String                   |Information about the    |
|                          |                         |authentication token.    |
+--------------------------+-------------------------+-------------------------+
|token.\ **id**            |String                   |ID of the authentication |
|                          |                         |token.                   |
+--------------------------+-------------------------+-------------------------+
|token.\ **expires**       |String                   |Expiration date and time |
|                          |                         |for the authentication   |
|                          |                         |token.                   |
+--------------------------+-------------------------+-------------------------+







**Example Authenticate an agent: JSON response**


.. code::

   200 (OK)
   Content-Type: application/json


.. code::

   {
       "token": {
           "id": "07ca94b0-df24-436e-b709-71b0f0c0ffdf",
           "expires": "2014-10-07T02:52:57.416Z"
       }
   }




