=============================================================================
List Events For A Cleanup -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

List Events For A Cleanup
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <GET_list_events_for_a_cleanup_v2_project_id_cleanups_cleanup_id_events.rst#request>`__
`Response <GET_list_events_for_a_cleanup_v2_project_id_cleanups_cleanup_id_events.rst#response>`__

.. code-block:: javascript

    GET /v2/{project_id}/cleanups/{cleanup_id}/events

Lists the events for the specified cleanup.

This operation lists all events for the specified cleanup. You should consider these events to be transient because they might disappear after a minute or so. Therefore, this operation is most useful for monitoring a running cleanup.



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
|{cleanup_id}              |xsd:string *(Required)*  |Cleanup ID. For example, |
|                          |                         |``2f8708b3-d16b-11e4-    |
|                          |                         |bc22-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+



This table shows the query parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|marker                    |xsd:string *(Required)*  |ID of the event, for     |
|                          |                         |example,``5152883998``.  |
|                          |                         |Only events newer than   |
|                          |                         |the event specified by   |
|                          |                         |marker are returned. Use |
|                          |                         |of``marker``ismost       |
|                          |                         |useful when you are      |
|                          |                         |continuously monitoring  |
|                          |                         |this endpoint for new    |
|                          |                         |events, so that old      |
|                          |                         |events are not repeated  |
|                          |                         |back to you in           |
|                          |                         |subsequent calls.        |
+--------------------------+-------------------------+-------------------------+
|limit                     |xsd:integer *(Required)* |Number of events to      |
|                          |                         |list. The default value  |
|                          |                         |is 100.                  |
+--------------------------+-------------------------+-------------------------+
|sort_dir                  |xsd:string *(Required)*  |Direction to sort the    |
|                          |                         |results. Valid values    |
|                          |                         |are``asc``and``desc``.   |
|                          |                         |The default value        |
|                          |                         |is``desc``.              |
+--------------------------+-------------------------+-------------------------+







**Example List Events For A Cleanup: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d/events?marker=5152883998&limit=100&sort_dir=desc HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|events                    |                         |Information about events |
|                          |                         |for the backup.          |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the event.         |
+--------------------------+-------------------------+-------------------------+
|time                      |                         |Time of the event.       |
+--------------------------+-------------------------+-------------------------+
|event                     |                         |Type of the event.       |
+--------------------------+-------------------------+-------------------------+
|agent                     |                         |Information about the    |
|                          |                         |agent for each``event``. |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |Agent ID.                |
+--------------------------+-------------------------+-------------------------+
|vault                     |                         |Information about the    |
|                          |                         |vault for the cleanup.   |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the vault.         |
+--------------------------+-------------------------+-------------------------+
|encrypted                 |                         |Specifies whether the    |
|                          |                         |vault is encrypted.      |
+--------------------------+-------------------------+-------------------------+
|cleanup                   |                         |Information about the    |
|                          |                         |cleanup for              |
|                          |                         |each``event``.           |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the cleanup.       |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information for the |
|                          |                         |next and previous events.|
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example List Events For A Cleanup: JSON request**


.. code::

    200 (OK)
    Content-Type: application/json

