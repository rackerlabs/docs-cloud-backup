.. _cbu-dgv2-overview:

========
Overview
========

Rackspace Cloud Backup is a file-based backup application that enables you to choose which files and folders to back up from your cloud server. You can choose to restore your whole system with all of its folders and to restore to an entirely different server.

Interactions with Rackspace Cloud Backup occur programmatically via the Rackspace Cloud Backup API, as described in this guide.

Following are some of the tasks you can perform using Rackspace Cloud Backup:

-  Select the files and folders that you want to back up from your cloud server.

-  Run your backups manually or on a schedule that works for you.

-  See the activity from all your backups, for both current and previous backups.

-  Use AES-256 encryption with a private encryption key known only to you.

-  Save space with incremental backups that save only the changed portions of files.

-  Create unlimited backups.

Choose your `backup endpoint`_ based on the location of the server that you want to use for backup or for restore. For a list of endpoints, see `Section 2.3, “Service access endpoints” <Service_Access_Endpoints-d1e753.html>`__.

..  note:: 
    Rackspace Cloud Backup does not take snapshots of your server. Read more about `how Rackspace Cloud Backup differs`_ from snapshots.

.. _backup endpoint: 
.. _how Rackspace Cloud Backup differs: http://www.rackspace.com/knowledge_center/article/rackspace-cloud-backup-vs-cloud-server-image-backups

.. _cbu-dgv2-overview-intended:

Intended audience
~~~~~~~~~~~~~~~~~

This guide is intended to assist software developers who want to develop applications by using the Rackspace Cloud Backup API. It assumes the reader has a general understanding of storage and is familiar with the following items:

-  RESTful web services

-  HTTP/1.1 conventions

-  JSON data serialization formats

.. _cbu-dgv2-overview-changehist:

Document change history
~~~~~~~~~~~~~~~~~~~~~~~

This version of this guide replaces and obsoletes all earlier versions. The most recent changes are described in the following table:

+----------------+-------------------------------------+
| Revision Date  |         Summary of Changes          |
+================+=====================================+
| April 30, 2015 | Initial release of Cloud Backup v2. |
+----------------+-------------------------------------+

.. _cbu-dgv2-overview-additional: 

Additional resources
~~~~~~~~~~~~~~~~~~~~

For information about getting started using Cloud Backup using cURL, refer to the `Cloud Backup Getting Started Guide`_.

For more information about using the Cloud Backup API with cURL, see the blog post `Rackspace Cloud Backup API with cURL`_.

Additional information about Cloud Backup is also available in the Rackspace Knowledge Center at `Best Practices for Cloud Backup`_.

For information about Rackspace Cloud products, `the Rackspace Cloud site`_ offers links to the official support channels for Rackspace, including knowledge base articles, forums, phone, chat, and email.

You can follow Rackspace updates and announcements `via twitter`_.

This API uses standard `HTTP 1.1 response codes`_.

.. _Cloud Backup Getting Started Guide: http://docs.rackspace.com/api/
.. _Rackspace Cloud Backup API with cURL: http://developer.rackspace.com/blog/rackspace-cloud-backup-api-with-curl.html#.UVmiv6tetLw
.. _Best Practices for Cloud Backup: http://www.rackspace.com/knowledge_center/article/best-practices-for-cloud-backup
.. _the Rackspace Cloud site: http://www.rackspace.com/cloud/
.. _via twitter: www.twitter.com/rackspace
.. _HTTP 1.1 response codes: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html

.. _cbu-dgv2-overview-contract:

API contract changes
~~~~~~~~~~~~~~~~~~~~

Rackspace notifies customers in release notes when and if the contract changes.

.. _cbu-dgv2-overview-pricing:

Pricing and service level
~~~~~~~~~~~~~~~~~~~~~~~~~

Cloud Backup is part of the Rackspace Cloud and your use of the Cloud Backup API will be billed according to the `pricing schedule`_. Information about service level agreements (SLAs) is also available from that link.

.. _pricing schedule: http://www.rackspace.com/cloud/backup/pricing/
