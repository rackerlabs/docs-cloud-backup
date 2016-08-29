.. _gsg-check-backup-status:

Retrieve backup status
~~~~~~~~~~~~~~~~~~~~~~

By retrieving details about a backup, you can verify whether your backup jobs
ran properly, and if they did not, what errors occurred.

The following example response shows the value of the ``state`` parameter as
``completed_with_errors``. Following are other valid values for ``state``:

-  ``completed``

-  ``failed``

-  ``queued``

-  ``in_progress``

-  ``preparing``

-  ``skipped``

-  ``stopped``

-  ``stop_requested``

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.

..  note::
    The environment variable ``$TENANT_ID`` in the cURL request in the
    following example represents the project ID.
 
**Example: Retrieve backup status, cURL request**

.. code::

   curl -s -X GET $API_ENDPOINT/v2/$TENANT_ID/backups/yourBackupId \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json | python -m json.tool

**Example:  Retrieve backup status, JSON response**

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
       "state": "completed_with_errors",
       "started_time": "2014-08-05T18:22:22.238641Z",
       "ended_time": "2014-08-05T18:23:50.489715Z",
       "snapshot_id": 1111,
       "errors": {
           "count": 1,
           "reason": "unable_to_process_some_files",
           "diagnostics": "Some files could not be backed up. Partial list follows.",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/errors",
                   "rel": "full"
               }
           ]
       },
       "files_searched": 1222,
       "files_backed_up": 6,
       "bytes_searched": 3700000000,
       "bytes_backed_up": 127000000,
       "bytes_in_db": 49340871,
       "bandwidth_avg_bps": 16628982,
       "restorable": true,
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
