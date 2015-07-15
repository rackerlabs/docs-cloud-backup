=============================================================================
List Details About A Restore -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

List Details About A Restore
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <POST_list_details_about_a_restore_v2_project_id_restores_restore_id_.rst#request>`__
`Response <POST_list_details_about_a_restore_v2_project_id_restores_restore_id_.rst#response>`__

.. code-block:: javascript

    POST /v2/{project_id}/restores/{restore_id}

Lists details about the specified restore.

This operation lists details about the specified restore.



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
^^^^^^^^^^^^^^^^^

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |xsd:string               |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{restore_id}              |xsd:string *(Required)*  |Restore ID. For example, |
|                          |                         |``e87e6f7d-d166-11e4-    |
|                          |                         |8689-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+








**Example List Details About A Restore: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Accept: application/json
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+-----------------------+-----------------------+------------------------------+
|Name                   |Type                   |Description                   |
+=======================+=======================+==============================+
|project_id             |                       |ID of the project associated  |
|                       |                       |with the restore.             |
+-----------------------+-----------------------+------------------------------+
|id                     |                       |ID of the restore.            |
+-----------------------+-----------------------+------------------------------+
|backup                 |                       |Information about the backup. |
+-----------------------+-----------------------+------------------------------+
|id                     |                       |ID of the backup.             |
+-----------------------+-----------------------+------------------------------+
|links                  |                       |Information about the links   |
|                       |                       |for the backup.               |
+-----------------------+-----------------------+------------------------------+
|href                   |                       |Location (URI) for the backup.|
+-----------------------+-----------------------+------------------------------+
|rel                    |                       |How the href link provided is |
|                       |                       |related to this resource URI. |
+-----------------------+-----------------------+------------------------------+
|destination_agent      |                       |Information about the         |
|                       |                       |destination agent.            |
+-----------------------+-----------------------+------------------------------+
|id                     |                       |ID of the destination agent.  |
+-----------------------+-----------------------+------------------------------+
|links                  |                       |Information about the links   |
|                       |                       |for the destination agent.    |
+-----------------------+-----------------------+------------------------------+
|href                   |                       |Location (URI) for the        |
|                       |                       |destination agent.            |
+-----------------------+-----------------------+------------------------------+
|rel                    |                       |How the href link provided is |
|                       |                       |related to the resource URI.  |
+-----------------------+-----------------------+------------------------------+
|destination_path       |                       |Path for the destination.     |
+-----------------------+-----------------------+------------------------------+
|overwrite_files        |                       |Specifies whether any         |
|                       |                       |existing files were           |
|                       |                       |overwritten.                  |
+-----------------------+-----------------------+------------------------------+
|inclusions             |                       |Resources included in the     |
|                       |                       |restore.                      |
+-----------------------+-----------------------+------------------------------+
|type                   |                       |Type of resources included in |
|                       |                       |the restore.                  |
+-----------------------+-----------------------+------------------------------+
|path                   |                       |Path to the resources         |
|                       |                       |included in the restore.      |
+-----------------------+-----------------------+------------------------------+
|exclusions             |                       |Resources excluded from the   |
|                       |                       |restore.                      |
+-----------------------+-----------------------+------------------------------+
|type                   |                       |Type of resources excluded    |
|                       |                       |from the restore.             |
+-----------------------+-----------------------+------------------------------+
|path                   |                       |Path of the resources         |
|                       |                       |excluded from the restore.    |
+-----------------------+-----------------------+------------------------------+
|state                  |                       |Current status of the         |
|                       |                       |restore. Valid values         |
|                       |                       |are``queued``,                |
|                       |                       |``preparing````in_progress``, |
|                       |                       |``completed``,                |
|                       |                       |``completed_with_errors``,    |
|                       |                       |``failed``, and``stopped``.   |
+-----------------------+-----------------------+------------------------------+
|started_time           |                       |Time that the restore started.|
+-----------------------+-----------------------+------------------------------+
|ended_time             |                       |Time that the restore ended.  |
+-----------------------+-----------------------+------------------------------+
|errors                 |                       |Information about any errors  |
|                       |                       |encountered by the restore.   |
+-----------------------+-----------------------+------------------------------+
|count                  |                       |Number of errors encountered  |
|                       |                       |by the restore.               |
+-----------------------+-----------------------+------------------------------+
|reason                 |                       |Reason for the errors         |
|                       |                       |encountered by the restore.   |
+-----------------------+-----------------------+------------------------------+
|diagnostics            |                       |Information about possible    |
|                       |                       |reasons for the errors        |
|                       |                       |encountered by the restore.   |
+-----------------------+-----------------------+------------------------------+
|links                  |                       |Information about the links   |
|                       |                       |for the errors.               |
+-----------------------+-----------------------+------------------------------+
|href                   |                       |Location (URI) for the errors.|
+-----------------------+-----------------------+------------------------------+
|rel                    |                       |How the href link provided is |
|                       |                       |related to the resource URI.  |
+-----------------------+-----------------------+------------------------------+
|files_restored         |                       |Number of files restored.     |
+-----------------------+-----------------------+------------------------------+
|bytes_restored         |                       |Number of bytes restored.     |
+-----------------------+-----------------------+------------------------------+
|links                  |                       |Information about the links   |
|                       |                       |for the restore.              |
+-----------------------+-----------------------+------------------------------+
|href                   |                       |Location (URI) for the        |
|                       |                       |restore.                      |
+-----------------------+-----------------------+------------------------------+
|rel                    |                       |How the href link provided is |
|                       |                       |related to the resource URI.  |
+-----------------------+-----------------------+------------------------------+





**Example List Details About A Restore: JSON request**


.. code::

    200 (OK)
    Content-Type: application/json

