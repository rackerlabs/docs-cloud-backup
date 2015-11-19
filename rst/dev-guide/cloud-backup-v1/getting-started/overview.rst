.. _gsg-overview:

Overview
~~~~~~~~

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

Choose your the endpoint for your backup based on the location of the server that you want to use for backup or for restore. For a list of endpoints, see :ref:`Service access endpoints <service-access-endpoints>`.

..  note:: 
    Rackspace Cloud Backup does not take snapshots of your server. Read more about :kc-article:`how Rackspace Cloud Backup differs<rackspace-cloud-backup-vs-cloud-server-image-backups>` from snapshots.

This document describes the features available with API |contract version|.

Follow the steps provided in this guide to use the Cloud Backup API to
create backups and use them to restore your files and folders.

The simple exercises in this guide help you get started with the API by
using cURL commands. With cURL, you send HTTP requests with embedded API
calls from the command line. The cURL examples in this guide include
request and response bodies in JSON format. For more information about
cURL, see :ref:`Sending API requests by using
cURL <gsg-send-request-to-API>`.

To use the API, it helps to be familiar with HTTP 1.1, RESTful web
services, and JSON data serialization format.

You can find details about the Cloud Backup API operations in the :ref:`API reference <api-reference>`.

For more details about Cloud Backup, go to
http://www.rackspace.com/cloud/backup/. This site also offers links to
Rackspace official support channels, including phone, chat, and email,
as well as Knowledge Center articles.
