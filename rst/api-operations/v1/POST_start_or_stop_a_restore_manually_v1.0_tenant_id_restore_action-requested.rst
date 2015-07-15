=============================================================================
Start Or Stop A Restore Manually -  Rackspace Cloud Backup Developer Guide v1
=============================================================================

Start Or Stop A Restore Manually
~~~~~~~~~~~~~~~~~~~~~~~~~

`Request <POST_start_or_stop_a_restore_manually_v1.0_tenant_id_restore_action-requested.rst#request>`__
`Response <POST_start_or_stop_a_restore_manually_v1.0_tenant_id_restore_action-requested.rst#response>`__

.. code-block:: javascript

    POST /v1.0/{tenant_id}/restore/action-requested

Manually starts or stops a restore.



This table shows the possible response codes for this operation:


+--------------------------+-------------------------+-------------------------+
|Response Code             |Name                     |Description              |
+==========================+=========================+=========================+
|204                       |No Content               |The request succeeded.   |
+--------------------------+-------------------------+-------------------------+
|400                       |Bad Request              |There were one or more   |
|                          |                         |errors in the request.   |
+--------------------------+-------------------------+-------------------------+
|401                       |Unauthorized             |The supplied token was   |
|                          |                         |not authorized to access |
|                          |                         |the resources. Either it |
|                          |                         |is expired or invalid.   |
+--------------------------+-------------------------+-------------------------+
|403                       |Forbidden                |Access to the requested  |
|                          |                         |resource was denied.     |
+--------------------------+-------------------------+-------------------------+
|404                       |Not Found                |The backend services did |
|                          |                         |not find anything        |
|                          |                         |matching the request URI.|
+--------------------------+-------------------------+-------------------------+
|500                       |Instance Fault           |This is a generic server |
|                          |                         |error. The message       |
|                          |                         |contains the reason for  |
|                          |                         |the error. This error    |
|                          |                         |could wrap several error |
|                          |                         |messages.                |
+--------------------------+-------------------------+-------------------------+
|503                       |Service Unavailable      |This is a generic server |
|                          |                         |error. The message       |
|                          |                         |contains the reason for  |
|                          |                         |the error. This error    |
|                          |                         |could wrap several error |
|                          |                         |messages.                |
+--------------------------+-------------------------+-------------------------+


Request
^^^^^^^^^^^^^^^^^

This table shows the URI parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|{tenant_id}               |xsd:string               |The unique identifier of |
|                          |                         |the tenant or account.   |
+--------------------------+-------------------------+-------------------------+





This table shows the body parameters for the request:

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|Action                    |*(Required)*             |Specifies the action to  |
|                          |                         |perform. Valid values    |
|                          |                         |are "StartManual" and    |
|                          |                         |"StopManual".            |
+--------------------------+-------------------------+-------------------------+
|EncryptedPassword         |*(Required)*             |Used only when you       |
|                          |                         |specify                  |
|                          |                         |Action:"StartManual" to  |
|                          |                         |specify null or the      |
|                          |                         |encrypted key.           |
+--------------------------+-------------------------+-------------------------+
|Id                        |*(Required)*             |Specifies the restore ID.|
+--------------------------+-------------------------+-------------------------+





**Example Start encrypted restore: JSON request**


.. code::

    {
        "Action": "StartManual",
        "EncryptedPassword" : 'myencryptedpassword',
        "Id": 13689
    }


**Example Start unencrypted restore: JSON request**


.. code::

    {
        "Action": "StartManual",
        "Id": 13692
    }


**Example Stop restore manually: JSON request**


.. code::

    {
        "Action": "StopManual",
        "Id": 13689
    }


Response
^^^^^^^^^^^^^^^^^^




