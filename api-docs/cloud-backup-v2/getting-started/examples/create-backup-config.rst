.. _gsg-create-backup-config:

Create a backup configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create a configuration in which you define the following basic
items:

-  The name of the backup

-  What you want to back up

-  When you want to back up

-  How often you want to back up

Look carefully at the ``inclusions`` and ``exclusions`` sections. Note
that each exclusion must be within a folder that is included.

You can programmatically create many configuration files like this
with small changes for each server that you create.

An HTTP status code of 201 (Created) in the response indicates that the
request succeeded.

..  note::
    The environment variable ``$TENANT_ID`` in the cURL request in the
    following example represents the project ID.
 
**Example: Create a backup configuration, cURL request**

.. code::

   curl -s -X POST $API_ENDPOINT/v2/$TENANT_ID/configurations \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" \
   -d '{
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
    }'  | python -m json.tool

**Example: Create a backup configuration, JSON response**

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
