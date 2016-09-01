.. _get-list-the-log-files-for-an-agent:

Retrieve the log files for an agent
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    GET /v2/{project_id}/agents/{agent_id}/logfiles

This operation retrieves the log files for the specified agent. If no log files
are saved, the ``logfiles`` parameter in the response is an empty array.

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
|{agent_id}                |String                   |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+

This operation does not accept a request body.

**Example: Retrieve the log files for an agent, HTTP request**

.. code::

   GET https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

Response
--------

The following table shows the body parameters for the response.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **logfiles**            |String                   |Information about the    |
|                          |                         |log files for the agent. |
+--------------------------+-------------------------+-------------------------+
|logfiles.\ **id**         |String                   |ID of the log file.      |
+--------------------------+-------------------------+-------------------------+
|logfiles.\ **date**       |String                   |Date of the log file.    |
+--------------------------+-------------------------+-------------------------+
|logfiles.\ **state**      |String                   |State of the log file.   |
+--------------------------+-------------------------+-------------------------+
|logfiles.\ **links**      |String                   |Link information for the |
|                          |                         |log file.                |
+--------------------------+-------------------------+-------------------------+
|logfiles.links.\ **href** |String                   |Location (URI) of the    |
|                          |                         |log file.                |
+--------------------------+-------------------------+-------------------------+
|logfiles.links.\ **rel**  |String                   |How the href link        |
|                          |                         |provided is related to   |
|                          |                         |this resource URI.       |
+--------------------------+-------------------------+-------------------------+

**Example: Retrieve the log files for an agent, JSON response**

.. code::

   200 (OK)
   Content-Type: application/json

.. code::

   {
       "logfiles": [
           {
               "id": "a533a845-4279-4838-af13-276114e90234",
               "date": "2014-09-23T12:22:40.606703Z",
               "state": "completed",
               "links": [
                   {
                       "href": "https://cloudbackupapi.apiary-mock.com/v2/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/logfiles/a533a845-4279-4838-af13-276114e90234",
                       "rel": "self"
                   },
                   {
                       "href": "https://cloudfilesapi.apiary-mock.com/v1/MossoCloudFS_f14d894e-28cd-4f31-8b08-449ec0876346/CloudBackupLogs/v2/8f135b4f-7a69-4b8a-947f-5e80d772fd97/2014-09-23T12-22-40.606703Z.gz",
                       "rel": "logfile"
                   },
                   {
                       "href": "https://cloudfilesapi.apiary-mock.com/v1/MossoCloudFS_f14d894e-28cd-4f31-8b08-449ec0876346/CloudBackupLogs/v2/8f135b4f-7a69-4b8a-947f-5e80d772fd97/2014-09-23T12-22-40.606703Z.gz?temp_url_sig=da39a3ee5e6b4b0d3255bfef95601890afd80709&temp_url_expires=1323479485",
                       "rel": "logfile_temp_url"
                   }
               ]
           }
       ]
   }
