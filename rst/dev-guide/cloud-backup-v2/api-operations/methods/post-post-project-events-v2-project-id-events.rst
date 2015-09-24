
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _post-post-project-events-v2-project-id-events:

Post project events
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    POST /v2/{project_id}/events

Posts events from the API.

This operation results in the agent checking for events from the API periodically, based on a schedule. The operation also causes the agent to post heartbeat events periodically so that clients can determine whether the agent is online or offline. By setting the value of ``event`` to ``agent_activate`` in the request, you can then use the ``mode`` parameter to indicate how often the agent should post events.

.. note::
   After a specified period of time, the agent falls back to a ``mode`` of ``idle``.
   
   



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|202                       |Accepted                 |The request has been     |
|                          |                         |accepted for processing, |
|                          |                         |but the processing has   |
|                          |                         |not been completed.      |
+--------------------------+-------------------------+-------------------------+
|400                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|401                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|403                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|404                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|405                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|409                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|500                       |                         |                         |
+--------------------------+-------------------------+-------------------------+
|503                       |                         |                         |
+--------------------------+-------------------------+-------------------------+


Request
""""""""""""""""




This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{project_id}              |String                   |Project ID of the user.  |
|                          |                         |Also referred to as the  |
|                          |                         |tenant ID or account ID. |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+-------------------------+-------------------------+--------------------------+
|Name                     |Type                     |Description               |
+=========================+=========================+==========================+
|\ **event**              |String *(Required)*      |For ``event``, use        |
|                         |                         |``agent_activate`` to     |
|                         |                         |have the client specify   |
|                         |                         |how often the agent       |
|                         |                         |should post of events.    |
+-------------------------+-------------------------+--------------------------+
|\ **mode**               |String *(Required)*      |Type of event collection. |
|                         |                         |Valid values are          |
|                         |                         |``idle``, ``active``, and |
|                         |                         |``real_time``.``idle``    |
|                         |                         |specifies that the agent  |
|                         |                         |checks for and posts      |
|                         |                         |events periodically, but  |
|                         |                         |not frequently. You do    |
|                         |                         |not have a need to        |
|                         |                         |communicate with the      |
|                         |                         |agent immediately. Note:  |
|                         |                         |Testing the agent's       |
|                         |                         |``online`` or ``offline`` |
|                         |                         |status is not safe in     |
|                         |                         |this ``mode``.``active``  |
|                         |                         |specifies that the agent  |
|                         |                         |checks for and posts      |
|                         |                         |events                    |
|                         |                         |frequently.``real_time``  |
|                         |                         |specifies that the agent  |
|                         |                         |checks for and posts      |
|                         |                         |events very frequently.   |
|                         |                         |Typically, in this        |
|                         |                         |``mode``, you want to     |
|                         |                         |perform multiple, rapid,  |
|                         |                         |time-sensitive tasks with |
|                         |                         |the agent, such as        |
|                         |                         |browsing files on the     |
|                         |                         |host or in a previous     |
|                         |                         |backup.                   |
+-------------------------+-------------------------+--------------------------+





**Example Post project events: JSON request**


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
""""""""""""""""










**Example Post project events: JSON response**


.. code::

   202 (Accepted)




