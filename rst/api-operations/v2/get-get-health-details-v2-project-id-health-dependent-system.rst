
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

=============================================================================
Get Health Details -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

Get Health Details
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <get-get-health-details-v2-project-id-health-dependent-system.html#request>`__
`Response <get-get-health-details-v2-project-id-health-dependent-system.html#response>`__

.. code::

    GET /v2/{project_id}/health/{dependent_system}

Gets the health details for the specified dependent system. 

This operation shows whether the specified dependent system is online or offline. 



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
^^^^^^^^^^^^^^^^^

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |xsd:string               |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{dependent_system}        |xsd:string               |Unique identifier for    |
|                          |                         |the dependent system.    |
+--------------------------+-------------------------+-------------------------+








**Example Get Health Details: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/health/dependentSystemName HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Accept: application/json
    Content-type: application/json
    


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|online                    |                         |Indicates if the         |
|                          |                         |specified dependent      |
|                          |                         |system is online.        |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Links for the specified  |
|                          |                         |dependent system.        |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example Get health details with response code 200: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json


**Example Get health details with response code 503: JSON response**


.. code::

    503 (Service Unavailable)
    Content-Type: application/json

