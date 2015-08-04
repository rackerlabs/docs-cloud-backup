
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Perform Health Check
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
|{project_id}              |xsd:string               |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example Perform Health Check: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/health HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Accept:application/json
    Content-type: application/json


Response
""""""""""""""""


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|storage                   |                         |Information about        |
|                          |                         |storage.                 |
+--------------------------+-------------------------+-------------------------+
|cassandra                 |                         |Information about the    |
|                          |                         |Cassandra database.      |
+--------------------------+-------------------------+-------------------------+
|online                    |                         |Indicates if the         |
|                          |                         |Cassandra database is    |
|                          |                         |online.                  |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Links with information   |
|                          |                         |about the Cassandra      |
|                          |                         |database.                |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|transport                 |                         |Information about the    |
|                          |                         |transport driver.        |
+--------------------------+-------------------------+-------------------------+
|pecan                     |                         |Information about the    |
|                          |                         |Pecan transport driver.  |
+--------------------------+-------------------------+-------------------------+
|online                    |                         |Indicates if the Pecan   |
|                          |                         |transport driver is      |
|                          |                         |online.                  |
+--------------------------+-------------------------+-------------------------+
|node                      |                         |The node for the Pecan   |
|                          |                         |transport driver.        |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Links for the Pecan      |
|                          |                         |transport driver.        |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example Perform health check with response code 200: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json


**Example Perform health check with response code 503: JSON response**


.. code::

    503 (Service Unavailable)
    Content-Type: application/json


