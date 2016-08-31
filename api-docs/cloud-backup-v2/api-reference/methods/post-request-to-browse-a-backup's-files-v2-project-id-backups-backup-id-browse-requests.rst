.. _post-request-to-browse-a-backup's-files:

Request to browse a backup's files
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    POST /v2/{project_id}/backups/{backup_id}/browse-requests

This operation makes a request to browse the files of the specified backup.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|202            | Accepted        | The request was accepted for processing, but the          |
|               |                 | processing has not completed.                             |
+---------------+-----------------+-----------------------------------------------------------+
|400            | Bad Request     | The server cannot process the request because of a client |
|               |                 | error (for example, malformed syntax, invalid request     |
|               |                 | framing, or deceptive request routing).                   |
+---------------+-----------------+-----------------------------------------------------------+
|401            | Unauthorized    | The request was not applied because it lacks valid        |
|               |                 | authentication credentials for the target resource.       |
|               |                 | The credentials are either expired or invalid.            |
+---------------+-----------------+-----------------------------------------------------------+
|403            | Forbidden       | The server understood the request but did not authorize   |
|               |                 | it.                                                       |
+---------------+-----------------+-----------------------------------------------------------+
|404            | Not Found       | The server did not find a current representation for the  |
|               |                 | target resource or cannot disclose that one exists.       |
+---------------+-----------------+-----------------------------------------------------------+
|405            | Method Not      | The method received in the request line is                |
|               | Allowed         | known by the origin server but is not supported by        |
|               |                 | the target resource.                                      |
+---------------+-----------------+-----------------------------------------------------------+
|409            | Conflict        | The request was not completed because of a conflict with  |
|               |                 | the current state of the resource.                        |
+---------------+-----------------+-----------------------------------------------------------+
|500            | Internal Server | The server encountered an unexpected condition            |
|               | Error           | that prevented it from fulfilling the request.            |
+---------------+-----------------+-----------------------------------------------------------+
|501            | Not Implemented | The requested method or resource is not implemented.      |
+---------------+-----------------+-----------------------------------------------------------+
|503            | Service         | The server is currently unable to handle the request      |
|               | Unavailable     | because of a temporary overload or scheduled maintenance, |
|               |                 | which will likely be alleviated after some delay.         |
+---------------+-----------------+-----------------------------------------------------------+

Request
-------

The following table shows the URI parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+
|{backup_id}               |String                   |Backup ID. For example,  |
|                          |                         |``0d95d699-d16b-11e4-    |
|                          |                         |93bd-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+

The following table shows the body parameters for the request.

+---------------------------+-------------------------+------------------------+
|Name                       |Type                     |Description             |
+===========================+=========================+========================+
|\ **agent_id**             |String                   |*(Required)*            |
|                           |                         |Agent ID.               |
+---------------------------+-------------------------+------------------------+
|\                          |String                   |*(Required)*            |
| **encrypted_password_hex**|                         |Encrypted password in   |
|                           |                         |Encrypted password in   |
|                           |                         |hexadecimal notation.   |
+---------------------------+-------------------------+------------------------+
|\ **path**                 |String                   |*(Required)*            |
|                           |                         |Path for the browse     |
|                           |                         |request.                |
+---------------------------+-------------------------+------------------------+
|\ **path_encoded**         |String                   |*(Required)*            |
|                           |                         |Encoded path for the    |
|                           |                         |browse request.         |
+---------------------------+-------------------------+------------------------+

**Example: Request to browse a backup's files, JSON request**

.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d/browse-requests HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

.. code::

   {
       "agent_id": "8f135b4f-7a69-4b8a-947f-5e80d772fd97",
       "encrypted_password_hex": null,
       "path": "/path/to/browse",
       "path_encoded": "/optional/base64encoded/path/if/non-utf-8/characters/present"
   }

Response
--------

This operation does not require a response body.

**Example: Request to browse a backup's files, HTTP response**

.. code::

   202 (Accepted)
   Location: https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/browse-request/16ce47f7-88b2-4983-8b1c-d4a82306ae87
