
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

=============================================================================
List The Cleanups For A Project -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

List The Cleanups For A Project
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <get-list-the-cleanups-for-a-project-v2-project-id-cleanups.html#request>`__
`Response <get-list-the-cleanups-for-a-project-v2-project-id-cleanups.html#response>`__

.. code::

    GET /v2/{project_id}/cleanups

Lists the cleanups for a project. 

This operation lists the cleanups for the specified project.

If no cleanups have been created for the project, the ``cleanups`` parameter in the response is an empty array.



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



This table shows the query parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |xsd:string *(Required)*  |ID of the last known     |
|                          |                         |cleanup, for example,    |
|                          |                         |``2f8708b3-d16b-11e4-    |
|                          |                         |bc22-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+
|limit                     |xsd:integer *(Required)* |Number of cleanups to    |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |xsd:string *(Required)*  |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are ``asc`` and          |
|                          |                         |``desc``. The default    |
|                          |                         |value is ``desc``.       |
+--------------------------+-------------------------+-------------------------+







**Example List The Cleanups For A Project: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/cleanups?marker=2f8708b3-d16b-11e4-bc22-c8e0eb190e3d&limit=100&sort_dir=asc HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Accept: application/json
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+-------------------------+------------------------+---------------------------+
|Name                     |Type                    |Description                |
+=========================+========================+===========================+
|cleanups                 |                        |Information about the      |
|                         |                        |cleanups for the project.  |
+-------------------------+------------------------+---------------------------+
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
|                         |                        |error if available.        |
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
|href                     |                        |Location (URI) of the      |
|                         |                        |cleanups.                  |
+-------------------------+------------------------+---------------------------+
|rel                      |                        |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+
|links                    |                        |Links for the next and     |
|                         |                        |previous cleanup.          |
+-------------------------+------------------------+---------------------------+
|href                     |                        |Location (URI).            |
+-------------------------+------------------------+---------------------------+
|rel                      |                        |How the href link provided |
|                         |                        |is related to this         |
|                         |                        |resource URI.              |
+-------------------------+------------------------+---------------------------+





**Example List The Cleanups For A Project: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

