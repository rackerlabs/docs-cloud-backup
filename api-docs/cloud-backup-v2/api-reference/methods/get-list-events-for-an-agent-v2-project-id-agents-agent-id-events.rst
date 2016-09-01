.. _get-list-events-for-an-agent:

Retrieve events for an agent
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/agents/{agent_id}/events

This operation retrieves all events for the specified agent. You should consider
these events to be transient because they might disappear after a minute or so.
Therefore, this operation is most useful for monitoring an agent's current activity.

You can find additional event information in the following operation descriptions:

* ``GET /v2/agents/{id}/browse-request/{request_id}`` (See :ref:`View results of a browse request for an agent <get-view-results-of-a-browse-request-for-an-agent>`.)
* ``GET /v2/agents/{id}/vault-encryption-request/{request_id}`` (See :ref:`Lists results of a vault encryption request <get-lists-results-of-a-vault-encryption-request>`.)
* ``GET /v2/agents/{id}/vault-password-verification-request/{request_id}`` (See :ref:`View results for a vault password verification request <get-list-results-for-a-vault-password-verification-request>`.)
* ``GET /v2/backups/{id}/browse-request/{request_id}`` (See :ref:`View results of a browse request for a backup <get-view-results-of-a-browse-request-for-a-backup>`.)
* ``GET /v2/backups/{id}/events`` (See :ref:`List events for a backup <get-list-events-for-a-backup>`.)
* ``GET /v2/cleanups/{id}/events`` (See :ref:`List events for a cleanup <get-list-events-for-a-cleanup>`.)
* ``GET /v2/restores/{id}/events`` (See :ref:`List events for a restore <get-list-events-for-a-restore>`.)

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|200            | OK              | The request succeeded.                                    |
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
|{agent_id}                |String                   |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+

The following table shows the query parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |String                   |Event ID. For example,   |
|                          |                         |``5152883998``. Only     |
|                          |                         |events newer than the    |
|                          |                         |event specified by       |
|                          |                         |``marker`` are returned. |
|                          |                         |This parameter is most   |
|                          |                         |useful when you are      |
|                          |                         |continuously monitoring  |
|                          |                         |this endpoint for new    |
|                          |                         |events, so that old      |
|                          |                         |events are not           |
|                          |                         |repeatedly listed for    |
|                          |                         |you in subsequent calls. |
+--------------------------+-------------------------+-------------------------+
|limit                     |Integer                  |The number of events to  |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |String                   |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are ``asc`` and          |
|                          |                         |``desc``. The default    |
|                          |                         |value is ``asc``.        |
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve events for an agent, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/events?marker=5152883998&limit=100&sort_dir=desc HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+-------------------------------+---------+------------------------------------+
|Name                           |Type     |Description                         |
+===============================+=========+====================================+
|\ **events**                   |String   |Information about events for the    |
|                               |         |agent.                              |
+-------------------------------+---------+------------------------------------+
|events.\ **id**                |String   |ID of the event.                    |
+-------------------------------+---------+------------------------------------+
|events.\ **time**              |String   |Time of the event.                  |
+-------------------------------+---------+------------------------------------+
|events.\ **event**             |String   |Type of the event. You can see the  |
|                               |         |types of events in the response     |
|                               |         |example that follows this table.    |
+-------------------------------+---------+------------------------------------+
|events.\ **agent**             |String   |Information about the agent for     |
|                               |         |each ``event`` except ``mode``.     |
+-------------------------------+---------+------------------------------------+
|events.agent.\ **id**          |String   |ID of agent.                        |
+-------------------------------+---------+------------------------------------+
|events.agent.\ **name**        |String   |Name of the agent.                  |
+-------------------------------+---------+------------------------------------+
|events.agent.\ **host**        |String   |Information about the host.         |
+-------------------------------+---------+------------------------------------+
|events.agent.host.\ **os**     |String   |Information about the operating     |
|                               |         |system for the host.                |
+-------------------------------+---------+------------------------------------+
|events.agent.host.os.\ **name**|String   |Name of the operating system.       |
+-------------------------------+---------+------------------------------------+
|events.agent.host.os.\         |String   |Version of the operating system.    |
|**version**                    |         |                                    |
+-------------------------------+---------+------------------------------------+
|events.agent.host.os.\         |String   |Architecture of the operating       |
|**architecture**               |         |system.                             |
+-------------------------------+---------+------------------------------------+
|events.\ **request_id**        |String   |ID of the request when ``event`` is |
|                               |         |``agent_activate``,                 |
|                               |         |``agent_registered``,               |
|                               |         |``agent_shutdown``,                 |
|                               |         |``configuration_changed``,          |
|                               |         |``vault_encryption_enable``,        |
|                               |         |``vault_encryption_change``,        |
|                               |         |``vault_password_verify``,          |
|                               |         |``vault_db_download_in_progress``,  |
|                               |         |``vault_db_download_completed``,    |
|                               |         |``vault_db_download_failed``,       |
|                               |         |``host_browse``,                    |
|                               |         |``logfile_upload``,                 |
|                               |         |``logfile_upload``, or              |
|                               |         |``logfile_completed``.              |
+-------------------------------+---------+------------------------------------+
|events.\ **mode**              |String   |Mode of the event when ``event`` is |
|                               |         |``agent_activate``.                 |
+-------------------------------+---------+------------------------------------+
|events.\                       |String   |Encrypted old password when         |
|**old_encrypted_password_hex** |         |``event`` is                        |
|                               |         |``vault_encryption_change``.        |
+-------------------------------+---------+------------------------------------+
|events.\                       |String   |Encrypted new password when         |
|**new_encrypted_password_hex** |         |``event`` is                        |
|                               |         |``vault_encryption_change``.        |
+-------------------------------+---------+------------------------------------+
|events.\                       |String   |Encrypted password when ``event``   |
|**encrypted_password_hex**     |         |is ``vault_encryption_enable`` or   |
|                               |         |``vault_password_verify``.          |
+-------------------------------+---------+------------------------------------+
|events.\ **path**              |String   |Path to browse when ``event`` is    |
|                               |         |``host_browse``.                    |
+-------------------------------+---------+------------------------------------+
|events.\ **path_encoded**      |String   |Encoded path to browse when         |
|                               |         |``event`` is ``host_browse``.       |
+-------------------------------+---------+------------------------------------+
|events.\ **links**             |String   |Link information when ``event`` is  |
|                               |         |``logfile_upload``.                 |
+-------------------------------+---------+------------------------------------+
|events.links.\ **href**        |String   |Location (URI) of event.            |
+-------------------------------+---------+------------------------------------+
|events.links.\ **rel**         |String   |How the href link provided is       |
|                               |         |related to this resource URI.       |
+-------------------------------+---------+------------------------------------+
|\ **links**                    |String   |Link information for the next and   |
|                               |         |previous events.                    |
+-------------------------------+---------+------------------------------------+
|links.\ **href**               |String   |Location (URI).                     |
+-------------------------------+---------+------------------------------------+
|links.\ **rel**                |String   |How the href link provided is       |
|                               |         |related to this resource URI.       |
+-------------------------------+---------+------------------------------------+

