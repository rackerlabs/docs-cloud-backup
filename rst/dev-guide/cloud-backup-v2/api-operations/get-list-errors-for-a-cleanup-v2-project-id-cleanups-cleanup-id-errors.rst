
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List Errors For A Cleanup
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
|{project_id}              |xsd:string               |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{cleanup_id}              |xsd:string *(Required)*  |Cleanup ID. For example, |
|                          |                         |``2f8708b3-d16b-11e4-    |
|                          |                         |bc22-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List Errors For A Cleanup: JSON request**


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
|count                     |                         |Number of errors that    |
|                          |                         |the cleanup encountered. |
+--------------------------+-------------------------+-------------------------+
|reason                    |                         |Reason for the errors.   |
+--------------------------+-------------------------+-------------------------+
|diagnostics               |                         |Information about        |
|                          |                         |possible reasons for the |
|                          |                         |errors, but ``null`` for |
|                          |                         |this operation.          |
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
|                          |                         |exception, but ``null``  |
|                          |                         |for this operation.      |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information for the |
|                          |                         |errors.                  |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) for the   |
|                          |                         |errors.                  |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example List Errors For A Cleanup: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json


