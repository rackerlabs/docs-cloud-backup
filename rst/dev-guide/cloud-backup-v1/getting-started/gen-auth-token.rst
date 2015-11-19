.. _gen-auth-token:

Generate an authentication token
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Your first step must always be to generate an authentication token. You
must then include the authentication token in each request, in the
``X-Auth-Token`` header.

Remember to replace the placeholders in the following authentication
request example with your information:

-  **yourUserName** —Your common Rackspace Cloud user name, as supplied
   during registration

-  **yourApiKey** — Your API key

   See :ref:`Prerequisites for running
   examples <gsg-prerequisites-for-examples>` for the steps to use to find your API key.

..  note:: 
    This guide uses **yourUserName** and **yourApiKey** for authentication.
    For information about other supported authentication methods, see the :rax-devdocs:`Cloud Identity Client Developer Guide <cloud-identity/v2/developer-guide>`.

Use the following endpoint to access the Cloud Identity service for
authentication, regardless of US or UK identities:

-  https://identity.api.rackspacecloud.com/v2.0/

Your account may be based in either the US or the UK. This is not
determined by your physical location but by the location of the
Rackspace retail site that was used to create your account:

-  If your account was created via http://www.rackspacecloud.com, it is
   a US-based account.

-  If your account was created via http://www.rackspace.co.uk, it is a
   UK-based account.

Notice in `Example 4.1, “cURL authentication request:
JSON” <generateAuthenticationToken-d1e01.html#authenticationRequest>`__
that you authenticate using the URL for the Cloud Identity services
``https://identity.api.rackspacecloud.com/v2.0/tokens``. The ``v2.0``
component in the URL indicates that you are using version 2.0 of the
Cloud Identity API.

The cURL request uses the ``-s`` option for silent or quiet mode (no
progress or error messages shown), the ``-X`` option to specify the
request operation to use when communicating with the HTTP server
(instead of using the default operation), and the ``-d`` option to send
the specified data in a **POST** request to the HTTP server.

If you have the tools, you can run the cURL JSON request examples with
the following option to format the output from cURL: **<cURL JSON
request example> \| python -m json.tool**.

 
**Example: cURL authentication request: JSON**

.. code::  

   curl -s -X POST https://identity.api.rackspacecloud.com/v2.0/tokens \
     -H "Content-Type: application/json" \
     -d '{
        "auth": {
          "RAX-KSKEY:apiKeyCredentials": {
            "username": "yourUserName",
            "apiKey": "yourApiKey"
          }
        }
      }' | python -m json.tool

An HTTP status code of 200 (OK) indicates that the authentication
request completed successfully.

In the authentication response, the authentication token ``id`` is
returned near the bottom of the following example with an ``expires``
attribute that specifies when the token expires. Tokens are valid for a
finite duration, typically for 24 hours. Remember to supply your
authentication token wherever you see the placeholder **yourAuthToken**
in the examples in this guide.

