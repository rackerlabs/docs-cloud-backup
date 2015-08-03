
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List All Agents For This User
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v1.0/{tenant_id}/user/agents

Retrieves information for all agents for the current user.

.. note::
   Cloud Backup agent ``Status`` is always ``Offline`` in this call.
   
    To get the correct values for ``Status`` and ``TimeOfLastSuccessfulBackup``, use the operation described in `"List agent details" <http://docs.rackspace.com/rcbu/api/v1.0/rcbu-devguide/content/GET_getAgentDetails_v1.0__tenant_id__agent__machineAgentId__Agent.html>`__.
   
   



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
|503                       |Service Unavailable      |This is a generic server |
|                          |                         |error. The message       |
|                          |                         |contains the reason for  |
|                          |                         |the error. This error    |
|                          |                         |could wrap several error |
|                          |                         |messages.                |
+--------------------------+-------------------------+-------------------------+


Request
""""""""""""""""

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{tenant_id}               |xsd:string               |The unique identifier of |
|                          |                         |the tenant or account.   |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List All Agents For This User: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v1.0/1234/user/agents
    User-Agent: controlpanel.drivesrvr.com
    Host: dfw.backup.api.rackspacecloud.com
    Content-Type: application/json;
    Content-Length: 0
    X-Auth-Token: 95b1788906f74d279d03001c6a14f3fe


Response
""""""""""""""""


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
|BackupContainer            |                         |Full public URI for     |
|                           |                         |Cloud Files where       |
|                           |                         |backups are stored for  |
|                           |                         |this agent.             |
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





**Example List All Agents For This User: JSON response**


.. code::

    [
      {
      "AgentVersion": "1.05.005848",
      "Architecture": "64-bit",
      "BackupVaultSize": "35.3 MB",
      "BackupContainer": "https://storage101.DC.clouddrive.com/v1/yourAccount/CloudBackup_v2_0_yourUUID",
      "CleanupAllowed": true,
      "Datacenter": "DFW",
      "Flavor": "RaxCloudServer",
      "IPAddress": "192.168.1.1",
      "IsDisabled": false,
      "IsEncrypted": true,
      "MachineAgentId": 213563,
      "MachineName": "Web Server2",
      "OperatingSystem": "Windows Server 2012",
      "OperatingSystemVersion": "",
      "PublicKey": {
        "ExponentHex": 09528,
        "ModulusHex": "a5261939156948bb7a58dffe5ff89e65f0498f9175f5a 98288810b8975871e99af3b5dd94057b0fc07535f5f97444504fa35169d4 61d0d30cf0192e307727c065168c788771c561a9400fb61975e9e6aa4e23 fe11af69e9412dd23b0cb6684c4c2429bce139e848ab26d0829073351f4a cd36074eafd036a5eb83359d2a698d0"
     
      },
      "Status": "Online",
      "TimeOfLastSuccessfulBackup": null,
      "UseServiceNet": true
      },
      {
      "AgentVersion": "1.05.005848",
      "Architecture": "64-bit",
      "BackupVaultSize": "35.3 MB",
      "BackupContainer": "https://storage101.DC.clouddrive.com/v1/yourAccount/CloudBackup_v2_0_yourUUID",
      "CleanupAllowed": true,
      "Flavor": "RaxCloudServer",
      "Datacenter": "DFW",
      "IPAddress": "192.168.1.3",
      "IsDisabled": false,
      "IsEncrypted": true,
      "MachineAgentId": 213564,
      "MachineName": "Web Server",
      "OperatingSystem": "Windows Server 2012",
      "OperatingSystemVersion": "",
      "PublicKey": {
        "ExponentHex": 82374,
        "ModulusHex": "a5261939156948bb7a58dffe5ff89e65f0498f9175f5a982888 10b8975871e99af3b5dd94057b0fc07535f5f97444504fa35169d461d0d30cf0 192e307727c065168c788771c561a9400fb61975e9e6aa4e23fe11af69e 9412dd23b0cb6684c4c2429bce139e848ab26d0829073351f4 acd360723324234234234234234234abc2"
    
      },
      "Status": "Online",
      "TimeOfLastSuccessfulBackup": null,
      "UseServiceNet": true
      }
    ]

