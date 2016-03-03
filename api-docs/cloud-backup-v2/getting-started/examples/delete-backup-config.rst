

Delete a configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can delete the configuration file and verify that it was
removed.

The delete operation does not return a response body. An HTTP status code of
204 (No Content) in the response indicates that the request succeeded.

 
**Example: cURL command to delete a configuration**

.. code::  

   curl -i -X DELETE $API_ENDPOINT/v2/$TENANT_ID/configurations/yourConfigurationID \
   -H "X-Auth-Token: $AUTH_TOKEN" 

To verify that the configuration is deleted, list the
configuration details (:ref:`List details for a configuration<get-list-details-about-a-configuration>`) to see 
``deleted: true`` in the response.
 
**Example: cURL command to  list configuration details**

.. code::  

   curl -s -X GET $API_ENDPOINT/v2/$TENANT_ID/configurations/yourConfigurationID \
   -H "X-Auth-Token: $AUTH_TOKEN" | python -m json.tool

**Example: List configuration details response in JSON**

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
