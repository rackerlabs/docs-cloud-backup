.. _patch-update-a-restore:

Update a restore
~~~~~~~~~~~~~~~~

.. code::

    PATCH /v2/{project_id}/restores/{restore_id}

This operation updates the specified restore. Restores are updated with the
JSON Patch. For more information about the JSON Patch, see
`RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

You can issue updates only for the following scenarios:

*  The agent is reporting the state of the restore. For example,
   ``[{ "op": "replace", "path": "/state", "value": "queued" }]``.
   The following values are valid for ``value``:

   *  ``queued``
   *  ``preparing``
   *  ``in_progress``

*  The agent is reporting the results of the finished restore (see the example
   request in this section). The following values are valid values for
   ``/state``:

   *  ``completed``
   *  ``completed_with_errors``
   *  ``failed``
   *  ``stopped``

*  The agent is issuing a request to stop the restore. For example,
   ``[{ "op": "replace", "path": "/state", "value": "stop_requested" }]``.

The only paths that you cannot modify are those listed in this endpoint's description.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|204            | No Content      | The server successfully fulfilled the request. There is   |
|               |                 | no additional content to send in the response body.       |
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

The following table shows the body parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **op**                  |String                   |*(Required)*             |
|                          |                         |The ``replace`` or       |
|                          |                         |``add`` operation to     |
|                          |                         |update the restore. You  |
|                          |                         |can use them             |
|                          |                         |interchangeably because  |
|                          |                         |they are interpreted     |
|                          |                         |identically.             |
+--------------------------+-------------------------+-------------------------+
|\ **path**                |String                   |*(Required)*             |
|                          |                         |Path to modify. Valid    |
|                          |                         |values are               |
|                          |                         |``/state``, ``/started-  |
|                          |                         |time``, ``/ended-time``, |
|                          |                         |``/errors``,             |
|                          |                         |``/files_restores``, and |
|                          |                         |``/bytes-restored``.     |
+--------------------------+-------------------------+-------------------------+
|\ **value**               |String                   |*(Required)*             |
|                          |                         |Value related to the     |
|                          |                         |``path``.                |
+--------------------------+-------------------------+-------------------------+
|value.\ **count**         |Integer                  |When ``path`` is         |
|                          |                         |``/errors``, specifies   |
|                          |                         |the number of errors     |
|                          |                         |that the restore can     |
|                          |                         |encounter.               |
+--------------------------+-------------------------+-------------------------+
|value.\ **reason**        |String                   |When ``path`` is         |
|                          |                         |``/errors`` and an error |
|                          |                         |is encountered,          |
|                          |                         |specifies the reason for |
|                          |                         |the error.               |
+--------------------------+-------------------------+-------------------------+
|value.\ **diagnostics**   |String                   |When ``path`` is         |
|                          |                         |``/errors`` and an error |
|                          |                         |is encountered, provides |
|                          |                         |information about        |
|                          |                         |possible reasons for the |
|                          |                         |error.                   |
+--------------------------+-------------------------+-------------------------+
|value.\ **list**          |String                   |Additional information   |
|                          |                         |for the errors.          |
+--------------------------+-------------------------+-------------------------+
|value.list.\ **index**    |String                   |Index for the error.     |
+--------------------------+-------------------------+-------------------------+
|value.list.\ **path**     |String                   |Path for the error.      |
+--------------------------+-------------------------+-------------------------+
|value.list.\ **type**     |String                   |Type of error.           |
+--------------------------+-------------------------+-------------------------+
|value.list.\ **exception**|String                   |Information about the    |
|                          |                         |exception.               |
+--------------------------+-------------------------+-------------------------+
|value.list.exception.\    |String                   |Code for the exception.  |
|**code**                  |                         |                         |
+--------------------------+-------------------------+-------------------------+
|value.list.exception.\    |String                   |Description for the      |
|**description**           |                         |exception.               |
+--------------------------+-------------------------+-------------------------+
|value.list.exception.\    |String                   |Details about the        |
|**details**               |                         |exception.               |
+--------------------------+-------------------------+-------------------------+

**Example: Update a restore, JSON request**

.. code::

   PATCH https://dfw.backup.api.rackspacecloud.com/v2/110011/restores/e87e6f7d-d166-11e4-8689-c8e0eb190e3d HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-Type: application/json-patch+json

.. code::

   [
       {
           "op": "replace",
           "path": "/state",
           "value": "completed_with_errors"
       },
       {
           "op": "add",
           "path": "/started_time",
           "value": "2014-10-20T13:11:58.985151Z"
       },
       {
           "op": "add",
           "path": "/ended_time",
           "value": "2014-10-20T13:12:58.985151Z"
       },
       {
           "op": "add",
           "path": "/errors",
           "value": {
               "count": 1,
               "reason": "unable_to_process_some_files",
               "diagnostics": "Some files may not have been restored.",
               "list": [
                   {
                       "index": 3,
                       "path": "/usr/bin/h2xs",
                       "type": "phx_exception",
                       "exception": {
                           "code": 9016,
                           "description": "WRITE failed (3042): No space left on device",
                           "details": "1: [virtual void phx::LinuxFs::Write(boost::shared_ptr<phx::AbstractFileRef>, phx::BinaryStream&, phx::file_size_t): 290-virtual void phx::LinuxFs::Write(boost::shared_ptr<phx::AbstractFileRef>, phx::BinaryStream&, phx::file_size_t)] Ex Code(9016): WRITE failed (3042): No space left on device"
                       }
                   }
               ]
           }
       },
       {
           "op": "add",
           "path": "/files_restored",
           "value": 2
       },
       {
           "op": "add",
           "path": "/bytes_restored",
           "value": 1512
       }
   ]

Response
--------

**Example: Update a restore, 204 response**

.. code::

   204 (No Content)

**Example: Update a restore, 409 response**

.. code::

   409 (Conflict)

.. code::

   {
       "message": "Modifying a restore that is already in a state of ['completed', 'completed_with_errors', 'failed', 'stopped'] is not allowed."
   }
