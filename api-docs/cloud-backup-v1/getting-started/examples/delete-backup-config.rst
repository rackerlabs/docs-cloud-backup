

Deleting a backup configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can delete the backup configuration file and verify that it was
removed.

..  note::
    Similarly, you can also delete a restore configuration by using the
    operation to delete a restore configuration.

The HTTP request must include a header to specify the authentication
token.

This operation does not return a response body. An HTTP status code of
200 (OK) in the response indicates that the request succeeded.

 
**Example: cURL delete a backup configuration request**

.. code::

   curl -i -X DELETE $API_ENDPOINT/v1.0/$TENANT_ID/backup-configuration/yourBackupConfigurationID \
   -H "X-Auth-Token: $AUTH_TOKEN"

To verify that the backup configuration is deleted, list the backup
configuration details to see ``IsDeleted: True``.
 
**Example: cURL list backup configuration details request**

.. code::

   curl -s -X GET $API_ENDPOINT/v1.0/$TENANT_ID/backup-configuration/yourBackupConfigurationID \
   -H "X-Auth-Token: $AUTH_TOKEN" | python -m json.tool

**Example: List backup configuration details response**

.. code::

    {
    "BackupConfigurationId": 174084,
    "BackupConfigurationName": "Weekly Website Backup v2",
     .....
    "IsDeleted": true,
     ....
    } 
