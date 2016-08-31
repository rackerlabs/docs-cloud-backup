.. _post-register-an-agent:

Register an agent
~~~~~~~~~~~~~~~~~

.. code::

    POST /v2/{project_id}/agents

This operation registers an agent for the specified project.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|201            | Created         | The request was fulfilled and has resulted in one or more |
|               |                 | new resources being created.                              |
+---------------+-----------------+-----------------------------------------------------------+
|400            | Bad Request     | The server cannot process the request because of a client |
|               |                 | error (for example, malformed syntax, invalid request     |
|               |                 | framing, or deceptive request routing).                   |
+---------------+-----------------+-----------------------------------------------------------+
|401            | Unauthorized    | The request was not applied because it lacks valid        |
|               |                 | authentication credentials for the target resource.       |
|               |                 | The credentials are either expired or invalid.            |
+---------------+-----------------+-----------------------------------------------------------+
|403            | Forbidden       | The server understood the request but did not authorize   |
|               |                 | it.                                                       |
+---------------+-----------------+-----------------------------------------------------------+
|404            | Not Found       | The server did not find a current representation for the  |
|               |                 | target resource or cannot disclose that one exists.       |
+---------------+-----------------+-----------------------------------------------------------+
|405            | Method Not      | The method received in the request line is                |
|               | Allowed         | known by the origin server but is not supported by        |
|               |                 | the target resource.                                      |
+---------------+-----------------+-----------------------------------------------------------+
|409            | Conflict        | The request was not completed because of a conflict with  |
|               |                 | the current state of the resource.                        |
+---------------+-----------------+-----------------------------------------------------------+
|500            | Internal Server | The server encountered an unexpected condition            |
|               | Error           | that prevented it from fulfilling the request.            |
+---------------+-----------------+-----------------------------------------------------------+
|501            | Not Implemented | The requested method or resource is not implemented.      |
+---------------+-----------------+-----------------------------------------------------------+
|503            | Service         | The server is currently unable to handle the request      |
|               | Unavailable     | because of a temporary overload or scheduled maintenance, |
|               |                 | which will likely be alleviated after some delay.         |
+---------------+-----------------+-----------------------------------------------------------+

Request
-------

The following table shows the URI parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+

The following table shows the body parameters for the request.

