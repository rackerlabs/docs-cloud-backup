
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-list-configuration-settings-for-an-agent:

List configuration settings for an agent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/agents/{agent_id}/configuration

This operation lists the configuration settings for the specified agent.



This table shows the possible response codes for this operation:


+---------------+-----------------+-----------------------------------------------------------+
|Response Code  |Name             |Description                                                |
+===============+=================+===========================================================+
|200            | OK              | The request succeeded.                                    |
+---------------+-----------------+-----------------------------------------------------------+
|400            | Bad Request     | The server cannot or will not process the request         |
|               |                 | due to something that is perceived as a client error      |
|               |                 | (for example, malformed syntax, invalid request framing,  |
|               |                 | or deceptive request routing).                            |
+---------------+-----------------+-----------------------------------------------------------+
|401            | Unauthorized    | The request has not been applied because it lacks         |
|               |                 | valid authentication credentials for the target           |
|               |                 | resource. The credentials are either expired or invalid.  |
+---------------+-----------------+-----------------------------------------------------------+
|403            | Forbidden       | The server understood the request but refuses             |
|               |                 | to authorize it.                                          |
+---------------+-----------------+-----------------------------------------------------------+
|404            | Not Found       | The server did not find a current representation          |
|               |                 | for the target resource or is not willing to              |
|               |                 | disclose that one exists.                                 |
+---------------+-----------------+-----------------------------------------------------------+
|405            | Method Not      | The method received in the request line is                |
|               | Allowed         | known by the origin server but is not supported by        |
|               |                 | the target resource.                                      |
+---------------+-----------------+-----------------------------------------------------------+
|409            | Conflict        | The request could not be completed due to a conflict with |
|               |                 | the current state of the resource.                        |
+---------------+-----------------+-----------------------------------------------------------+
|500            | Internal Server | The server encountered an unexpected condition            |
|               | Error           | that prevented it from fulfilling the request.            |
+---------------+-----------------+-----------------------------------------------------------+
|503            | Service         | The server is currently unable to handle the request      |
|               | Unavailable     | due to a temporary overload or scheduled maintenance,     |
|               |                 | which will likely be alleviated after some delay.         |
+---------------+-----------------+-----------------------------------------------------------+




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




**Example List configuration settings for an agent: HTTP request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/configuration HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json
   





