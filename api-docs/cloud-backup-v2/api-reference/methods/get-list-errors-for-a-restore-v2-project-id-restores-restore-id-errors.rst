.. _get-list-errors-for-a-restore:

Retrieve the errors for a restore
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/restores/{restore_id}/errors

This operation retrieves the errors for the specified restore.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|200            | OK              | The request succeeded.                                    |
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
|{restore_id}              |String                   |Restore ID. For example, |
|                          |                         |``e87e6f7d-d166-11e4-    |
|                          |                         |8689-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve the errors for a restore, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/errors HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **count**               |Integer                  |Number of errors that    |
|                          |                         |the restore encountered. |
+--------------------------+-------------------------+-------------------------+
|\ **reason**              |String                   |Reason for the errors.   |
+--------------------------+-------------------------+-------------------------+
|\ **diagnostics**         |String                   |Information about        |
|                          |                         |possible reasons for the |
|                          |                         |errors.                  |
+--------------------------+-------------------------+-------------------------+
|\ **list**                |String                   |Additional information   |
|                          |                         |for the errors.          |
+--------------------------+-------------------------+-------------------------+
|list.\ **index**          |String                   |Index for the errors.    |
+--------------------------+-------------------------+-------------------------+
|list.\ **path**           |String                   |Path for the errors.     |
+--------------------------+-------------------------+-------------------------+
|list.\ **type**           |String                   |Type of errors.          |
+--------------------------+-------------------------+-------------------------+
|list.\ **exception**      |String                   |Information about the    |
|                          |                         |exception.               |
+--------------------------+-------------------------+-------------------------+
|list.exception.\ **code** |String                   |Code for the exception.  |
+--------------------------+-------------------------+-------------------------+
|list.exception.\          |String                   |Description for the      |
|**description**           |                         |exception.               |
+--------------------------+-------------------------+-------------------------+
|list.exception.\          |String                   |Details about the        |
|**details**               |                         |exception.               |
+--------------------------+-------------------------+-------------------------+
|\ **links**               |String                   |Information about the    |
|                          |                         |links for the errors.    |
+--------------------------+-------------------------+-------------------------+
|links.\ **href**          |String                   |Location (URI) for the   |
|                          |                         |errors.                  |
+--------------------------+-------------------------+-------------------------+
|links.\ **rel**           |String                   |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+

**Example: Retrieve the errors for a restore, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "count": 1,
       "reason": "unable_to_process_some_files",
       "diagnostics": "Some files may not have been restored.",
       "list": [
           {
               "index": 3,
               "path": "/usr/bin/h2xs",
               "type": "phx_exception",
               "description": "The agent experience a problem (Phoenix).",
               "exception": {
                   "code": 9016,
                   "description": "WRITE failed (3042): No space left on device",
                   "details": "1: [virtual void phx::LinuxFs::Write(boost::shared_ptr<phx::AbstractFileRef>, phx::BinaryStream&, phx::file_size_t): 290-virtual void phx::LinuxFs::Write(boost::shared_ptr<phx::AbstractFileRef>, phx::BinaryStream&, phx::file_size_t)] Ex Code(9016): WRITE failed (3042): No space left on device"
               }
           }
       ],
       "links": [
           {
               "href": "https://cloudbackupapi.apiary-mock.com/v2/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d/errors",
               "rel": "self"
           }
       ]
   }