+-----------------------+-----------------------+------------------------------+
|Name                   |Type                   |Description                   |
+=======================+=======================+==============================+
|\ **name**             |String                 |*(Required)*                  |
|                       |                       |Name of the agent.            |
+-----------------------+-----------------------+------------------------------+
|\ **version**          |String                 |*(Required)*                  |
|                       |                       |Version of the agent.         |
+-----------------------+-----------------------+------------------------------+
|\ **host**             |String                 |*(Required)*                  |
|                       |                       |Information about the server  |
|                       |                       |on which the agent resides.   |
+-----------------------+-----------------------+------------------------------+
|host.\ **flavor**      |String                 |*(Required)*                  |
|                       |                       |Flavor of the agent. The      |
|                       |                       |available flavors are         |
|                       |                       |``nova``,                     |
|                       |                       |``rackspace_dedicated``, and  |
|                       |                       |``rackspace_private_cloud``.  |
|                       |                       |Depending on the flavor       |
|                       |                       |specified, the following      |
|                       |                       |notes apply.                  |
|                       |                       |                              |
|                       |                       |``nova``                      |
|                       |                       |                              |
|                       |                       |- Specification of            |
|                       |                       |  ``host/region`` is          |
|                       |                       |  preferred, but it can be    |
|                       |                       |  ``null``.                   |
|                       |                       |                              |
|                       |                       |- Specification of            |
|                       |                       |  ``vault/use_internal`` is   |
|                       |                       |  optional. The default value |
|                       |                       |  is ``true``.                |
|                       |                       |                              |
|                       |                       |``rackspace_dedicated``       |
|                       |                       |                              |
|                       |                       |-  Specification of           |
|                       |                       |   ``host/region`` is         |
|                       |                       |   required.                  |
|                       |                       |                              |
|                       |                       |-  Specification of           |
|                       |                       |   ``vault/use_internal`` is  |
|                       |                       |   optional. The default value|
|                       |                       |   is ``false``.              |
|                       |                       |                              |
|                       |                       |``rackspace_private_cloud``   |
|                       |                       |                              |
|                       |                       |-  Specification of           |
|                       |                       |   ``host/region`` is         |
|                       |                       |   required.                  |
|                       |                       |                              |
|                       |                       |-  Specification of the       |
|                       |                       |   ``vault/use_internal`` is  |
|                       |                       |   optional. The default value|
|                       |                       |   is ``true``.               |
+-----------------------+-----------------------+------------------------------+
|host.\ **region**      |String                 |*(Required)*                  |
|                       |                       |Region of the agent.          |
+-----------------------+-----------------------+------------------------------+
|host.\ **machine**     |String                 |*(Required)*                  |
|                       |                       |Information about the machine.|
+-----------------------+-----------------------+------------------------------+
|host.machine.\ **id**  |String                 |*(Required)*                  |
|                       |                       |Machine ID.                   |
+-----------------------+-----------------------+------------------------------+
|\ **host.**\ **os**    |String                 |*(Required)*                  |
|                       |                       |Information about the         |
|                       |                       |operating system.             |
+-----------------------+-----------------------+------------------------------+
|host.os.\ **name**     |String                 |*(Required)*                  |
|                       |                       |Name of the operating system. |
+-----------------------+-----------------------+------------------------------+
|host.os.\ **version**  |String                 |*(Required)*                  |
|                       |                       |Version of the operating      |
|                       |                       |system.                       |
+-----------------------+-----------------------+------------------------------+
|host.os.\              |String                 |*(Required)*                  |
|                       |                       |Architecture of the operating |
|**architecture**       |                       |system.                       |
+-----------------------+-----------------------+------------------------------+
|host.\ **fingerprint** |String                 |*(Required)*                  |
|                       |                       |String determined by the      |
|                       |                       |agent.                        |
+-----------------------+-----------------------+------------------------------+
|host.\ **addresses**   |String                 |*(Required)*                  |
|                       |                       |Information about the IP      |
|                       |                       |addresses for the host.       |
+-----------------------+-----------------------+------------------------------+
|host.addresses.\       |String                 |*(Required)*                  |
|                       |                       |Version of the address (4 for |
|**version**            |                       |IPv4 or 6 for IPv6).          |
+-----------------------+-----------------------+------------------------------+
|host.\ **addresses**.\ |String                 |*(Required)*                  |
|**addr**               |                       |IP address.                   |
+-----------------------+-----------------------+------------------------------+
|\ **rsa_public_key**   |String                 |*(Required)*                  |
|                       |                       |Information about the RSA     |
|                       |                       |public key.                   |
+-----------------------+-----------------------+------------------------------+
|rsa_public_key.\       |String                 |*(Required)*                  |
|**modulus**            |                       |Modulus for the RSA public    |
|                       |                       |key.                          |
+-----------------------+-----------------------+------------------------------+
|rsa_public_key.\       |String                 |*(Required)*                  |
|**exponent**           |                       |Exponent for the RSA public   |
|                       |                       |key.                          |
+-----------------------+-----------------------+------------------------------+
|\ **vault**            |String                 |Information about the vault.  |
+-----------------------+-----------------------+------------------------------+
|vault.\                |Boolean                |Specifies whether the use of  |
|**use_internal**       |                       |the vault is internal.        |
+-----------------------+-----------------------+------------------------------+

**Example: Register an agent, JSON request**

.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

