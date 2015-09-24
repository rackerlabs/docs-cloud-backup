
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _post-create-a-configuration-v2-project-id-configurations:

Create a configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/configurations

Creates a configuration. 

This operation creates a configuration. 

The following restrictions apply to the ``inclusions`` parameter:



*  Multiple entries with the same ``path`` are forbidden.
*  Entries with the same ``path`` as an entry in ``exclusions`` are forbidden.
*  Files or folders cannot be included under existing inclusion rules.
*  Files or folders cannot be included under existing exclusion rules.


The following restrictions apply to the ``exclusions`` parameter:



*  Multiple entries with the same ``path`` are forbidden.
*  Entries with the same ``path`` as an entry in ``inclusions`` are forbidden.
*  Files or folders cannot be excluded under existing exclusion rules.
*  Each exclusion ``path`` must be included under an inclusion path.




This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|201                       |Created                  |                         |
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





This table shows the body parameters for the request:

+-------------------------+------------------------+---------------------------+
|Name                     |Type                    |Description                |
+=========================+========================+===========================+
|\ **agent_id**           |String *(Required)*     |ID of the agent.           |
+-------------------------+------------------------+---------------------------+
|\ **name**               |String *(Required)*     |Name of the configuration. |
+-------------------------+------------------------+---------------------------+
|\ **enabled**            |String *(Required)*     |Specifies whether the      |
|                         |                        |configuration is enabled.  |
+-------------------------+------------------------+---------------------------+
|\ **schedule**           |String *(Required)*     |Information about the      |
|                         |                        |schedule associated with   |
|                         |                        |the configuration. If you  |
|                         |                        |specify ``null`` for       |
|                         |                        |``schedule``, you must     |
|                         |                        |manually start backups for |
|                         |                        |the configuration.         |
+-------------------------+------------------------+---------------------------+
|schedule.\ **recurrence**|String *(Required)*     |Any recurrence in the      |
|                         |                        |configuration's schedule.  |
|                         |                        |Only a single              |
|                         |                        |``recurrence`` value       |
|                         |                        |within ``schedule`` is     |
|                         |                        |currently supported.       |
+-------------------------+------------------------+---------------------------+
|schedule.\ **time_zone** |String *(Required)*     |Time zone for the          |
|                         |                        |configuration. You must    |
|                         |                        |specify ``time_zone``      |
|                         |                        |according to the `IANA     |
|                         |                        |Time Zone Database         |
|                         |                        |<http://www.iana.org/time- |
|                         |                        |zones>`__.                 |
+-------------------------+------------------------+---------------------------+
|\ **retention**          |String *(Required)*     |Information defined for    |
|                         |                        |retention for the          |
|                         |                        |configuration.             |
+-------------------------+------------------------+---------------------------+
|retention.\ **days**     |String *(Required)*     |Number of days to retain   |
|                         |                        |the backup. When you set   |
|                         |                        |``days`` to ``0``, backups |
|                         |                        |are retained forever.      |
+-------------------------+------------------------+---------------------------+
|\ **inclusions**         |String *(Required)*     |Information about what to  |
|                         |                        |include in the backup. See |
|                         |                        |the beginning of this      |
|                         |                        |section for restrictions.  |
+-------------------------+------------------------+---------------------------+
|inclusions.\ **type**    |String *(Required)*     |The type of the object to  |
|                         |                        |include: ``file`` or       |
|                         |                        |``folder``.                |
+-------------------------+------------------------+---------------------------+
|inclusions.\ **path**    |String *(Required)*     |The path to the object to  |
|                         |                        |include.                   |
+-------------------------+------------------------+---------------------------+
|\ **exclusions**         |String *(Required)*     |Information about what to  |
|                         |                        |exclude from the backup.   |
|                         |                        |See the beginning of this  |
|                         |                        |section for restrictions.  |
+-------------------------+------------------------+---------------------------+
|exclusions.\ **type**    |String *(Required)*     |The type of the object to  |
|                         |                        |exclude: ``file`` or       |
|                         |                        |``folder``.                |
+-------------------------+------------------------+---------------------------+
|exclusions.\ **path**    |String *(Required)*     |The path to the object to  |
|                         |                        |exclude.                   |
+-------------------------+------------------------+---------------------------+
|\ **notifications**      |String *(Required)*     |Information about          |
|                         |                        |notifications. Note that   |
|                         |                        |least one notification     |
|                         |                        |must specify               |
|                         |                        |``on_failure`` as ``true``.|
+-------------------------+------------------------+---------------------------+
|notifications.\ **type** |String *(Required)*     |The type of the            |
|                         |                        |notification.              |
+-------------------------+------------------------+---------------------------+
|notifications.\          |String *(Required)*     |Where to send the          |
|**destination**          |                        |notification.              |
+-------------------------+------------------------+---------------------------+
|notifications.\          |String *(Required)*     |Specifies whether to send  |
|**on_success**           |                        |the notification if the    |
|                         |                        |backup is successful.      |
+-------------------------+------------------------+---------------------------+
|notifications.\          |String *(Required)*     |Specifies whether to send  |
|**on_failure**           |                        |the notification if the    |
|                         |                        |backup is not successful.  |
+-------------------------+------------------------+---------------------------+





**Example Create a configuration: JSON request**


.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/configurations HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json


.. code::

   {
       "agent_id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
       "name": "Every Other Hour Configuration",
       "enabled": true,
       "schedule": {
           "recurrence": [
               "RRULE:FREQ=HOURLY;INTERVAL=2"
           ],
           "time_zone": "US/Central"
       },
       "retention": {
           "days": 30
       },
       "inclusions": [
           {
               "type": "folder",
               "path": "/web/"
           },
           {
               "type": "file",
               "path": "/etc/web/app.conf"
           }
       ],
       "exclusions": [
           {
               "type": "folder",
               "path": "/web/cache/"
           },
           {
               "type": "file",
               "path": "/web/cache.jpg"
           }
       ],
       "notifications": [
           {
               "type": "email",
               "destination": "email@example.com",
               "on_success": true,
               "on_failure": true
           }
       ]
   }





