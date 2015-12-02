

Delete a backup configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can delete the backup configuration file and verify that it was
removed.

..  note:: 
    Similarly, you can also delete a restore configuration by using the
    operation to delete a restore configuration.

The HTTP request must include a header to specify the authentication
token.

The cURL request uses the ``-i`` option to send the HTTP response to
terminal output and the ``-X`` option to specify the correct HTTP
method.

This operation does not return a response body. An HTTP status code of
200 (OK) in the response indicates that the request succeeded.

 
**Example: Delete a backup configuration**

.. code::  

   curl -i -X DELETE https://dfw.backup.api.rackspacecloud.com/v1.0/yourAccountID/backup-configuration/yourBackupConfigurationID \
   -H "X-Auth-Token: yourAuthToken" 

To verify that the backup configuration is deleted, list the backup
configuration details to see ``IsDeleted: True``.

 
**Example: List backup configuration details**

.. code::  

   curl -s -X GET https://dfw.backup.api.rackspacecloud.com/v1.0/yourAccountID/backup-configuration/yourBackupConfigurationID \
   -H "X-Auth-Token: yourAuthToken" | python -m json.tool

.. code::  

    { 
    "BackupConfigurationId": 174084, 
    "BackupConfigurationName": "Weekly Website Backup v2",
     ..... 
    "IsDeleted": true,
     .... 
    } 
