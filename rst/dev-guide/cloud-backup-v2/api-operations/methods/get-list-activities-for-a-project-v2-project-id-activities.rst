
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-list-activities-for-a-project-v2-project-id-activities:

List activities for a project
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
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+



This table shows the query parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |String *(Optional)*      |The ``id`` of the last   |
|                          |                         |known activity. For      |
|                          |                         |example, ``0d95d699-d16b-|
|                          |                         |11e4-93bd-c8e0eb190e3d``.|
+--------------------------+-------------------------+-------------------------+
|limit                     |Integer *(Optional)*     |Number of activities to  |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |String *(Optional)*      |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are ``asc`` and          |
|                          |                         |``desc``. The default    |
|                          |                         |value is ``desc``.       |
+--------------------------+-------------------------+-------------------------+




This operation does not accept a request body.




**Example List activities for a project: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/activities?marker=0d95d699-d16b-11e4-93bd-c8e0eb190e3d&limit=100&sort_dir=asc HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept:application/json
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

+----------------------------------+---------------+---------------------------+
|Name                              |Type           |Description                |
+==================================+===============+===========================+
|\ **activities**                  |String         |Information about the      |
|                                  |               |activities for the agent.  |
+----------------------------------+---------------+---------------------------+
|activities.\ **id**               |String         |ID of the last known       |
|                                  |               |activity.                  |
+----------------------------------+---------------+---------------------------+
|activities.\ **type**             |String         |Type of the activity.      |
+----------------------------------+---------------+---------------------------+
|activities.\ **last_updated_time**|String         |Time of the last update    |
|                                  |               |for the activity.          |
+----------------------------------+---------------+---------------------------+
|activities.\ **state**            |String         |State of the activities.   |
|                                  |*(Optional)*   |Valid values are any state |
|                                  |               |defined by a backup, a     |
|                                  |               |cleanup, or a restore,     |
|                                  |               |such as                    |
|                                  |               |``completed_with_errors``. |
+----------------------------------+---------------+---------------------------+
|activities.\ **agent**            |String         |Information about the      |
|                                  |               |agent associated with the  |
|                                  |               |activity.                  |
+----------------------------------+---------------+---------------------------+
|activities.agent.\ **id**         |String         |ID of the agent associated |
|                                  |               |with the activity.         |
+----------------------------------+---------------+---------------------------+
|activities.agent.\ **links**      |String         |Links for the agent        |
|                                  |               |associated with the        |
|                                  |               |activity.                  |
+----------------------------------+---------------+---------------------------+
|activities.agent.links.\ **href** |String         |Location (URI) of the      |
|                                  |               |agent.                     |
+----------------------------------+---------------+---------------------------+
|activities.agent.links.\ **rel**  |String         |How the href link provided |
|                                  |               |is related to this         |
|                                  |               |resource URI.              |
+----------------------------------+---------------+---------------------------+
|activities.\ **configuration**    |String         |Information about the      |
|                                  |               |configuration associated   |
|                                  |               |with the activity.         |
+----------------------------------+---------------+---------------------------+
|activities.configuration.\ **id** |String         |ID of the configuration    |
|                                  |               |associated with the        |
|                                  |               |activity.                  |
+----------------------------------+---------------+---------------------------+
|activities.configuration.\        |String         |Links for the              |
|**links**                         |               |configuration associated   |
|                                  |               |with the activity.         |
+----------------------------------+---------------+---------------------------+
|activities.configuration.links.\  |String         |Location (URI) of the      |
|**href**                          |               |configuration.             |
+----------------------------------+---------------+---------------------------+
|activities.configuration.links.\  |String         |How the href link provided |
|**rel**                           |               |is related to this         |
|                                  |               |resource URI.              |
+----------------------------------+---------------+---------------------------+
|activities.\ **links**            |String         |Links with information     |
|                                  |               |about the activity.        |
+----------------------------------+---------------+---------------------------+
|activities.links.\ **href**       |String         |Location (URI) of the      |
|                                  |               |activity.                  |
+----------------------------------+---------------+---------------------------+
|activities.links.\ **rel**        |String         |How the href link provided |
|                                  |               |is related to this         |
|                                  |               |resource URI.              |
+----------------------------------+---------------+---------------------------+
|\ **links**                       |String         |Links with information     |
|                                  |               |about the ``marker`` of    |
|                                  |               |the activity.              |
+----------------------------------+---------------+---------------------------+
|links.\ **href**                  |String         |Location (URI) of the      |
|                                  |               |marker.                    |
+----------------------------------+---------------+---------------------------+
|links.\ **rel**                   |String         |How the href link provided |
|                                  |               |is related to this         |
|                                  |               |resource URI.              |
+----------------------------------+---------------+---------------------------+







**Example List activities for a project: JSON response**


.. code::

   200 (OK)
   Content-Type: application/json


.. code::

   {
       "activities": [
           {
               "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
               "type": "backup",
               "last_updated_time": "2014-10-27T18:22:21.238641Z",
               "state": "completed_with_errors",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                   "links": [
                       {
                           "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                           "rel": "full"
                       }
                   ]
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
                   "links": [
                       {
                           "href": "https://cloudbackupapi.apiary-mock.com/v2/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
                           "rel": "full"
                       }
                   ]
               },
               "links": [
                   {
                       "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
                       "rel": "backup"
                   }
               ]
           },
           {
               "id": "2f8708b3-d16b-11e4-bc22-c8e0eb190e3d",
               "type": "cleanup",
               "last_updated_time": "2014-10-27T18:22:20.238641Z",
               "state": "completed_with_errors",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                   "links": [
                       {
                           "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                           "rel": "full"
                       }
                   ]
               },
               "links": [
                   {
                       "href": "https://cloudbackupapi.apiary-mock.com/v2/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d",
                       "rel": "cleanup"
                   }
               ]
           },
           {
               "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d",
               "type": "restore",
               "last_updated_time": "2014-10-27T18:22:19.238641Z",
               "state": "completed_with_errors",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                   "links": [
                       {
                           "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                           "rel": "full"
                       }
                   ]
               },
               "configuration": {
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
                   "links": [
                       {
                           "href": "https://cloudbackupapi.apiary-mock.com/v2/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
                           "rel": "full"
                       }
                   ]
               },
               "links": [
                   {
                       "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d",
                       "rel": "restore"
                   }
               ]
           }
       ],
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/activities?marker=0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
               "rel": "next"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/activities?marker=e87e6f7d-d166-11e4-8689-c8e0eb190e3d&sort_dir=asc",
               "rel": "previous"
           }
       ]
   }




