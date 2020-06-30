.. _change-log-level:

Change log level
~~~~~~~~~~~~~~~~

.. code::

    PUT /v1.0/{tenant_id}/agent/logging

This operation changes the current log level for a specified machine agent.

This table shows the possible response codes for this operation:

+--------------------------+-------------------------+------------------------+
|Response code             |Name                     |Description             |
+==========================+=========================+========================+
|200                       |OK                       |The request succeeded.  |
+--------------------------+-------------------------+------------------------+
|403                       |Forbidden                |Access to the requested |
|                          |                         |resource was denied.    |
+--------------------------+-------------------------+------------------------+
|500                       |Instance Fault           |This is a generic server|
|                          |                         |error. The message      |
|                          |                         |contains the reason for |
|                          |                         |the error. This error   |
|                          |                         |could wrap several error|
|                          |                         |messages.               |
+--------------------------+-------------------------+------------------------+
|503                       |Service Unavailable      |This is a generic server|
|                          |                         |error. The message      |
|                          |                         |contains the reason for |
|                          |                         |the error. This error   |
|                          |                         |could wrap several error|
|                          |                         |messages.               |
+--------------------------+-------------------------+------------------------+

Request
-------

This table shows the URI parameters for the request:

+--------------------------+-------------------------+------------------------+
|Name                      |Type                     |Description             |
+==========================+=========================+========================+
|{tenant_id}               |String                   |The unique identifier of|
|                          |                         |the tenant or account.  |
+--------------------------+-------------------------+------------------------+

This table shows the body parameters for the request:

+------------------------------+-----------------------+----------------------+
|Name                          |Type                   |Description           |
+==============================+=======================+======================+
|**MachineAgentId**            |String *(Required)*    |Agent ID of the       |
|                              |                       |server we wish to     |
|                              |                       |change the log level  |
|                              |                       |on.                   |
+------------------------------+-----------------------+----------------------+
|**LoggingLevelId**            |String *(Required)*    |Desired logging level |
|                              |                       |from 1 (only FATAL)   |
|                              |                       |to 6 (ALL or TRACE).  |
+------------------------------+-----------------------+----------------------+

**Example: Change logging level request**

.. code::

   MachineAgentId=1311839&LoggingLevelId=6

Response
--------

This operation does not return a response body.
