.. _gsg-update-configuration:

Update a configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can update the configuration that you created earlier in :ref:`Create a configuration <gsg-create-backup-config>`. Configurations are updated with the JSON Patch. For more information about the JSON Patch, see `RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

You can use only the ``replace`` operation to update a configuration.

You can issue updates only for the following paths:



*  ``/name``
*  ``/enabled``
*  ``/schedule``
*  ``/retention/days``
*  ``/inclusions``
*  ``/exclusions``
*  ``/notifications``

This operation does not return a response body. An HTTP status code of
204 (No Content) in the response indicates that the request succeeded.

 
**Example: cURL command to update a configuration**

.. code::  

   curl -s -X PATCH $API_ENDPOINT/v2/$TENANT_ID/configurations/yourConfigurationID \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" \
   -d '[
            {
                "op": "replace",
                "path": "/enabled",
                "value": true
            }
    ]'  | python -m json.tool  

You can verify that the configuration is updated by using the following
cURL request, specifying the same ``yourConfigurationId`` that you
used in the update request. (For more information, see 
:ref:`list details for a configuration <get-list-details-about-a-configuration>`.)

**Example: cURL command to list a configuration**

.. code::  

   curl -s -X GET $API_ENDPOINT/v2/$TENANT_ID/configurations/yourConfigurationID \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" | python -m
