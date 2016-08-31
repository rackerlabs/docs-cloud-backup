.. _get-list-the-configurations-for-a-project:

Retrieve the configurations for a project
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/configurations

This operation retrieves the configurations for the specified project.

If no configurations have been created for the project, the ``configurations``
parameter in the response is an empty array.

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

The following table shows the query parameter for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|restorable                |Boolean                  |If ``restorable=true``,  |
|                          |                         |return only              |
|                          |                         |configurations with      |
|                          |                         |restorable backups.      |
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve the configurations for a project, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/configurations?restorable=true HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept: application/json
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+-----------------------------------------------+-------------+----------------+
|Name                                           |Type         |Description     |
+===============================================+=============+================+
|\ **configurations**                           |String       |Information     |
|                                               |             |about the       |
|                                               |             |configurations  |
|                                               |             |for the project.|
+-----------------------------------------------+-------------+----------------+
|configurations.\ **project_id**                |String       |ID of the       |
|                                               |             |project.        |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **id**                        |String       |ID of the       |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **agent**                     |String       |Information     |
|                                               |             |about the agent |
|                                               |             |for the         |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.agent.\ **id**                  |String       |ID of the agent.|
+-----------------------------------------------+-------------+----------------+
|configurations.agent.\ **links**               |String       |Link            |
|                                               |             |information     |
|                                               |             |about the agent.|
+-----------------------------------------------+-------------+----------------+
|configurations.agent.links.\ **href**          |String       |Location (URI). |
+-----------------------------------------------+-------------+----------------+
|configurations.agent.links.\ **rel**           |String       |How the href    |
|                                               |             |link provided   |
|                                               |             |is related to   |
|                                               |             |this resource   |
|                                               |             |URI.            |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **name**                      |String       |Name of the     |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **enabled**                   |Boolean      |Specifies       |
|                                               |             |whether the     |
|                                               |             |configuration   |
|                                               |             |is enabled.     |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **schedule**                  |String       |Information     |
|                                               |             |about the       |
|                                               |             |schedule        |
|                                               |             |associated with |
|                                               |             |the             |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.schedule.\ **start**            |String       |Time that the   |
|                                               |             |schedule        |
|                                               |             |started.        |
+-----------------------------------------------+-------------+----------------+
|configurations.schedule.\ **recurrence**       |String       |Any recurrence  |
|                                               |             |in the          |
|                                               |             |configuration's |
|                                               |             |schedule.       |
+-----------------------------------------------+-------------+----------------+
|configurations.schedule.\ **time_zone**        |String       |Time zone for   |
|                                               |             |the             |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **retention**                 |String       |Information     |
|                                               |             |defined for     |
|                                               |             |retention for   |
|                                               |             |the             |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.retention.\ **days**            |Integer      |Number of days  |
|                                               |             |to retain the   |
|                                               |             |backup. When    |
|                                               |             |``days`` is     |
|                                               |             |``0``, backups  |
|                                               |             |are retained    |
|                                               |             |forever.        |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **backups**                   |String       |Information     |
|                                               |             |about backups   |
|                                               |             |specified in    |
|                                               |             |the             |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.backups.\ **last_completed**    |String       |Information     |
|                                               |             |about the last  |
|                                               |             |completed       |
|                                               |             |backup.         |
+-----------------------------------------------+-------------+----------------+
|configurations.backups.last_completed.\ **id** |String       |ID of the last  |
|                                               |             |completed       |
|                                               |             |backup.         |
+-----------------------------------------------+-------------+----------------+
|configurations.backups.last_completed.\        |String       |Link            |
|**links**                                      |             |information     |
|                                               |             |about the       |
|                                               |             |backup.         |
+-----------------------------------------------+-------------+----------------+
|configurations.backups.last_completed.links.\  |String       |Location (URI). |
|**href**                                       |             |                |
+-----------------------------------------------+-------------+----------------+
|configurations.backups.last_completed.links.\  |String       |How the href    |
|**rel**                                        |             |link provided   |
|                                               |             |is related to   |
|                                               |             |this resource   |
|                                               |             |URI.            |
+-----------------------------------------------+-------------+----------------+
|configurations.backups.\ **next**              |String       |Information     |
|                                               |             |about the next  |
|                                               |             |backup.         |
+-----------------------------------------------+-------------+----------------+
|configurations.backups.next.\                  |String       |Scheduled time  |
|**scheduled_time**                             |             |for the next    |
|                                               |             |backup.         |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **links**                     |String       |Link            |
|                                               |             |information     |
|                                               |             |about the       |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.links.\ **href**                |String       |Location (URI). |
+-----------------------------------------------+-------------+----------------+
|configurations.links.\ **rel**                 |String       |How the href    |
|                                               |             |link provided   |
|                                               |             |is related to   |
|                                               |             |this resource   |
|                                               |             |URI.            |
+-----------------------------------------------+-------------+----------------+

**Example: Retrieve the configurations for a project, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
           "configurations": [
               {
                   "project_id": "123456",
                   "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
                   "agent": {
                       "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                       "links": [
                           {
                               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                               "rel": "full"
                           }
                       ]
                   },
                   "name": "Every Other Hour Configuration",
                   "enabled": true,
                   "schedule": {
                       "start": "2014-08-05T18:22:21Z",
                       "recurrence": [
                           "RRULE:FREQ=HOURLY;INTERVAL=2"
                       ],
                       "time_zone": "US/Central"
                   },
                   "retention": {
                       "days": 30
                   },
                   "backups": {
                       "last_completed": {
                           "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
                           "links": [
                               {
                                   "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
                                   "rel": "full"
                               }
                           ]
                       },
                       "next": {
                           "scheduled_time": "2014-08-05T20:22:21Z"
                       }
                   },
                   "links": [
                       {
                           "href": "https://cloudbackupapi.apiary-mock.com/v2/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
                           "rel": "full"
                       },
                       {
                           "href": "https://cloudbackupapi.apiary-mock.com/v2/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5/activities",
                           "rel": "activities"
                       },
                       {
                           "href": "https://cloudbackupapi.apiary-mock.com/v2/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5/events",
                           "rel": "events"
                       }
                   ]
               }
           ]
       }
