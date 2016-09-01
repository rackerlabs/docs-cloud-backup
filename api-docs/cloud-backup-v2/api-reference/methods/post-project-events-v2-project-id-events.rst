.. _post-project-events:

Post project events
~~~~~~~~~~~~~~~~~~~

.. code::

    POST /v2/{project_id}/events

This operation results in the agent checking for events from the API
periodically, based on a schedule. The operation also causes the agent to post
heartbeat events periodically so that clients can determine whether the agent
is online or offline. By setting the value of ``event`` to ``agent_activate``
in the request, you can then use the ``mode`` parameter to indicate how often
the agent should post events.

After a specified period of time, the agent falls back to a ``mode`` of
``idle``.

The following table shows the possible response codes for this operation.

+---------------+-----------------+-----------------------------------------------------------+
|Response code  |Name             |Description                                                |
+===============+=================+===========================================================+
|202            | Accepted        |The request has been accepted for processing, but the      |
|               |                 |processing has not been completed.                         |
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

The following table shows the body parameters for the request.

+-------------------------+-------------------------+--------------------------+
|Name                     |Type                     |Description               |
+=========================+=========================+==========================+
|\ **event**              |String                   |*(Required)*              |
|                         |                         |For ``event``, use        |
|                         |                         |``agent_activate`` to     |
|                         |                         |have the client specify   |
|                         |                         |how often the agent       |
|                         |                         |should post events.       |
+-------------------------+-------------------------+--------------------------+
|\ **mode**               |String                   |*(Required)*              |
|                         |                         |Type of event collection. |
|                         |                         |Valid values are          |
|                         |                         |``idle``, ``active``, and |
|                         |                         |``real_time``.            |
|                         |                         |                          |
|                         |                         |-  ``idle`` specifies that|
|                         |                         |   the agent checks for   |
|                         |                         |   and posts events       |
|                         |                         |   periodically, but not  |
|                         |                         |   frequently. You do not |
|                         |                         |   not have a need to     |
|                         |                         |   communicate with the   |
|                         |                         |   agent immediately.     |
|                         |                         |                          |
|                         |                         |   .. note::              |
|                         |                         |     Testing the agent's  |
|                         |                         |     ``online`` or        |
|                         |                         |     ``offline`` status is|
|                         |                         |     not safe in this     |
|                         |                         |     ``mode``.            |
|                         |                         |                          |
|                         |                         |-  ``active`` specifies   |
|                         |                         |   that the agent checks  |
|                         |                         |   for and posts events   |
|                         |                         |   frequently.            |
|                         |                         |                          |
|                         |                         |-  ``real_time`` specifies|
|                         |                         |   that the agent checks  |
|                         |                         |   for and posts events   |
|                         |                         |   very frequently.       |
|                         |                         |   Typically, in this     |
|                         |                         |   ``mode``, you want to  |
|                         |                         |   perform multiple,      |
|                         |                         |   rapid, time-sensitive  |
|                         |                         |   tasks with the agent,  |
|                         |                         |   such as browsing files |
|                         |                         |   on the host or in a    |
|                         |                         |   previous backup.       |
+-------------------------+-------------------------+--------------------------+

**Example: Post project events, JSON request**

.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/events HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json

.. code::

   {
       "event": "agent_activate",
       "mode": "active"
   }

Response
--------

This operation does not return a response body.

**Example: Post project events, HTTP response**

.. code::

   202 (Accepted)
