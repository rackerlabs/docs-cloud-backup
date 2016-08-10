.. _list-agent-activity:

Listing activity for an agent
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can display all the activities for an agent to find out whether your
backups ran successfully or failed. This operation is useful if you do
not set email notifications when you create your backup configuration and want
to create a report about the state of previous backups. The operation
lists all in-progress and completed activity for an agent. Activity
types are ``Backup``, ``Cleanup``, and ``Restore``.

The HTTP request must include a header to specify the authentication
token.

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.

 
**Example: cURL list activity for an agent request**

.. code::

   curl -s -X GET $API_ENDPOINT/v1.0/$TENANT_ID/system/activity/yourAgentID /
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" | python -m json.tool

**Example: List activity for an agent response**

.. code::

   [
        {
            "CurrentState": "Completed",
            "DestinationDatacenter": "",
            "DestinationMachineAgentId": 0,
            "DestinationMachineName": "",
            "DisplayName": "Cleanup",
            "ID": 317083,
            "IsBackupConfigurationDeleted": false,
            "ParentId": 0,
            "SourceDatacenter": "DFW",
            "SourceMachineAgentId": 202743,
            "SourceMachineName": "web2",
            "TimeOfActivity": "/Date(1375816993000)/",
            "Type": "Cleanup"
        },
        {
            "CurrentState": "Completed",
            "DestinationDatacenter": "",
            "DestinationMachineAgentId": 0,
            "DestinationMachineName": "",
            "DisplayName": "Web2",
            "ID": 5000325,
            "IsBackupConfigurationDeleted": true,
            "ParentId": 54020,
            "SourceDatacenter": "DFW",
            "SourceMachineAgentId": 202743,
            "SourceMachineName": "web2",
            "TimeOfActivity": "/Date(1375816984000)/",
            "Type": "Backup"
        }
    ]
