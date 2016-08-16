.. _start-or-stop-a-backup-manually:

Start or stop a backup manually
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    POST /v1.0/{tenant_id}/backup/action-requested

This operation manually starts or stops a backup and returns the identifier of
the instance of the backup.

When manually starting a backup, provide the backup configuration identifier
(BackupConfigurationId) for ID. You can retrieve a list of all backup
configurations for an agent with the :ref:`Get all backup configurations for an
agent <get-all-backup-configurations-for-an-agent>` operation. When manually
stopping a backup, provide the backup identifier for the ID. The backup
identifier is given when the backup is started.

.. note::
   You might need to call the operation to wake up agents before starting or
   stopping a backup manually.

This table shows the possible response codes for this operation:

+--------------------------+-------------------------+------------------------+
|Response Code             |Name                     |Description             |
+==========================+=========================+========================+
|200                       |OK                       |When manually starting a|
|                          |                         |backup, the request     |
|                          |                         |succeeded.              |
+--------------------------+-------------------------+------------------------+
|204                       |No Content               |When manually stopping a|
|                          |                         |backup, the request     |
|                          |                         |succeeded.              |
+--------------------------+-------------------------+------------------------+
|400                       |Bad Request              |There were one or more  |
|                          |                         |errors in the request.  |
+--------------------------+-------------------------+------------------------+
|401                       |Unauthorized             |The supplied token was  |
|                          |                         |not authorized to access|
|                          |                         |the resources. Either it|
|                          |                         |is expired or invalid.  |
+--------------------------+-------------------------+------------------------+
|403                       |Forbidden                |Access to the requested |
|                          |                         |resource was denied.    |
+--------------------------+-------------------------+------------------------+
|404                       |Not Found                |The backend services did|
|                          |                         |not find anything       |
|                          |                         |matching the request    |
|                          |                         |URI.                    |
+--------------------------+-------------------------+------------------------+
|500                       |Instance Fault           |This is a generic server|
|                          |                         |error. The message      |
|                          |                         |contains the reason for |
|                          |                         |the error. This error   |
|                          |                         |could wrap several error|
|                          |                         |messages.               |
+--------------------------+-------------------------+------------------------+
|503                       |Service Unavailable      |This is a generic server|
|                          |                         |error. The message      |
|                          |                         |contains the reason for |
|                          |                         |the error. This error   |
|                          |                         |could wrap several error|
|                          |                         |messages.               |
+--------------------------+-------------------------+------------------------+

Request
-------

This table shows the URI parameters for the request:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|{tenant_id}               |String                   |The unique identifier of|
|                          |                         |the tenant or account.  |
+--------------------------+-------------------------+------------------------+

This table shows the body parameters for the request:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|**Action**                |String *(Required)*      |Specifies the action.   |
|                          |                         |Valid values are        |
|                          |                         |“StartManual” and       |
|                          |                         |"StopManual".           |
+--------------------------+-------------------------+------------------------+
|**Id**                    |String *(Required)*      |Specifies the value of  |
|                          |                         |BackupConfigurationId.  |
+--------------------------+-------------------------+------------------------+

**Example: Start a backup manually JSON request**

.. code::

   {
       "Action" : "StartManual",
       "Id": 148325
   }

**Example: Stop a backup manually JSON request**

.. code::

   {
       "Action" : "StopManual",
       "Id": 368785
   }

Response
--------

This table shows the body parameters for the response:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|**Id**                    |String                   |Specifies BackupId, a   |
|                          |                         |unique backup ID that   |
|                          |                         |identifies the backup to|
|                          |                         |start manually.         |
+--------------------------+-------------------------+------------------------+

**Example: Start a backup manually response**

.. code::

     368785
