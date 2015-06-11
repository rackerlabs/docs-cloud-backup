.. _cbu-dgv2-service:

========================
Service access endpoints
========================

The Rackspace Cloud Backup Service is a regionalized service. The user of the service is therefore responsible for appropriate replication, caching, and overall maintenance of Rackspace Cloud Backup data across regional boundaries to other Rackspace Cloud Backup servers.

You can find the available service endpoints for Rackspace Cloud Backup in the following table.

To help you decide which regionalized endpoint to use, read the
Knowledge Center article about `special considerations for choosing a data center`_.

**Regionalized service endpoints**
+---------------------+-------------------------------------------------------+
| Region              | Endpoint                                              |
+=====================+=======================================================+
| Dallas/Ft. Worth    | `https://dfw.backup.api.rackspacecloud.com/v2/1234`/  |
| (DFW)               |                                                       |
+---------------------+-------------------------------------------------------+
| Chicago (ORD)       | `https://ord.backup.api.rackspacecloud.com/v2/1234`/  |
+---------------------+-------------------------------------------------------+
| London (LON)        | `https://lon.backup.api.rackspacecloud.com/v2/1234`/  |
+---------------------+-------------------------------------------------------+
| Hong Kong (HKG)     | `https://hkg.backup.api.rackspacecloud.com/v2/1234`/  |
+---------------------+-------------------------------------------------------+
| Northern Virginia   | `https://iad.backup.api.rackspacecloud.com/v2/1234`/  |
| (IAD)               |                                                       |
+---------------------+-------------------------------------------------------+
| Sydney (SYD)        | `https://syd.backup.api.rackspacecloud.com/v2/1234`/  |
+---------------------+-------------------------------------------------------+

Replace the `yourAccountID` placeholder with your actual account number, which is returned as part of the authentication service response, after the final **/** in the `publicURL` field.

.. _special considerations for choosing a data center: http://www.rackspace.com/knowledge_center/article/about-regions