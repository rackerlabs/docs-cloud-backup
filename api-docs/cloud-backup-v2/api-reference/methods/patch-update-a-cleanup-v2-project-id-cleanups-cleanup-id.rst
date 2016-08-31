.. _patch-update-a-cleanup:

Update a cleanup
~~~~~~~~~~~~~~~~

.. code::

    PATCH /v2/{project_id}/cleanups/{cleanup_id}

This operation updates the specified cleanup. Cleanups are updated with the
JSON Patch. For more information about the JSON Patch, see
`RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

You can issue updates only for the following scenarios:

*  The agent is reporting the state of the cleanup. For example,
   ``[{ "op": "replace", "path": "/state", "value": "queued" }]``.
   The following values are valid for ``value``:

   *  ``queued``
   *  ``in_progress``

*  The agent is reporting the results of the finished cleanup (see the example
   request in this section). The following values are valid for ``/state`` :

   *  ``completed``
   *  ``completed_with_errors``
   *  ``failed``
   *  ``stopped``

*  You are issuing a request to stop the cleanup. For example,
   ``[{ "op": "replace", "path": "/state", "value": "stop_requested" }]``.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|204            | No Content      | The server successfully fulfilled the request, and there  |
|               |                 | is no additional content to send in the response body.    |
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
|{cleanup_id}              |String                   |Cleanup ID. For example, |
|                          |                         |``2f8708b3-d16b-11e4-    |
|                          |                         |bc22-c8e0eb190e3d``.     |
+--------------------------+-------------------------+-------------------------+

The following table shows the body parameters for the request.

+-------------------------+------------------------+---------------------------+
|Name                     |Type                    |Description                |
+=========================+========================+===========================+
|\ **op**                 |String                  |*(Required)*               |
|                         |                        |The ``replace`` or ``add`` |
|                         |                        |operation to update the    |
|                         |                        |cleanup. You can use them  |
|                         |                        |interchangeably because    |
|                         |                        |they are interpreted       |
|                         |                        |identically.               |
+-------------------------+------------------------+---------------------------+
|\ **path**               |String                  |*(Required)*               |
|                         |                        |Path to the ``value``.     |
+-------------------------+------------------------+---------------------------+
|\ **value**              |String                  |*(Required)*               |
|                         |                        |Value related to the       |
|                         |                        |``path``. See the          |
|                         |                        |beginning of this section  |
|                         |                        |for additional information.|
+-------------------------+------------------------+---------------------------+
|value.\ **count**        |Integer                 |Number of errors, when     |
|                         |                        |``path`` is ``/errors``.   |
+-------------------------+------------------------+---------------------------+
|value.\ **reason**       |String                  |Cause of the error, when   |
|                         |                        |``path`` is ``/errors``.   |
|                         |                        |For example,               |
|                         |                        |``error_deleting_object``. |
+-------------------------+------------------------+---------------------------+
|value.\ **diagnostics**  |String                  |Additional information     |
|                         |                        |about the cause of the     |
|                         |                        |error, when ``path`` is    |
|                         |                        |``/errors``.               |
+-------------------------+------------------------+---------------------------+
|value.\ **list**         |String                  |Additional information     |
|                         |                        |about the error, when      |
|                         |                        |``path`` is ``/errors``.   |
+-------------------------+------------------------+---------------------------+
|value.list.\ **index**   |String                  |Index.                     |
+-------------------------+------------------------+---------------------------+
|value.list.\ **path**    |String                  |Path to the log file.      |
+-------------------------+------------------------+---------------------------+
|value.list.\ **type**    |String                  |Type of error.             |
+-------------------------+------------------------+---------------------------+
|value.list.\             |String                  |Information about the      |
|**exception**            |                        |exception.                 |
+-------------------------+------------------------+---------------------------+

**Example: Update a cleanup, JSON request**

.. code::

   PATCH https://dfw.backup.api.rackspacecloud.com/v2/110011/cleanups/2f8708b3-d16b-11e4-bc22-c8e0eb190e3d HTTP/1.1
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
           "value": "2014-10-10T19:05:44.632393Z"
       },
       {
           "op": "add",
           "path": "/ended_time",
           "value": "2014-10-10T19:35:44.632393Z"
       },
       {
           "op": "add",
           "path": "/snapshot_ids",
           "value": [23, 51]
       },
       {
           "op": "add",
           "path": "/errors",
           "value": {
               "count": 1,
               "reason": "error_deleting_object",
               "diagnostics": null,
               "list": [
                   {
                       "index": 34,
                       "path": "/var/www/html/log/st_808_playlist.txt",
                       "type": "file_missing_blocks",
                       "exception": null
                   }
               ]
           }
       },
       {
           "op": "add",
           "path": "/bytes_before",
           "value": 1073741824
       },
       {
           "op": "add",
           "path": "/bytes_after",
           "value": 1067030938
       }
   ]

Response
""""""""

**Example: Update a cleanup, 204 response**

.. code::

   204 (No Content)

**Example: Update a cleanup, 409 response**

.. code::

   409 (Conflict)

.. code::

   {
       "message": "Modifying a cleanup that is already in a state of ['completed', 'completed_with_errors', 'failed', 'stopped'] is not allowed."
   }
