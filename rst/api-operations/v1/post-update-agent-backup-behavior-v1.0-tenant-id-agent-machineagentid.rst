
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

=============================================================================
Update Agent Backup Behavior -  Rackspace Cloud Backup Developer Guide v1
=============================================================================

Update Agent Backup Behavior
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <post-update-agent-backup-behavior-v1.0-tenant-id-agent-machineagentid.html#request>`__
`Response <post-update-agent-backup-behavior-v1.0-tenant-id-agent-machineagentid.html#response>`__

.. code::

    POST /v1.0/{tenant_id}/agent/{machineAgentId}

Updates the backup data center, or enables or disables ServiceNet for the Cloud Backup agent, or both.

If ServiceNet is enabled, the Cloud Backup agent talks to Cloud Files over ServiceNet and does not incur any bandwidth charges.



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
|{machineAgentId}          |xsd:integer              |The unique identifier of |
|                          |                         |the Cloud Backup agent.  |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|BackupDataCenter          |*(Required)*             |Specifies the backup     |
|                          |                         |data center where this   |
|                          |                         |Agent's backup will      |
|                          |                         |reside. You must have    |
|                          |                         |VMs in the data center   |
|                          |                         |specified by             |
|                          |                         |BackupDataCenter or this |
|                          |                         |operation will fail.     |
+--------------------------+-------------------------+-------------------------+
|UseServiceNet             |*(Required)*             |Enables or disables the  |
|                          |                         |ServiceNet for this      |
|                          |                         |agent. Valid values are  |
|                          |                         |true or false.           |
+--------------------------+-------------------------+-------------------------+





**Example Update Agent Backup Behavior: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v1.0/1234/agent/213564
    User-Agent: controlpanel.drivesrvr.com
    Host: dfw.backup.api.rackspacecloud.com
    Content-Type: application/json;
    Content-Length: 0
    X-Auth-Token: 95b1788906f74d279d03001c6a14f3fe


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+---------------------------+-------------------------+------------------------+
|Name                       |Type                     |Description             |
+===========================+=========================+========================+
|AgentVersion               |                         |Version of the          |
|                           |                         |Rackspace Cloud Backup  |
|                           |                         |agent.                  |
+---------------------------+-------------------------+------------------------+
|Architecture               |                         |Base architecture of    |
|                           |                         |the Cloud Server. Valid |
|                           |                         |values are 64-bit or 32-|
|                           |                         |bit.                    |
+---------------------------+-------------------------+------------------------+
|Flavor                     |                         |RaxCloudServer – for    |
|                           |                         |Rackspace Cloud Servers.|
+---------------------------+-------------------------+------------------------+
|BackupVaultSize            |                         |Size of backup data in  |
|                           |                         |MB.                     |
+---------------------------+-------------------------+------------------------+
|CleanupAllowed             |                         |Indicates whether a     |
|                           |                         |cleanup can be manually |
|                           |                         |triggered on the backup |
|                           |                         |vault. Valid values are |
|                           |                         |true or false.          |
+---------------------------+-------------------------+------------------------+
|Datacenter                 |                         |Data center where the   |
|                           |                         |Cloud Server is         |
|                           |                         |located. Valid values   |
|                           |                         |are IAD, ORD, DFW, HKG, |
|                           |                         |LON, or SYD).           |
+---------------------------+-------------------------+------------------------+
|IPAddress                  |                         |Public IPv4 address of  |
|                           |                         |the Cloud Server.       |
+---------------------------+-------------------------+------------------------+
|IsDisabled                 |                         |Indicates if the        |
|                           |                         |Rackspace Cloud Backup  |
|                           |                         |agent on the server is  |
|                           |                         |disabled. Valid values  |
|                           |                         |are true or false.      |
+---------------------------+-------------------------+------------------------+
|IsEncrypted                |                         |Indicates if backups    |
|                           |                         |are encrypted. Valid    |
|                           |                         |values are true or      |
|                           |                         |false.                  |
+---------------------------+-------------------------+------------------------+
|MachineAgentId             |                         |ID that uniquely        |
|                           |                         |identifies a Cloud      |
|                           |                         |Backup agent.           |
+---------------------------+-------------------------+------------------------+
|MachineName                |                         |Name of the Cloud       |
|                           |                         |Server.                 |
+---------------------------+-------------------------+------------------------+
|OperatingSystem            |                         |Operating system of     |
|                           |                         |Cloud Server.           |
+---------------------------+-------------------------+------------------------+
|OperatingSystemVersion     |                         |Operating system        |
|                           |                         |version of Cloud Server.|
+---------------------------+-------------------------+------------------------+
|PublicKey                  |                         |Public key of the       |
|                           |                         |public/private          |
|                           |                         |encryption key pair.    |
+---------------------------+-------------------------+------------------------+
|Status                     |                         |Status of the Cloud     |
|                           |                         |Backup agent. Valid     |
|                           |                         |values are Online or    |
|                           |                         |Offline.                |
+---------------------------+-------------------------+------------------------+
|TimeOfLastSuccessfulBackup |                         |Time of last successful |
|                           |                         |backup.                 |
+---------------------------+-------------------------+------------------------+
|UseServiceNet              |                         |Indicates if the Cloud  |
|                           |                         |Backup agent is using   |
|                           |                         |ServiceNet to backup    |
|                           |                         |data to Cloud Files.    |
|                           |                         |Valid values are true   |
|                           |                         |or false.               |
+---------------------------+-------------------------+------------------------+
|UseFailoverUri             |                         |Indicates if a failover |
|                           |                         |URI should be used.     |
|                           |                         |Valid values are true   |
|                           |                         |or false.               |
+---------------------------+-------------------------+------------------------+





**Example Update Agent Backup Behavior: JSON response**


.. code::

    {
        "AgentVersion": "1.05.005848",
        "Architecture": "64-bit",
        "Flavor":"RaxCloudServer",
        "BackupVaultSize": "35.3 MB",
        "CleanupAllowed": true,
        "Datacenter": "DFW",
        "BackupDataCenter": "DFW",
        "IPAddress": "192.168.1.1",
        "IsDisabled": false,
        "IsEncrypted": true,
        "MachineAgentId": 213564,
        "MachineName": "Web Server",
        "OperatingSystem": "Windows Server 2012",
        "OperatingSystemVersion":"",
        "PublicKey": {
             "ModulusHex": "a5261939156948bb7a58dffe5ff89e65f0498f9175f5a 98288810b8975871e99af3b5dd94057b0fc07535f5f97444504fa35169d4 61d0d30cf0192e307727c065168c788771c561a9400fb61975e9e6aa4e23 fe11af69e9412dd23b0cb6684c4c2429bce139e848ab26d0829073351f4a cd36074eafd036a5eb83359d2a698d0",
            "ExponentHex": "09528"
        },
        "Status": "Online",
        "TimeOfLastSuccessfulBackup": "\/Date(1358752980000)\/",
        "UseServiceNet": true,
        "UseFailoverUri": true
    }

