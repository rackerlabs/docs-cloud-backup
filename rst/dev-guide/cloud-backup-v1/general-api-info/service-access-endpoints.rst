.. _service-access-endpoints:

========================
Service access endpoints
========================

The Rackspace Cloud Backup Service is a regionalized service. The user of the service is therefore responsible for appropriate replication, caching, and overall maintenance of Rackspace Cloud Backup data across regional boundaries to other Rackspace Cloud Backup servers.

You can find the available service endpoints for Rackspace Cloud Backup in the following table.

To help you decide which regionalized endpoint to use, read the Knowledge Center article about special considerations for choosing a data center at `About Regions`_.

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

Replace the sample account ID number (which is also called the tenant ID), 1234, with your actual account number that is returned as part of the Cloud Identity service response.

You will find the actual account number after the final slash (/) in the ``publicURL`` field returned by the authentication response.

..  note:: 
    The Cloud Backup API runs with or without the specification of the account ID number in the endpoint. However, the examples in this guide include the account number in the request URIs.

.. _About Regions: http://www.rackspace.com/knowledge_center/article/about-regions
