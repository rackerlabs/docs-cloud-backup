.. _gsg-list-agent-activity:

Retrieve agent activities
~~~~~~~~~~~~~~~~~~~~~~~~~

You can display all the activities for an agent to find out whether your
backups ran successfully or failed. This operation is useful if you do
not set email notifications when you create your backup configuration and want
to create a report about the state of previous backups. The operation
retrieves all in-progress and completed activity for an agent. Values for the
``type`` response parameter are ``backup``, ``cleanup``, and ``restore``.

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.

..  note::
    The environment variable ``$TENANT_ID`` in the cURL request in the
    following example represents the project ID.

**Example: Retrieve activities for an agent, cURL request**

.. code::

   curl -s -X GET $API_ENDPOINT/v2/$TENANT_ID/agents/yourAgentId /
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" | python -m json.tool

**Example: Retrieve activities for an agent, JSON response**

.. code::

   {
       "activities": [
           {
               "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
               "type": "backup",
               "last_updated_time": "2014-10-27T18:22:21.238641Z",
               "state": "completed_with_errors",
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
               "links": [
                   {
                       "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
                       "rel": "backup"
                   }
               ]
           },
           {
               "id": "2f8708b3-d16b-11e4-bc22-c8e0eb190e3d",
               "type": "cleanup",
               "last_updated_time": "2014-10-27T18:22:20.238641Z",
               "state": "completed_with_errors",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                   "links": [
                       {
                           "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                           "rel": "full"
                       }
                   ]
               },
               "links": [
                   {
                       "href": "https://cloudbackupapi.apiary-mock.com/v2/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d",
                       "rel": "cleanup"
                   }
               ]
           },
           {
               "id": "e87e6f7d-d166-11e4-8689-c8e0eb190e3d",
               "type": "restore",
               "last_updated_time": "2014-10-27T18:22:19.238641Z",
               "state": "completed_with_errors",
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
               "links": [
                   {
                       "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d",
                       "rel": "restore"
                   }
               ]
           }
       ],
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/activities?marker=0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
               "rel": "next"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/activities?marker=e87e6f7d-d166-11e4-8689-c8e0eb190e3d&sort_dir=asc",
               "rel": "previous"
           }
       ]
   }
