.. _restore-operations:

==================
Restore operations
==================

You should periodically test your restores to make sure that they are working
as you expect. The worst possible scenario is to need your data restored now,
and then to discover that your data is not available because your backups have
not been configured as you expected.

Another point to consider is the restore destination. Restoring to the original
location and overwriting saves the most storage space, but comes with the risk
that you might accidentally overwrite important, existing files. Proceed with
caution when restoring.

This section describes the restore operations that are supported by the Cloud
Backup API.
    
.. include:: methods/get-list-backups-available-for-a-restore-v1.0-tenant-id-backup-availableforrestore.rst
.. include:: methods/post-start-or-stop-a-restore-manually-v1.0-tenant-id-restore-action-requested.rst
.. include:: methods/get-list-details-about-a-restore-v1.0-tenant-id-restore-restoreid.rst
.. include:: methods/get-get-restore-report-v1.0-tenant-id-restore-report-restoreid.rst
