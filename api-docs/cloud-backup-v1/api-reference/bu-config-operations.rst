.. _config-operations:

===============================
Backup configuration operations
===============================

When trying to determine how often to back up a file in your backup
configuration, there are three variables to consider:

#. How important is tracking changes in the file to your business processes?
   (criticality)

#. How large is the file? (size)

#. How often does the file change? (data churn)

Criticality is the most important factor to consider when making backup
decisions. The more critical the file is to your business operations, the more
often you'll want to back this file up. Size is an important consideration if
the speed of backups/restores is important to you. Large files take longer to
backup and to restore. It might be wise to backup large files less frequently.
Data churn is the last variable to consider, and perhaps the trickiest to
handle. Files that change often invalidate blocks that have been stored
previously. Depending on criticality, it might still be wise to snapshot files
with high data churn and backup those snapshots.

This section describes the backup configuration operations that are supported
by the Cloud Backup API. 

.. include:: methods/post-create-backup-configuration-v1.0-tenant-id-backup-configuration.rst
.. include:: methods/put-update-backup-configuration-v1.0-tenant-id-backup-configuration-backupconfigurationid.rst
.. include:: methods/get-list-backup-configuration-details-v1.0-tenant-id-backup-configuration-backupconfigurationid.rst
.. include:: methods/get-list-all-backup-configurations-for-a-user-v1.0-tenant-id-backup-configuration.rst
.. include:: methods/get-list-all-backup-configurations-for-an-agent-v1.0-tenant-id-backup-configuration-system-machineagentid.rst
.. include:: methods/post-enable-or-disable-a-backup-configuration-v1.0-tenant-id-backup-configuration-enable-backupconfigurationid.rst
.. include:: methods/delete-delete-a-backup-configuration-v1.0-tenant-id-backup-configuration-backupconfigurationid.rst