The ``publicURL`` endpoints for Cloud Backup (for example
``https://dfw.backup.api.rackspacecloud.com/v1.0/123456``) are also
returned in the authentication response.

Your actual account number is after the final slash (/) in the
``publicURL`` field (for example ``123456`` in the preceding example
endpoint). You must specify your account number in the Cloud Backup API
request, wherever you see the placeholder **yourAccountID** specified in
the examples in this guide.

 
**Example: Authentication response with partial service catalog
showing Cloud Backup endpoints**

.. code::  

   {
        "access": {
            "serviceCatalog": [
                {
                    "endpoints": [
                        {
                            "publicURL": "https://syd.blockstorage.api.rackspacecloud.com/v1/123456", 
                            "region": "SYD", 
                            "tenantId": "123456"
                        }, 
                        {
                            "publicURL": "https://dfw.blockstorage.api.rackspacecloud.com/v1/123456", 
                            "region": "DFW", 
                            "tenantId": "123456"
                        }, 
                        {
                            "publicURL": "https://ord.blockstorage.api.rackspacecloud.com/v1/123456", 
                            "region": "ORD", 
                            "tenantId": "123456"
                        }, 
                        {
                            "publicURL": "https://iad.blockstorage.api.rackspacecloud.com/v1/123456", 
                            "region": "IAD", 
                            "tenantId": "123456"
                        }, 
                        {
                            "publicURL": "https://hkg.blockstorage.api.rackspacecloud.com/v1/123456", 
                            "region": "HKG", 
                            "tenantId": "123456"
                        }
                    ], 
                    "name": "cloudBlockStorage", 
                    "type": "volume"
                }, 
                {
                    "endpoints": [
                        {
                            "publicURL": "https://backup.api.rackspacecloud.com/v1.0/123456", 
                            "tenantId": "123456"
                        }, 
                        {
                            "publicURL": "https://iad.backup.api.rackspacecloud.com/v1.0/123456", 
                            "region": "IAD", 
                            "tenantId": "123456"
                        }, 
                        {
                            "publicURL": "https://hkg.backup.api.rackspacecloud.com/v1.0/123456", 
                            "region": "HKG", 
                            "tenantId": "123456"
                        }, 
                        {
                            "publicURL": "https://syd.backup.api.rackspacecloud.com/v1.0/123456", 
                            "region": "SYD", 
                            "tenantId": "123456"
                        }, 
                        {
                            "publicURL": "https://dfw.backup.api.rackspacecloud.com/v1.0/123456", 
                            "region": "DFW", 
                            "tenantId": "123456"
                        }, 
                        {
                            "publicURL": "https://ord.backup.api.rackspacecloud.com/v1.0/123456", 
                            "region": "ORD", 
                            "tenantId": "123456"
                        }
                    ], 
                    "name": "cloudBackup", 
                    "type": "rax:backup"
                }, 
                {
                    "endpoints": [
                        {
                            "publicURL": "https://syd.servers.api.rackspacecloud.com/v2/123456", 
                            "region": "SYD", 
                            "tenantId": "123456", 
                            "versionId": "2", 
                            "versionInfo": "https://syd.servers.api.rackspacecloud.com/v2", 
                            "versionList": "https://syd.servers.api.rackspacecloud.com/"
                        }, 
                        {
                            "publicURL": "https://dfw.servers.api.rackspacecloud.com/v2/123456", 
                            "region": "DFW", 
                            "tenantId": "830866", 
                            "versionId": "2", 
                            "versionInfo": "https://dfw.servers.api.rackspacecloud.com/v2", 
                            "versionList": "https://dfw.servers.api.rackspacecloud.com/"
                        }, 
                        {
                            "publicURL": "https://iad.servers.api.rackspacecloud.com/v2/830866", 
                            "region": "IAD", 
                            "tenantId": "830866", 
                            "versionId": "2", 
                            "versionInfo": "https://iad.servers.api.rackspacecloud.com/v2", 
                            "versionList": "https://iad.servers.api.rackspacecloud.com/"
                        }, 
                        {
                            "publicURL": "https://hkg.servers.api.rackspacecloud.com/v2/830866", 
                            "region": "HKG", 
                            "tenantId": "830866", 
                            "versionId": "2", 
                            "versionInfo": "https://hkg.servers.api.rackspacecloud.com/v2", 
                            "versionList": "https://hkg.servers.api.rackspacecloud.com/"
                        }, 
                        {
                            "publicURL": "https://ord.servers.api.rackspacecloud.com/v2/830866", 
                            "region": "ORD", 
                            "tenantId": "830866", 
                            "versionId": "2", 
                            "versionInfo": "https://ord.servers.api.rackspacecloud.com/v2", 
                            "versionList": "https://ord.servers.api.rackspacecloud.com/"
                        }
                    ], 
                    "name": "cloudServersOpenStack", 
                    "type": "compute"
                }, 
            ], 
            "token": {
                "RAX-AUTH:authenticatedBy": [
                    "APIKEY"
                ], 
                "expires": "2014-07-22T07:11:19.488Z", 
                "id": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", 
                "tenant": {
                    "id": "123456", 
                    "name": "123456"
                }
            }, 
            "user": {
                "RAX-AUTH:defaultRegion": "DFW", 
                "id": "123456", 
                "name": "yourUserName", 
                "roles": [
                    {
                        "description": "A Role that allows a user access to keystone Service methods", 
                        "id": "5", 
                        "name": "object-store:default", 
                        "tenantId": "MossoCloudFS_aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"
                    }, 
                    {
                        "description": "A Role that allows a user access to keystone Service methods", 
                        "id": "6", 
                        "name": "compute:default", 
                        "tenantId": "123456"
                    }, 
                    {
                        "description": "User Admin Role.", 
                        "id": "3", 
                        "name": "identity:user-admin"
                    }
                ]
            }
        }
    }

After authentication, you can use cURL to perform the **GET**,
**DELETE**, **PUT**, and **POST** requests for the Cloud Backup API.
