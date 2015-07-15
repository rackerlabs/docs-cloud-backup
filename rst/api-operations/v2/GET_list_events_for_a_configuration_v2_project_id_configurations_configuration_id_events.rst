=============================================================================
List Events For A Configuration -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

List Events For A Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <GET_list_events_for_a_configuration_v2_project_id_configurations_configuration_id_events.rst#request>`__
`Response <GET_list_events_for_a_configuration_v2_project_id_configurations_configuration_id_events.rst#response>`__

.. code-block:: javascript

    GET /v2/{project_id}/configurations/{configuration_id}/events

Lists the events for the specified configuration.

This operation lists all the events for the specified configuration. You should consider these events to be transient because they might disappear after a minute or so. Therefore, this operation is most useful for monitoring a configuration's current events.

Sample events that might be returned from this endpoint can be found in the descriptions for the following endpoints:

GET /v2/backups/{id}/events (See "List events for a backup".)

GET /v2/restores/{id}/events (See "List events for a restore".)



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
|{configuration_id}        |xsd:string *(Required)*  |Configuration ID. For    |
|                          |                         |example, ``7c8ee069-568f-|
|                          |                         |4d5a-932f-fb2af86b5fd5``.|
+--------------------------+-------------------------+-------------------------+



This table shows the query parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |xsd:string *(Required)*  |ID of the event, for     |
|                          |                         |example,``5152883998``.  |
|                          |                         |Only events newer than   |
|                          |                         |the event specified      |
|                          |                         |by``marker``are          |
|                          |                         |returned. Use            |
|                          |                         |of``marker``ismost       |
|                          |                         |useful when you are      |
|                          |                         |continuously monitoring  |
|                          |                         |this endpoint for new    |
|                          |                         |events, so that old      |
|                          |                         |events are not repeated  |
|                          |                         |back to you in           |
|                          |                         |subsequent calls.        |
+--------------------------+-------------------------+-------------------------+
|limit                     |xsd:integer *(Required)* |Number of events to      |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |xsd:string *(Required)*  |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are``asc``and``desc``.   |
|                          |                         |The default value        |
|                          |                         |is``desc``.              |
+--------------------------+-------------------------+-------------------------+







**Example List Events For A Configuration: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5/events?marker=5152883998&limit=100&sort_dir=desc HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|events                    |                         |Information about events |
|                          |                         |for the backup.          |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the event.         |
+--------------------------+-------------------------+-------------------------+
|time                      |                         |Time of the event.       |
+--------------------------+-------------------------+-------------------------+
|event                     |                         |Type of the event.       |
+--------------------------+-------------------------+-------------------------+
|agent                     |                         |Information about the    |
|                          |                         |agent for each``event``. |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|vault                     |                         |Information about the    |
|                          |                         |vault for the backup.    |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the vault.         |
+--------------------------+-------------------------+-------------------------+
|encrypted                 |                         |Indicates if the vault   |
|                          |                         |is encrypted.            |
+--------------------------+-------------------------+-------------------------+
|configuration             |                         |Information about the    |
|                          |                         |configuration for        |
|                          |                         |each``event``.           |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the configuration. |
+--------------------------+-------------------------+-------------------------+
|backup                    |                         |Information about the    |
|                          |                         |backup for each``event``.|
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the backup.        |
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
|bytes_completed           |                         |Number of bytes          |
|                          |                         |completed.               |
+--------------------------+-------------------------+-------------------------+
|bytes_remaining           |                         |Number of bytes          |
|                          |                         |remaining.               |
+--------------------------+-------------------------+-------------------------+
|total_bytes               |                         |Number of total bytes.   |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |Path for browse request. |
+--------------------------+-------------------------+-------------------------+
|path_encoded              |                         |Encoded path for the     |
|                          |                         |browse request.          |
+--------------------------+-------------------------+-------------------------+
|encrypted_password_hex    |                         |Encrypted password in    |
|                          |                         |hexadecimal notation.    |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information for the |
|                          |                         |next and previous events.|
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example List Events For A Configuration: JSON request**


.. code::

    200 (OK)
    Content-Type: application/json

