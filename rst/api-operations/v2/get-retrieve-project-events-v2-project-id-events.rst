
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

=============================================================================
Retrieve Project Events -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

Retrieve Project Events
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <get-retrieve-project-events-v2-project-id-events.html#request>`__
`Response <get-retrieve-project-events-v2-project-id-events.html#response>`__

.. code::

    GET /v2/{project_id}/events

Retrieves all events for the specified project.

This operation returns events that are similar to those returned from the ``GET /v2/agents/{id}/events{?marker,limit,sort_dir}`` (see "List events for an agent") except that this operation returns events for all agents in the project instead of a single agent. Additional ``agent_activate`` events that have been sent to the entire project instead of to a single agent are also returned.

.. note::
   You should consider these events as transient because they might disappear after a minute or so. Therefore, this operation is most useful for monitoring the specified project's current events.
   
   



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|200                       |OK                       |The request succeeded.   |
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
|marker                    |xsd:string *(Required)*  |ID of the event, for     |
|                          |                         |example, ``5152883998``. |
|                          |                         |Only events newer than   |
|                          |                         |the event specified by   |
|                          |                         |marker are returned. Use |
|                          |                         |of ``marker`` is most    |
|                          |                         |useful when you are      |
|                          |                         |continuously monitoring  |
|                          |                         |this endpoint for new    |
|                          |                         |events, so that old      |
|                          |                         |events are not repeated  |
|                          |                         |back to you in           |
|                          |                         |subsequent calls.        |
+--------------------------+-------------------------+-------------------------+
|limit                     |xsd:integer *(Required)* |Number of activities to  |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |xsd:string *(Required)*  |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are ``asc`` and          |
|                          |                         |``desc``. The default    |
|                          |                         |value is ``desc``.       |
+--------------------------+-------------------------+-------------------------+







**Example Retrieve Project Events: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/events?marker=5152883998&limit=100&sort_dir=desc HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+---------------------------+-------------+------------------------------------+
|Name                       |Type         |Description                         |
+===========================+=============+====================================+
|events                     |             |Information about events for the    |
|                           |             |project.                            |
+---------------------------+-------------+------------------------------------+
|id                         |             |ID of the event.                    |
+---------------------------+-------------+------------------------------------+
|time                       |             |Time of the event.                  |
+---------------------------+-------------+------------------------------------+
|event                      |             |Type of the event.                  |
+---------------------------+-------------+------------------------------------+
|agent                      |             |Information about the agent for     |
|                           |             |each ``event`` except ``mode``.     |
+---------------------------+-------------+------------------------------------+
|id                         |             |ID of the agent.                    |
+---------------------------+-------------+------------------------------------+
|name                       |             |Name of the agent.                  |
+---------------------------+-------------+------------------------------------+
|host                       |             |Information about the host.         |
+---------------------------+-------------+------------------------------------+
|os                         |             |Information about the operating     |
|                           |             |system for the host.                |
+---------------------------+-------------+------------------------------------+
|name                       |             |Name of the operating system.       |
+---------------------------+-------------+------------------------------------+
|version                    |             |Version of the operating system.    |
+---------------------------+-------------+------------------------------------+
|architecture               |             |Architecture of the operating       |
|                           |             |system.                             |
+---------------------------+-------------+------------------------------------+
|mode                       |             |Mode of the event when the          |
|                           |             |``event`` is ``agent_activate``.    |
+---------------------------+-------------+------------------------------------+
|request_id                 |             |ID of the request when the          |
|                           |             |``event`` is                        |
|                           |             |``vault_encryption_enable``,        |
|                           |             |``vault_encryption_change``,        |
|                           |             |``vault_password_verify``,          |
|                           |             |``vault_db_download_in_progress``,  |
|                           |             |``vault_db_download_completed``,    |
|                           |             |``vault_db_download_failed``,       |
|                           |             |``host_browse``,                    |
|                           |             |``logfile_upload``,                 |
|                           |             |``logfile_upload``, or              |
|                           |             |``logfile_completed`` .             |
+---------------------------+-------------+------------------------------------+
|old_encrypted_password_hex |             |Encrypted old password when         |
|                           |             |``event`` is                        |
|                           |             |``vault_encryption_change``.        |
+---------------------------+-------------+------------------------------------+
|new_encrypted_password_hex |             |Encrypted new password when         |
|                           |             |``event`` is                        |
|                           |             |``vault_encryption_change``.        |
+---------------------------+-------------+------------------------------------+
|encrypted_password_hex     |             |Encrypted password when ``event``   |
|                           |             |is ``vault_encryption_enable`` or   |
|                           |             |``vault_password_verify``.          |
+---------------------------+-------------+------------------------------------+
|path                       |             |Path to browse when ``event`` is    |
|                           |             |``host_browse``.                    |
+---------------------------+-------------+------------------------------------+
|path_encoded               |             |Encoded path to browse when         |
|                           |             |``event`` is ``host_browse``.       |
+---------------------------+-------------+------------------------------------+
|links                      |             |Link information when ``event`` is  |
|                           |             |``logfile_upload``.                 |
+---------------------------+-------------+------------------------------------+
|href                       |             |Location (URI).                     |
+---------------------------+-------------+------------------------------------+
|rel                        |             |How the href link provided is       |
|                           |             |related to this resource URI.       |
+---------------------------+-------------+------------------------------------+
|links                      |             |Link information for the next and   |
|                           |             |previous events.                    |
+---------------------------+-------------+------------------------------------+
|href                       |             |Location (URI).                     |
+---------------------------+-------------+------------------------------------+
|rel                        |             |How the href link provided is       |
|                           |             |related to this resource URI.       |
+---------------------------+-------------+------------------------------------+





**Example Retrieve Project Events: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

