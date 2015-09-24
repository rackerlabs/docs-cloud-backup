
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-list-errors-for-a-backup-v2-project-id-backups-backup-id-errors:

List errors for a backup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

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
""""""""""""""""




This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{backup_id}               |String *(Required)*      |Backup ID. For example,  |
|                          |                         |``0d95d699-d16b-11e4-    |
|                          |                         |93bd-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List errors for a backup: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/errors HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json





Response
""""""""""""""""





This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **count**               |String                   |Number of errors that    |
|                          |                         |the backup encountered.  |
+--------------------------+-------------------------+-------------------------+
|\ **reason**              |String                   |Reason for the errors.   |
+--------------------------+-------------------------+-------------------------+
|\ **diagnostics**         |String                   |Information about the    |
|                          |                         |reason for the errors.   |
+--------------------------+-------------------------+-------------------------+
|\ **list**                |String                   |Additional information   |
|                          |                         |about the errors.        |
+--------------------------+-------------------------+-------------------------+
|list.\ **index**          |String                   |Index for the error.     |
+--------------------------+-------------------------+-------------------------+
|list.\ **path**           |String                   |Path for the error.      |
+--------------------------+-------------------------+-------------------------+
|list.\ **type**           |String                   |Type of the error.       |
+--------------------------+-------------------------+-------------------------+
|list.\ **description**    |String                   |Description of the error.|
+--------------------------+-------------------------+-------------------------+
|list.\ **exception**      |String                   |Information about the    |
|                          |                         |exception.               |
+--------------------------+-------------------------+-------------------------+
|list.exception.\ **code** |String                   |Code for the exception.  |
+--------------------------+-------------------------+-------------------------+
|list.exception.\          |String                   |Description for the      |
|**description**           |                         |exception.               |
+--------------------------+-------------------------+-------------------------+
|list.exception.\          |String                   |Details about the        |
|**details**               |                         |exception.               |
+--------------------------+-------------------------+-------------------------+
|\ **links**               |String                   |Information about the    |
|                          |                         |links for the errors.    |
+--------------------------+-------------------------+-------------------------+
|links.\ **href**          |String                   |Location (URI) for the   |
|                          |                         |errors.                  |
+--------------------------+-------------------------+-------------------------+
|links.\ **rel**           |String                   |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+







**Example List errors for a backup: JSON response**


.. code::

   200 (OK)
   Content-Type: application/json


.. code::

   {
           "count": 1,
           "reason": "unable_to_process_some_files",
           "diagnostics": "Some files could not be backed up. Partial list follows.",
           "list": [
               {
                   "index": 0,
                   "path": "C:\\Users\\admin\\AppData\\Local\\Temp\\3\\AdobeARM.log",
                   "type": "file_or_folder_missing",
                   "description": "The item was found during the search but was missing when we tried to back it up.",
                   "exception": {
                       "code": 3015,
                       "description": "GetLastError(The system cannot find the path specified. ) Cannot open file \"C:\\Users\\admin\\AppData\\Local\\Temp\\3\\AdobeARM.log\"",
                       "details": "1: [phx::WindowsFs::Open: 166-phx::WindowsFs::Open] Ex Code(3015): GetLastError(The system cannot find the path specified. ) Cannot open file \"C:\\Users\\admin\\AppData\\Local\\Temp\\3\\AdobeARM.log\""
                   }
               }
           ],
           "links": [
               {
                   "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/errors",
                   "rel": "self"
               }
           ]
       }




