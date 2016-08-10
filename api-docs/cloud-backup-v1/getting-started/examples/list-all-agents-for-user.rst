.. _list-all-agents:

Listing all agents for the user
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The agent is an important component of Cloud Backup. You must install
the agent on all servers that you want to back up. Documentation about
installing agents is available from the link on Rackspace Control Panel
under the **Backup** tab or at
:how-to:`Install the agent on Linux<rackspace-cloud-backup-install-the-agent-on-linux>`.
After the agent is installed on one or many servers, you can use the
Cloud Backup API to configure your backups.

..  note::
    If your account has the Managed Operations level of support, the Cloud
    Backup agent might already be installed on your server. If your cloud
    servers are listed under the **Systems** tab in the \ **Backup** section
    of the Cloud Control Panel, then the Cloud Backup agent is already
    installed. If it is not, Rackspace can install it for you. Check with
    your account manager.

Assuming that you initially know nothing about the environment, in order
to do anything with the backups, you need to list the agents. After you
list them, you can choose the one you want to work with.
``MachineAgentId`` is what you need to work with the agent in other
requests.

The HTTP request must include a header to specify the authentication
token.

An HTTP status code of 200 (OK) indicates that the request succeeded.

**Example: cURL list all agents for the user request**

.. code::

   curl -s -X GET $API_ENDPOINT/v1.0/$TENANT_ID/user/agents \
   -H "X-Auth-Token: $AUTH_TOKEN" | python -m json.tool

**Example: List all agents for the user response**

.. code::

   [
        {
            "AgentVersion": "1.10.006176",
            "Architecture": "64-bit",
            "BackupContainer": "https://storage101.dfw1.clouddrive.com/v1/MossoCloudFS_aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee/z_DO_NOT_DELETE_CloudBackup_v2_0_aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
            "BackupDatacenter": "DFW",
            "BackupVaultSize": null,
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
            "Status": "Unknown",
            "TimeOfLastSuccessfulBackup": null,
            "UseFailoverUri": false,
            "UseServiceNet": true
        }
    ]
