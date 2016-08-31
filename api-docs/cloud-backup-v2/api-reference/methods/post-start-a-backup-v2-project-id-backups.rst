.. _post-start-a-backup:

Start a backup
~~~~~~~~~~~~~~

.. code::

    POST /v2/{project_id}/backups

This operation starts a backup.

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

The following table shows the header parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|X-Agent-Id                |String                   |Agent ID, which is       |
|                          |                         |required when you        |
|                          |                         |specify the state        |
|                          |                         |``start_scheduled``. For |
|                          |                         |example, ``8f135b4f-7a69-|
|                          |                         |4b8a-947f-5e80d772fd97``.|
+--------------------------+-------------------------+-------------------------+

The following table shows the URI parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+

The following table shows the body parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|**configuration_id**      |String                   |*(Required)*             |
|                          |                         |ID of the backup         |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|**state**                 |String                   |*(Required)*             |
|                          |                         |The state of the backup. |
|                          |                         |Valid values are         |
|                          |                         |``start_requested`` and  |
|                          |                         |``start_scheduled``.     |
|                          |                         |                         |
|                          |                         |-  ``start_requested`` is|
|                          |                         |   for a manual backup   |
|                          |                         |   that is requested by a|
|                          |                         |   user.                 |
|                          |                         |                         |
|                          |                         |-  ``start_scheduled`` is|
|                          |                         |   for a scheduled backup|
|                          |                         |   that is started by the|
|                          |                         |   agent.                |
|                          |                         |   ``start_scheduled``   |
|                          |                         |   requires that the     |
|                          |                         |   ``X-Agent-Id`` header |
|                          |                         |   is in the request.    |
+--------------------------+-------------------------+-------------------------+

**Example: Start a backup, JSON request**

.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/backups HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

.. code::

   {
       "configuration_id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
       "state": "start_requested"
   }

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
|agent.\ **links**      |String             |Link information for the agent    |
|                       |                   |for the backup.                   |
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
|configuration.\        |String             |Link information about the        |
|**links**              |                   |configuration for the backup.     |
+-----------------------+-------------------+----------------------------------+
|configuration.links.\  |String             |Location (URI) of the             |
|**href**               |                   |configuration.                    |
+-----------------------+-------------------+----------------------------------+
|configuration.links.\  |String             |How the href link provided is     |
|**rel**                |                   |related to this resource URI.     |
+-----------------------+-------------------+----------------------------------+
|\ **state**            |String             |State of the backup. For example, |
|                       |                   |``start_requested``.              |
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
|errors.\ **links**     |String             |Links for information about the   |
|                       |                   |errors.                           |
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
|\ **links**            |String             |Links with information about the  |
|                       |                   |backup.                           |
+-----------------------+-------------------+----------------------------------+
|links.\ **href**       |String             |Location (URI) of the backup.     |
+-----------------------+-------------------+----------------------------------+
|links.\ **rel**        |String             |How the href link provided is     |
|                       |                   |related to this resource URI.     |
+-----------------------+-------------------+----------------------------------+

**Example: Start a backup, JSON response**

.. code::

   201 (Created)
   Content-Type: application/json
   Location: https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d

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
       "state": "start_requested",
       "started_time": null,
       "ended_time": null,
       "snapshot_id": null,
       "errors": {
           "count": 0,
           "reason": "",
           "diagnostics": "",
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/errors",
                   "rel": "full"
               }
           ]
       },
       "files_searched": 0,
       "files_backed_up": 0,
       "bytes_searched": 0,
       "bytes_backed_up": 0,
       "bytes_in_db": 0,
       "bandwidth_avg_bps": 0,
       "restorable": false,
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
