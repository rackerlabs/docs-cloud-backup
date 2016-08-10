.. _gsg-restore-backup:

Starting a restore operation manually 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can manually run a restore operation that is based on a restore
configuration. Use the ``RestoreId`` that was returned in
:ref:`Create a restore configuration <gsg-create-restore-config>`. The
following example is for an unencrypted restore operation. For an encrypted
restore operation, you add the ``EncryptedPassword`` parameter with its
value.

The HTTP request must include a header to specify the authentication
token.

This operation does not return a response body. An HTTP status code of
204 (No Content) in the response indicates that the request succeeded.
 
**Example: cURL start a restore manually request**

.. code::

   curl -s -X POST $API_ENDPOINT/v1.0/$TENANT_ID/restore/action-requested \
     -H "X-Auth-Token: $AUTH_TOKEN" \
     -H "Content-Type: application/json" \
     -d '{"Action": "StartManual",
           "Id": 1394  }'

When the restore is complete, you receive an email about the status, as
shown in the following example. Receiving the email is based on the
``NotifyRecipients``, ``NotifySuccess``, and ``NotifyFailure``
parameters that you specify when you create your backup configuration
(see :ref:`Create a backup configuration <gsg-create-backup-config>`).

**Example: Start a restore manually email**

.. code::

   Rackspace Cloud Backup
   Status: Completed
   Started: 01 Aug 2014 14:40 UTC
   Completed: 01 Aug 2014 14:40 UTC
   Destination: C:\\FolderPathForRestore\\
   Files Restored: 2 (4 KB)
   Errors Encountered: 0   
