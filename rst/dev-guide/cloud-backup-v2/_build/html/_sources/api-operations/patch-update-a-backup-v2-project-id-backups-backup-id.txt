
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Update A Backup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    PATCH /v2/{project_id}/backups/{backup_id}

Updates the specified backup.

This operation updates the specified backup. Backups are updated with the JSON Patch. For more information about the JSON Patch, see `RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

You can issue updates only for the following scenarios:



*  The agent is reporting the state of the backup; for example, ``[{ "op": "replace", "path": "/state", "value": "queued" }]``. The following values are valid for ``value`` :
   
   
   
   *  ``queued``
   *  ``preparing``
   *  ``in_progress``
*  The agent is reporting the results of the finished backup (see the example request in this section). The following values are valid for ``/state`` :
   
   
   
   *  ``completed``
   *  ``completed_with_errors``
   *  ``failed``
   *  ``stopped``
   *  ``skipped``
*  You are issuing a request to stop the backup; for example, `` [{ "op": "replace", "path": "/state", "value": "stop_requested" }`` ].


You can use the ``add`` and ``replace`` operations interchangeably because they are interpreted identically for these scenarios.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|204                       |No Content               |                         |
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





This table shows the body parameters for the request:

+---------------------+---------------------+----------------------------------+
|Name                 |Type                 |Description                       |
+=====================+=====================+==================================+
|op                   |*(Required)*         |The ``replace`` or ``add``        |
|                     |                     |operation to update the backup.   |
+---------------------+---------------------+----------------------------------+
|path                 |*(Required)*         |Path of item to change.           |
+---------------------+---------------------+----------------------------------+
|value                |*(Required)*         |Value related to the ``path``.    |
|                     |                     |See the beginning of this section |
|                     |                     |for additional information.       |
+---------------------+---------------------+----------------------------------+
|count                |                     |Number of errors, when ``path``   |
|                     |                     |is ``/errors``.                   |
+---------------------+---------------------+----------------------------------+
|reason               |                     |Cause of the error, when ``path`` |
|                     |                     |is ``/errors``; for example,      |
|                     |                     |``unable_to_process_some_files``. |
+---------------------+---------------------+----------------------------------+
|diagnostics          |                     |Additional information about the  |
|                     |                     |cause of the error, when ``path`` |
|                     |                     |is ``/errors``; for example,      |
|                     |                     |``Some files could not be backed  |
|                     |                     |up. Partial list follows.``       |
+---------------------+---------------------+----------------------------------+
|list                 |                     |Additional information about the  |
|                     |                     |cause of the error, when ``path`` |
|                     |                     |is ``/errors``.                   |
+---------------------+---------------------+----------------------------------+
|index                |                     |Index for the error.              |
+---------------------+---------------------+----------------------------------+
|path                 |                     |Path to the log.                  |
+---------------------+---------------------+----------------------------------+
|type                 |                     |Type of error.                    |
+---------------------+---------------------+----------------------------------+
|exception            |                     |Information about the exception.  |
+---------------------+---------------------+----------------------------------+
|code                 |                     |Exception code.                   |
+---------------------+---------------------+----------------------------------+
|description          |                     |Description of the exception.     |
+---------------------+---------------------+----------------------------------+
|details              |                     |Additional details about the      |
|                     |                     |exception.                        |
+---------------------+---------------------+----------------------------------+





**Example Update A Backup: JSON request**


.. code::

    PATCH https://dfw.backup.api.rackspacecloud.com/v2/110011/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-Type: application/json-patch+json


Response
""""""""""""""""





**Example Update A Backup: JSON response**


.. code::

    204 (No Content)


