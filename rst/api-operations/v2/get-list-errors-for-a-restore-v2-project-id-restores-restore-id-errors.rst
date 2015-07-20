
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

=============================================================================
List Errors For A Restore -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

List Errors For A Restore
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <get-list-errors-for-a-restore-v2-project-id-restores-restore-id-errors.html#request>`__
`Response <get-list-errors-for-a-restore-v2-project-id-restores-restore-id-errors.html#response>`__

.. code::

    GET /v2/{project_id}/restores/{restore_id}/errors

Lists the errors for the specified restore.

This operation lists the errors for the specified restore.



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








**Example List Errors For A Restore: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/errors HTTP/1.1
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
|                          |                         |the restore encountered. |
+--------------------------+-------------------------+-------------------------+
|reason                    |                         |Reason for the errors.   |
+--------------------------+-------------------------+-------------------------+
|diagnostics               |                         |Information about        |
|                          |                         |possible reasons for the |
|                          |                         |errors.                  |
+--------------------------+-------------------------+-------------------------+
|list                      |                         |Additional information   |
|                          |                         |for the errors.          |
+--------------------------+-------------------------+-------------------------+
|index                     |                         |Index for the errors.    |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |Path for the errors.     |
+--------------------------+-------------------------+-------------------------+
|type                      |                         |Type of errors.          |
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





**Example List Errors For A Restore: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

