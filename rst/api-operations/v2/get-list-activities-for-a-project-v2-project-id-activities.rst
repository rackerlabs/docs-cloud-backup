
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List Activities For A Project
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/activities

Lists the activities for the project. 

This operation lists the activities for the project. If no activities are available, the ``activities`` parameter in the response is an empty array.



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



This table shows the query parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |xsd:string *(Optional)*  |The ``id`` of the last   |
|                          |                         |known activity. For      |
|                          |                         |example, ``0d95d699-d16b-|
|                          |                         |11e4-93bd-c8e0eb190e3d``.|
+--------------------------+-------------------------+-------------------------+
|limit                     |xsd:integer *(Optional)* |Number of activities to  |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |xsd:string *(Optional)*  |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are ``asc`` and          |
|                          |                         |``desc``. The default    |
|                          |                         |value is ``desc``.       |
+--------------------------+-------------------------+-------------------------+




This operation does not accept a request body.




**Example List Activities For A Project: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/activities?marker=0d95d699-d16b-11e4-93bd-c8e0eb190e3d&limit=100&sort_dir=asc HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Accept:application/json
    Content-type: application/json


Response
""""""""""""""""


This table shows the body parameters for the response:

+-------------------------+------------------------+---------------------------+
|Name                     |Type                    |Description                |
+=========================+========================+===========================+
|activities               |                        |Information about the      |
|                         |                        |activities for the agent.  |
+-------------------------+------------------------+---------------------------+
|id                       |                        |ID of the last known       |
|                         |                        |activity.                  |
+-------------------------+------------------------+---------------------------+
|type                     |                        |Type of the activity.      |
+-------------------------+------------------------+---------------------------+
|last_updated_time        |                        |Time of the last update    |
|                         |                        |for the activity.          |
+-------------------------+------------------------+---------------------------+
|state                    |*(Optional)*            |State of the activities.   |
|                         |                        |Valid values are any state |
|                         |                        |defined by a backup, a     |
|                         |                        |cleanup, or a restore,     |
|                         |                        |such as                    |
|                         |                        |``completed_with_errors``. |
+-------------------------+------------------------+---------------------------+
|agent                    |                        |Information about the      |
|                         |                        |agent associated with the  |
|                         |                        |activity.                  |
+-------------------------+------------------------+---------------------------+
|id                       |                        |ID of the agent associated |
|                         |                        |with the activity.         |
+-------------------------+------------------------+---------------------------+
|links                    |                        |Links for the agent        |
|                         |                        |associated with the        |
|                         |                        |activity.                  |
+-------------------------+------------------------+---------------------------+
|href                     |                        |Location (URI) of the      |
|                         |                        |agent.                     |
+-------------------------+------------------------+---------------------------+
|rel                      |                        |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+
|configuration            |                        |Information about the      |
|                         |                        |configuration associated   |
|                         |                        |with the activity.         |
+-------------------------+------------------------+---------------------------+
|id                       |                        |ID of the configuration    |
|                         |                        |associated with the        |
|                         |                        |activity.                  |
+-------------------------+------------------------+---------------------------+
|links                    |                        |Links for the              |
|                         |                        |configuration associated   |
|                         |                        |with the activity.         |
+-------------------------+------------------------+---------------------------+
|href                     |                        |Location (URI) of the      |
|                         |                        |configuration.             |
+-------------------------+------------------------+---------------------------+
|rel                      |                        |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+
|links                    |                        |Links with information     |
|                         |                        |about the activity.        |
+-------------------------+------------------------+---------------------------+
|href                     |                        |Location (URI) of the      |
|                         |                        |activity.                  |
+-------------------------+------------------------+---------------------------+
|rel                      |                        |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+
|links                    |                        |Links with information     |
|                         |                        |about the ``marker`` of    |
|                         |                        |the activity.              |
+-------------------------+------------------------+---------------------------+
|href                     |                        |Location (URI) of the      |
|                         |                        |marker.                    |
+-------------------------+------------------------+---------------------------+
|rel                      |                        |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+





**Example List Activities For A Project: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

