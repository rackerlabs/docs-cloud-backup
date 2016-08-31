.. _get-list-details-about-a-backup:

Retrieve details about a backup
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/backups/{backup_id}

This operation retrieves details about the specified backup.

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
|{backup_id}               |String                   |Backup ID. For example,  |
|                          |                         |``0d95d699-d16b-11e4-    |
|                          |                         |93bd-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve details about a backup, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Accept: application/json
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+-----------------------+-------------------+----------------------------------+
|Name                   |Type               |Description                       |
+=======================+===================+==================================+
|\ **project_id**       |String             |ID of the project.                |
+-----------------------+-------------------+----------------------------------+
|\ **id**               |String             |ID of the backup.                 |
+-----------------------+-------------------+----------------------------------+
|\ **agent**            |String             |Information about the agent for   |
|                       |                   |the backup.                       |
+-----------------------+-------------------+----------------------------------+
|agent.\ **id**         |String             |ID of the agent.                  |
+-----------------------+-------------------+----------------------------------+
|agent.\ **links**      |String             |Link for the agent of the backup. |
+-----------------------+-------------------+----------------------------------+
|agent.links.\ **href** |String             |Location (URI) of the agent.      |
+-----------------------+-------------------+----------------------------------+
|agent.links.\ **rel**  |String             |How the href link provided is     |
|                       |                   |related to this resource URI.     |
+-----------------------+-------------------+----------------------------------+
|\ **configuration**    |String             |Information about the backup      |
|                       |                   |configuration.                    |
+-----------------------+-------------------+----------------------------------+
|configuration.\ **id** |String             |ID of the configuration.          |
+-----------------------+-------------------+----------------------------------+
|configuration.\        |String             |Link for the configuration for    |
|**links**              |                   |the backup.                       |
+-----------------------+-------------------+----------------------------------+
|configuration.links.\  |String             |Location (URI) of the             |
|**href**               |                   |configuration.                    |
+-----------------------+-------------------+----------------------------------+
|configuration.links.\  |String             |How the href link provided is     |
|**rel**                |                   |related to this resource URI.     |
+-----------------------+-------------------+----------------------------------+
|\ **state**            |String             |State of the back. For example,   |
|                       |                   |``completed_with_errors``.        |
+-----------------------+-------------------+----------------------------------+
|\ **started_time**     |String             |Time that the backup started.     |
+-----------------------+-------------------+----------------------------------+
|\ **ended_time**       |String             |Time that the backup ended.       |
+-----------------------+-------------------+----------------------------------+
|\ **snapshot_id**      |String             |ID of the snapshot.               |
+-----------------------+-------------------+----------------------------------+
|\ **errors**           |String             |Information about errors.         |
+-----------------------+-------------------+----------------------------------+
|errors.\ **count**     |Integer            |Number of errors.                 |
+-----------------------+-------------------+----------------------------------+
|errors.\ **reason**    |String             |Cause of the error. For example,  |
|                       |                   |``unable_to_process_some_files``. |
+-----------------------+-------------------+----------------------------------+
|errors.\               |String             |Additional information about the  |
|**diagnostics**        |                   |cause of the error. For example,  |
|                       |                   |``Some files could not be backed  |
|                       |                   |up. Partial list follows.``       |
+-----------------------+-------------------+----------------------------------+
|errors.\ **links**     |String             |Links for the errors.             |
+-----------------------+-------------------+----------------------------------+
|errors.links.\ **href**|String             |Location (URI) of the errors.     |
+-----------------------+-------------------+----------------------------------+
|errors.links.\ **rel** |String             |How the href link provided is     |
|                       |                   |related to this resource URI.     |
+-----------------------+-------------------+----------------------------------+
|\ **files_searched**   |Integer            |Number of files searched.         |
+-----------------------+-------------------+----------------------------------+
|\ **files_backed_up**  |Integer            |Number of files backed up.        |
+-----------------------+-------------------+----------------------------------+
|\ **bytes_searched**   |Integer            |Number of bytes searched.         |
+-----------------------+-------------------+----------------------------------+
|\ **bytes_backed_up**  |Integer            |Number of bytes backed up.        |
+-----------------------+-------------------+----------------------------------+
|\ **bytes_in_db**      |Integer            |Number of bytes in the backup     |
|                       |                   |database.                         |
+-----------------------+-------------------+----------------------------------+
|\ **bandwidth_avg_bps**|Integer            |Average bandwidth in bytes per    |
|                       |                   |second.                           |
+-----------------------+-------------------+----------------------------------+
|\ **restorable**       |Boolean            |Specifies whether the backup can  |
|                       |                   |be used for restores.             |
+-----------------------+-------------------+----------------------------------+
|\ **links**            |String             |Links for the backup.             |
+-----------------------+-------------------+----------------------------------+
|links.\ **href**       |String             |Location (URI) of the backup.     |
+-----------------------+-------------------+----------------------------------+
|links.\ **rel**        |String             |How the href link provided is     |
|                       |                   |related to this resource URI.     |
+-----------------------+-------------------+----------------------------------+

**Example: Retrieve details about a backup, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "project_id": "123456",
       "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
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
       "state": "completed_with_errors",
       "started_time": "2014-08-05T18:22:22.238641Z",
       "ended_time": "2014-08-05T18:23:50.489715Z",
       "snapshot_id": 1111,
       "errors": {
           "count": 1,
           "reason": "unable_to_process_some_files",
           "diagnostics": "Some files could not be backed up. Partial list follows.",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/errors",
                   "rel": "full"
               }
           ]
       },
       "files_searched": 1222,
       "files_backed_up": 6,
       "bytes_searched": 3700000000,
       "bytes_backed_up": 127000000,
       "bytes_in_db": 49340871,
       "bandwidth_avg_bps": 16628982,
       "restorable": true,
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
               "rel": "self"
           },
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/events",
               "rel": "events"
           }
       ]
   }
