.. _gsg-start-backup:

Start a backup manually
~~~~~~~~~~~~~~~~~~~~~~~

If you do not do anything, Cloud Backup runs the backup at the scheduled
time.

If you want to run the backup once to ensure that it works, you can
start the backup manually. Use the ``configuration_id`` parameter to indicate
the backup configuration that you want to run. You can run the backup
job as many times as you like. A backup is created each time that you run the
job.

An HTTP status code of 201 (Created) in the response indicates that the request
succeeded.

..  note::
    The environment variable ``$TENANT_ID`` in the cURL request in the
    following example represents the project ID.

**Example: Start a backup manually, cURL request**

.. code::

   curl -s -X POST $API_ENDPOINT/v2/$TENANT_ID/backups \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" \
   -d '{
            "configuration_id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
            "state": "start_requested"
       }' | python -m json.tool

**Example: Start a backup manually, JSON response**

.. code::

   {
        "project_id": "123456",
        "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
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
        "state": "start_requested",
        "started_time": null,
        "ended_time": null,
        "snapshot_id": null,
        "errors": {
            "count": 0,
            "reason": "",
            "diagnostics": "",
            "links": [
                {
                    "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/errors",
                    "rel": "full"
                }
            ]
        },
        "files_searched": 0,
        "files_backed_up": 0,
        "bytes_searched": 0,
        "bytes_backed_up": 0,
        "bytes_in_db": 0,
        "bandwidth_avg_bps": 0,
        "restorable": false,
        "links": [
            {
                "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
                "rel": "self"
            },
            {
                "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/events",
                "rel": "events"
            }
        ]
    }

When the backup is done, you receive an email about the status. Receiving the
email is based on the ``notifications`` parameters that you specify when you
create your configuration (see
:ref:`Create a backup configuration <gsg-create-backup-config>`).
