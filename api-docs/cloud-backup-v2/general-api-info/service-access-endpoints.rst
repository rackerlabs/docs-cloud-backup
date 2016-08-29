.. _service-access-endpoints:

========================
Service access endpoints
========================

The Cloud Backup service is a regionalized service. The user of the service is
therefore responsible for appropriate replication, caching, and overall
maintenance of Rackspace Cloud Backup data across regional boundaries to other
Rackspace Cloud Backup servers.

To determine which region to operate against, select an endpoint from
the following table.

.. tip::
   To help you decide which regionalized endpoint to use, read about
   :how-to:`special considerations for choosing a region <about-regions>`.

**Regionalized service endpoints**

+---------------------+-------------------------------------------------------+
| Region              | Endpoint                                              |
+=====================+=======================================================+
| Dallas/Ft. Worth    | ``https://dfw.backup.api.rackspacecloud.com/v2/1234/``|
| (DFW)               |                                                       |
+---------------------+-------------------------------------------------------+
| Chicago (ORD)       | ``https://ord.backup.api.rackspacecloud.com/v2/1234/``|
+---------------------+-------------------------------------------------------+
| London (LON)        | ``https://lon.backup.api.rackspacecloud.com/v2/1234/``|
+---------------------+-------------------------------------------------------+
| Hong Kong (HKG)     | ``https://hkg.backup.api.rackspacecloud.com/v2/1234/``|
+---------------------+-------------------------------------------------------+
| Northern Virginia   | ``https://iad.backup.api.rackspacecloud.com/v2/1234/``|
| (IAD)               |                                                       |
+---------------------+-------------------------------------------------------+
| Sydney (SYD)        | ``https://syd.backup.api.rackspacecloud.com/v2/1234/``|
+---------------------+-------------------------------------------------------+

Replace the sample account ID number (which is also called the tenant ID), 1234,
with your actual account number that is returned as part of the Cloud Identity
service response. Your account number is shown after the final slash (/) in the
``publicURL`` field returned by the authentication response.

..  note::
    The Cloud Backup API runs with or without the specification of the account
    ID number in the endpoint. However, the examples in this guide include the
    account number in the request URIs.
