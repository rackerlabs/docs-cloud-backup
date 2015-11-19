.. _gsg-service-access-endpoints:

Service access endpoints
----------------------------------------------

The Cloud Backup service is a regionalized service. The user of the
service is responsible for appropriate replication, caching, and overall
maintenance of Cloud Backup data across regional boundaries to other
Cloud Backup servers.

To help you decide which regionalized endpoint to use, read the Knowledge Center article about special considerations for choosing a data center at :kc-article:`About regions<about-regions>`.

**Regionalized service endpoints**

+---------------------+------------------------------------------------------+
| Region              | Endpoint                                             |
+=====================+======================================================+
| Dallas/Ft. Worth    | ``https://dfw.backup.api.rackspacecloud.com/v1.0/123 |
| (DFW)               | 4``/                                                 |
+---------------------+------------------------------------------------------+
| Chicago (ORD)       | ``https://ord.backup.api.rackspacecloud.com/v1.0/123 |
|                     | 4``/                                                 |
+---------------------+------------------------------------------------------+
| London (LON)        | ``https://lon.backup.api.rackspacecloud.com/v1.0/123 |
|                     | 4``/                                                 |
+---------------------+------------------------------------------------------+
| Hong Kong (HKG)     | ``https://hkg.backup.api.rackspacecloud.com/v1.0/123 |
|                     | 4``/                                                 |
+---------------------+------------------------------------------------------+
| Northern Virginia   | ``https://iad.backup.api.rackspacecloud.com/v1.0/123 |
| (IAD)               | 4``/                                                 |
+---------------------+------------------------------------------------------+
| Sydney (SYD)        | ``https://syd.backup.api.rackspacecloud.com/v1.0/123 |
|                     | 4``/                                                 |
+---------------------+------------------------------------------------------+


Replace the sample account ID number (which is also called the tenant
ID), ``1234``, with your actual account number that is returned as
part of the Cloud Identity service response.

You will find the actual account number after the final slash ('/') in
the ``publicURL`` field returned by the authentication response.

..  note:: 
    The Cloud Backup API runs with or without the specification of the
    account ID number in the endpoint. However, the examples in this guide
    include the account number in the request URIs.