.. code::

   {
       "name": "Web Server",
       "version": "1.23.008344",
       "host": {
           "flavor": "nova",
           "region": "DFW",
           "machine": {
               "id": "55f83711-85ff-49d6-9a1a-58c67d452c6a"
           },
           "os": {
               "name": "Ubuntu",
               "version": "14.04",
               "architecture": "64-bit"
           },
           "fingerprint": "arbitrary-string-determined-by-agent",
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
       "rsa_public_key": {
           "modulus": "E14F9A88DCFF94478E9FD16ED2CF838AE961FF981F0CA45325D0B60648E93A7C0583E02F661A8D0DB707D9566C91D156F68624C76A0620B1499C93A57FBD068DF12F2EB8F9678988582D55901E78B43F761689BA66F0E1CD6CFE1C1BB779E73EE615791FA2DCBCCE48F8D27DC2523D9E47BC04ECE9A2FE2FDD1C65394B76AEAE3569127E39519AD5A9EEBB7EA077718E2B33066F609127D7125963C9CDC081BE90E1FDC63C9FE5DAF5AB428AEACE258754E35F838AC9611FBC33F0C06A10E6F5B08BE92BE9F577BACE7B3A45D2AA2FEB2C6CF3290258F6051CC4C7428F59BE7D4D0EC3C6B48E9F0274A6022259713D40A34AB4874C762062E2B24783A6E8EA25",
           "exponent": 10001
       },
       "vault": {
           "use_internal": true
       }
   }

Response
--------

The following table shows the body parameters for the response.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **project_id**          |String                   |Project ID.              |
+--------------------------+-------------------------+-------------------------+
|\ **id**                  |String                   |Agent ID.                |
+--------------------------+-------------------------+-------------------------+
|\ **password**            |String                   |Password for the agent.  |
+--------------------------+-------------------------+-------------------------+
|\ **name**                |String                   |Name of the agent.       |
+--------------------------+-------------------------+-------------------------+
|\ **version**             |String                   |Version of the agent.    |
+--------------------------+-------------------------+-------------------------+
|\ **host**                |String                   |Information about the    |
|                          |                         |host.                    |
+--------------------------+-------------------------+-------------------------+
|host.\ **flavor**         |String                   |Flavor of the agent.     |
+--------------------------+-------------------------+-------------------------+
|host.\ **region**         |String                   |Region of the agent.     |
+--------------------------+-------------------------+-------------------------+
|host.\ **machine**        |String                   |Information about the    |
|                          |                         |machine.                 |
+--------------------------+-------------------------+-------------------------+
|host.machine.\ **id**     |String                   |Machine ID.              |
+--------------------------+-------------------------+-------------------------+
|host.machine.\ **links**  |String                   |Links with information   |
|                          |                         |about the machine.       |
+--------------------------+-------------------------+-------------------------+
|host.machine.links.\      |String                   |Location (URI) of the    |
|**href**                  |                         |machine.                 |
+--------------------------+-------------------------+-------------------------+
|host.machine.links.\      |String                   |How the href link        |
|**rel**                   |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|\ **host**.\ **os**       |String                   |Information about the    |
|                          |                         |operating system.        |
+--------------------------+-------------------------+-------------------------+
|host.os.\ **name**        |String                   |Name of the operating    |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|host.os.\ **version**     |String                   |Version of the operating |
|                          |                         |system.                  |
+--------------------------+-------------------------+-------------------------+
|host.os.\ **architecture**|String                   |Architecture of the      |
|                          |                         |operating system.        |
+--------------------------+-------------------------+-------------------------+
|host.\ **addresses**      |String                   |Information about the IP |
|                          |                         |addresses for the host.  |
+--------------------------+-------------------------+-------------------------+
|host.addresses.\          |String                   |Version for the address  |
|**version**               |                         |(4 for IPv4 or 6 for     |
|                          |                         |IPv6) .                  |
+--------------------------+-------------------------+-------------------------+
|host.\ **addresses**.\    |String                   |IP address.              |
|**addr**                  |                         |                         |
+--------------------------+-------------------------+-------------------------+
|\ **enabled**             |Boolean                  |Specifies whether the    |
|                          |                         |agent is enabled.        |
+--------------------------+-------------------------+-------------------------+
|\ **rsa_public_key**      |String                   |Information about the    |
|                          |                         |RSA public key.          |
+--------------------------+-------------------------+-------------------------+
|rsa_public_key.\          |String                   |Modulus for the RSA      |
|**modulus**               |                         |public key.              |
+--------------------------+-------------------------+-------------------------+
|rsa_public_key.\          |String                   |Exponent for the RSA     |
|**exponent**              |                         |public key.              |
+--------------------------+-------------------------+-------------------------+
|\ **vault**               |String                   |Information about the    |
|                          |                         |vault.                   |
+--------------------------+-------------------------+-------------------------+
|vault.\ **id**            |String                   |ID of the vault.         |
+--------------------------+-------------------------+-------------------------+
|vault.\ **name**          |String                   |Name of the vault.       |
+--------------------------+-------------------------+-------------------------+
|vault.\ **state**         |String                   |State of the vault.      |
+--------------------------+-------------------------+-------------------------+
|vault.\ **flavor**        |String                   |Flavor of the vault.     |
+--------------------------+-------------------------+-------------------------+
|vault.\ **encrypted**     |Boolean                  |Specifies whether the    |
|                          |                         |vault is encrypted.      |
+--------------------------+-------------------------+-------------------------+
|vault.\ **region**        |String                   |Region of the vault.     |
+--------------------------+-------------------------+-------------------------+
|vault.\ **use_internal**  |Boolean                  |Specifies whether the    |
|                          |                         |use of the vault is      |
|                          |                         |internal.                |
+--------------------------+-------------------------+-------------------------+
|vault.\ **links**         |String                   |Links with information   |
|                          |                         |about the vault.         |
+--------------------------+-------------------------+-------------------------+
|vault.links.\ **href**    |String                   |Location (URI) of the    |
|                          |                         |vault.                   |
+--------------------------+-------------------------+-------------------------+
|vault.links.\ **rel**     |String                   |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|\ **log_level**           |String                   |Level for the logs.      |
+--------------------------+-------------------------+-------------------------+
|\ **registered_time**     |String                   |Time that the agent was  |
|                          |                         |registered.              |
+--------------------------+-------------------------+-------------------------+
|\ **links**               |String                   |Links with information   |
|                          |                         |about the agents.        |
+--------------------------+-------------------------+-------------------------+
|links.\ **href**          |String                   |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|links.\ **rel**           |String                   |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+

**Example: Register an agent, JSON response**

.. code::

   201 (Created)
   Location: https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd9

.. code::

   {
       "project_id": "123456",
       "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
       "password": "2d0080f9-3a6a-4ef1-b7ea-4c67c5e92796",
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
           "state": "created",
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
