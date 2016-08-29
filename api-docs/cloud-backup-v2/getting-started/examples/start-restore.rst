.. _gsg-start-restore:

Start a restore using your backup
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now that you have a backup, you can restore it to a different location
on your server. You can also restore it to a different server, or to the
same folder on the same server. You must set the ``backup_id``,
``destination_agent_id``, and ``destination_path`` parameter values properly.
The ``backup_id`` parameter identifies the backup that you want to use to
restore.

An HTTP status code of 201 (Created) in the response indicates that the
request succeeded.

..  note::
    The environment variable ``$TENANT_ID`` in the cURL request in the
    following example represents the project ID.
 
**Example: Start a restore, cURL request**

.. code::

   curl -s -X POST $API_ENDPOINT/v2/$TENANT_ID/restores /
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" \
   -d '{
           "backup_id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
           "destination_agent_id": "74124b09-5bd3-4436-b3e4-87ef362e4df5",
           "destination_path": "/tmp/restore",
           "overwrite_files": false,
           "encrypted_password_hex": "0bff42a526c78076a3d986fa75eecd 83211f166fd7692797cdde2317faee544e3300614fd54b8c0d81f975 3e58cb1ffbd62d3faf0d2bf52e79ce5cd9c6d84b5295e3dea629e71b 0a5e26efda50ff8e05a5475bb7cbd553d238c05655f56ece2df070ce 374ff1e0724827c2300e373241e94c4bc13441561604e3e70b5034eb 58d717864f304c9c73b6d1d46c4276d7ec2f0e2bd9a42a8ab0ba99eb adda84f4cbb5b3611bd319627436246912139c2dde62bd00528b1464 20dceae949d1926ae05fc7df9b474e1ee176f89069fb424b12f8f357 e6e2909ba05152e9f72a68de0046b3e1520838ff5e723af02a96f51a c1e6ef4254226249b872676af76a319cbe",
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
       }' | python -m json.tool

**Example: Start a restore, JSON response**

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
       "state": "start_requested",
       "started_time": null,
       "ended_time": null,
       "errors": {
           "count": 0,
           "reason": "",
           "diagnostics": "",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/errors",
                   "rel": "full"
               }
           ]
       },
       "files_restored": 0,
       "bytes_restored": 0,
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
