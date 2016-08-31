.. _get-health-check:

Perform a health check
~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/health

This operation performs a health check for all dependent systems.

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

This operation does not accept a request body.

**Example: Perform a health check, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/health HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept:application/json
   Content-type: application/json

Response
--------

A successful response is returned with a 200 response code. If *any* dependent
system is experiencing an issue, a 503 response code is returned.

The following table shows the body parameters for the response.

+---------------------------+-------------------------+------------------------+
|Name                       |Type                     |Description             |
+===========================+=========================+========================+
|\ **storage**              |String                   |Information about       |
|                           |                         |storage.                |
+---------------------------+-------------------------+------------------------+
|storage.\ **cassandra**    |String                   |Information about the   |
|                           |                         |Cassandra database.     |
+---------------------------+-------------------------+------------------------+
|storage.cassandra.\        |Boolean                  |Indicates whether the   |
|**online**                 |                         |Cassandra database is   |
|                           |                         |online.                 |
+---------------------------+-------------------------+------------------------+
|storage.cassandra.\        |String                   |Links with information  |
|**links**                  |                         |about the Cassandra     |
|                           |                         |database.               |
+---------------------------+-------------------------+------------------------+
|storage.cassandra.links.\  |String                   |Location (URI).         |
|**href**                   |                         |                        |
+---------------------------+-------------------------+------------------------+
|storage.cassandra.links.\  |String                   |How the href link       |
|**rel**                    |                         |provided is related to  |
|                           |                         |this resource URI.      |
+---------------------------+-------------------------+------------------------+
|\ **transport**            |String                   |Information about the   |
|                           |                         |transport driver.       |
+---------------------------+-------------------------+------------------------+
|transport.\ **pecan**      |String                   |Information about the   |
|                           |                         |Pecan transport driver. |
+---------------------------+-------------------------+------------------------+
|transport.pecan.\          |Boolean                  |Indicates whether the   |
|**online**                 |                         |Pecan transport driver  |
|                           |                         |is online.              |
+---------------------------+-------------------------+------------------------+
|transport.pecan.\ **node** |String                   |The node for the Pecan  |
|                           |                         |transport driver.       |
+---------------------------+-------------------------+------------------------+
|transport.pecan.\ **link** |String                   |Links for the Pecan     |
|                           |                         |transport driver.       |
+---------------------------+-------------------------+------------------------+
|transport.pecan.link.\     |String                   |Location (URI).         |
|**href**                   |                         |                        |
+---------------------------+-------------------------+------------------------+
|transport.pecan.link.\     |String                   |How the href link       |
|**rel**                    |                         |provided is related to  |
|                           |                         |this resource URI.      |
+---------------------------+-------------------------+------------------------+

**Example: Perform a health check, 200 JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {   "event": {
    "rse": {
      "online": true,
      "regions": {
        "dfw": {
          "online": true
        },
        "iad": {
          "online": true
        }
      },
      "links": [
        {
          "href": "https://cloudbackupapi.apiary-mock.com/health/event/rse",
          "rel": "self"
        },
        {
          "href": "https://dfw.rse.apiary-mock.com",
          "rel": "dfw"
        },
        {
          "href": "https://iad.rse.apiary-mock.com",
          "rel": "iad"
        }
      ]
    }
  },
     "storage": {
       "cassandra": {
         "online": true,
         "links": [
           {
             "href": "https://cloudbackupapi.apiary-mock.com/health/storage/cassandra",
             "rel": "self"
           }
         ]
       }
     },
     "transport": {
       "pecan": {
         "online": true,
         "node": "phx-web-01",
         "links": [
           {
             "href": "https://cloudbackupapi.apiary-mock.com/health/transport/pecan",
             "rel": "self"
           }
         ]
       }
     }
   }

**Example: Perform a health check, 503 JSON response**

.. code::

   503 (Service Unavailable)
   Content-Type: application/json

.. code::

   {
     "storage": {
       "cassandra": {
         "online": false,
         "links": [
           {
             "href": "https://cloudbackupapi.apiary-mock.com/health/storage/cassandra",
             "rel": "self"
           }
         ]
       }
     },
     "transport": {
       "pecan": {
         "online": true,
         "node": "phx-web-01",
         "links": [
           {
             "href": "https://cloudbackupapi.apiary-mock.com/health/transport/pecan",
             "rel": "self"
           }
         ]
       }
     }
   }
