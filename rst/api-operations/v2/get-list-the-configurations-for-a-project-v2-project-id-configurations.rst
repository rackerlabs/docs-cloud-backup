
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

=============================================================================
List The Configurations For A Project -  Rackspace Cloud Backup Developer Guide v2
=============================================================================

List The Configurations For A Project
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <get-list-the-configurations-for-a-project-v2-project-id-configurations.html#request>`__
`Response <get-list-the-configurations-for-a-project-v2-project-id-configurations.html#response>`__

.. code::

    GET /v2/{project_id}/configurations

Lists the configurations for a project. 

This operation lists the configurations for the specified project.

If no configurations have been created for the project, the ``configurations`` parameter in the response is an empty array.



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








**Example List The Configurations For A Project: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/configurations?restorable=true HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Accept: application/json
    Content-type: application/json


Response
^^^^^^^^^^^^^^^^^^


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|configurations            |                         |Information about the    |
|                          |                         |configurations for the   |
|                          |                         |project.                 |
+--------------------------+-------------------------+-------------------------+
|project_id                |                         |ID of the project.       |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the configuration. |
+--------------------------+-------------------------+-------------------------+
|agent                     |                         |Information about the    |
|                          |                         |agent for the            |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the agent.         |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information about   |
|                          |                         |the agent.               |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|name                      |                         |Name of the              |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|enabled                   |                         |Specifies whether the    |
|                          |                         |configuration is enabled.|
+--------------------------+-------------------------+-------------------------+
|schedule                  |                         |Information about the    |
|                          |                         |schedule associated with |
|                          |                         |the configuration.       |
+--------------------------+-------------------------+-------------------------+
|start                     |                         |Time that the schedule   |
|                          |                         |started.                 |
+--------------------------+-------------------------+-------------------------+
|recurrence                |                         |Any recurrence in the    |
|                          |                         |configuration's          |
|                          |                         |schedule. Only a single  |
|                          |                         |``recurrence`` value     |
|                          |                         |within ``schedule`` is   |
|                          |                         |currently supported.     |
+--------------------------+-------------------------+-------------------------+
|time_zone                 |                         |Time zone for the        |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|retention                 |                         |Information defined for  |
|                          |                         |retention for the        |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|days                      |                         |Number of days to retain |
|                          |                         |the backup. When         |
|                          |                         |``days`` is ``0``,       |
|                          |                         |backups are retained     |
|                          |                         |forever.                 |
+--------------------------+-------------------------+-------------------------+
|backups                   |                         |Information about        |
|                          |                         |backups specified in the |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|last_completed            |                         |Information about the    |
|                          |                         |last completed backup.   |
+--------------------------+-------------------------+-------------------------+
|id                        |                         |ID of the last completed |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information about   |
|                          |                         |the backup.              |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+
|next                      |                         |Information about the    |
|                          |                         |next backup.             |
+--------------------------+-------------------------+-------------------------+
|scheduled_time            |                         |Scheduled time for the   |
|                          |                         |next backup.             |
+--------------------------+-------------------------+-------------------------+
|links                     |                         |Link information about   |
|                          |                         |the configuration.       |
+--------------------------+-------------------------+-------------------------+
|href                      |                         |Location (URI).          |
+--------------------------+-------------------------+-------------------------+
|rel                       |                         |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+





**Example List The Configurations For A Project: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

