
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List Details About A Backup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/backups/{backup_id}

Lists details about the specified backup. 

This operation lists details about the specified backup.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|200                       |OK                       |                         |
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
|{project_id}              |xsd:string               |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{backup_id}               |xsd:string *(Required)*  |Backup ID. For example,  |
|                          |                         |``0d95d699-d16b-11e4-    |
|                          |                         |93bd-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List Details About A Backup: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Accept: application/json
    Content-type: application/json


Response
""""""""""""""""


This table shows the body parameters for the response:

+---------------------+---------------------+----------------------------------+
|Name                 |Type                 |Description                       |
+=====================+=====================+==================================+
|project_id           |                     |ID of the project.                |
+---------------------+---------------------+----------------------------------+
|id                   |                     |ID of the backup.                 |
+---------------------+---------------------+----------------------------------+
|agent                |                     |Information about the agent for   |
|                     |                     |the backup.                       |
+---------------------+---------------------+----------------------------------+
|id                   |                     |ID of the agent.                  |
+---------------------+---------------------+----------------------------------+
|links                |                     |Link for the agent of the backup. |
+---------------------+---------------------+----------------------------------+
|href                 |                     |Location (URI) of the agent.      |
+---------------------+---------------------+----------------------------------+
|rel                  |                     |How the href link provided is     |
|                     |                     |related to this resource URI.     |
+---------------------+---------------------+----------------------------------+
|configuration        |                     |Information about the             |
|                     |                     |configuration.                    |
+---------------------+---------------------+----------------------------------+
|id                   |                     |ID of the configuration.          |
+---------------------+---------------------+----------------------------------+
|links                |                     |Link for the configuration for    |
|                     |                     |the backup.                       |
+---------------------+---------------------+----------------------------------+
|href                 |                     |Location (URI) of the             |
|                     |                     |configuration.                    |
+---------------------+---------------------+----------------------------------+
|rel                  |                     |How the href link provided is     |
|                     |                     |related to this resource URI.     |
+---------------------+---------------------+----------------------------------+
|state                |                     |State of the back, for example,   |
|                     |                     |``completed_with_errors``.        |
+---------------------+---------------------+----------------------------------+
|started_time         |                     |Time the backup started.          |
+---------------------+---------------------+----------------------------------+
|ended_time           |                     |Time the backup ended.            |
+---------------------+---------------------+----------------------------------+
|snapshot_id          |                     |ID of the snapshot.               |
+---------------------+---------------------+----------------------------------+
|errors               |                     |Information about errors.         |
+---------------------+---------------------+----------------------------------+
|count                |                     |Number of errors.                 |
+---------------------+---------------------+----------------------------------+
|reason               |                     |Cause of the error, for example,  |
|                     |                     |``unable_to_process_some_files``. |
+---------------------+---------------------+----------------------------------+
|diagnostics          |                     |Additional information about the  |
|                     |                     |cause of the error, for example,  |
|                     |                     |``Some files could not be backed  |
|                     |                     |up. Partial list follows.``       |
+---------------------+---------------------+----------------------------------+
|links                |                     |Links for the errors.             |
+---------------------+---------------------+----------------------------------+
|href                 |                     |Location (URI) of the errors.     |
+---------------------+---------------------+----------------------------------+
|rel                  |                     |How the href link provided is     |
|                     |                     |related to this resource URI.     |
+---------------------+---------------------+----------------------------------+
|files_searched       |                     |Number of files searched.         |
+---------------------+---------------------+----------------------------------+
|files_backed_up      |                     |Number of files backed up.        |
+---------------------+---------------------+----------------------------------+
|bytes_searched       |                     |Number of bytes searched.         |
+---------------------+---------------------+----------------------------------+
|bytes_backed_up      |                     |Number of bytes backed up.        |
+---------------------+---------------------+----------------------------------+
|bytes_in_db          |                     |Number of bytes in the backup     |
|                     |                     |database.                         |
+---------------------+---------------------+----------------------------------+
|bandwidth_avg_bps    |                     |Average bandwidth in bytes per    |
|                     |                     |second.                           |
+---------------------+---------------------+----------------------------------+
|restorable           |                     |Specifies whether the backup can  |
|                     |                     |be used for restores.             |
+---------------------+---------------------+----------------------------------+
|links                |                     |Links for the backup.             |
+---------------------+---------------------+----------------------------------+
|href                 |                     |Location (URI) of the backup.     |
+---------------------+---------------------+----------------------------------+
|rel                  |                     |How the href link provided is     |
|                     |                     |related to this resource URI.     |
+---------------------+---------------------+----------------------------------+





**Example List Details About A Backup: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