**Example: Retrieve events for an agent, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "events": [
           {
               "id": "5650135582",
               "time": "2014-10-09T12:26:14.233501Z",
               "event": "agent_registered",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
                   "name": "Web Server",
                   "host": {
                       "os": {
                           "name": "Ubuntu",
                           "version": "14.04",
                           "architecture": "64-bit"
                       }
                   }
               },
               "request_id": "a3ab3016-5af4-4a4a-a1ea-46a37b04b327"
           },
           {
               "id": "5650135583",
               "time": "2014-10-09T12:26:15.233501Z",
               "event": "agent_activate",
               "mode": "active",
               "request_id": "129cf219-d260-43e4-9164-233fd0ea3a6b"
           },
           {
               "id": "5650135584",
               "time": "2014-10-09T12:26:16.233501Z",
               "event": "agent_heartbeat",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               }
           },
           {
               "id": "5650135585",
               "time": "2014-10-09T12:26:17.233501Z",
               "event": "agent_shutdown",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "1a6ded7a-03f0-4f2e-bbee-bc2d9973c980"
           },
           {
               "id": "5650135586",
               "time": "2014-10-09T12:26:18.233501Z",
               "event": "configuration_changed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "4a0d123c-43ac-4556-a232-6c3a8c00d4ce"
           },
           {
               "id": "5650135587",
               "time": "2014-10-09T12:26:19.233501Z",
               "event": "vault_encryption_enable",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "9072bb51-d5fd-4fc5-ad80-d62e573236b6",
               "encrypted_password_hex": "0bff42a526c78076a3d986fa75eecd 83211f166fd7692797cdde2317faee544e3300614fd54b8c0d81f975 3e58cb1ffbd62d3faf0d2bf52e79ce5cd9c6d84b5295e3dea629e71b 0a5e26efda50ff8e05a5475bb7cbd553d238c05655f56ece2df070ce 374ff1e0724827c2300e373241e94c4bc13441561604e3e70b5034eb 58d717864f304c9c73b6d1d46c4276d7ec2f0e2bd9a42a8ab0ba99eb adda84f4cbb5b3611bd319627436246912139c2dde62bd00528b1464 20dceae949d1926ae05fc7df9b474e1ee176f89069fb424b12f8f357 e6e2909ba05152e9f72a68de0046b3e1520838ff5e723af02a96f51a c1e6ef4254226249b872676af76a319cbe"
           },
           {
               "id": "5650135588",
               "time": "2014-10-09T12:26:20.233501Z",
               "event": "vault_encryption_change",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "a072bb51-d5fd-4fc5-ad80-d62e573236b6",
               "old_encrypted_password_hex": "1bff42a526c78076a3d986fa75eecd 83211f166fd7692797cdde2317faee544e3300614fd54b8c0d81f975 3e58cb1ffbd62d3faf0d2bf52e79ce5cd9c6d84b5295e3dea629e71b 0a5e26efda50ff8e05a5475bb7cbd553d238c05655f56ece2df070ce 374ff1e0724827c2300e373241e94c4bc13441561604e3e70b5034eb 58d717864f304c9c73b6d1d46c4276d7ec2f0e2bd9a42a8ab0ba99eb adda84f4cbb5b3611bd319627436246912139c2dde62bd00528b1464 20dceae949d1926ae05fc7df9b474e1ee176f89069fb424b12f8f357 e6e2909ba05152e9f72a68de0046b3e1520838ff5e723af02a96f51a c1e6ef4254226249b872676af76a319cbe",
               "new_encrypted_password_hex": "0bff42a526c78076a3d986fa75eecd 83211f166fd7692797cdde2317faee544e3300614fd54b8c0d81f975 3e58cb1ffbd62d3faf0d2bf52e79ce5cd9c6d84b5295e3dea629e71b 0a5e26efda50ff8e05a5475bb7cbd553d238c05655f56ece2df070ce 374ff1e0724827c2300e373241e94c4bc13441561604e3e70b5034eb 58d717864f304c9c73b6d1d46c4276d7ec2f0e2bd9a42a8ab0ba99eb adda84f4cbb5b3611bd319627436246912139c2dde62bd00528b1464 20dceae949d1926ae05fc7df9b474e1ee176f89069fb424b12f8f357 e6e2909ba05152e9f72a68de0046b3e1520838ff5e723af02a96f51a c1e6ef4254226249b872676af76a319cbe"
           },
           {
               "id": "5650135589",
               "time": "2014-10-09T12:26:21.233501Z",
               "event": "vault_password_verify",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "f353f472-4931-463a-9920-1dcad25f88e7",
               "encrypted_password_hex": "0bff42a526c78076a3d986fa75eecd 83211f166fd7692797cdde2317faee544e3300614fd54b8c0d81f975 3e58cb1ffbd62d3faf0d2bf52e79ce5cd9c6d84b5295e3dea629e71b 0a5e26efda50ff8e05a5475bb7cbd553d238c05655f56ece2df070ce 374ff1e0724827c2300e373241e94c4bc13441561604e3e70b5034eb 58d717864f304c9c73b6d1d46c4276d7ec2f0e2bd9a42a8ab0ba99eb adda84f4cbb5b3611bd319627436246912139c2dde62bd00528b1464 20dceae949d1926ae05fc7df9b474e1ee176f89069fb424b12f8f357 e6e2909ba05152e9f72a68de0046b3e1520838ff5e723af02a96f51a c1e6ef4254226249b872676af76a319cbe"
           },
           {
               "id": "5650135590",
               "time": "2014-10-09T12:26:22.233501Z",
               "event": "vault_db_download_in_progress",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "ae7528c8-bcc3-4356-a237-f20fbdd79ee4"
           },
           {
               "id": "5650135591",
               "time": "2014-10-09T12:26:23.233501Z",
               "event": "vault_db_download_completed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "ae7528c8-bcc3-4356-a237-f20fbdd79ee4"
           },
           {
               "id": "5650135592",
               "time": "2014-10-09T12:26:24.233501Z",
               "event": "vault_db_download_failed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "ae7528c8-bcc3-4356-a237-f20fbdd79ee4"
           },
           {
               "id": "5650135593",
               "time": "2014-10-09T12:26:25.233501Z",
               "event": "host_browse",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "16ce47f7-88b2-4983-8b1c-d4a82306ae87",
               "path": "/path/to/browse",
               "path_encoded": "/optional/base64encoded/path/if/non-utf-8/characters/present"
           },
           {
               "id": "5650135594",
               "time": "2014-10-09T12:26:26.233501Z",
               "event": "logfile_upload",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "a533a845-4279-4838-af13-276114e90234",
               "links": [
                   {
                       "href": "https://cloudfilesapi.apiary-mock.com/v1/MossoCloudFS_f14d894e-28cd-4f31-8b08-449ec0876346/CloudBackupLogs/v2/8f135b4f-7a69-4b8a-947f-5e80d772fd97/2014-09-23T12-22-40.606703Z.gz",
                       "rel": "logfile"
                   }
               ]
           },
           {
               "id": "5650135595",
               "time": "2014-10-09T12:26:27.233501Z",
               "event": "logfile_started",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "a533a845-4279-4838-af13-276114e90234"
           },
           {
               "id": "5650135596",
               "time": "2014-10-09T12:26:28.233501Z",
               "event": "logfile_completed",
               "agent": {
                   "id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97"
               },
               "request_id": "a533a845-4279-4838-af13-276114e90234"
           }
       ],
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/events?marker=5650135596",
               "rel": "next"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/events?marker=5650135582&sort_dir=desc",
               "rel": "previous"
           }
       ]
   }