Response
""""""""""""""""





This table shows the body parameters for the response:

+-------------------------------------------+-----------------+----------------+
|Name                                       |Type             |Description     |
+===========================================+=================+================+
|\ **system_preferences**                   |String           |Information     |
|                                           |                 |about the       |
|                                           |                 |preferences set |
|                                           |                 |for the system. |
+-------------------------------------------+-----------------+----------------+
|system_preferences.\ **environment**       |String           |Information     |
|                                           |                 |about the       |
|                                           |                 |system's        |
|                                           |                 |environment.    |
+-------------------------------------------+-----------------+----------------+
|system_preferences.environment.\           |String           |Minimum disk    |
|**minimum_disk_space_mb**                  |                 |space in        |
|                                           |                 |megabytes (MB)  |
|                                           |                 |set each for    |
|                                           |                 |the following   |
|                                           |                 |specified       |
|                                           |                 |events:         |
|                                           |                 |``backup``,     |
|                                           |                 |``restore``,    |
|                                           |                 |and ``cleanup``.|
+-------------------------------------------+-----------------+----------------+
|system_preferences.\ **logging**           |String           |Information     |
|                                           |                 |about logging.  |
+-------------------------------------------+-----------------+----------------+
|system_preferences.logging.\ **level**     |String           |Logging level.  |
+-------------------------------------------+-----------------+----------------+
|system_preferences.\ **events**            |String           |Information     |
|                                           |                 |about events.   |
+-------------------------------------------+-----------------+----------------+
|system_preferences.events.\ **rse**        |String           |Information     |
|                                           |                 |about the       |
|                                           |                 |Really Simple   |
|                                           |                 |Event (RSE).    |
+-------------------------------------------+-----------------+----------------+
|system_preferences.events.rse.\ **host**   |String           |Path for the    |
|                                           |                 |host.           |
+-------------------------------------------+-----------------+----------------+
|system_preferences.events.rse.\ **channel**|String           |Path for the    |
|                                           |                 |channel.        |
+-------------------------------------------+-----------------+----------------+
|system_preferences.events.rse.\ **polling**|String           |Information     |
|                                           |                 |about polling.  |
+-------------------------------------------+-----------------+----------------+
|system_preferences.events.rse.polling.\    |String           |Polling         |
|**interval_ms**                            |                 |interval in     |
|                                           |                 |milliseconds    |
|                                           |                 |(ms). Includes  |
|                                           |                 |the interval    |
|                                           |                 |for ``idle``,   |
|                                           |                 |``active``, and |
|                                           |                 |``real_time``.  |
+-------------------------------------------+-----------------+----------------+
|system_preferences.events.rse.polling.\    |String           |Timeout setting |
|**timeout_ms**                             |                 |in milliseconds |
|                                           |                 |(ms). Includes  |
|                                           |                 |the timeout     |
|                                           |                 |setting for     |
|                                           |                 |``idle``,       |
|                                           |                 |``active``, and |
|                                           |                 |``real_time``.  |
+-------------------------------------------+-----------------+----------------+
|system_preferences.events.rse.\            |String           |Information     |
|**heartbeat**                              |                 |about the       |
|                                           |                 |heartbeat.      |
+-------------------------------------------+-----------------+----------------+
|system_preferences.events.rse.heartbeat.\  |String           |Heartbeat       |
|**interval_ms**                            |                 |interval in     |
|                                           |                 |milliseconds    |
|                                           |                 |(ms). Includes  |
|                                           |                 |the interval    |
|                                           |                 |for ``idle``,   |
|                                           |                 |``active``, and |
|                                           |                 |``real_time``.  |
+-------------------------------------------+-----------------+----------------+
|system_preferences.events.rse.heartbeat.\  |String           |Timeout setting |
|**timeout_ms**                             |                 |in milliseconds |
|                                           |                 |(ms). Includes  |
|                                           |                 |the timeout     |
|                                           |                 |setting for     |
|                                           |                 |``idle``,       |
|                                           |                 |``active``, and |
|                                           |                 |``real_time``.  |
+-------------------------------------------+-----------------+----------------+
|system_preferences.\ **backup_controls**   |String           |Information     |
|                                           |                 |about backup    |
|                                           |                 |controls.       |
+-------------------------------------------+-----------------+----------------+
|system_preferences.backup_controls.\       |String           |Volume shadow   |
|**disable_vss**                            |                 |copy service    |
|                                           |                 |(vss)           |
|                                           |                 |disablement.    |
+-------------------------------------------+-----------------+----------------+
|\ **vaults**                               |String           |Information     |
|                                           |                 |about vaults.   |
+-------------------------------------------+-----------------+----------------+
|vaults.\ **id**                            |String           |ID of the vault.|
+-------------------------------------------+-----------------+----------------+
|vaults.\ **use_internal**                  |String           |Specifies       |
|                                           |                 |whether the use |
|                                           |                 |of the vault is |
|                                           |                 |internal.       |
+-------------------------------------------+-----------------+----------------+
|vaults.\ **encrypted**                     |String           |Specifies       |
|                                           |                 |whether the     |
|                                           |                 |vault is        |
|                                           |                 |encrypted.      |
+-------------------------------------------+-----------------+----------------+
|vaults.\ **links**                         |String           |Link            |
|                                           |                 |information     |
|                                           |                 |about the vault.|
+-------------------------------------------+-----------------+----------------+
|vaults.links.\ **href**                    |String           |Location (URI)  |
|                                           |                 |of the vault.   |
+-------------------------------------------+-----------------+----------------+
|vaults.links.\ **rel**                     |String           |How the href    |
|                                           |                 |link provided   |
|                                           |                 |is related to   |
|                                           |                 |this resource   |
|                                           |                 |URI.            |
+-------------------------------------------+-----------------+----------------+
|\ **configurations**                       |String           |Information     |
|                                           |                 |about           |
|                                           |                 |configurations. |
+-------------------------------------------+-----------------+----------------+
|configurations.\ **id**                    |String           |ID of the       |
|                                           |                 |configuration.  |
+-------------------------------------------+-----------------+----------------+
|configurations.\ **name**                  |String           |Configuration   |
|                                           |                 |name.           |
+-------------------------------------------+-----------------+----------------+
|configurations.\ **enabled**               |String           |Specifies       |
|                                           |                 |whether the     |
|                                           |                 |configuration   |
|                                           |                 |is enabled.     |
+-------------------------------------------+-----------------+----------------+
|configurations.\ **vault_id**              |String           |ID of the vault.|
+-------------------------------------------+-----------------+----------------+
|configurations.\ **retention**             |String           |Information     |
|                                           |                 |about retention |
|                                           |                 |specified in    |
|                                           |                 |the             |
|                                           |                 |configuration.  |
+-------------------------------------------+-----------------+----------------+
|configurations.retention.\ **days**        |String           |Number of days  |
|                                           |                 |that a backup   |
|                                           |                 |is retained.    |
+-------------------------------------------+-----------------+----------------+
|configurations.\ **schedule**              |String           |Information     |
|                                           |                 |about backup    |
|                                           |                 |schedule        |
|                                           |                 |specified in    |
|                                           |                 |the             |
|                                           |                 |configuration.  |
+-------------------------------------------+-----------------+----------------+
|configurations.schedule.\ **start**        |String           |Start time of   |
|                                           |                 |the backup.     |
+-------------------------------------------+-----------------+----------------+
|configurations.schedule.\ **recurrence**   |String           |How often the   |
|                                           |                 |backup occurs.  |
+-------------------------------------------+-----------------+----------------+
|configurations.schedule.\ **time_zone**    |String           |Time zone where |
|                                           |                 |the backup      |
|                                           |                 |occurs.         |
+-------------------------------------------+-----------------+----------------+
|configurations.\ **backups**               |String           |Information     |
|                                           |                 |about backups   |
|                                           |                 |specified in    |
|                                           |                 |the             |
|                                           |                 |configuration.  |
+-------------------------------------------+-----------------+----------------+
|configurations.backups.\ **next**          |String           |Start time of   |
|                                           |                 |the next backup.|
+-------------------------------------------+-----------------+----------------+
|configurations.backups.next.\              |String           |Start time      |
|**scheduled_time**                         |                 |scheduled for   |
|                                           |                 |the next backup.|
+-------------------------------------------+-----------------+----------------+
|configurations.\ **inclusions**            |String           |Information     |
|                                           |                 |about objects   |
|                                           |                 |included in     |
|                                           |                 |backups in this |
|                                           |                 |configuration.  |
+-------------------------------------------+-----------------+----------------+
|configurations.inclusions.\ **type**       |String           |Type of object  |
|                                           |                 |to be included. |
+-------------------------------------------+-----------------+----------------+
|configurations.inclusions.\ **path**       |String           |Path to the     |
|                                           |                 |object to be    |
|                                           |                 |included.       |
+-------------------------------------------+-----------------+----------------+
|configurations.\ **exclusions**            |String           |Information     |
|                                           |                 |about objects   |
|                                           |                 |excluded in     |
|                                           |                 |backups in this |
|                                           |                 |configuration.  |
+-------------------------------------------+-----------------+----------------+
|configurations.exclusions.\ **type**       |String           |Type of object  |
|                                           |                 |to be excluded. |
+-------------------------------------------+-----------------+----------------+
|configurations.exclusions.\ **path**       |String           |Path to the     |
|                                           |                 |object to be    |
|                                           |                 |excluded.       |
+-------------------------------------------+-----------------+----------------+







**Example List configuration settings for an agent: JSON response**


.. code::

   200 (OK)
   Content-Type: application/json


.. code::

   {
       "system_preferences": {
           "environment": {
               "minimum_disk_space_mb": {
                   "backup": 100,
                   "restore": 100,
                   "cleanup": 100
               }
           },
           "logging": {
               "level": "warn"
           },
           "events": {
               "rse": {
                   "host": "https://rse.apiary-mock.com",
                   "channel": "/mm9rY3lxN1d6NlFhcXlOZ3RjMnN4bHhNSTIrYTlvNTlPR0JTaU9uTGw4RjhkZXhwTjk2Sit0bXlqaFdjQmNVSWhlSzRramdpYmtwWmYzeEhibkFkREVGcGNrWnZjbU5sVDI1bA==/GGZrSy9ZV1QzcmJKQzZ2RStqU1BvUHhqakhOWkFEaDNnc0Ivald5NnZxQjUvZUw2VDdqdlJQLzlMZlQwbWYwTitwYTNhZW12Y0xqS2RnUkkvamlyQlVGcGNrWnZjbU5sVDI1bA==",
                   "polling": {
                       "interval_ms": {
                           "idle": 10000,
                           "active": 1000,
                           "real_time": 300
                       },
                       "timeout_ms": {
                           "idle": 90000,
                           "active": 60000,
                           "real_time": 40000
                       }
                   },
                   "heartbeat": {
                       "interval_ms": {
                           "idle": 3600000,
                           "active": 1000,
                           "real_time": 1000
                       },
                       "timeout_ms": {
                           "idle": 0,
                           "active": 75000,
                           "real_time": 75000
                       }
                   }
               }
           },
           "backup_controls": {
               "disable_vss": 0
           }
       },
       "vaults": [
           {
               "id": "7cd999c3-a0c3-4985-99d4-42b544685456",
               "use_internal": false,
               "encrypted": true,
               "links": [
                   {
                       "href": "https://cloudfilesapi.apiary-mock.com/v1/MossoCloudFS_f14d894e-28cd-4f31-8b08-449ec0876346/phoenix_7cd999c3-a0c3-4985-99d4-42b544685456",
                       "rel": "publicURL"
                   },
                   {
                       "href": "https://cloudfilesinternalapi.apiary-mock.com/v1/MossoCloudFS_f14d894e-28cd-4f31-8b08-449ec0876346/phoenix_7cd999c3-a0c3-4985-99d4-42b544685456",
                       "rel": "internalURL"
                   },
                   {
                       "href": "https://deuterium.apiary-mock.com",
                       "rel": "data_services"
                   }
               ]
           }
       ],
       "configurations": [
           {
               "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
               "name": "Every Other Hour Configuration",
               "enabled": true,
               "vault_id": "7cd999c3-a0c3-4985-99d4-42b544685456",
               "retention": {
                   "days": 30
               },
               "schedule": {
                   "start": "2014-08-05T18:22:21Z",
                   "recurrence": [
                       "RRULE:FREQ=HOURLY;INTERVAL=2"
                   ],
                   "time_zone": "US/Central"
               },
               "backups": {
                   "next": {
                       "scheduled_time": "2014-08-05T20:22:21Z"
                   }
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
               ]
           }
       ]
   }




