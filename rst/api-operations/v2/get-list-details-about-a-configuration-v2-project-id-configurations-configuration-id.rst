
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

List Details About A Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    GET /v2/{project_id}/configurations/{configuration_id}

Lists details about the specified configuration. 

This operation lists details about the specified configuration.



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
|{configuration_id}        |xsd:string *(Required)*  |Configuration ID. For    |
|                          |                         |example, ``7c8ee069-568f-|
|                          |                         |4d5a-932f-fb2af86b5fd5``.|
+--------------------------+-------------------------+-------------------------+





This operation does not accept a request body.




**Example List Details About A Configuration: JSON request**


.. code::

    GET https://dfw.backup.api.rackspacecloud.com/v2/110011/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5 HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
    Accept: application/json
    Content-type: application/json


Response
""""""""""""""""


This table shows the body parameters for the response:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
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
|start                     |                         |Start time for the       |
|                          |                         |schedule.                |
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
|days                      |                         |Number of days To retain |
|                          |                         |the backup. When         |
|                          |                         |``days`` is ``0``,       |
|                          |                         |backups are retained     |
|                          |                         |forever.                 |
+--------------------------+-------------------------+-------------------------+
|inclusions                |                         |Information about what   |
|                          |                         |is included in the       |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|type                      |                         |The type of the object   |
|                          |                         |included: ``file`` or    |
|                          |                         |``folder``.              |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |The path to the object   |
|                          |                         |to include.              |
+--------------------------+-------------------------+-------------------------+
|exclusions                |                         |Information about what   |
|                          |                         |is excluded from the     |
|                          |                         |backup.                  |
+--------------------------+-------------------------+-------------------------+
|type                      |                         |The type of the object   |
|                          |                         |excluded: ``file`` or    |
|                          |                         |``folder``.              |
+--------------------------+-------------------------+-------------------------+
|path                      |                         |The path to the object   |
|                          |                         |to exclude.              |
+--------------------------+-------------------------+-------------------------+
|notifications             |                         |Information about        |
|                          |                         |notifications. Note that |
|                          |                         |least one notification   |
|                          |                         |must specify             |
|                          |                         |``on_failure`` as        |
|                          |                         |``true``.                |
+--------------------------+-------------------------+-------------------------+
|type                      |                         |The type of the          |
|                          |                         |notification.            |
+--------------------------+-------------------------+-------------------------+
|destination               |                         |Where to send the        |
|                          |                         |notification.            |
+--------------------------+-------------------------+-------------------------+
|on_success                |                         |Specifies whether to     |
|                          |                         |send the notification if |
|                          |                         |the backup is successful.|
+--------------------------+-------------------------+-------------------------+
|on_failure                |                         |Specifies whether to     |
|                          |                         |send the notification if |
|                          |                         |the backup is not        |
|                          |                         |successful.              |
+--------------------------+-------------------------+-------------------------+
|deleted                   |                         |Specifies whether the    |
|                          |                         |backup is deleted.       |
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





**Example List Details About A Configuration: JSON response**


.. code::

    200 (OK)
    Content-Type: application/json

