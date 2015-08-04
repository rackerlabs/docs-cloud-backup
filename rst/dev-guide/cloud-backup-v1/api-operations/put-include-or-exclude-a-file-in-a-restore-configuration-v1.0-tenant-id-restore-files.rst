
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

Include Or Exclude A File In A Restore Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    PUT /v1.0/{tenant_id}/restore/files

Creates a restore file associated with a restore.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|200                       |OK                       |The request succeeded.   |
+--------------------------+-------------------------+-------------------------+
|400                       |Bad Request              |There were one or more   |
|                          |                         |errors in the request.   |
+--------------------------+-------------------------+-------------------------+
|401                       |Unauthorized             |The supplied token was   |
|                          |                         |not authorized to access |
|                          |                         |the resources. Either it |
|                          |                         |is expired or invalid.   |
+--------------------------+-------------------------+-------------------------+
|403                       |Forbidden                |Access to the requested  |
|                          |                         |resource was denied.     |
+--------------------------+-------------------------+-------------------------+
|404                       |Not Found                |The backend services did |
|                          |                         |not find anything        |
|                          |                         |matching the request URI.|
+--------------------------+-------------------------+-------------------------+
|500                       |Instance Fault           |This is a generic server |
|                          |                         |error. The message       |
|                          |                         |contains the reason for  |
|                          |                         |the error. This error    |
|                          |                         |could wrap several error |
|                          |                         |messages.                |
+--------------------------+-------------------------+-------------------------+
|503                       |Service Unavailable      |This is a generic server |
|                          |                         |error. The message       |
|                          |                         |contains the reason for  |
|                          |                         |the error. This error    |
|                          |                         |could wrap several error |
|                          |                         |messages.                |
+--------------------------+-------------------------+-------------------------+


Request
""""""""""""""""

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{tenant_id}               |xsd:string               |The unique identifier of |
|                          |                         |the tenant or account.   |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|FilePath                  |*(Required)*             |Specifies the file or    |
|                          |                         |directory to restore.    |
+--------------------------+-------------------------+-------------------------+
|FilePathEncoded           |*(Optional)*             |Specifies 64-bit         |
|                          |                         |encoding of FilePath.    |
+--------------------------+-------------------------+-------------------------+
|Filter                    |*(Required)*             |Specifies if a filter is |
|                          |                         |included or excluded.    |
|                          |                         |Valid values for Filter  |
|                          |                         |are 1 for Include and 2  |
|                          |                         |for Exclude.             |
+--------------------------+-------------------------+-------------------------+
|ParentId                  |*(Required)*             |Specifies the restore ID |
|                          |                         |to which this file is    |
|                          |                         |associated.              |
+--------------------------+-------------------------+-------------------------+
|FileItemType              |*(Required)*             |Specifies the type of    |
|                          |                         |file. Valid values are 0 |
|                          |                         |for file, 1 for folder,  |
|                          |                         |and 2 for database.      |
+--------------------------+-------------------------+-------------------------+
|FileId                    |*(Optional)*             |Specifies a file ID      |
|                          |                         |value.                   |
+--------------------------+-------------------------+-------------------------+





**Example Include a file in a restore configuration: JSON request**


.. code::

    {
        "FilePath": "C:\\ImportantFile.txt",
        "Filter": "1",
        "ParentId": 14387,
        "FileItemType": "0"
    }


Response
""""""""""""""""





This operation does not return a response body.

