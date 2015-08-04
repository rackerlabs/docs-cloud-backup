
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Create A Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/configurations

Creates a configuration. 

This operation creates a configuration. 

The following restrictions apply to the ``inclusions`` parameter:



*  Multiple entries with the same ``path`` are forbidden.
*  Entries with the same ``path`` as an entry in ``exclusions`` are forbidden.
*  Files or folders cannot be included under existing inclusion rules.
*  Files or folders cannot be included under existing exclusion rules.


The following restrictions apply to the ``exclusions`` parameter:



*  Multiple entries with the same ``path`` are forbidden.
*  Entries with the same ``path`` as an entry in ``inclusions`` are forbidden.
*  Files or folders cannot be excluded under existing exclusion rules.
*  Each exclusion ``path`` must be included under an inclusion path.




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
""""""""""""""""

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |xsd:string               |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+-------------------------+------------------------+---------------------------+
|Name                     |Type                    |Description                |
+=========================+========================+===========================+
|agent_id                 |*(Required)*            |ID of the agent.           |
+-------------------------+------------------------+---------------------------+
|name                     |*(Required)*            |Name of the configuration. |
+-------------------------+------------------------+---------------------------+
|enabled                  |*(Required)*            |Specifies whether the      |
|                         |                        |configuration is enabled.  |
+-------------------------+------------------------+---------------------------+
|schedule                 |*(Required)*            |Information about the      |
|                         |                        |schedule associated with   |
|                         |                        |the configuration. If you  |
|                         |                        |specify ``null`` for       |
|                         |                        |``schedule``, you must     |
|                         |                        |manually start backups for |
|                         |                        |the configuration.         |
+-------------------------+------------------------+---------------------------+
|recurrence               |*(Required)*            |Any recurrence in the      |
|                         |                        |configuration's schedule.  |
|                         |                        |Only a single              |
|                         |                        |``recurrence`` value       |
|                         |                        |within ``schedule`` is     |
|                         |                        |currently supported.       |
+-------------------------+------------------------+---------------------------+
|time_zone                |*(Required)*            |Time zone for the          |
|                         |                        |configuration. You must    |
|                         |                        |specify ``time_zone``      |
|                         |                        |according to the `IANA     |
|                         |                        |Time Zone Database         |
|                         |                        |<http://www.iana.org/time- |
|                         |                        |zones>`__.                 |
+-------------------------+------------------------+---------------------------+
|retention                |*(Required)*            |Information defined for    |
|                         |                        |retention for the          |
|                         |                        |configuration.             |
+-------------------------+------------------------+---------------------------+
|days                     |*(Required)*            |Number of days to retain   |
|                         |                        |the backup. When you set   |
|                         |                        |``days`` to ``0``, backups |
|                         |                        |are retained forever.      |
+-------------------------+------------------------+---------------------------+
|inclusions               |*(Required)*            |Information about what to  |
|                         |                        |include in the backup. See |
|                         |                        |the beginning of this      |
|                         |                        |section for restrictions.  |
+-------------------------+------------------------+---------------------------+
|type                     |*(Required)*            |The type of the object to  |
|                         |                        |include: ``file`` or       |
|                         |                        |``folder``.                |
+-------------------------+------------------------+---------------------------+
|path                     |*(Required)*            |The path to the object to  |
|                         |                        |include.                   |
+-------------------------+------------------------+---------------------------+
|exclusions               |*(Required)*            |Information about what to  |
|                         |                        |exclude from the backup.   |
|                         |                        |See the beginning of this  |
|                         |                        |section for restrictions.  |
+-------------------------+------------------------+---------------------------+
|type                     |*(Required)*            |The type of the object to  |
|                         |                        |exclude: ``file`` or       |
|                         |                        |``folder``.                |
+-------------------------+------------------------+---------------------------+
|path                     |*(Required)*            |The path to the object to  |
|                         |                        |exclude.                   |
+-------------------------+------------------------+---------------------------+
|notifications            |*(Required)*            |Information about          |
|                         |                        |notifications. Note that   |
|                         |                        |least one notification     |
|                         |                        |must specify               |
|                         |                        |``on_failure`` as ``true``.|
+-------------------------+------------------------+---------------------------+
|type                     |*(Required)*            |The type of the            |
|                         |                        |notification.              |
+-------------------------+------------------------+---------------------------+
|destination              |*(Required)*            |Where to send the          |
|                         |                        |notification.              |
+-------------------------+------------------------+---------------------------+
|on_success               |*(Required)*            |Specifies whether to send  |
|                         |                        |the notification if the    |
|                         |                        |backup is successful.      |
+-------------------------+------------------------+---------------------------+
|on_failure               |*(Required)*            |Specifies whether to send  |
|                         |                        |the notification if the    |
|                         |                        |backup is not successful.  |
+-------------------------+------------------------+---------------------------+





**Example Create A Configuration: JSON request**


.. code::

    POST https://dfw.backup.api.rackspacecloud.com/v2/110011/configurations HTTP/1.1
    Host: dfw.backup.api.rackspacecloud.com
    X-Auth-Token: 0f6e9f63600142f0a970911583522217
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
|links                     |                         |Link information for the |
|                          |                         |agent.                   |
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





**Example Create A Configuration: JSON response**


.. code::

    201 (Created)
    Content-Type: application/json
    Location: https://cloudbackupapi.apiary-mock.com/v2/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5


