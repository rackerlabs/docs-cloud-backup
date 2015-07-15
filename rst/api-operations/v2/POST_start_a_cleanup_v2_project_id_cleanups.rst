=============================================================================
Start A Cleanup -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

Start A Cleanup
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <POST_start_a_cleanup_v2_project_id_cleanups.rst#request>`__
`Response <POST_start_a_cleanup_v2_project_id_cleanups.rst#response>`__

.. code-block:: javascript

    POST /v2/{project_id}/cleanups

Starts a cleanup.

This operation starts a cleanup. Start a cleanup by specifying one of the following states: ``start_requested`` : A manual cleanup is requested by a user. ``start_scheduled`` : A scheduled cleanup is started by the agent.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|201                       |Created                  |                         |
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





This table shows the body parameters for the request:

+------------------------+------------------------+----------------------------+
|Name                    |Type                    |Description                 |
+========================+========================+============================+
|agent_id                |*(Required)*            |ID of the agent.            |
+------------------------+------------------------+----------------------------+
|state                   |*(Required)*            |Cleanup state,              |
|                        |                        |either``start_requested``,  |
|                        |                        |a manual backup requested   |
|                        |                        |by a user,                  |
|                        |                        |or``start_scheduled``, a    |
|                        |                        |scheduled backup started by |
|                        |                        |the agent.                  |
+------------------------+------------------------+----------------------------+





**Example Start A Cleanup: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/cleanups HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|project_id                |                         |ID of the project.       |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the cleanup.       |
+--------------------------+-------------------------+-------------------------+
|agent                     |                         |Information about the    |
|                          |                         |agent for the cleanup.   |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information about   |
|                          |                         |the agent.               |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) of the    |
|                          |                         |agent.                   |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|state                     |                         |State of the cleanup,    |
|                          |                         |for example,             |
|                          |                         |``start_requested``.     |
+--------------------------+-------------------------+-------------------------+
|started_time              |                         |Time the cleanup started.|
+--------------------------+-------------------------+-------------------------+
|ended_time                |                         |Time the cleanup ended.  |
+--------------------------+-------------------------+-------------------------+
|snapshot_ids              |                         |IDs of the snapshots.    |
+--------------------------+-------------------------+-------------------------+
|errors                    |                         |Information about errors.|
+--------------------------+-------------------------+-------------------------+
|count                     |                         |Number of errors.        |
+--------------------------+-------------------------+-------------------------+
|reason                    |                         |Cause of the error; for  |
|                          |                         |example,``Error deleting |
|                          |                         |object. Server returned  |
|                          |                         |HTTP 503.``              |
+--------------------------+-------------------------+-------------------------+
|diagnostics               |                         |Additional information   |
|                          |                         |about the cause of the   |
|                          |                         |error if available.      |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Links for information    |
|                          |                         |about the errors.        |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) of the    |
|                          |                         |errors.                  |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|bytes_before              |                         |Number of bytes before   |
|                          |                         |the cleanup.             |
+--------------------------+-------------------------+-------------------------+
|bytes_after               |                         |Number of bytes after    |
|                          |                         |the cleanup.             |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Links with information   |
|                          |                         |about the cleanups.      |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI) of the    |
|                          |                         |cleanups.                |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example Start A Cleanup: JSON request**


.. code::

    201 (Created)
    Location: https://cloudbackupapi.apiary-mock.com/v2/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d

