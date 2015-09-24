
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-perform-health-check-v2-project-id-health:

Perform health check
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/health

Performs a health check for all dependent systems.

This operation performs a health check for all dependent systems. 



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|200                       |OK                       |The request succeeded.   |
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





This operation does not accept a request body.




**Example Perform health check: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/health HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept:application/json
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

+---------------------------+-------------------------+------------------------+
|Name                       |Type                     |Description             |
+===========================+=========================+========================+
|\ **storage**              |String                   |Information about       |
|                           |                         |storage.                |
+---------------------------+-------------------------+------------------------+
|storage.\ **cassandra**    |String                   |Information about the   |
|                           |                         |Cassandra database.     |
+---------------------------+-------------------------+------------------------+
|storage.cassandra.\        |String                   |Indicates if the        |
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
|transport.pecan.\          |String                   |Indicates if the Pecan  |
|**online**                 |                         |transport driver is     |
|                           |                         |online.                 |
+---------------------------+-------------------------+------------------------+
|transport.pecan.\ **node** |String                   |The node for the Pecan  |
|                           |                         |transport driver.       |
+---------------------------+-------------------------+------------------------+
|transport.pecan.link       |String                   |Links for the Pecan     |
|                           |                         |transport driver.       |
+---------------------------+-------------------------+------------------------+
|transport.pecan.link.\     |String                   |Location (URI).         |
|**href**                   |                         |                        |
+---------------------------+-------------------------+------------------------+
|transport.pecan.link.\     |String                   |How the href link       |
|**rel**                    |                         |provided is related to  |
|                           |                         |this resource URI.      |
+---------------------------+-------------------------+------------------------+







**Example Perform health check with response code 200: JSON response**


.. code::

   200 (OK)
   Content-Type: application/json


.. code::

   {
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





**Example Perform health check with response code 503: JSON response**


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