Response
""""""""""""""""





This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **project_id**          |String                   |ID of the project.       |
+--------------------------+-------------------------+-------------------------+
|\ **id**                  |String                   |ID of the configuration. |
+--------------------------+-------------------------+-------------------------+
|\ **agent**               |String                   |Information about the    |
|                          |                         |agent for the            |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|agent.\ **id**            |String                   |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|agent.\ **links**         |String                   |Link information for the |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|agent.links.\ **href**    |String                   |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|agent.links.\ **rel**     |String                   |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|\ **name**                |String                   |Name of the              |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|\ **enabled**             |String                   |Specifies whether the    |
|                          |                         |configuration is enabled.|
+--------------------------+-------------------------+-------------------------+
|\ **schedule**            |String                   |Information about the    |
|                          |                         |schedule associated with |
|                          |                         |the configuration.       |
+--------------------------+-------------------------+-------------------------+
|schedule.\ **recurrence** |String                   |Any recurrence in the    |
|                          |                         |configuration's          |
|                          |                         |schedule. Only a single  |
|                          |                         |``recurrence`` value     |
|                          |                         |within ``schedule`` is   |
|                          |                         |currently supported.     |
+--------------------------+-------------------------+-------------------------+
|schedule.\ **time_zone**  |String                   |Time zone for the        |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|\ **retention**           |String                   |Information defined for  |
|                          |                         |retention for the        |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|retention.\ **days**      |String                   |Number of days to retain |
|                          |                         |the backup. When         |
|                          |                         |``days`` is ``0``,       |
|                          |                         |backups are retained     |
|                          |                         |forever.                 |
+--------------------------+-------------------------+-------------------------+
|\ **inclusions**          |String                   |Information about what   |
|                          |                         |is included in the       |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|inclusions.\ **type**     |String                   |The type of the object   |
|                          |                         |included: ``file`` or    |
|                          |                         |``folder``.              |
+--------------------------+-------------------------+-------------------------+
|inclusions.\ **path**     |String                   |The path to the object   |
|                          |                         |to include.              |
+--------------------------+-------------------------+-------------------------+
|\ **exclusions**          |String                   |Information about what   |
|                          |                         |is excluded from the     |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|exclusions.\ **type**     |String                   |The type of the object   |
|                          |                         |excluded: ``file`` or    |
|                          |                         |``folder``.              |
+--------------------------+-------------------------+-------------------------+
|exclusions.\ **path**     |String                   |The path to the object   |
|                          |                         |to exclude.              |
+--------------------------+-------------------------+-------------------------+
|\ **notifications**       |String                   |Information about        |
|                          |                         |notifications. Note that |
|                          |                         |least one notification   |
|                          |                         |must specify             |
|                          |                         |``on_failure`` as        |
|                          |                         |``true``.                |
+--------------------------+-------------------------+-------------------------+
|notifications.\ **type**  |String                   |The type of the          |
|                          |                         |notification.            |
+--------------------------+-------------------------+-------------------------+
|notifications.\           |String                   |Where to send the        |
|**destination**           |                         |notification.            |
+--------------------------+-------------------------+-------------------------+
|notifications.\           |String                   |Specifies whether to     |
|**on_success**            |                         |send the notification if |
|                          |                         |the backup is successful.|
+--------------------------+-------------------------+-------------------------+
|notifications.\           |String                   |Specifies whether to     |
|**on_failure**            |                         |send the notification if |
|                          |                         |the backup is not        |
|                          |                         |successful.              |
+--------------------------+-------------------------+-------------------------+
|\ **deleted**             |String                   |Specifies whether the    |
|                          |                         |backup is deleted.       |
+--------------------------+-------------------------+-------------------------+
|\ **backups**             |String                   |Information about        |
|                          |                         |backups specified in the |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|backups.\                 |String                   |Information about the    |
|**last_completed**        |                         |last completed backup.   |
+--------------------------+-------------------------+-------------------------+
|backups.\ **next**        |String                   |Information about the    |
|                          |                         |next backup.             |
+--------------------------+-------------------------+-------------------------+
|backups.next.\            |String                   |Scheduled time for the   |
|**scheduled_time**        |                         |next backup.             |
+--------------------------+-------------------------+-------------------------+
|\ **links**               |String                   |Link information about   |
|                          |                         |the configuration.       |
+--------------------------+-------------------------+-------------------------+
|links.\ **href**          |String                   |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|configurations.links.\    |String                   |How the href link        |
|**rel**                   |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+







**Example Create a configuration: JSON response**


.. code::

   201 (Created)
   Content-Type: application/json
   Location: https://cloudbackupapi.apiary-mock.com/v2/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5


.. code::

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
       "inclusions": [
           {
               "type": "folder",
               "path": "/web/"
           },
           {
               "type": "file",
               "path": "/etc/web/app.conf"
           }
       ],
       "exclusions": [
           {
               "type": "folder",
               "path": "/web/cache/"
           },
           {
               "type": "file",
               "path": "/web/cache.jpg"
           }
       ],
       "notifications": [
           {
               "type": "email",
               "destination": "email@example.com",
               "on_success": true,
               "on_failure": true
           }
       ],
       "deleted": false,
       "backups": {
           "last_completed": null
       },
       "next": {
           "scheduled_time": "2014-08-05T20:22:21Z"
       },
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
               "rel": "self"
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




