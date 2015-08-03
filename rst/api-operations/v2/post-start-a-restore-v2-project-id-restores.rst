
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Start A Restore
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/restores

Starts a restore.

This operation starts a restore.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|201                       |Created                  |The request has been     |
|                          |                         |accepted for processing, |
|                          |                         |but the processing has   |
|                          |                         |not been completed.      |
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
|backup_id                 |*(Required)*             |ID of the backup to use  |
|                          |                         |for the restore.         |
+--------------------------+-------------------------+-------------------------+
|destination_agent_ID      |*(Required)*             |ID of the destination    |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|destination_path          |*(Required)*             |Path for the destination.|
+--------------------------+-------------------------+-------------------------+
|overwrite_files           |*(Optional)*             |Specifies whether to     |
|                          |                         |overwrite any existing   |
|                          |                         |files. The default is    |
|                          |                         |``false``.               |
+--------------------------+-------------------------+-------------------------+
|encrypted_password_hex    |*(Required)*             |Encrypted password in    |
|                          |                         |hexadecimal notation.    |
+--------------------------+-------------------------+-------------------------+
|inclusions                |*(Required)*             |Resources to include in  |
|                          |                         |the restore.             |
+--------------------------+-------------------------+-------------------------+
|type                      |*(Required)*             |Type of resources to     |
|                          |                         |include in the restore:  |
|                          |                         |``file`` or ``folder``.  |
+--------------------------+-------------------------+-------------------------+
|path                      |*(Required)*             |Path to the resources to |
|                          |                         |include in the restore.  |
+--------------------------+-------------------------+-------------------------+
|exclusions                |*(Required)*             |Resources to exclude     |
|                          |                         |from the restore.        |
+--------------------------+-------------------------+-------------------------+
|type                      |*(Required)*             |Type of resources to     |
|                          |                         |exclude from the         |
|                          |                         |restore: ``file`` or     |
|                          |                         |``folder``.              |
+--------------------------+-------------------------+-------------------------+
|path                      |*(Required)*             |Path of the resources to |
|                          |                         |exclude from the restore.|
+--------------------------+-------------------------+-------------------------+





**Example Start A Restore: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/restores HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
""""""""""""""""


This table shows the body parameters for the response:

+-----------------------+----------------------+-------------------------------+
|Name                   |Type                  |Description                    |
+=======================+======================+===============================+
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
|inclusions             |                      |Resources included in the      |
|                       |                      |restore.                       |
+-----------------------+----------------------+-------------------------------+
|type                   |                      |Type of resources included in  |
|                       |                      |the restore.                   |
+-----------------------+----------------------+-------------------------------+
|path                   |                      |Path to the resources included |
|                       |                      |in the restore.                |
+-----------------------+----------------------+-------------------------------+
|exclusions             |                      |Resources excluded from the    |
|                       |                      |restore.                       |
+-----------------------+----------------------+-------------------------------+
|type                   |                      |Type of resources excluded     |
|                       |                      |from the restore.              |
+-----------------------+----------------------+-------------------------------+
|path                   |                      |Path of the resources excluded |
|                       |                      |from the restore.              |
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





**Example Start A Restore: JSON response**


.. code::

    201 (Created)
    Content-Type: application/json
    Location: https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d

