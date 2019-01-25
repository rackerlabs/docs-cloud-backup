.. _post-authenticate-an-agent:

Authenticate an agent
~~~~~~~~~~~~~~~~~~~~~

.. code::

    POST /v2/{project_id}/agents/tokens

This operation authenticates an agent.

Agents authenticate with the API and retrieve an authentication token. The
authentication token returned is the token issued by the Identity service for
the user who originally registered the agent. The token is used for
communicating with the Cloud Backup API and other products associated with the
same Identity server.

The following error conditions are returned if the request is not successful:

* 409 (Conflict) is returned with a message in the response body if the
  provided fingerprint does not match the agent's fingerprint submitted during
  registration. Such a case likely indicates that two agents (likely on
  different hosts) are attempting to authenticate as one.
* 503 (Service Unavailable) is returned with the ``Retry-After`` header if
  communication with any upstream service fails during authentication. Use the
  ``Retry-After`` header to determine when to retry authentication.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|200            | OK              | The request succeeded.                                    |
+---------------+-----------------+-----------------------------------------------------------+
|400            | Bad Request     | The server cannot process the request because of a client |
|               |                 | error (for example, malformed syntax, invalid request     |
|               |                 | framing, or deceptive request routing).                   |
+---------------+-----------------+-----------------------------------------------------------+
|401            | Unauthorized    | The request was not applied because it lacks valid        |
|               |                 | authentication credentials for the target resource.       |
|               |                 | The credentials are either expired or invalid.            |
+---------------+-----------------+-----------------------------------------------------------+
|403            | Forbidden       | The server understood the request but did not authorize   |
|               |                 | it.                                                       |
+---------------+-----------------+-----------------------------------------------------------+
|404            | Not Found       | The server did not find a current representation for the  |
|               |                 | target resource or cannot disclose that one exists.       |
+---------------+-----------------+-----------------------------------------------------------+
|405            | Method Not      | The method received in the request line is                |
|               | Allowed         | known by the origin server but is not supported by        |
|               |                 | the target resource.                                      |
+---------------+-----------------+-----------------------------------------------------------+
|409            | Conflict        | The request was not completed because of a conflict with  |
|               |                 | the current state of the resource.                        |
+---------------+-----------------+-----------------------------------------------------------+
|500            | Internal Server | The server encountered an unexpected condition            |
|               | Error           | that prevented it from fulfilling the request.            |
+---------------+-----------------+-----------------------------------------------------------+
|501            | Not Implemented | The requested method or resource is not implemented.      |
+---------------+-----------------+-----------------------------------------------------------+
|503            | Service         | The server is currently unable to handle the request      |
|               | Unavailable     | because of a temporary overload or scheduled maintenance, |
|               |                 | which will likely be alleviated after some delay.         |
+---------------+-----------------+-----------------------------------------------------------+

Request
-------

The following table shows the URI parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+

The following table shows the body parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **project_id**          |String                   |*(Required)*             |
|                          |                         |ID of the project        |
|                          |                         |associated with the      |
|                          |                         |token.                   |
+--------------------------+-------------------------+-------------------------+
|\ **id**                  |String                   |*(Required)*             |
|                          |                         |ID of the agent          |
|                          |                         |associated with the      |
|                          |                         |token.                   |
+--------------------------+-------------------------+-------------------------+
|\ **password**            |String                   |*(Required)*             |
|                          |                         |Password associated with |
|                          |                         |the token.               |
+--------------------------+-------------------------+-------------------------+
|\ **name**                |String                   |*(Required)*             |
|                          |                         |Name of the server.      |
+--------------------------+-------------------------+-------------------------+
|\ **version**             |String                   |*(Required)*             |
|                          |                         |Version of the server.   |
+--------------------------+-------------------------+-------------------------+
|\ **host**                |String                   |*(Required)*             |
|                          |                         |Information about the    |
|                          |                         |host.                    |
+--------------------------+-------------------------+-------------------------+
|host.\ **os**             |String                   |*(Required)*             |
|                          |                         |Information about the    |
|                          |                         |operating system.        |
+--------------------------+-------------------------+-------------------------+
|host.os.\ **name**        |String                   |*(Required)*             |
|                          |                         |Name of the operating    |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|host.os.\ **version**     |String                   |*(Required)*             |
|                          |                         |Version of the operating |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|host.os.\ **architecture**|String                   |*(Required)*             |
|                          |                         |Architecture of the      |
|                          |                         |operating system.        |
+--------------------------+-------------------------+-------------------------+
|host.\ **fingerprint**    |String                   |*(Required)*             |
|                          |                         |Fingerprint for the      |
|                          |                         |host.                    |
+--------------------------+-------------------------+-------------------------+
|host.\ **addresses**      |String                   |*(Required)*             |
|                          |                         |Information about the IP |
|                          |                         |addresses for the host.  |
+--------------------------+-------------------------+-------------------------+
|host.addresses.\          |String                   |*(Required)*             |
|**version**               |                         |Version for the address  |
|                          |                         |(4 for IPv4 or 6 for     |
|                          |                         |IPv6).                   |
+--------------------------+-------------------------+-------------------------+
|host.\ addresses.\        |String                   |*(Required)*             |
|**addr**                  |                         |IP address.              |
+--------------------------+-------------------------+-------------------------+

**Example: Authenticate an agent, JSON request**

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
--------

The following table shows the body parameters for the response.

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

**Example: Authenticate an agent, JSON response**

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
