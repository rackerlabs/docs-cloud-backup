.. _cbu-dgv1-general-auth:

==============
Authentication
==============

Every REST request against the Rackspace Cloud Backup Service requires the inclusion of a specific authorization token, supplied by the `X-Auth-Token` HTTP header. Customers obtain this token by first using the Rackspace Cloud Identity Service and supplying a valid user name and API access key.

To authenticate, submit a `POST/v2.0/tokens` request, presenting valid Rackspace customer credentials in the message body to a Rackspace authentication endpoint.

.. _cbu-dgv1-general-auth-cred:

Get your credentials
~~~~~~~~~~~~~~~~~~~~

You can use either of two sets of credentials:

-  your user name and password

-  your user name and API key

Your user name and password are the ones that you use to login to the Cloud Control Panel. After you are logged in, you can use the Cloud Control Panel to obtain your API key.

.. note::
  If you authenticate with username and password credentials, you can set up multi-factor authentication to add an additional level of security to your account. This feature is not available for username and API credentials. For information about setting up and using multi-factor authentication, see `Multi-factor authentication`_.

**To find your API key:**

#. Log in to the Cloud Control Panel (https://mycloud.rackspace.com).

#. On the upper-right side of the top navigation pane, click your
   username.

#. From the menu, select **Account Settings**.

#. In the Login Details section of the Account Settings page, locate the
   **API Key** field and click **Show**.

#. Copy the value of the API key and paste it into a text editor of your
   choice.

#. Click **Hide** to hide the value of the API key.

You also need your cloud account number. In the documentation, the account number is often referred to as your tenant name or tenant ID (technically, the ID is different from the name, but at Rackspace, they are the same thing). Together, three components—your user name, your API key, and your tenant ID or cloud account number—form the authentication credentials that are required to connect to the Rackspace cloud.

To find your tenant ID or cloud account number, locate your user name on the upper-right side of the top navigation pane in the Cloud Control Panel. The tenant ID or account number is in parentheses just to the right of your user name.

.. _cbu-dgv1-general-auth-global:

Use the global authentication endpoint
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use the following global endpoint to access the Cloud Identity Service:

``https://identity.api.rackspacecloud.com/v2.0/``

.. _cbu-dgv1-general-auth-send:

Send your credentials to your authentication endpoint
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you know your credentials and your authentication endpoint, and you can issue a `POST /v2.0/tokens` request in an API call, you have all the basic information that you need to use the Rackspace Cloud Identity Service.

You can use `cURL`_ to try the authentication process in two steps: 1) get a token; 2) send the token to a service.

#. Get an authentication token by providing your user name and either your API key or your password. Following are examples of both approaches:

  - You can request a token by providing your user name and your API key.

  .. code::

          curl -X POST https://auth.api.rackspacecloud.com/v2.0/tokens -d 
          '{ "auth":{ "RAX-KSKEY:apiKeyCredentials":{ "username":"yourUserName", "apiKey":"yourApiKey" } } }' -H "Content-type: application/json"

  - You can request a token by providing your user name and your password.

    .. code:: 

          curl -X POST https://auth.api.rackspacecloud.com/v2.0/tokens -d
          '{"auth":{"passwordCredentials":{"username":"yourUserName","password":"yourPassword"}}}' -H "Content-type: application/json"

#. Review the authentication response.

  - Successful authentication returns a token that you can use as evidence that your identity has already been authenticated. To use the token, pass it to other services as in the `X-Auth-Token` header.

  - If the Identity service returns a returns a 401 message with a request for additional credentials, your account requires multi-factor authentication. To complete the authentication process, submit a second POST tokens request with these multi-factor authentication credentials:

    * The session ID value returned in the WWW-Authenticate: OS-MF sessionId header parameter that is included in the response to the initial authentication request.

    * The passcode from the mobile phone associated with your user account.

    **Example: Authentication request with multi-factor authentication credentials**

      .. code::

        $ curl https://identity.api.rackspacecloud.com/v2.0/tokens \
          -X POST \
          -d '{"auth": {"RAX-AUTH:passcodeCredentials": {"passcode":"1411594"}}}'\
          -H "X-SessionId: $SESSION_ID" \
          -H "Content-Type: application/json" --verbose | python -m json.tool

#. Use the authentication token to send a **GET** to a service you would like to use. Here is an example of passing an authentication token to the Cloud Files service, using the Cloud Files service catalog endpoint that was returned along with the token.

  .. code::

    curl -X GET https://storage101.dfw1.clouddrive.com/v1/MossoCloudFS_aaaaaaaa-bbbb-cccc-dddd-eeeeeeee
    -H 'X-Auth-Token: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' --verbose 

  ..  note::
    Find links to language binding examples you can adapt to work with the Cloud Identity service at 
    http://docs.rackspace.com/sdks/guide/content/index.html

Authentication tokens are typically valid for 24 hours. Applications should be designed to re-authenticate after receiving a 401 (Unauthorized) response from a service endpoint.

.. note:: 
  If you are programmatically parsing an authentication response, be aware that service names are stable for the life of the particular service and can be used as keys. You should also be aware that a user's service catalog can include multiple uniquely-named services that perform similar functions. For example, cloudServersOpenStack is the OpenStack version of compute whereas cloudServers is the legacy version of compute. The same user can have access to both services. In the Cloud Identity Service v2.0, the service type attribute can be used as a key to recognize similar services. See the following tip.

..  tip:: 
  Beginning with Rackspace Cloud Identity Service v2.0 (earlier versions were called Rackspace Cloud Authentication Service), the service catalog includes a service type attribute to identify services that perform similar functions but have different names; for example, `type="compute"` identifies compute services such as cloudServers and cloudServersOpenStack. Some developers have found the service type attribute to be useful in parsing the service catalog. For Cloud Identity Service v2.0, you can see the service type attribute in the "Service Catalog in Authentication Response" samples in the `Cloud Identity Client Developer Guide`_.

.. _Multi-factor authentication: http://docs.rackspace.com/auth/api/v2.0/auth-client-devguide/content/MFA_Ops.html
.. _cURL: http://curl.haxx.se/
.. _Cloud Identity Client Developer Guide: http://docs.rackspace.com/auth/api/v2.0/auth-client-devguide/content/Sample_Request_Response-d1e64.html
