.. _gsg-list-agent-configs:

Retrieve agent configurations 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To verify that a configuration exists, you can retrieve all of the
configurations for an agent.

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.

..  note::
    The environment variable ``$TENANT_ID`` in the cURL request in the
    following example represents the project ID.

**Example: Retrieve all configurations for an agent, cURL request**

.. code::

   curl -s -X GET $API_ENDPOINT/v2/$TENANT_ID/agents/yourAgentId/configurations \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" | python -m json.tool

**Example: Retrieve all configurations for an agent, JSON response**

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
