
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _patch-update-an-agent:

Update an agent
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    PATCH /v2/{project_id}/agents/{agent_id}

Updates the specified agent.

This operation updates the specified agent. Agents are updated with the JSON Patch. For more information about the JSON Patch, see `RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

You can modify values for only the following parameters, which are represented as paths:



*  ``/enabled``
   
   Valid values are ``true`` or ``false``.
*  ``/vault/region``
   
   A valid value is any of the vendor's valid region identifiers.
*  ``/vault/use_internal``
   
   Valid values are ``true`` or ``false``.
*  ``/log_level``
   
   Valid values are ``all``, ``trace``, ``debug``, ``info``, ``warn``, ``error`` (which is the default value), or ``fatal``.


.. note::
   You can use the ``add`` and ``replace`` operations interchangeably as they are interpreted identically.
   
   When the response code is something other than 204, a response body is returned with additional information about the error.
   
   



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|204                       |No Content               |                         |
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
|{agent_id}                |String *(Required)*      |Agent ID. For example,   |
|                          |                         |``8f135b4f-7a69-4b8a-    |
|                          |                         |947f-5e80d772fd97``.     |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+-------------------------+-------------------------+--------------------------+
|Name                     |Type                     |Description               |
+=========================+=========================+==========================+
|\ **op**                 |String *(Required)*      |The ``replace`` or        |
|                         |                         |``add`` operation used to |
|                         |                         |update the agent.         |
+-------------------------+-------------------------+--------------------------+
|\ **path**               |String *(Required)*      |Path of the parameter to  |
|                         |                         |update. Valid values are  |
|                         |                         |``/enabled``,             |
|                         |                         |``/vault/region``,        |
|                         |                         |``/vault/use_internal``,  |
|                         |                         |and ``/log-level``.       |
+-------------------------+-------------------------+--------------------------+
|\ **value**              |String *(Required)*      |Value related to the      |
|                         |                         |``path`` as described at  |
|                         |                         |the beginning of this     |
|                         |                         |section.                  |
+-------------------------+-------------------------+--------------------------+





**Example Update an agent: JSON request**


.. code::

   PATCH https://dfw.backup.api.rackspacecloud.com/v2/110011/agents/8f135b4f-7a69-4b8a-947f-5e80d772fd97 HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-Type: application/json-patch+json


.. code::

   [
       {
           "op": "replace",
           "path": "/enabled",
           "value": true
       }
   ]





Response
""""""""""""""""




This operation does not require a response body.





**Example Update an agent: 204 response**


.. code::

   204 (No Content)




