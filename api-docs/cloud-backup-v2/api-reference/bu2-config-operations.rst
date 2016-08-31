.. _bu2-config-operations:

========================
Configuration operations
========================

When determining how often to back up a file in your backup configuration,
consider the following variables:

*  How important to your business is tracking changes in the file?
   (criticality)

*  How large is the file? (size)

*  How often does the file change? (data churn)

Criticality is the most important factor to consider when making backup
decisions. The more critical the file is to your business operations, the more
often you should back up the file.

If the speed of backups and restores is important to you, size is an important
consideration. Large files take longer to back up and to restore. Considering
backing up large files less frequently.

Data churn is the last variable to consider, and perhaps the hardest to handle.
Files that change often invalidate blocks that have been stored previously.
Depending on criticality, it might be beneficial to take snapshots of the files
with high data churn and backup those snapshots.

This section describes the backup configuration operations for the Cloud Backup
API.

.. include:: methods/post-create-a-configuration-v2-project-id-configurations.rst
.. include:: methods/get-list-the-configurations-for-a-project-v2-project-id-configurations.rst
.. include:: methods/get-list-details-about-a-configuration-v2-project-id-configurations-configuration-id.rst
.. include:: methods/patch-update-a-configuration-v2-project-id-configurations-configuration-id.rst
.. include:: methods/delete-a-configuration-v2-project-id-configurations-configuration-id.rst
.. include:: methods/get-list-activities-for-a-configuration-v2-project-id-configurations-configuration-id-activities.rst
.. include:: methods/get-list-events-for-a-configuration-v2-project-id-configurations-configuration-id-events.rst
