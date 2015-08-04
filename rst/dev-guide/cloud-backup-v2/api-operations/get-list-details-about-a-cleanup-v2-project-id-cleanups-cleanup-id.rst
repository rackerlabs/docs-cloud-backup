
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List Details About A Cleanup
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/cleanups/{cleanup_id}

Lists details about the specified cleanup. 

This operation lists details about the specified cleanup.



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




**Example List Details About A Cleanup: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Accept: application/json
    Content-type: application/json


Response
""""""""""""""""


This table shows the body parameters for the response:

+-------------------------+------------------------+---------------------------+
|Name                     |Type                    |Description                |
+=========================+========================+===========================+
|project_id               |                        |ID of the project.         |
+-------------------------+------------------------+---------------------------+
|id                       |                        |ID of the cleanup.         |
+-------------------------+------------------------+---------------------------+
|agent                    |                        |Information about the      |
|                         |                        |agent for the cleanup.     |
+-------------------------+------------------------+---------------------------+
|id                       |                        |ID of the agent.           |
+-------------------------+------------------------+---------------------------+
|links                    |                        |Link information for the   |
|                         |                        |agent.                     |
+-------------------------+------------------------+---------------------------+
|href                     |                        |Location (URI) of the      |
|                         |                        |agent.                     |
+-------------------------+------------------------+---------------------------+
|rel                      |                        |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+
|state                    |                        |State of the cleanup, for  |
|                         |                        |example,                   |
|                         |                        |``completed_with_errors``. |
+-------------------------+------------------------+---------------------------+
|started_time             |                        |Time the cleanup started.  |
+-------------------------+------------------------+---------------------------+
|ended_time               |                        |Time the cleanup ended.    |
+-------------------------+------------------------+---------------------------+
|snapshot_ids             |                        |IDs of the snapshots.      |
+-------------------------+------------------------+---------------------------+
|errors                   |                        |Information about errors   |
|                         |                        |that occurred during the   |
|                         |                        |cleanup.                   |
+-------------------------+------------------------+---------------------------+
|count                    |                        |Number of errors.          |
+-------------------------+------------------------+---------------------------+
|reason                   |                        |Cause of the error; for    |
|                         |                        |example, ``Error deleting  |
|                         |                        |object. Server returned    |
|                         |                        |HTTP 503.``                |
+-------------------------+------------------------+---------------------------+
|diagnostics              |                        |Additional information     |
|                         |                        |about the cause of the     |
|                         |                        |error, if available.       |
+-------------------------+------------------------+---------------------------+
|links                    |                        |Links for information      |
|                         |                        |about the errors.          |
+-------------------------+------------------------+---------------------------+
|href                     |                        |Location (URI) of the      |
|                         |                        |errors.                    |
+-------------------------+------------------------+---------------------------+
|rel                      |                        |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+
|bytes_before             |                        |Number of bytes before the |
|                         |                        |cleanup.                   |
+-------------------------+------------------------+---------------------------+
|bytes_after              |                        |Number of bytes after the  |
|                         |                        |cleanup.                   |
+-------------------------+------------------------+---------------------------+
|links                    |                        |Links with information     |
|                         |                        |about the cleanups.        |
+-------------------------+------------------------+---------------------------+
|href                     |                        |Location (URI).            |
+-------------------------+------------------------+---------------------------+
|rel                      |                        |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+





**Example List Details About A Cleanup: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json


