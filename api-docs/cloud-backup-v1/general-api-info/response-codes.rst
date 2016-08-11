.. _response-codes:

==============
Response codes
==============

Cloud Backup returns an HTTP code that denotes the type of response.

-  Successful response codes are returned only if all configured
   providers were successful in processing the request.

-  When an error occurs, the Rackspace Cloud Backup Service
   returns a fault object containing an HTTP error response
   code that denotes the type of error. In the body of the
   response, the system returns additional information about
   the fault.

This API uses `standard HTTP 1.1 response codes`_.

The following table lists possible responses with their associated 
codes and descriptions.

**Table: Response codes for Cloud Backup**

+--------------------------+--------------------------+-----------------------+
| Response                 | Associated               | Description           |
|                          | response code            |                       |
+--------------------------+--------------------------+-----------------------+
| OK                       | 200                      | The request has       |
|                          |                          | succeeded.            |
+--------------------------+--------------------------+-----------------------+
| Created                  | 201                      | The request has been  |
|                          |                          | fulfilled and a       |
|                          |                          | resource was created. |
+--------------------------+--------------------------+-----------------------+
| Accepted                 | 202                      | The request has been  |
|                          |                          | accepted for          |
|                          |                          | processing.           |
+--------------------------+--------------------------+-----------------------+
| No Content               | 204                      | The request has been  |
|                          |                          | fulfilled but does not|
|                          |                          | return a              |
|                          |                          | representation (that  |
|                          |                          | is, the response is   |
|                          |                          | empty).               |
+--------------------------+--------------------------+-----------------------+
| Bad Request              | 400                      | There was one or more |
|                          |                          | errors in the user    |
|                          |                          | request.              |
+--------------------------+--------------------------+-----------------------+
| Unauthorized             | 401                      | The supplied token is |
|                          |                          | not authorized to     |
|                          |                          | access the resources, |
|                          |                          | either it's expired or|
|                          |                          | invalid.              |
+--------------------------+--------------------------+-----------------------+
| Forbidden                | 403                      | Access to the         |
|                          |                          | requested resource was|
|                          |                          | denied.               |
+--------------------------+--------------------------+-----------------------+
| Not Found                | 404                      | A requested resource  |
|                          |                          | was not found.        |
+--------------------------+--------------------------+-----------------------+
| Instance Fault           | 500                      | This is a generic     |
|                          |                          | server error and the  |
|                          |                          | message contains the  |
|                          |                          | reason for the error. |
|                          |                          | This error could wrap |
|                          |                          | several error messages|
|                          |                          | and is a catch all.   |
+--------------------------+--------------------------+-----------------------+
| Not Implemented          | 501                      | The requested method  |
|                          |                          | or resource is not    |
|                          |                          | implemented.          |
+--------------------------+--------------------------+-----------------------+
| Service Unavailable      | 503                      | The Rackspace Cloud   |
|                          |                          | Backup Service is not |
+--------------------------+--------------------------+-----------------------+

The symptoms and solutions for some frequently encountered issues follow.

**Backups get corrupted**

- Does your server have a backup agent and did you clone it to create a new
  backup system?  This means that two backup agents exist with the same
  credentials writing to the same vault.

- Solution: Ensure the agent on the cloned backup server is re-registered
  before any backups are run.

**Backups get network error**

- Solution: Make sure that your backup server has a connection to both service
  net and public net. If it is on an isolated network, the backup agent is able
  to function properly.

**Backups sometimes fail**

- This is most commonly caused by either a failure to communicate with Cloud
  Files, running out of disk space, or a failure to communicate with Cloud
  Backup.

- Sometimes the agent might fail to backup a particular file because of a
  permissions error. Either the file is in use when the agent attempts to
  save it or the file in question cannot be read by the agent. Consider
  permissions when hunting for the root cause of a backup failure.

- Solution: Make sure that you're running the latest agent release. After that,
  attempt to determine the cause of the error, and try the backup or restore
  again if it is an intermittent error.

**Backup or Restore is slow**

- If your backup or restore is encrypted, it can be especially slow. Encryption
  comes at a cost.

- If your system uses Cloud Block Storage as the storage medium, this is known
  to introduce some slowdowns. Consider whether the benefits of using Cloud
  Block Storage outweigh the need for faster backups/restores.

- Solution: Make sure that you're running the latest agent release. After that,
  attempt to determine the cause of the error, and try the backup or restore
  again if it is an intermittent error. We're always working on making backup
  more robust.

.. _standard HTTP 1.1 response codes: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html
