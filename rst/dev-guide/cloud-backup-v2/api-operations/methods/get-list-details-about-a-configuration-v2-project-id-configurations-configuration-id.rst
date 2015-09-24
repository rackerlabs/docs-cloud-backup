
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-list-details-about-a-configuration-v2-project-id-configurations-configuration-id:

List details about a configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/configurations/{configuration_id}

Lists details about the specified configuration. 

This operation lists details about the specified configuration.



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
|{configuration_id}        |String *(Required)*      |Configuration ID. For    |
|                          |                         |example, ``7c8ee069-568f-|
|                          |                         |4d5a-932f-fb2af86b5fd5``.|
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List details about a configuration: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5 HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept: application/json
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

+--------------------------------+----------------------+----------------------+
|Name                            |Type                  |Description           |
+================================+======================+======================+
|\ **project_id**                |String                |ID of the project.    |
+--------------------------------+----------------------+----------------------+
|\ **id**                        |String                |ID of the             |
|                                |                      |configuration.        |
+--------------------------------+----------------------+----------------------+
|\ **agent**                     |String                |Information about the |
|                                |                      |agent for the         |
|                                |                      |configuration.        |
+--------------------------------+----------------------+----------------------+
|agent.\ **id**                  |String                |ID of the agent.      |
+--------------------------------+----------------------+----------------------+
|agent.\ **links**               |String                |Link information      |
|                                |                      |about the agent.      |
+--------------------------------+----------------------+----------------------+
|agent.links.\ **href**          |String                |Location (URI).       |
+--------------------------------+----------------------+----------------------+
|agent.links.\ **rel**           |String                |How the href link     |
|                                |                      |provided is related   |
|                                |                      |to this resource URI. |
+--------------------------------+----------------------+----------------------+
|\ **name**                      |String                |Name of the           |
|                                |                      |configuration.        |
+--------------------------------+----------------------+----------------------+
|\ **enabled**                   |String                |Specifies whether the |
|                                |                      |configuration is      |
|                                |                      |enabled.              |
+--------------------------------+----------------------+----------------------+
|\ **schedule**                  |String                |Information about the |
|                                |                      |schedule associated   |
|                                |                      |with the              |
|                                |                      |configuration.        |
+--------------------------------+----------------------+----------------------+
|schedule.\ **start**            |String                |Start time for the    |
|                                |                      |schedule.             |
+--------------------------------+----------------------+----------------------+
|schedule.\ **recurrence**       |String                |Any recurrence in the |
|                                |                      |configuration's       |
|                                |                      |schedule. Only a      |
|                                |                      |single ``recurrence`` |
|                                |                      |value within          |
|                                |                      |``schedule`` is       |
|                                |                      |currently supported.  |
+--------------------------------+----------------------+----------------------+
|schedule.\ **time_zone**        |String                |Time zone for the     |
|                                |                      |configuration.        |
+--------------------------------+----------------------+----------------------+
|\ **retention**                 |String                |Information defined   |
|                                |                      |for retention for the |
|                                |                      |configuration.        |
+--------------------------------+----------------------+----------------------+
|retention.\ **days**            |String                |Number of days To     |
|                                |                      |retain the backup.    |
|                                |                      |When ``days`` is      |
|                                |                      |``0``, backups are    |
|                                |                      |retained forever.     |
+--------------------------------+----------------------+----------------------+
|\ **inclusions**                |String                |Information about     |
|                                |                      |what is included in   |
|                                |                      |the backup.           |
+--------------------------------+----------------------+----------------------+
|inclusions.\ **type**           |String                |The type of the       |
|                                |                      |object included:      |
|                                |                      |``file`` or           |
|                                |                      |``folder``.           |
+--------------------------------+----------------------+----------------------+
|inclusions.\ **path**           |String                |The path to the       |
|                                |                      |object to include.    |
+--------------------------------+----------------------+----------------------+
|\ **exclusions**                |String                |Information about     |
|                                |                      |what is excluded from |
|                                |                      |the backup.           |
+--------------------------------+----------------------+----------------------+
|exclusions.\ **type**           |String                |The type of the       |
|                                |                      |object excluded:      |
|                                |                      |``file`` or           |
|                                |                      |``folder``.           |
+--------------------------------+----------------------+----------------------+
|exclusions.\ **path**           |String                |The path to the       |
|                                |                      |object to exclude.    |
+--------------------------------+----------------------+----------------------+
|\ **notifications**             |String                |Information about     |
|                                |                      |notifications. Note   |
|                                |                      |that least one        |
|                                |                      |notification must     |
|                                |                      |specify               |
|                                |                      |``on_failure`` as     |
|                                |                      |``true``.             |
+--------------------------------+----------------------+----------------------+
|notifications.\ **type**        |String                |The type of the       |
|                                |                      |notification.         |
+--------------------------------+----------------------+----------------------+
|notifications.\ **destination** |String                |Where to send the     |
|                                |                      |notification.         |
+--------------------------------+----------------------+----------------------+
|notifications.\ **on_success**  |String                |Specifies whether to  |
|                                |                      |send the notification |
|                                |                      |if the backup is      |
|                                |                      |successful.           |
+--------------------------------+----------------------+----------------------+
|notifications.\ **on_failure**  |String                |Specifies whether to  |
|                                |                      |send the notification |
|                                |                      |if the backup is not  |
|                                |                      |successful.           |
+--------------------------------+----------------------+----------------------+
|\ **deleted**                   |String                |Specifies whether the |
|                                |                      |backup is deleted.    |
+--------------------------------+----------------------+----------------------+
|\ **backups**                   |String                |Information about     |
|                                |                      |backups specified in  |
|                                |                      |the configuration.    |
+--------------------------------+----------------------+----------------------+
|backups.\ **last_completed**    |String                |Information about the |
|                                |                      |last completed backup.|
+--------------------------------+----------------------+----------------------+
|backups.last_completed.\ **id** |String                |ID of the last        |
|                                |                      |completed backup.     |
+--------------------------------+----------------------+----------------------+
|backups.last_completed.\        |String                |Link information      |
|**links**                       |                      |about the backup.     |
+--------------------------------+----------------------+----------------------+
|backups.last_completed.links.\  |String                |Location (URI).       |
|**href**                        |                      |                      |
+--------------------------------+----------------------+----------------------+
|backups.last_completed.links.\  |String                |How the href link     |
|**rel**                         |                      |provided is related   |
|                                |                      |to this resource URI. |
+--------------------------------+----------------------+----------------------+
|backups.\ **next**              |String                |Information about the |
|                                |                      |next backup.          |
+--------------------------------+----------------------+----------------------+
|backups.next.\                  |String                |Scheduled time for    |
|**scheduled_time**              |                      |the next backup.      |
+--------------------------------+----------------------+----------------------+
|\ **links**                     |String                |Link information      |
|                                |                      |about the             |
|                                |                      |configuration.        |
+--------------------------------+----------------------+----------------------+
|links.\ **href**                |String                |Location (URI).       |
+--------------------------------+----------------------+----------------------+
|links.\ **rel**                 |String                |How the href link     |
|                                |                      |provided is related   |
|                                |                      |to this resource URI. |
+--------------------------------+----------------------+----------------------+







**Example List details about a configuration: JSON response**


.. code::

   200 (OK)
   Content-Type: application/json


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




