.. _get-list-activities-for-a-configuration:

Retrieve the activities for a configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/configurations/{configuration_id}/activities

This operation retrieves the activities for the specified configuration. The
activities include backups performed with this configuration.

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
|{configuration_id}        |String                   |Configuration ID. For    |
|                          |                         |example, ``7c8ee069-568f-|
|                          |                         |4d5a-932f-fb2af86b5fd5``.|
+--------------------------+-------------------------+-------------------------+

The following table shows the query parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |String                   |The ID of the last       |
|                          |                         |known activity. For      |
|                          |                         |example: ``0d95d699-d16b-|
|                          |                         |11e4-93bd-c8e0eb190e3d``.|
+--------------------------+-------------------------+-------------------------+
|limit                     |Integer                  |Number of activities to  |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |String                   |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are ``asc`` and          |
|                          |                         |``desc``. The default    |
|                          |                         |value is ``desc``.       |
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve the activities for a configuration, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5/activities?marker=0d95d699-d16b-11e4-93bd-c8e0eb190e3d&limit=100&sort_dir=asc HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+----------------------------------+---------------------+---------------------+
|Name                              |Type                 |Description          |
+==================================+=====================+=====================+
|\ **activities**                  |String               |Information about    |
|                                  |                     |the activities for   |
|                                  |                     |the configuration.   |
+----------------------------------+---------------------+---------------------+
|activities.\ **id**               |String               |ID of the last known |
|                                  |                     |activity.            |
+----------------------------------+---------------------+---------------------+
|activities.\ **type**             |String               |Type of the activity.|
+----------------------------------+---------------------+---------------------+
|activities.\ **last_updated_time**|String               |Time of the last     |
|                                  |                     |update for the       |
|                                  |                     |activity.            |
+----------------------------------+---------------------+---------------------+
|activities.\ **agent**            |String               |Information about    |
|                                  |                     |the agent associated |
|                                  |                     |with the activity.   |
+----------------------------------+---------------------+---------------------+
|activities.agent.\ **id**         |String               |ID of the agent      |
|                                  |                     |associated with the  |
|                                  |                     |activity.            |
+----------------------------------+---------------------+---------------------+
|activities.agent.\ **links**      |String               |Information about    |
|                                  |                     |the links for the    |
|                                  |                     |agent associated     |
|                                  |                     |with the activity.   |
+----------------------------------+---------------------+---------------------+
|activities.agent.links.\ **href** |String               |Location (URI).      |
+----------------------------------+---------------------+---------------------+
|activities.agent.links.\ **rel**  |String               |How the href link    |
|                                  |                     |provided is related  |
|                                  |                     |to this resource URI.|
+----------------------------------+---------------------+---------------------+
|activities.\ **configuration**    |String               |Information about    |
|                                  |                     |the configuration    |
|                                  |                     |associated with the  |
|                                  |                     |activity.            |
+----------------------------------+---------------------+---------------------+
|activities.configuration.\ **id** |String               |ID of the            |
|                                  |                     |configuration        |
|                                  |                     |associated with the  |
|                                  |                     |activity.            |
+----------------------------------+---------------------+---------------------+
|activities.configuration.\        |String               |Information about    |
|**links**                         |                     |the links for the    |
|                                  |                     |configuration        |
|                                  |                     |associated with the  |
|                                  |                     |activity.            |
+----------------------------------+---------------------+---------------------+
|activities.configuration.links.\  |String               |Location (URI).      |
|**href**                          |                     |                     |
+----------------------------------+---------------------+---------------------+
|activities.configuration.links.\  |String               |How the href link    |
|**rel**                           |                     |provided is related  |
|                                  |                     |to this resource URI.|
+----------------------------------+---------------------+---------------------+
|activities.\ **links**            |String               |Information about    |
|                                  |                     |the links associated |
|                                  |                     |with the activity.   |
+----------------------------------+---------------------+---------------------+
|activities.links.\ **href**       |String               |Location (URI).      |
+----------------------------------+---------------------+---------------------+
|activities.links.\ **rel**        |String               |How the href link    |
|                                  |                     |provided is related  |
|                                  |                     |to this resource URI.|
+----------------------------------+---------------------+---------------------+
|\ **links**                       |String               |Information about    |
|                                  |                     |the links for the    |
|                                  |                     |``marker`` of the    |
|                                  |                     |activity.            |
+----------------------------------+---------------------+---------------------+
|links.\ **href**                  |String               |Location (URI).      |
+----------------------------------+---------------------+---------------------+
|links.\ **rel**                   |String               |How the href link    |
|                                  |                     |provided is related  |
|                                  |                     |to this resource URI.|
+----------------------------------+---------------------+---------------------+

**Example: Retrieve the activities for a configuration, JSON response**

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
