
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _patch-update-a-configuration-v2-project-id-configurations-configuration-id:

Update a configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    PATCH /v2/{project_id}/configurations/{configuration_id}

Updates the specified configuration.

This operation updates the specified configuration. Configurations are updated with the JSON Patch. For more information about the JSON Patch, see `RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

You can use only the ``replace`` operation to update a configuration.

You can issue updates only for the following paths:



*  ``/name``
*  ``/enabled``
*  ``/schedule``
*  ``/retention/days``
*  ``/inclusions``
*  ``/exclusions``
*  ``/notifications``


The restrictions that apply to the create configuration operation (see "Create a configuration) also apply to this operation as well.



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
|{configuration_id}        |String *(Required)*      |Configuration ID. For    |
|                          |                         |example, ``7c8ee069-568f-|
|                          |                         |4d5a-932f-fb2af86b5fd5``.|
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **op**                  |String *(Required)*      |The ``replace``          |
|                          |                         |operation to update the  |
|                          |                         |configuration.           |
+--------------------------+-------------------------+-------------------------+
|\ **path**                |String *(Required)*      |Path to item to change   |
|                          |                         |in the configuration.    |
|                          |                         |See the beginning of     |
|                          |                         |this section for the     |
|                          |                         |valid values.            |
+--------------------------+-------------------------+-------------------------+
|\ **value**               |String *(Required)*      |Value to which you want  |
|                          |                         |to change the            |
|                          |                         |information in the       |
|                          |                         |``path``.                |
+--------------------------+-------------------------+-------------------------+





**Example Update a configuration: JSON request**


.. code::

   PATCH https://dfw.backup.api.rackspacecloud.com/v2/110011/v2/configurations/7c8ee069-568f-4d5a-932f-fb2af86b5fd5 HTTP/1.1
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










**Example Update a configuration: JSON response**


.. code::

   204 (No Content)




