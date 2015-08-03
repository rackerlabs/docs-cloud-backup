
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Start A Backup
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
|{project_id}              |xsd:string               |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|configuration_id          |*(Required)*             |ID of the configuration, |
|                          |                         |for example, ``7c8ee069- |
|                          |                         |568f-4d5a-932f-          |
|                          |                         |fb2af86b5fd5``,          |
|                          |                         |``abf89721-616e-4922-    |
|                          |                         |94d4-29757d6a8671``.     |
+--------------------------+-------------------------+-------------------------+
|state                     |*(Required)*             |Backup state. Either     |
|                          |                         |``start_requested``, a   |
|                          |                         |manual backup requested  |
|                          |                         |by a user, or            |
|                          |                         |``start_scheduled``, a   |
|                          |                         |scheduled backup started |
|                          |                         |by the agent.            |
+--------------------------+-------------------------+-------------------------+





**Example Start A Backup: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/backups HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
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
|links                |                     |Link information for the agent    |
|                     |                     |for the backup.                   |
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
|links                |                     |Link information about the        |
|                     |                     |configuration for the backup.     |
+---------------------+---------------------+----------------------------------+
|href                 |                     |Location (URI) of the             |
|                     |                     |configuration.                    |
+---------------------+---------------------+----------------------------------+
|rel                  |                     |How the href link provided is     |
|                     |                     |related to this resource URI.     |
+---------------------+---------------------+----------------------------------+
|state                |                     |State of the backup, for example, |
|                     |                     |``start_requested``.              |
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
|links                |                     |Links for information about the   |
|                     |                     |errors.                           |
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
|links                |                     |Links with information about the  |
|                     |                     |backup.                           |
+---------------------+---------------------+----------------------------------+
|href                 |                     |Location (URI) of the backup.     |
+---------------------+---------------------+----------------------------------+
|rel                  |                     |How the href link provided is     |
|                     |                     |related to this resource URI.     |
+---------------------+---------------------+----------------------------------+





**Example Start A Backup: JSON response**


.. code::

    201 (Created)
    Content-Type: application/json
    Location: https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d

