.. _response-codes:

=========================
Response codes
=========================

Cloud Backup returns an HTTP code that denotes the type of response.

-  Successful response codes are returned only if all configured
   providers were successful in processing the request.

-  When an error occurs, the Rackspace Cloud Backup Service 
   returns a fault object containing an HTTP error response 
   code that denotes the type of error. In the body of the 
   response, the system returns additional information about 
   the fault.

This API uses `standard HTTP 1.1 response codes`_.

The following table lists possible fault types with their associated error codes and descriptions. 


+---------------+-----------------+-----------------------------------------------------------+
| Response code |      Type       |                        Description                        |
+===============+=================+===========================================================+
|           200 | OK              | The request succeeded. Some successful requests might     |
|               |                 | return more specific 200 class codes.                     |
+---------------+-----------------+-----------------------------------------------------------+
|           201 | Created         | The request was fulfilled and has resulted in one or      |
|               |                 | more new resources being created.                         |
+---------------+-----------------+-----------------------------------------------------------+
|           202 | Accepted        | The request was accepted for processing, but the          |
|               |                 | processing has not completed.                             |
+---------------+-----------------+-----------------------------------------------------------+
|           204 | No content      | The server successfully fulfilled the request, and there  |
|               |                 | is no additional content to send in the response body.    |
+---------------+-----------------+-----------------------------------------------------------+
|           400 | Bad Request     | The server cannot or will not process the request         |
|               |                 | due to something that is perceived as a client error      |
|               |                 | (for example, malformed syntax, invalid request framing,  |
|               |                 | or deceptive request routing).                            |
+---------------+-----------------+-----------------------------------------------------------+
|           401 | Unauthorized    | The request has not been applied because it lacks         |
|               |                 | valid authentication credentials for the target           |
|               |                 | resource. The credentials are either expired or invalid.  |
+---------------+-----------------+-----------------------------------------------------------+
|           403 | Forbidden       | The server understood the request but refuses             |
|               |                 | to authorize it.                                          |
+---------------+-----------------+-----------------------------------------------------------+
|           404 | Not Found       | The server did not find a current representation          |
|               |                 | for the target resource or is not willing to              |
|               |                 | disclose that one exists.                                 |
+---------------+-----------------+-----------------------------------------------------------+
|           405 | Method Not      | The method received in the request line is                |
|               | Allowed         | known by the origin server but is not supported by        |
|               |                 | the target resource.                                      |
+---------------+-----------------+-----------------------------------------------------------+
|           409 | Conflict        | The request could not be completed due to a conflict with |
|               |                 | the current state of the resource.                        |
+---------------+-----------------+-----------------------------------------------------------+
|           500 | Internal Server | The server encountered an unexpected condition            |
|               | Error           | that prevented it from fulfilling the request.            |
+---------------+-----------------+-----------------------------------------------------------+
|           501 | Not Implemented | The requested method or resource is not implemented.      |
+---------------+-----------------+-----------------------------------------------------------+
|           503 | Service         | The server is currently unable to handle the request      |
|               | Unavailable     | due to a temporary overload or scheduled maintenance,     |
|               |                 | which will likely be alleviated after some delay.         |
+---------------+-----------------+-----------------------------------------------------------+

When possible, error responses include a response body that details the error. A typical example 
response follows:

.. code::

   {      "message": "Validation failed.",      "errors": [         "Name is required.",         "RSA public key is required."      ]
   }

The symptoms and solutions for some frequently encountered issues follow.

**Backups get corrupted**

- Does your server have a backup agent and did you clone it to create a new backup 
  system?  This means that two backup agents exist with the same credentials writing 
  to the same vault.

- Solution: Ensure the agent on the cloned backup server is re-registered before any backups are run. 

**Backups get network error**

- Solution: Make sure that your backup server has a connection to both service net and public 
  net. If it is on an isolated network, the backup agent is able to function properly. 

**Backups sometimes fail**

- This is most commonly caused by either a failure to communicate with Cloud Files, 
  running out of disk space, or a failure to communicate with Cloud Backup.

- Sometimes the agent might fail to backup a particular file because of a 
  permissions error. Either the file is in use when the agent attempts to 
  save it or the file in question cannot be read by the agent. Consider 
  permissions when hunting for the root cause of a backup failure.

- Solution: Make sure that you're running the latest agent release. After that, 
  attempt to determine the cause of the error, and try the backup or restore again if it is an intermittent error. 

**Backup or Restore is slow**

- If your backup or restore is encrypted, it can be especially slow. Encryption comes at a cost.

- If your system uses Cloud Block Storage as the storage medium, this is known to 
  introduce some slowdowns. Consider whether the benefits of using Cloud Block 
  Storage outweigh the need for faster backups/restores.

- Solution: Make sure that you're running the latest agent release. After that, 
  attempt to determine the cause of the error, and try the backup or restore 
  again if it is an intermittent error. We're always working on making backup more robust
 
.. _standard HTTP 1.1 response codes: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html