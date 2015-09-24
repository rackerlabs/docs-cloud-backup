
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-list-configurations-for-an-agent-v2-project-id-agents-agent-id-configurations:

List configurations for an agent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/agents/{agent_id}/configurations

Lists the configurations for the specified agent.

This operation lists the configurations for the specified agent. Note that the response is identical to the response for the operation to list the configurations for a project (see List the configurations for a project). 



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|200                       |OK                       |                         |
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
|{agent_id}                |String *(Required)*      |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List configurations for an agent: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/configurations HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json
   





Response
""""""""""""""""





This table shows the body parameters for the response:

+-----------------------------------------------+-------------+----------------+
|Name                                           |Type         |Description     |
+===============================================+=============+================+
|\ **configurations**                           |String       |Information     |
|                                               |             |about           |
|                                               |             |configurations. |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **project_id**                |String       |Project ID of   |
|                                               |             |the             |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **id**                        |String       |ID of the       |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **agent**                     |String       |Information     |
|                                               |             |about the agent.|
+-----------------------------------------------+-------------+----------------+
|configurations.agent.\ **id**                  |String       |ID of the agent.|
+-----------------------------------------------+-------------+----------------+
|configurations.agent.\ **links**               |String       |Link            |
|                                               |             |information     |
|                                               |             |about the agent.|
+-----------------------------------------------+-------------+----------------+
|configurations.agent.links.\ **href**          |String       |Location (URI)  |
|                                               |             |of the agent.   |
+-----------------------------------------------+-------------+----------------+
|configurations.agent.links.\ **rel**           |String       |How the href    |
|                                               |             |link provided   |
|                                               |             |is related to   |
|                                               |             |this resource   |
|                                               |             |URI.            |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **name**                      |String       |Configuration   |
|                                               |             |name.           |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **enabled**                   |String       |Specifies       |
|                                               |             |whether the     |
|                                               |             |configuration   |
|                                               |             |is enabled.     |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **schedule**                  |String       |Information     |
|                                               |             |about backup    |
|                                               |             |schedule        |
|                                               |             |specified in    |
|                                               |             |the             |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.schedule.\ **start**            |String       |Start time for  |
|                                               |             |the backup.     |
+-----------------------------------------------+-------------+----------------+
|configurations.schedule.\ **recurrence**       |String       |How often the   |
|                                               |             |backup occurs.  |
+-----------------------------------------------+-------------+----------------+
|configurations.schedule.\ **time_zone**        |String       |Time zone where |
|                                               |             |the backup      |
|                                               |             |occurs.         |
+-----------------------------------------------+-------------+----------------+
|configurations.\ **retention**                 |String       |Information     |
|                                               |             |about backup    |
|                                               |             |retention       |
|                                               |             |specified in    |
|                                               |             |the             |
|                                               |             |configuration.  |
+-----------------------------------------------+-------------+----------------+
|configurations.retention.\ **days**            |String       |Number of days  |
|                                               |             |to retain the   |
|                                               |             |backup.         |
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
|configurations.backups.last_completed.links.\  |String       |Location (URI)  |
|**href**                                       |             |of the last     |
|                                               |             |completed       |
|                                               |             |backup.         |
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







**Example List configurations for an agent: JSON response**


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




