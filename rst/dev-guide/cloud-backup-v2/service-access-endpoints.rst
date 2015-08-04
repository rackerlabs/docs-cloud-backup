.. _cbu-dgv2-service:

========================
Service access endpoints
========================

The Rackspace Cloud Backup Service is a regionalized service. The user of the service is therefore responsible for appropriate replication, caching, and overall maintenance of Rackspace Cloud Backup data across regional boundaries to other Rackspace Cloud Backup servers.

The available service endpoints for Rackspace Cloud Backup are listed in the following table.

To help you decide which regionalized endpoint to use, read the
Knowledge Center article about `special considerations for choosing a data center`_.

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

Every REST request requires a project ID (which is also referred to as the account ID or tenant ID) in the service access endpoint or in the ``X-Project-Id`` header.

In the endpoints in the preceding table, replace the example project ID, 1234, with your actual project ID that is returned in the service catalog as part of the Cloud Identity service response.

The actual project ID is located after the final slash (/) in the ``publicURL`` field returned by the authentication response.

..  note::
    The examples in this guide include the project ID in the request URIs.

.. _special considerations for choosing a data center: http://www.rackspace.com/knowledge_center/article/about-regions