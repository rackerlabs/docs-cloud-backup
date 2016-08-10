.. _overview:

About the API
-------------

Rackspace Cloud Backup is a file-based backup application that enables you to
choose which files and folders to back up from your cloud server. You can
choose to restore your whole system with all of its folders and files, or to
restore individual files or folders from a given date, or to restore to an
entirely different server.

Interactions with Rackspace Cloud Backup occur programmatically via the
Rackspace Cloud Backup API, as described in this guide.

Following are some of the tasks that you can perform using Rackspace Cloud
Backup:

-  Select the files and folders that you want to back up from your cloud
   server.

-  Run your backups manually or on a schedule that works for you.

-  See the activity from all your backups, for both current and previous
   backups.

-  Use AES-256 encryption with a private encryption key known only to you.

-  Restore individual files and folders from a particular date.

-  Save space with incremental backups that save only the changed portions of
   files.

-  Create unlimited backups.

Choose your the endpoint for your backup based on the location of the server
that you want to use for backup or for restore. For a list of endpoints, see
:ref:`Service access endpoints <service-access-endpoints>`.

..  note::
    Rackspace Cloud Backup does not take snapshots of your server. Read more
    about :how-to:`how Rackspace Cloud Backup differs<rackspace-cloud-backup-vs-cloud-server-image-backups>`
    from snapshots.

This document describes the features available with API |contract version|.

.. toctree:: :hidden:
   :maxdepth: 3

   additional-resources
   api-contract-changes
   api-service-updates
