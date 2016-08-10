.. _list-agent-details:

Listing agent details
~~~~~~~~~~~~~~~~~~~~~

To check whether the agent is online, list the agent's details and check
its status. If the agent is not online, Cloud Backup cannot run the
backup job. Use ``MachineAgentId`` from
:ref:`List all agents for the user<list-all-agents>` for
**yourMachineAgentID**.

The HTTP request must include a header to specify the authentication
token.

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.

 
**Example: cURL list agent details request**

.. code::

   curl -s -X GET $API_ENDPOINT/v1.0/$TENANT_ID/agent/yourMachineAgentID  \
   -H "X-Auth-Token: $AUTH_TOKEN" | python -m json.tool

**Example: List agent details response**

.. code::

   {
        "AgentVersion": "1.10.006176",
        "Architecture": "64-bit",
        "BackupContainer": "https://storage101.dfw1.clouddrive.com/v1/MossoCloudFS_aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/z_DO_NOT_DELETE_CloudBackup_v2_0_aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
        "BackupDatacenter": "DFW",
        "BackupVaultSize": "35.3 KB",
        "CleanupAllowed": true,
        "Datacenter": "DFW",
        "Flavor": "RaxCloudServer",
        "HostServerId": "79aa4aa1-cd86-4416-a6c4-6942b7083130",
        "IPAddress": "162.209.73.233",
        "IsDisabled": false,
        "IsEncrypted": false,
        "MachineAgentId": 202743,
        "MachineName": "web2",
        "OperatingSystem": "Windows Server 2008 R2",
        "OperatingSystemVersion": "6.1",
        "PublicKey": {
            "ExponentHex": 10001,
            "ModulusHex": "C6054E90E32D2B25E16F3A560E1B4DC580B1E4AB74E0C66268 0DD8A1BD83956051F6A526B16C55225D1BE6E0B1265F4085FB2F61B61337F5D32198E5CAFFEA CD50E90517A329146E43B20194C082A9C890060AD07A542FBC035B2A96F9F212C6D94887BECB 5E15F3E55397B975B1896CFC66EBB5DD7D83587467A0E7F669ADB925A7BE4C1ECED1BC9E92DB 768CE76FDC86CCDD04BDF469679FE3261AA66C22AC6263E540B79780AAF09CFC798CDC4D1218 867388632EA4BD1BF511E4881E07C5387DDDBE741E615ACA0C32A738F5B952F1C17051EC3BAF 9F64C629515EA2AF93E6BB450A8B1B3E02963471679D5670AF93CFEA649172EDA7AC5E071E2D 3AF0BD"
        },
        "Status": "Online",
        "TimeOfLastSuccessfulBackup": null,
        "UseFailoverUri": false,
        "UseServiceNet": true
    }
