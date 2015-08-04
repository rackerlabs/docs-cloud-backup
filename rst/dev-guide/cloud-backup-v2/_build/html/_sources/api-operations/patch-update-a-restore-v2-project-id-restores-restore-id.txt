
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Update A Restore
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    PATCH /v2/{project_id}/restores/{restore_id}

Updates the specified restore.

This operation updates the specified restore. Restores are updated with the JSON Patch. For more information about the JSON Patch, see `RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

You can issue updates only for the following scenarios:



*  The agent is reporting the state of the restore. For example, ``[{ "op": "replace", "path": "/state", "value": "queued" }]``. The following values are valid for ``value`` :
   
   
   
   *  ``queued``
   *  ``preparing``
   *  ``in_progress``
*  The agent is reporting the results of the finished restore (see the example request in this section). The following values are valid values for ``/state`` :
   
   
   
   *  ``completed``
   *  ``completed_with_errors``
   *  ``failed``
   *  ``stopped``
*  The agent is issuing a request to stop the restore. For example, ``[{ "op": "replace", "path": "/state", "value": "stop_requested" }]``.


You can use the ``add`` and ``replace`` operations interchangeably because they are interpreted identically for these scenarios. The only paths that you cannot modify are those listed in this endpoint's description.



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
|{restore_id}              |xsd:string *(Required)*  |Restore ID. For example, |
|                          |                         |``e87e6f7d-d166-11e4-    |
|                          |                         |8689-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|op                        |*(Required)*             |The ``replace`` or       |
|                          |                         |``add`` operation to     |
|                          |                         |update the restore.      |
+--------------------------+-------------------------+-------------------------+
|path                      |*(Required)*             |Path. Valid values are   |
|                          |                         |``/state``, ``/started-  |
|                          |                         |time``, ``/ended-time``, |
|                          |                         |``/errors``,             |
|                          |                         |``/files_restores``, and |
|                          |                         |``/bytes-restored``.     |
+--------------------------+-------------------------+-------------------------+
|value                     |*(Required)*             |Value related to the     |
|                          |                         |``path``.                |
+--------------------------+-------------------------+-------------------------+
|count                     |                         |When ``path`` is         |
|                          |                         |``/errors``, specifies   |
|                          |                         |the number of errors     |
|                          |                         |that the restore can     |
|                          |                         |encounter.               |
+--------------------------+-------------------------+-------------------------+
|reason                    |                         |When ``path`` is         |
|                          |                         |``/errors`` and an error |
|                          |                         |is encountered,          |
|                          |                         |specifies the reason for |
|                          |                         |the error.               |
+--------------------------+-------------------------+-------------------------+
|diagnostics               |                         |When ``path`` is         |
|                          |                         |``/errors`` and an error |
|                          |                         |is encountered, provides |
|                          |                         |information about        |
|                          |                         |possible reasons for the |
|                          |                         |error.                   |
+--------------------------+-------------------------+-------------------------+
|list                      |                         |Additional information   |
|                          |                         |for the errors.          |
+--------------------------+-------------------------+-------------------------+
|index                     |                         |Index for the error.     |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |Path for the error.      |
+--------------------------+-------------------------+-------------------------+
|type                      |                         |Type of error.           |
+--------------------------+-------------------------+-------------------------+
|exception                 |                         |Information about the    |
|                          |                         |exception.               |
+--------------------------+-------------------------+-------------------------+
|code                      |                         |Code for the exception.  |
+--------------------------+-------------------------+-------------------------+
|description               |                         |Description for the      |
|                          |                         |exception.               |
+--------------------------+-------------------------+-------------------------+
|details                   |                         |Details about the        |
|                          |                         |exception.               |
+--------------------------+-------------------------+-------------------------+





**Example Update A Restore: JSON request**


.. code::

    PATCH https://dfw.backup.api.rackspacecloud.com/v2/110011/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-Type: application/json-patch+json


Response
""""""""""""""""





**Example Update A Restore: JSON response**


.. code::

    204 (No Content)
    


