.. _gsg-list-agent-details:

Retrieve agent details
~~~~~~~~~~~~~~~~~~~~~~

To verify whether an agent is enabled, retrieve the agent's details. If the
agent is not online, Cloud Backup cannot run the backup job. Use the agent ID
from :ref:`Retrieve all agents for a project<gsg-list-all-agents>` for the
**yourAgentId** value.

An HTTP status code of 200 (OK) in the response indicates that the
request succeeded.

..  note::
    The environment variable ``$TENANT_ID`` in the cURL request in the
    following example represents the project ID.
 
**Example: Retrieve agent details, cURL request**

.. code::

   curl -s -X GET $API_ENDPOINT/v2/$TENANT_ID/agents/yourAgentId  \
   -H "X-Auth-Token: $AUTH_TOKEN"\
   -H "Accept: application/json"
   -H "Content-Type: application/json" | python -m json.tool

**Example: Retrieve agent details, JSON response**

.. code::

   {
       "project_id": "123456",
       "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
       "name": "Web Server",
       "version": "1.23.008344",
       "host": {
           "flavor": "nova",
           "region": "DFW",
           "machine": {
               "id": "55f83711-85ff-49d6-9a1a-58c67d452c6a",
               "links": [
                   {
                       "href": "https://cloudserversapi.apiary-mock.com/v2/123456/servers/55f83711-85ff-49d6-9a1a-58c67d452c6a",
                       "rel": "full"
                   }
               ]
           },
           "os": {
               "name": "Ubuntu",
               "version": "14.04",
               "architecture": "64-bit"
           },
           "addresses": [
               {
                   "version": 4,
                   "addr": "67.23.10.132"
               },
               {
                   "version": 6,
                   "addr": "::babe:4317:0A83"
               }
           ]
       },
       "enabled": true,
       "rsa_public_key": {
           "modulus": "E14F9A88DCFF94478E9FD16ED2CF838AE961FF981F0CA45325D0B60648E93A7C0583E02F661A8D0DB707D9566C91D156F68624C76A0620B1499C93A57FBD068DF12F2EB8F9678988582D55901E78B43F761689BA66F0E1CD6CFE1C1BB779E73EE615791FA2DCBCCE48F8D27DC2523D9E47BC04ECE9A2FE2FDD1C65394B76AEAE3569127E39519AD5A9EEBB7EA077718E2B33066F609127D7125963C9CDC081BE90E1FDC63C9FE5DAF5AB428AEACE258754E35F838AC9611FBC33F0C06A10E6F5B08BE92BE9F577BACE7B3A45D2AA2FEB2C6CF3290258F6051CC4C7428F59BE7D4D0EC3C6B48E9F0274A6022259713D40A34AB4874C762062E2B24783A6E8EA25",
           "exponent": 10001
       },
       "vault": {
           "id": "7cd999c3-a0c3-4985-99d4-42b544685456",
           "name": "phoenix_7cd999c3-a0c3-4985-99d4-42b544685456",
           "flavor": "swift",
           "encrypted": true,
           "region": "DFW",
           "use_internal": false,
           "links": [
               {
                   "href": "https://cloudfilesapi.apiary-mock.com/v1/MossoCloudFS_f14d894e-28cd-4f31-8b08-449ec0876346/phoenix_7cd999c3-a0c3-4985-99d4-42b544685456",
                   "rel": "publicURL"
               },
               {
                   "href": "https://cloudfilesinternalapi.apiary-mock.com/v1/MossoCloudFS_f14d894e-28cd-4f31-8b08-449ec0876346/phoenix_7cd999c3-a0c3-4985-99d4-42b544685456",
                   "rel": "internalURL"
               }
           ]
       },
       "log_level": "warn",
       "registered_time": "2014-10-27T18:22:00.238640+00:00",
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97",
               "rel": "self"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/activities",
               "rel": "activities"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/configuration",
               "rel": "configuration"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/configurations",
               "rel": "configurations"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/events",
               "rel": "events"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles",
               "rel": "logfiles"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/status",
               "rel": "status"
           }
       ]
   }
