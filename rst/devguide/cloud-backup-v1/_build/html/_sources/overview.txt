.. _cbu-dgv1-overview:

========
Overview
========

Rackspace Cloud Backup is a file-based backup application that enables you to choose which files and folders to back up from your cloud server. You can choose to restore your whole system with all of its folders and files, or to restore individual files or folders from a given date, or to restore to an entirely different server. 

Interactions with Rackspace Cloud Backup occur programmatically via the Rackspace Cloud Backup API, as described in this guide.

Following are some of the tasks that you can perform using Rackspace Cloud Backup:

-  Select the files and folders that you want to back up from your cloud server.

-  Run your backups manually or on a schedule that works for you.

-  See the activity from all your backups, for both current and previous backups.

-  Use AES-256 encryption with a private encryption key known only to you.

-  Restore individual files and folders from a particular date.

-  Save space with incremental backups that save only the changed portions of files.

-  Create unlimited backups.

Choose your the endpoint for your backup based on the location of the server that you want to use for backup or for restore. For a list of endpoints, see :ref:`Service access endpoints <cbu-dgv1-service>`.

..  note:: 
    Rackspace Cloud Backup does not take snapshots of your server. Read more about `how Rackspace Cloud Backup differs`_ from snapshots.

.. _how Rackspace Cloud Backup differs: http://www.rackspace.com/knowledge_center/article/rackspace-cloud-backup-vs-cloud-server-image-backups

.. _cbu-dgv1-overview-intended:

Intended audience
~~~~~~~~~~~~~~~~~

This guide is intended to assist software developers who want to develop applications by using the Rackspace Cloud Backup API. It assumes the reader has a general understanding of storage and is familiar with the following items:

-  RESTful web services

-  HTTP/1.1 conventions

-  JSON data serialization formats

.. _cbu-dgv1-overview-changehist:

Document change history
~~~~~~~~~~~~~~~~~~~~~~~

This version of this guide replaces and obsoletes all earlier versions. The most recent changes are described in the following table:

+------------------+------------------------------------------------------+
|  Revision Date   |                  Summary of Changes                  |
+==================+======================================================+
| April 23, 2015   | Corrected links in Assigning roles to account users  |
+------------------+------------------------------------------------------+
| March 4, 2015    | Removed the London endpoint, since Rackspace now has |
|                  | one global endpoint for authentication using the     |
|                  | Rackspace Cloud Identity service.                    |
+------------------+------------------------------------------------------+
| January 14, 2015 | Added information and links about                    |
|                  | multi-factor authentication.                         |
+------------------+------------------------------------------------------+

.. _cbu-dgv1-overview-additional: 

Additional resources
~~~~~~~~~~~~~~~~~~~~

For information about getting started using Cloud Backup using cURL, refer to the `Cloud Backup Getting Started Guide`_.

For more information about using the Cloud Backup API with cURL, see the blog post `Rackspace Cloud Backup API with cURL`_.

Additional information about Cloud Backup is also available in the Rackspace Knowledge Center at `Best Practices for Cloud Backup`_.

For information about Rackspace Cloud products, `the Rackspace Cloud site`_ offers links to the official support channels for Rackspace, including knowledge base articles, forums, phone, chat, and email.

You can follow Rackspace updates and announcements `via twitter`_.

This API uses standard `HTTP 1.1 response codes`_.

.. _Cloud Backup Getting Started Guide: http://docs.rackspace.com/rcbu/api/v1.0/rcbu-getting-started/content/Overview-d1e01.html
.. _Rackspace Cloud Backup API with cURL: https://developer.rackspace.com/blog/rackspace-cloud-backup-api-with-curl/
.. _Best Practices for Cloud Backup: http://www.rackspace.com/knowledge_center/article/best-practices-for-cloud-backup
.. _the Rackspace Cloud site: http://www.rackspace.com/cloud/
.. _via twitter: https://twitter.com/rackspace
.. _HTTP 1.1 response codes: http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html

.. _cbu-dgv1-overview-contract:

API contract changes
~~~~~~~~~~~~~~~~~~~~

Rackspace notifies customers in release notes when and if the contract changes.

.. _cbu-dgv1-overview-pricing:

Pricing and service level
~~~~~~~~~~~~~~~~~~~~~~~~~

Cloud Backup is part of the Rackspace Cloud and your use of the Cloud Backup API will be billed according to the `pricing schedule`_. 

While Cloud Backup does not provide a service level agreement (SLA), applicable SLAs for the underlying infrastructure, such as Cloud Files, apply.

.. _pricing schedule: http://www.rackspace.com/cloud/backup/pricing/
