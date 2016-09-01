.. _bu2-restore-operations:

==================
Restore operations
==================

You should periodically test your restores to ensure that they are working as
you expect. The worst possible scenario is to need your data restored now and
to discover that your data is not available because your backups have not
been configured as you expected.

Another point to consider is the restore destination. Restoring to the original
location and overwriting saves the most storage space but risks accidentally
overwriting important, existing files. Proceed with caution when restoring.

This section describes the restore operations for the Cloud Backup API.


.. include:: methods/post-start-a-restore-v2-project-id-restores.rst
.. include:: methods/get-list-the-restores-for-a-project-v2-project-id-restores.rst
.. include:: methods/get-list-details-about-a-restore-v2-project-id-restores-restore-id.rst
.. include:: methods/patch-update-a-restore-v2-project-id-restores-restore-id.rst
.. include:: methods/get-list-errors-for-a-restore-v2-project-id-restores-restore-id-errors.rst
.. include:: methods/get-list-events-for-a-restore-v2-project-id-restores-restore-id-events.rst
