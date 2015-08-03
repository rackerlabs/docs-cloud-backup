
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List The Restores For A Project
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/restores

Lists the restores available for the specified project.

This operation retrieves a list of restores available for the specified project. If no restores have been created, the ``restores`` parameter in the response is an empty array.



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
|marker                    |xsd:string *(Optional)*  |The ``id`` of the last   |
|                          |                         |known restore; for       |
|                          |                         |example, ``e87e6f7d-d166-|
|                          |                         |11e4-8689-c8e0eb190e3d``.|
+--------------------------+-------------------------+-------------------------+
|limit                     |xsd:integer *(Optional)* |Number of restores to    |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |xsd:string *(Optional)*  |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are ``asc`` and          |
|                          |                         |``desc``. The default    |
|                          |                         |value is ``desc``.       |
+--------------------------+-------------------------+-------------------------+




This operation does not accept a request body.




**Example List The Restores For A Project: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/restores?marker=e87e6f7d-d166-11e4-8689-c8e0eb190e3d&limit=100&sort_dir=asc HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
""""""""""""""""


This table shows the body parameters for the response:

+-----------------------+----------------------+-------------------------------+
|Name                   |Type                  |Description                    |
+=======================+======================+===============================+
|restores               |                      |Information about the restores.|
+-----------------------+----------------------+-------------------------------+
|project_id             |                      |ID of the project associated   |
|                       |                      |with the restore.              |
+-----------------------+----------------------+-------------------------------+
|id                     |                      |ID of the restore.             |
+-----------------------+----------------------+-------------------------------+
|backup                 |                      |Information about the backup.  |
+-----------------------+----------------------+-------------------------------+
|id                     |                      |ID of the backup.              |
+-----------------------+----------------------+-------------------------------+
|links                  |                      |Information about the links    |
|                       |                      |for the backup.                |
+-----------------------+----------------------+-------------------------------+
|href                   |                      |Location (URI) for the backup. |
+-----------------------+----------------------+-------------------------------+
|rel                    |                      |How the href link provided is  |
|                       |                      |related to this resource URI.  |
+-----------------------+----------------------+-------------------------------+
|destination_agent      |                      |Information about the          |
|                       |                      |destination agent.             |
+-----------------------+----------------------+-------------------------------+
|id                     |                      |ID of the destination agent.   |
+-----------------------+----------------------+-------------------------------+
|links                  |                      |Information about the links    |
|                       |                      |for the destination agent.     |
+-----------------------+----------------------+-------------------------------+
|href                   |                      |Location (URI) for the         |
|                       |                      |destination agent.             |
+-----------------------+----------------------+-------------------------------+
|rel                    |                      |How the href link provided is  |
|                       |                      |related to the resource URI.   |
+-----------------------+----------------------+-------------------------------+
|destination_path       |                      |Path for the destination.      |
+-----------------------+----------------------+-------------------------------+
|overwrite_files        |                      |Specifies whether any existing |
|                       |                      |files were overwritten.        |
+-----------------------+----------------------+-------------------------------+
|state                  |                      |Current status of the restore. |
|                       |                      |Valid values are ``queued``,   |
|                       |                      |``preparing````in_progress``,  |
|                       |                      |``completed``,                 |
|                       |                      |``completed_with_errors``,     |
|                       |                      |``failed``, and ``stopped``.   |
+-----------------------+----------------------+-------------------------------+
|started_time           |                      |Time that the restore started. |
+-----------------------+----------------------+-------------------------------+
|ended_time             |                      |Time that the restore ended.   |
+-----------------------+----------------------+-------------------------------+
|errors                 |                      |Information about any errors   |
|                       |                      |encountered by the restore.    |
+-----------------------+----------------------+-------------------------------+
|count                  |                      |Number of errors encountered   |
|                       |                      |by the restore.                |
+-----------------------+----------------------+-------------------------------+
|reason                 |                      |Reason for the errors          |
|                       |                      |encountered by the restore.    |
+-----------------------+----------------------+-------------------------------+
|diagnostics            |                      |Information about possible     |
|                       |                      |reasons for the errors         |
|                       |                      |encountered by the restore.    |
+-----------------------+----------------------+-------------------------------+
|links                  |                      |Information about the links    |
|                       |                      |for the errors.                |
+-----------------------+----------------------+-------------------------------+
|href                   |                      |Location (URI) for the errors. |
+-----------------------+----------------------+-------------------------------+
|rel                    |                      |How the href link provided is  |
|                       |                      |related to the resource URI.   |
+-----------------------+----------------------+-------------------------------+
|files_restored         |                      |Number of files restored.      |
+-----------------------+----------------------+-------------------------------+
|bytes_restored         |                      |Number of bytes restored.      |
+-----------------------+----------------------+-------------------------------+
|links                  |                      |Information about the links    |
|                       |                      |for the restore.               |
+-----------------------+----------------------+-------------------------------+
|href                   |                      |Location (URI) for the restore.|
+-----------------------+----------------------+-------------------------------+
|rel                    |                      |How the href link provided is  |
|                       |                      |related to the resource URI.   |
+-----------------------+----------------------+-------------------------------+
|links                  |                      |Information for the next and   |
|                       |                      |previous links for the restore.|
+-----------------------+----------------------+-------------------------------+
|href                   |                      |Location (URI) for the restore.|
+-----------------------+----------------------+-------------------------------+
|rel                    |                      |How the href link provided is  |
|                       |                      |related to the resource URI.   |
+-----------------------+----------------------+-------------------------------+





**Example List The Restores For A Project: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

