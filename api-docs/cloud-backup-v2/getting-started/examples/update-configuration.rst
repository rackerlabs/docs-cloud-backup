.. _gsg-update-configuration:

Update a backup configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can update the backup configuration that you created earlier in
:ref:`Create a backup configuration <gsg-create-backup-config>`. Configurations
are updated with the JSON Patch. For more information about the JSON Patch, see
`RFC6902 <http://tools.ietf.org/html/rfc6902>`__.

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

..  note::
    The environment variable ``$TENANT_ID`` in the cURL requests in the
    following examples represents the project ID.

**Example: Update a configuration, cURL request**

.. code::

   curl -s -X PATCH $API_ENDPOINT/v2/$TENANT_ID/configurations/yourConfigurationId \
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
cURL request, specifying the same ``yourConfigurationId`` value that you
used in the update request. (For more information, see
:ref:`Retrieve details for a configuration <get-list-details-about-a-configuration>`.)

**Example: Retrieve details for a configuration, cURL request**

.. code::

   curl -s -X GET $API_ENDPOINT/v2/$TENANT_ID/configurations/yourConfigurationId \
   -H "X-Auth-Token: $AUTH_TOKEN" \
   -H "Content-Type: application/json" | python -m
