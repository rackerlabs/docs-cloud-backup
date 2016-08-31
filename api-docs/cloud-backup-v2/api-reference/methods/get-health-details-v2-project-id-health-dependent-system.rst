.. _get-health-details:

Retrieve health details
~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/health/{dependent_system}

This operation shows whether the specified dependent system is online or
offline.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  | Type            | Description                                               |
+===============+=================+===========================================================+
|200            | OK              | The request succeeded. Some successful requests might     |
|               |                 | return more specific 200 class codes.                     |
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
|{dependent_system}        |String                   |Unique identifier for    |
|                          |                         |the dependent system.    |
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve health details, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/health/dependentSystemName HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept: application/json
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **online**              |Boolean                  |Indicates whether the    |
|                          |                         |specified dependent      |
|                          |                         |system is online.        |
+--------------------------+-------------------------+-------------------------+
|\ **links**               |String                   |Links for the specified  |
|                          |                         |dependent system.        |
+--------------------------+-------------------------+-------------------------+
|links.\ **href**          |String                   |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|links.\ **rel**           |String                   |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+

**Example: Retrieve health details, JSON 200 response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "online": true,
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/health/storage/cassandra",
               "rel": "self"
           }
       ]
   }

**Example: Retrieve health details, JSON 503 response**

.. code::

   503 (Service Unavailable)
   Content-Type: application/json

.. code::

   {
       "online": false,
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/health/storage/cassandra",
               "rel": "self"
           }
       ]
   }
