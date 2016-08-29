.. _gsg-get-restore-details:

Retrieve restore details
~~~~~~~~~~~~~~~~~~~~~~~~

You can get the details about a restore that include information about the
restore operation and tells you if the operation ran successfully.

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.

..  note::
    The environment variable ``$TENANT_ID`` in the cURL request in the
    following example represents the project ID.
 
**Example: Retrieve details about a restore, cURL request**

.. code::

   curl -s -X GET $API_ENDPOINT/v2/$TENANT_ID/restores/yourRestoreId \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" | python -m json.tool

**Example: Retrieve details about a restore, JSON response**

.. code::

   {
       "project_id": "123456",
       "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d",
       "backup": {
           "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
                   "rel": "full"
               }
           ]
       },
       "destination_agent": {
           "id": "74124b09-5bd3-4436-b3e4-87ef362e4df5",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/74124b09-5bd3-4436-b3e4-87ef362e4df5",
                   "rel": "full"
               }
           ]
       },
       "destination_path": "/tmp/restore",
       "overwrite_files": false,
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
       "state": "completed_with_errors",
       "started_time": "2014-10-20T13:11:58.985151Z",
       "ended_time": "2014-10-20T13:12:58.985151Z",
       "errors": {
           "count": 1,
           "reason": "unable_to_process_some_files",
           "diagnostics": "Some files may not have been restored.",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/errors",
                   "rel": "full"
               }
           ]
       },
       "files_restored": 2,
       "bytes_restored": 1512,
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d",
               "rel": "self"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/events",
               "rel": "events"
           }
       ]
   }
