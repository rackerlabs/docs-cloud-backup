.. _bu-concepts:

Concepts
--------

To use the Rackspace Cloud Backup API effectively, you should understand
several key concepts.

Agent
~~~~~

An *agent* is an executable that is installed on your cloud server and performs
backups and restores. You can install the agent on Windows and UNIX or Linux
platforms.

Backup configuration
~~~~~~~~~~~~~~~~~~~~

A *backup configuration* defines what needs to be backed up and when it needs
to be backed up. The backup configuration includes a schedule for the backup,
files to back up, and notifications.

Cleanup
~~~~~~~

A *cleanup* performs a number of functions including validating the vault,
marking any found errors in the vault database, determining which data is
expired and can be removed, repacking (garbage collecting) bundles with expired
data, and deleting expired bundles.

Restore
~~~~~~~

A *restore* is a process of bringing your system back to a previously saved
state, usually by using a backup as the checkpoint.

Restore configuration
~~~~~~~~~~~~~~~~~~~~~

A *restore configuration* defines what the restore checkpoint is and where
the backup should be restored.

Server setup
~~~~~~~~~~~~

Because Cloud Backup is a file-level backup product, you must configure a
separate backup for each cloud server, and that backup does not automatically
apply to an entire environment. You must select the files and folders that you
want to back up from your cloud server. This setup requirement applies to
Rackspace Cloud Servers.

Vault
~~~~~

The *vault* is a set of backup data for an agent. The vault is stored in a
Rackspace Cloud Files container.
