.. _gsg-delete-config:

Delete a backup configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can delete the configuration file and verify that it was
removed.

The delete operation does not return a response body. An HTTP status code of
204 (No Content) in the response indicates that the request succeeded.

..  note::
    The environment variable ``$TENANT_ID`` in the cURL requests in the
    following examples represents the project ID.

**Example: Delete a configuration, cURL request**

.. code::

   curl -i -X DELETE $API_ENDPOINT/v2/$TENANT_ID/configurations/yourConfigurationID \
   -H "X-Auth-Token: $AUTH_TOKEN"

To verify that the configuration is deleted, retrieve the
configuration details
(:ref:`Retrieve details for a configuration<get-list-details-about-a-configuration>`)
to see ``deleted: true`` in the response.
 
**Example: Retrieve configuration details, cURL request**

.. code::

   curl -s -X GET $API_ENDPOINT/v2/$TENANT_ID/configurations/yourConfigurationID \
   -H "X-Auth-Token: $AUTH_TOKEN" | python -m json.tool

**Example: Retrieve configuration details, JSON response**

.. code::

    {
        "project_id": "123456",
        "id": "7c8ee069-568f-4d5a-932f-fb2af86b5fd5",
         .....
        "name": "Every Other Hour Configuration",
         .....
        "deleted": true,
        "backups": {
            "last_completed": {
                "id": "0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
                "links": [
                    {
                        "href": "https://cloudbackupapi.apiary-mock.com/v2/backups/0d95d699-d16b-11e4-93bd-c8e0eb190e3d",
                        "rel": "full"
                    }
                ]
            },
      ....
    }
