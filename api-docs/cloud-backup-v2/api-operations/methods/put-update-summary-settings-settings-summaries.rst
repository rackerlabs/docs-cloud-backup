
.. THIS OUTPUT IS GENERATED FROM THE WADL. DO NOT EDIT.

.. _put-update-summary-settings:

Update summary settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code::

    PUT /v2/{project_id}/settings/summaries

This operation updates the summary settings. 



This table shows the possible response codes for this operation:


+---------------+-----------------+-----------------------------------------------------------+
|Response Code  |Name             |Description                                                |
+===============+=================+===========================================================+
|204            | No Content      | The server successfully fulfilled the request. There is   |
|               |                 | no additional content to send in the response body.       |
+---------------+-----------------+-----------------------------------------------------------+
|400            | Bad Request     | The server cannot or will not process the request         |
|               |                 | due to something that is perceived as a client error      |
|               |                 | (for example, malformed syntax, invalid request framing,  |
|               |                 | or deceptive request routing).                            |
+---------------+-----------------+-----------------------------------------------------------+
|401            | Unauthorized    | The request has not been applied because it lacks         |
|               |                 | valid authentication credentials for the target           |
|               |                 | resource. The credentials are either expired or invalid.  |
+---------------+-----------------+-----------------------------------------------------------+
|403            | Forbidden       | The server understood the request but refuses             |
|               |                 | to authorize it.                                          |
+---------------+-----------------+-----------------------------------------------------------+
|404            | Not Found       | The server did not find a current representation          |
|               |                 | for the target resource or is not willing to              |
|               |                 | disclose that one exists.                                 |
+---------------+-----------------+-----------------------------------------------------------+
|405            | Method Not      | The method received in the request line is                |
|               | Allowed         | known by the origin server but is not supported by        |
|               |                 | the target resource.                                      |
+---------------+-----------------+-----------------------------------------------------------+
|409            | Conflict        | The request could not be completed due to a conflict with |
|               |                 | the current state of the resource.                        |
+---------------+-----------------+-----------------------------------------------------------+
|500            | Internal Server | The server encountered an unexpected condition            |
|               | Error           | that prevented it from fulfilling the request.            |
+---------------+-----------------+-----------------------------------------------------------+
|503            | Service         | The server is currently unable to handle the request      |
|               | Unavailable     | due to a temporary overload or scheduled maintenance,     |
|               |                 | which will likely be alleviated after some delay.         |
+---------------+-----------------+-----------------------------------------------------------+

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

+--------------------------+-------------------------+-------------------------+
|Name                      |Type                     |Description              |
+==========================+=========================+=========================+
|\ **daily**               |String *(Optional)*      |When set to ``true``,    |
|                          |                         |creates daily summaries. |
+--------------------------+-------------------------+-------------------------+
|\ **weekly**              |String *(Optional)*      |When set to ``true``,    |
|                          |                         |creates weekly summaries.|
+--------------------------+-------------------------+-------------------------+
|\ **notifications**       |String *(Required)*      |Provides information for |
|                          |                         |the notifications that   |
|                          |                         |are sent.                |
+--------------------------+-------------------------+-------------------------+
|notifications.\ **type**  |String *(Required)*      |Specifies the type of    |
|                          |                         |notification to send,    |
|                          |                         |such as ``email``.       |
+--------------------------+-------------------------+-------------------------+
|notifications.\           |String *(Required)*      |Specifies the            |
|**destination**           |                         |destination for the      |
|                          |                         |notification, such as an |
|                          |                         |email address.           |
+--------------------------+-------------------------+-------------------------+





**Example Update summary settings: JSON request**


.. code::

   PUT https://dfw.backup.api.rackspacecloud.com/v2/110011/settings/summaries HTTP/1.1
   Host: dfw.backup.api.rackspacecloud.com
   X-Auth-Token: 0f6e9f63600142f0a970911583522217
   Content-type: application/json


.. code::

   {
       "daily": true,
       "weekly": false,
       "notifications": [
           {
               "type": "email",
               "destination": "email1@example.com"
           },
           {
               "type": "email",
               "destination": "email2@example.com"
           }
       ]
   }





Response
""""""""""""""""






This operation does not return a response body.



**Example Update summary settings: JSON response**


.. code::

   204 (No Content)




