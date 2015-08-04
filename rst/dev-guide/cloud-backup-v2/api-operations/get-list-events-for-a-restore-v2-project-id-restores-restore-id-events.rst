
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List Events For A Restore
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/restores/{restore_id}/events

Lists the events for the specified restore.

This operation lists the events for the specified restore.

.. note::
   Consider these events to be transient because they might be available only briefly. Therefore, this endpoint is most useful for monitoring a running restore.
   
   



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
|{restore_id}              |xsd:string *(Required)*  |Restore ID. For example, |
|                          |                         |``e87e6f7d-d166-11e4-    |
|                          |                         |8689-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+



This table shows the query parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |xsd:string *(Optional)*  |Event ID , such as       |
|                          |                         |282856510. Only events   |
|                          |                         |newer than the event     |
|                          |                         |specified by marker are  |
|                          |                         |returned. This parameter |
|                          |                         |is most useful when you  |
|                          |                         |are continuously         |
|                          |                         |monitoring this endpoint |
|                          |                         |for new events, so that  |
|                          |                         |old events will not be   |
|                          |                         |repeatedly returned to   |
|                          |                         |you in subsequent calls. |
+--------------------------+-------------------------+-------------------------+
|limit                     |xsd:integer *(Optional)* |Number of events to      |
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




**Example List Events For A Restore: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/events?marker=282856510&limit=100&sort_dir=desc HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Accept: application/json
    Content-type: application/json


Response
""""""""""""""""


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|events                    |                         |Information about events.|
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the event.         |
+--------------------------+-------------------------+-------------------------+
|time                      |                         |Time of the event.       |
+--------------------------+-------------------------+-------------------------+
|event                     |                         |Type of the event.       |
+--------------------------+-------------------------+-------------------------+
|agent                     |                         |Agent information for    |
|                          |                         |the event.               |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|source_agent              |                         |Source agent information |
|                          |                         |for the event.           |
+--------------------------+-------------------------+-------------------------+
|vault                     |                         |Vault information for    |
|                          |                         |the source agent for the |
|                          |                         |event.                   |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the vault for the  |
|                          |                         |source agent for the     |
|                          |                         |event.                   |
+--------------------------+-------------------------+-------------------------+
|encrypted                 |                         |Specifies whether the    |
|                          |                         |vault is encrypted.      |
+--------------------------+-------------------------+-------------------------+
|configuration             |                         |Information about the    |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the configuration. |
+--------------------------+-------------------------+-------------------------+
|backup                    |                         |Information about the    |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|snapshot_id               |                         |ID of the snapshot.      |
+--------------------------+-------------------------+-------------------------+
|restore                   |                         |Information about the    |
|                          |                         |restore.                 |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the restore.       |
+--------------------------+-------------------------+-------------------------+
|destination_path          |                         |Destination path for the |
|                          |                         |restore.                 |
+--------------------------+-------------------------+-------------------------+
|overwrite_files           |                         |Specifies whether        |
|                          |                         |existing files were      |
|                          |                         |overwritten during the   |
|                          |                         |restore.                 |
+--------------------------+-------------------------+-------------------------+
|inclusions                |                         |Resources included in    |
|                          |                         |the restore.             |
+--------------------------+-------------------------+-------------------------+
|type                      |                         |Type of resources        |
|                          |                         |included in the restore. |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |Path to the resources    |
|                          |                         |included in the restore. |
+--------------------------+-------------------------+-------------------------+
|exclusions                |                         |Resources excluded from  |
|                          |                         |the restore.             |
+--------------------------+-------------------------+-------------------------+
|type                      |                         |Type of resources        |
|                          |                         |excluded from the        |
|                          |                         |restore.                 |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |Path of the resources    |
|                          |                         |excluded from the        |
|                          |                         |restore.                 |
+--------------------------+-------------------------+-------------------------+
|request_id                |                         |ID of the request.       |
+--------------------------+-------------------------+-------------------------+
|bytes_completed           |                         |Bytes completed.         |
+--------------------------+-------------------------+-------------------------+
|bytes_remaining           |                         |Bytes remaining.         |
+--------------------------+-------------------------+-------------------------+
|total_bytes               |                         |Total bytes.             |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Information about the    |
|                          |                         |links for the events for |
|                          |                         |the restore.             |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) for the   |
|                          |                         |events for the restore.  |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URL.       |
+--------------------------+-------------------------+-------------------------+





**Example List Events For A Restore: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json


