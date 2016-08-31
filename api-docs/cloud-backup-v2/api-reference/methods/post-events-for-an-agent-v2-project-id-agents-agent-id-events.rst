.. _post-post-events-for-an-agent:

Post events for an agent
~~~~~~~~~~~~~~~~~~~~~~~~

.. code::

    POST /v2/{project_id}/agents/{agent_id}/events

This operation posts events for the specified agent.

.. note::
   Another valid request is :ref:`post project events<post-project-events>` (POST /v2/events).
   When processed as the "post events for an agent" operation as described here, the
   activation applies to only a single agent instead of all agents for the project.

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

The following table shows the header parameters for the request.

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|X-Agent-Id                |String                   |Agent ID. For example,   |
|                          |                         |8f135b4f-7a69-4b8a-947f- |
|                          |                         |5e80d772fd97.            |
+--------------------------+-------------------------+-------------------------+

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

The following table shows the body parameters for the request.

+-------------------------+-------------------------+--------------------------+
|Name                     |Type                     |Description               |
+=========================+=========================+==========================+
|\ **event**              |String                   |*(Required)*              |
|                         |                         |The event to post. Valid  |
|                         |                         |values are ``startup`` and|
|                         |                         |``shutdown`` . For the    |
|                         |                         |``startup`` event, the    |
|                         |                         |agent starts up,          |
|                         |                         |and the API communicates  |
|                         |                         |any pending work to the   |
|                         |                         |agent. For the            |
|                         |                         |``shutdown`` event, the   |
|                         |                         |agent shuts down.         |
+-------------------------+-------------------------+--------------------------+

**Example: Post events for an agent, JSON request**

.. code::

   POST https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97/events HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json
   X-Agent-Id: 8f135b4f-7a69-4b8a-947f-5e80d772fd97

.. code::

   {
       "event": "startup"
   }

Response
--------

This operation does not return a response body.

**Example: Post events for an agent, HTTP response**

.. code::

   202 (Accepted)
