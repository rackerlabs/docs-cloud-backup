=============================================================================
List Errors For A Backup -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

List Errors For A Backup
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <GET_list_errors_for_a_backup_v2_project_id_backups_backup_id_errors.rst#request>`__
`Response <GET_list_errors_for_a_backup_v2_project_id_backups_backup_id_errors.rst#response>`__

.. code-block:: javascript

    GET /v2/{project_id}/backups/{backup_id}/errors

Lists the errors for the specified backup.

This operation lists the errors for the specified backup.



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
|{backup_id}               |xsd:string *(Required)*  |Backup ID. For example,  |
|                          |                         |``0d95d699-d16b-11e4-    |
|                          |                         |93bd-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+








**Example List Errors For A Backup: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/errors HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|count                     |                         |Number of errors that    |
|                          |                         |the backup encountered.  |
+--------------------------+-------------------------+-------------------------+
|reason                    |                         |Reason for the errors.   |
+--------------------------+-------------------------+-------------------------+
|diagnostics               |                         |Information about the    |
|                          |                         |reason for the errors.   |
+--------------------------+-------------------------+-------------------------+
|list                      |                         |Additional information   |
|                          |                         |about the errors.        |
+--------------------------+-------------------------+-------------------------+
|index                     |                         |Index for the error.     |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |Path for the error.      |
+--------------------------+-------------------------+-------------------------+
|type                      |                         |Type of the error.       |
+--------------------------+-------------------------+-------------------------+
|description               |                         |Description of the error.|
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
|links                     |                         |Information about the    |
|                          |                         |links for the errors.    |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) for the   |
|                          |                         |errors.                  |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example List Errors For A Backup: JSON request**


.. code::

    200 (OK)
    Content-Type: application/json

