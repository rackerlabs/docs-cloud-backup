
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _post-start-a-backup-v2-project-id-backups:

Start a backup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/backups

Starts a backup. 

This operation starts a backup. Start backups by specifying one of the following states: 

* ``start_requested`` : A manual backup is requested by a user.
* ``start_scheduled`` : A scheduled backup is started by the agent.






This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|201                       |Created                  |                         |
+--------------------------+-------------------------+-------------------------+
|400                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|401                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|403                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|404                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|405                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|409                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|500                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|503                       |                         |                         |
+--------------------------+-------------------------+-------------------------+


Request
""""""""""""""""




This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|configuarion_id           |String *(Required)*      |ID of the configuration, |
|                          |                         |for example, ``7c8ee069- |
|                          |                         |568f-4d5a-932f-          |
|                          |                         |fb2af86b5fd5``,          |
|                          |                         |``abf89721-616e-4922-    |
|                          |                         |94d4-29757d6a8671``.     |
+--------------------------+-------------------------+-------------------------+
|\ **state**               |String *(Required)*      |Backup state. Either     |
|                          |                         |``start_requested``, a   |
|                          |                         |manual backup requested  |
|                          |                         |by a user, or            |
|                          |                         |``start_scheduled``, a   |
|                          |                         |scheduled backup started |
|                          |                         |by the agent.            |
+--------------------------+-------------------------+-------------------------+





**Example Start a backup: JSON request**


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
""""""""""""""""





This table shows the body parameters for the response:

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
|\ **configuration**    |String             |Information about the             |
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
|\ **state**            |String             |State of the backup, for example, |
|                       |                   |``start_requested``.              |
+-----------------------+-------------------+----------------------------------+
|\ **started_time**     |String             |Time the backup started.          |
+-----------------------+-------------------+----------------------------------+
|\ **ended_time**       |String             |Time the backup ended.            |
+-----------------------+-------------------+----------------------------------+
|\ **snapshot_id**      |String             |ID of the snapshot.               |
+-----------------------+-------------------+----------------------------------+
|\ **errors**           |String             |Information about errors.         |
+-----------------------+-------------------+----------------------------------+
|errors.\ **count**     |String             |Number of errors.                 |
+-----------------------+-------------------+----------------------------------+
|errors.\ **reason**    |String             |Cause of the error, for example,  |
|                       |                   |``unable_to_process_some_files``. |
+-----------------------+-------------------+----------------------------------+
|errors.\               |String             |Additional information about the  |
|**diagnostics**        |                   |cause of the error, for example,  |
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
|\ **files_searched**   |String             |Number of files searched.         |
+-----------------------+-------------------+----------------------------------+
|\ **files_backed_up**  |String             |Number of files backed up.        |
+-----------------------+-------------------+----------------------------------+
|\ **bytes_searched**   |String             |Number of bytes searched.         |
+-----------------------+-------------------+----------------------------------+
|\ **bytes_backed_up**  |String             |Number of bytes backed up.        |
+-----------------------+-------------------+----------------------------------+
|\ **bytes_in_db**      |String             |Number of bytes in the backup     |
|                       |                   |database.                         |
+-----------------------+-------------------+----------------------------------+
|\ **bandwidth_avg_bps**|String             |Average bandwidth in bytes per    |
|                       |                   |second.                           |
+-----------------------+-------------------+----------------------------------+
|\ **restorable**       |String             |Specifies whether the backup can  |
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







**Example Start a backup: JSON response**


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




