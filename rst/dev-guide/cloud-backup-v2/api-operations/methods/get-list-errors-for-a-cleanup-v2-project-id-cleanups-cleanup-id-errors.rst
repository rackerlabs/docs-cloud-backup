
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _get-list-errors-for-a-cleanup-v2-project-id-cleanups-cleanup-id-errors:

List errors for a cleanup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/cleanups/{cleanup_id}/errors

Lists the errors for the specified cleanup.

This operation lists the errors for the specified cleanup.

.. note::
   Because the agent does not submit any diagnostics or exceptions, both the ``diagnostics`` and ``exception`` parameters have the value ``null``.
   
   



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
|{cleanup_id}              |String *(Required)*      |Cleanup ID. For example, |
|                          |                         |``2f8708b3-d16b-11e4-    |
|                          |                         |bc22-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List errors for a cleanup: JSON request**


.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d/errors HTTP/1.1
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
|                          |                         |the cleanup encountered. |
+--------------------------+-------------------------+-------------------------+
|\ **reason**              |String                   |Reason for the errors.   |
+--------------------------+-------------------------+-------------------------+
|\ **diagnostics**         |String                   |Information about        |
|                          |                         |possible reasons for the |
|                          |                         |errors, but ``null`` for |
|                          |                         |this operation.          |
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
|                          |                         |exception, but ``null``  |
|                          |                         |for this operation.      |
+--------------------------+-------------------------+-------------------------+
|\ **links**               |String                   |Link information for the |
|                          |                         |errors.                  |
+--------------------------+-------------------------+-------------------------+
|links.\ **href**          |String                   |Location (URI) for the   |
|                          |                         |errors.                  |
+--------------------------+-------------------------+-------------------------+
|links.\ **rel**           |String                   |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+







**Example List errors for a cleanup: JSON response**


.. code::

   200 (OK)
   Content-Type: application/json


.. code::

   {
       "count": 1,
       "reason": "Error deleting object. Server returned HTTP 503",
       "diagnostics": null,
       "list": [
           {
               "index": 34,
               "path": "/var/www/html/log/st_808_playlist.txt",
               "type": "file_missing_blocks",
               "description": "A vault validation determined that the specified file is missing blocks.",
               "exception": null
           }
       ],
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d/errors",
               "rel": "self"
           }
       ]
   }




