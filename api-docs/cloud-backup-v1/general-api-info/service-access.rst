.. _service-access:

========================
Service access endpoints
========================

The |apiservice| service is a regionalized service. It allows the caller to
select the region into which a load balancer is provisioned.

The following table lists the |product name| endpoints that are available
for each region.

.. tip::
   To help you decide which regionalized endpoint to use, read about
   :how-to:`special considerations for choosing a region <about-regions>`.

**Regionalized service endpoints**

+---------------------+-----------------------------------------------------------+
| Region              | Endpoint                                                  |
+=====================+===========================================================+
| Dallas/Ft. Worth    | ``https://dfw.backup.api.rackspacecloud.com/v1.0/123456/``|
| (DFW)               |                                                           |
+---------------------+-----------------------------------------------------------+
| Chicago (ORD)       | ``https://ord.backup.api.rackspacecloud.com/v1.0/123456/``|
+---------------------+-----------------------------------------------------------+
| London (LON)        | ``https://lon.backup.api.rackspacecloud.com/v1.0/123456/``|
+---------------------+-----------------------------------------------------------+
| Hong Kong (HKG)     | ``https://hkg.backup.api.rackspacecloud.com/v1.0/123456/``|
+---------------------+-----------------------------------------------------------+
| Northern Virginia   | ``https://iad.backup.api.rackspacecloud.com/v1.0/123456/``|
| (IAD)               |                                                           |
+---------------------+-----------------------------------------------------------+
| Sydney (SYD)        | ``https://syd.backup.api.rackspacecloud.com/v1.0/123456/``|
+---------------------+-----------------------------------------------------------+

Replace the sample account ID number (which is also called the tenant ID),
123456, with your actual account number that is returned as part of the 
authentication response. The account number is
located  after the  final slash (/) in the ``publicURL`` field.

The service catalog returned in the authentication response specifies the
correct service access endpoint for your account to use for accessing
|product name|. Use the service type (``rax:backup``) to locate the
correct endpoint in the service catalog. For an example of the service
catalog, see
:ref:`authentication response example <authentication-response-examples>`.

..  note::
    The Cloud Backup API runs with or without the specification of the account
    ID number in the endpoint. However, the examples in this guide include the
    account number in the request URIs.
