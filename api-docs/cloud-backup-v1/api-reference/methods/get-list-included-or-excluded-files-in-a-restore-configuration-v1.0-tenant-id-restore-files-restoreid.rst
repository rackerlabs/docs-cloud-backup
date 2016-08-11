.. _get-included-or-excluded-files-in-a-restore-configuration:

List included or excluded files in a restore configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v1.0/{tenant_id}/restore/files/{restoreId}

This operation lists files that are included or excluded in a restore.

This operation allows you list the files in a restore configuration. You can
choose to view the included or the excluded files. You can also limit your
list to files, folders, or databases.


This table shows the possible response codes for this operation:

+--------------------------+-------------------------+------------------------+
|Response Code             |Name                     |Description             |
+==========================+=========================+========================+
|200                       |OK                       |The request succeeded.  |
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
|{restoreId}               |Integer                  |The unique identifier   |
|                          |                         |for a restore.          |
+--------------------------+-------------------------+------------------------+

This table shows the body parameters for the request:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|**FilePath**              |String *(Required)*      |Specifies the file or   |
|                          |                         |directory to restore.   |
+--------------------------+-------------------------+------------------------+
|**Filter**                |String *(Required)*      |Specifies if a filter is|
|                          |                         |included or excluded.   |
|                          |                         |Valid values for Filter |
|                          |                         |are 1 for Include and 2 |
|                          |                         |for Exclude.            |
+--------------------------+-------------------------+------------------------+
|**RestoreId**             |String *(Required)*      |Creates a restore       |
|                          |                         |configuration and in    |
|                          |                         |response you get        |
|                          |                         |RestoreID.              |
+--------------------------+-------------------------+------------------------+
|**FileItemType**          |String *(Required)*      |Specifies the type of   |
|                          |                         |file. Valid values are 0|
|                          |                         |for file, 1 for folder, |
|                          |                         |and 2 for database.     |
+--------------------------+-------------------------+------------------------+

**Example: List included or excluded files in a restore configuration JSON request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v1.0/1234/restore/files/148325
   User-Agent: controlpanel.drivesrvr.com
   Host: dfw.backup.api.rackspacecloud.com
   Content-Type: application/json;
   Content-Length: 0
   X-Auth-Token: 95b1788906f74d279d03001c6a14f3fe

.. code::

   [
       {
           "FilePath":"/boot",
           "Filter":2,
           "RestoreId":1394,
           "FileItemType":1
       }
   ]
