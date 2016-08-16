.. _concepts:

==================
|service| concepts
==================

To use the |apiservice| effectively, you should understand several key concepts.

Agent
~~~~~

An agent is an executable that sits on your cloud server that knows how to
perform backups and restores. Agent installation currently supports Windows and
Unix or Linux platforms.

Backup
~~~~~~

A group of folders, files, or both stored on Cloud Backup for a particular
server and configuration.

Backup configuration
~~~~~~~~~~~~~~~~~~~~

Backup configuration defines what needs to be backed up and when it needs to be
backed up. The backup configuration includes a schedule for the backup, files
to back up, and notifications.

Restore
~~~~~~~

Restore is a process of bringing your system back to a previously saved state,
usually by using a backup as the checkpoint.

Restore configuration
~~~~~~~~~~~~~~~~~~~~~

A restore configuration defines what the restore checkpoint is and the where
the backup should be restored.

Server setup
~~~~~~~~~~~~

Because Cloud Backup is a file-level backup product, you must configure a
separate backup for each cloud server and that a backup does not automatically
apply to an entire environment. You must select the files and folders you want
to back up from your cloud server. This setup requirement applies to Rackspace
Cloud Servers, including the Performance Cloud Servers offering.
