
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List The Backups For A Project
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/backups

Lists the backups for a project. 

This operation lists the backups for the specified project.

If no backups have been created for the project, the ``backups`` parameter in the response is an empty array.



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



This table shows the query parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |xsd:string *(Optional)*  |ID of the last known     |
|                          |                         |backup, for example,     |
|                          |                         |``0d95d699-d16b-11e4-    |
|                          |                         |93bd-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+
|limit                     |xsd:integer *(Optional)* |Number of backups to     |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |xsd:string *(Optional)*  |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are ``asc`` and          |
|                          |                         |``desc``. The default    |
|                          |                         |value is ``desc``.       |
+--------------------------+-------------------------+-------------------------+
|restorable                |xsd:boolean *(Optional)* |Indicates if only        |
|                          |                         |restorable backups are   |
|                          |                         |returned. If             |
|                          |                         |``restorable`` is        |
|                          |                         |``true``, only           |
|                          |                         |restorable backups are   |
|                          |                         |returned.                |
+--------------------------+-------------------------+-------------------------+
|configuration_id          |xsd:string *(Optional)*  |Use only in conjunction  |
|                          |                         |with                     |
|                          |                         |``restorable=true``. If  |
|                          |                         |you provide              |
|                          |                         |``configuration_id``,    |
|                          |                         |only restorable backups  |
|                          |                         |for the specified        |
|                          |                         |configuration are        |
|                          |                         |returned; for example,   |
|                          |                         |``-568f-4d5a-932f-       |
|                          |                         |fb2af86b5fd5``.          |
+--------------------------+-------------------------+-------------------------+




This operation does not accept a request body.




**Example List The Backups For A Project: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011//backups?marker=0d95d699-d16b-11e4-93bd-c8e0eb190e3d&limit=100&sort_dir=asc&restorable=true&configuration_id=7c8ee069-568f-4d5a-932f-fb2af86b5fd5 HTTP/1.1
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
|backups              |                     |Information about the backups for |
|                     |                     |the project.                      |
+---------------------+---------------------+----------------------------------+
|project_id           |                     |ID of the project.                |
+---------------------+---------------------+----------------------------------+
|id                   |                     |ID of the backup.                 |
+---------------------+---------------------+----------------------------------+
|agent                |                     |Information about the agent for   |
|                     |                     |the backup.                       |
+---------------------+---------------------+----------------------------------+
|id                   |                     |ID of the agent.                  |
+---------------------+---------------------+----------------------------------+
|links                |                     |Link for the agent for the backup.|
+---------------------+---------------------+----------------------------------+
|href                 |                     |Location (URI) of agent.          |
+---------------------+---------------------+----------------------------------+
|rel                  |                     |How the href link provided is     |
|                     |                     |related to this resource URI.     |
+---------------------+---------------------+----------------------------------+
|configuration        |                     |Information about the             |
|                     |                     |configuration.                    |
+---------------------+---------------------+----------------------------------+
|id                   |                     |ID of the configuration.          |
+---------------------+---------------------+----------------------------------+
|links                |                     |Link for the configuration of the |
|                     |                     |backup.                           |
+---------------------+---------------------+----------------------------------+
|href                 |                     |Location (URI) of the             |
|                     |                     |configuration.                    |
+---------------------+---------------------+----------------------------------+
|rel                  |                     |How the href link provided is     |
|                     |                     |related to this resource URI.     |
+---------------------+---------------------+----------------------------------+
|state                |                     |State of the backup, for example, |
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
|                     |                     |cause of the error; for example,  |
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
|links                |                     |Links for the next and previous   |
|                     |                     |backup.                           |
+---------------------+---------------------+----------------------------------+
|href                 |                     |Location (URI).                   |
+---------------------+---------------------+----------------------------------+
|rel                  |                     |How the href link provided is     |
|                     |                     |related to this resource URI.     |
+---------------------+---------------------+----------------------------------+





**Example List The Backups For A Project: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

