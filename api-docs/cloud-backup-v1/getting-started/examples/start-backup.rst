.. _gsg-start-backup:

Starting a backup manually
~~~~~~~~~~~~~~~~~~~~~~~~~~

If you do not do anything, Cloud Backup runs the backup at the scheduled
time.

If you want to run the backup once to ensure that it works, you can
start the backup manually. Use the ``BackupConfigurationId`` to indicate
the backup configuration that you want to run. You can run the backup
job as many time as you like. A backup is created each time you run the
job.

The HTTP request must include a header to specify the authentication
token.

This operation does not return a response body. An HTTP status code of
200 (OK) in the response indicates that the request succeeded.
 
**Example: cURL start a backup manually request**

.. code::

   curl -i -X POST $API_ENDPOINT/v1.0/$TENANT_ID/backup/action-requested \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" \
   -d '{   "Action" : "StartManual",
            "Id": yourBackupConfigurationId
       }'

The response comes from the server. The number at the end of the
response is the ID of the job.

**Example: Start a backup manually response**

.. code::

   HTTP/1.1 200 OK
   ...
   Date: Thu, 31 Jul 2014 16:54:38 GMT

   368785

When the backup is done, you receive an email about the status, as shown
in the following example. Receiving the email is based on the
``NotifyRecipients``, ``NotifySuccess``, and ``NotifyFailure``
parameters that you specify when you create your backup configuration
(see :ref:`Create a backup configuration <gsg-create-backup-config>`).

**Example: Start a backup manually email**

.. code::

   Rackspace Cloud Backup
   Backed Up: Weekly Website Backup v2 on web2
   Status: Completed
   Started: 31 Jul 2014 16:54 UTC
   Completed: 31 Jul 2014 16:54 UTC
   Source: web02
   Files Searched: 2 (4 KB)
   Errors Encountered: 0 
