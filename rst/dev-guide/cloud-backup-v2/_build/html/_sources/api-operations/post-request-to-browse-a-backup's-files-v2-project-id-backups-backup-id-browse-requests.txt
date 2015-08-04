
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Request To Browse A Backup'S Files
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/backups/{backup_id}/browse-requests

Makes a request to browse the specified backup's files.

This operation makes a request to browse the files of the specified backup.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|202                       |Accepted                 |                         |
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

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|agent_id                  |*(Required)*             |Agent ID.                |
+--------------------------+-------------------------+-------------------------+
|encrypted_password_hex    |*(Required)*             |Encrypted password in    |
|                          |                         |hexadecimal notation.    |
+--------------------------+-------------------------+-------------------------+
|path                      |*(Required)*             |Path for the browse      |
|                          |                         |request.                 |
+--------------------------+-------------------------+-------------------------+
|path_encoded              |*(Required)*             |Encoded path for the     |
|                          |                         |browse request.          |
+--------------------------+-------------------------+-------------------------+





**Example Request To Browse A Backup'S Files: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/browse-requests HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
""""""""""""""""





**Example Request To Browse A Backup'S Files: JSON response**


.. code::

    202 (Accepted)
    Location: https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/browse-request/16ce47f7-88b2-4983-8b1c-d4a82306ae87


