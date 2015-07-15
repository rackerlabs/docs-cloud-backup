=============================================================================
List Activity For An Agent -  Rackspace Cloud Backup Developer Guide v1
=============================================================================

List Activity For An Agent
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <GET_list_activity_for_an_agent_v1.0_tenant_id_system_activity_agentid_.rst#request>`__
`Response <GET_list_activity_for_an_agent_v1.0_tenant_id_system_activity_agentid_.rst#response>`__

.. code-block:: javascript

    GET /v1.0/{tenant_id}/system/activity/{agentId}

Lists all in-progress and completed activity for an agent. Activity types are Backup, Cleanup, and Restore.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|200                       |OK                       |The request succeeded.   |
+--------------------------+-------------------------+-------------------------+
|400                       |Bad Request              |There were one or more   |
|                          |                         |errors in the request.   |
+--------------------------+-------------------------+-------------------------+
|401                       |Unauthorized             |The supplied token was   |
|                          |                         |not authorized to access |
|                          |                         |the resources. Either it |
|                          |                         |is expired or invalid.   |
+--------------------------+-------------------------+-------------------------+
|403                       |Forbidden                |Access to the requested  |
|                          |                         |resource was denied.     |
+--------------------------+-------------------------+-------------------------+
|404                       |Not Found                |The backend services did |
|                          |                         |not find anything        |
|                          |                         |matching the request URI.|
+--------------------------+-------------------------+-------------------------+
|500                       |Instance Fault           |This is a generic server |
|                          |                         |error. The message       |
|                          |                         |contains the reason for  |
|                          |                         |the error. This error    |
|                          |                         |could wrap several error |
|                          |                         |messages.                |
+--------------------------+-------------------------+-------------------------+
|503                       |Service Unavailable      |This is a generic server |
|                          |                         |error. The message       |
|                          |                         |contains the reason for  |
|                          |                         |the error. This error    |
|                          |                         |could wrap several error |
|                          |                         |messages.                |
+--------------------------+-------------------------+-------------------------+


Request
^^^^^^^^^^^^^^^^^

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{tenant_id}               |xsd:string               |The unique identifier of |
|                          |                         |the tenant or account.   |
+--------------------------+-------------------------+-------------------------+
|{agentId}                 |xsd:integer              |The unique identifier    |
|                          |                         |for an agent.            |
+--------------------------+-------------------------+-------------------------+








**Example List Activity For An Agent: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v1.0/1234/system/activity/232180
    User-Agent: controlpanel.drivesrvr.com
    Host: dfw.backup.api.rackspacecloud.com
    Content-Type: application/json;
    Content-Length: 0
    X-Auth-Token: 95b1788906f74d279d03001c6a14f3fe


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+-----------------------------+------------------------+-----------------------+
|Name                         |Type                    |Description            |
+=============================+========================+=======================+
|Id                           |                        |Specifies the restore  |
|                             |                        |ID, backup ID, or      |
|                             |                        |cleanup ID.            |
+-----------------------------+------------------------+-----------------------+
|Type                         |                        |Specifies type of      |
|                             |                        |activity. Valid values |
|                             |                        |are Restore, Backup,   |
|                             |                        |or Cleanup.            |
+-----------------------------+------------------------+-----------------------+
|ParentId                     |                        |Indicates the backup   |
|                             |                        |configuration ID for a |
|                             |                        |backup.                |
+-----------------------------+------------------------+-----------------------+
|DisplayName                  |                        |Indicates the backup   |
|                             |                        |name or restore name.  |
+-----------------------------+------------------------+-----------------------+
|IsBackupConfigurationDeleted |                        |Indicates if the       |
|                             |                        |backup configuration   |
|                             |                        |is deleted. Valid      |
|                             |                        |values are true or     |
|                             |                        |false.                 |
+-----------------------------+------------------------+-----------------------+
|SourceMachineAgentId         |                        |Indicates the machine  |
|                             |                        |agent ID of the source |
|                             |                        |system.                |
+-----------------------------+------------------------+-----------------------+
|SourceMachineName            |                        |Indicates the machine  |
|                             |                        |agent name of the      |
|                             |                        |source system.         |
+-----------------------------+------------------------+-----------------------+
|DestinationMachineAgentId    |                        |Specifies the machine  |
|                             |                        |agent ID of the        |
|                             |                        |destination system.    |
+-----------------------------+------------------------+-----------------------+
|DestinationMachineName       |                        |Indicates name of the  |
|                             |                        |destination system.    |
+-----------------------------+------------------------+-----------------------+
|CurrentState                 |                        |Indicates the current  |
|                             |                        |state. Valid values    |
|                             |                        |are Creating, Queued,  |
|                             |                        |InProgress, Completed, |
|                             |                        |Stopped,Failed,        |
|                             |                        |startRequested,        |
|                             |                        |Stoprequested,         |
|                             |                        |Completed WithErrors,  |
|                             |                        |and Preparing.         |
+-----------------------------+------------------------+-----------------------+
|TimeOfActivity               |                        |Indicates the time of  |
|                             |                        |the activity.          |
+-----------------------------+------------------------+-----------------------+
|BackupId                     |                        |Specifies the backup   |
|                             |                        |ID associated with a   |
|                             |                        |restore.               |
+-----------------------------+------------------------+-----------------------+





**Example List Activity For An Agent: JSON request**


.. code::

       [
            {
                "ID": 137987,
                "Type": "Backup",
                "ParentId": 162423,
                "DisplayName": "Weekly Website Backup",
                "IsBackupConfigurationDeleted": false,
                "SourceMachineAgentId": 232180,
                "SourceMachineName": "Web Server",
                "DestinationMachineAgentId": 0,
                "DestinationMachineName": "",
                "CurrentState": "Completed",
                "TimeOfActivity": "\/Date(1359033934000)\/",
                "BackupId": 134332
            }
         ]

