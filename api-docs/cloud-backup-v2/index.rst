.. _index:

============================================================
Rackspace Cloud Backup API |contract version| (Early Access)
============================================================

*Last updated:* |today|

The Rackspace |product name| service is a file-based backup application that
enables you to choose which files and folders to back up from your cloud
server. You can choose to restore your whole system with all of its folders
and files, to restore individual files or folders from a given date, or to
restore to an entirely different server.

Interactions with Rackspace Cloud Backup occur programmatically via the
Rackspace Cloud Backup API, as described in this guide.

Following are some of the tasks that you can perform by using Rackspace
Cloud Backup:

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

Choose the endpoint for your backup based on the location of the server that
you want to use for backup or for restore. For a list of endpoints, see
:ref:`Service access endpoints <service-access>`.

..  note::
    Rackspace Cloud Backup does not take snapshots of your server. Read more
    about
    :how-to:`how Rackspace Cloud Backup differs<rackspace-cloud-backup-vs-cloud-server-image-backups>`
    from snapshots.

This guide describes the features available with API |contract version|.

This guide is intended to assist software developers who want to develop
applications by using the REST application programming interface (API) for
the |product name| service.

To use the information provided here, you should have a general understanding
of the service and have access to an installation of it. You should also be
familiar with the following technologies:

* RESTful web services
* HTTP/1.1
* JSON or XML serialization formats

Use the following links to go directly to user and reference information for
using the |apiservice|.

* :ref:`Getting started <getting-started>`
* :ref:`General API information <general-api-info>`
* :ref:`API reference <api-reference>`
* :ref:`Release notes <release-notes-collection>`

.. note::

   You can also use |product name| from the Cloud Control Panel.


.. toctree::
   :hidden:
   :maxdepth: 3

   Cloud Backup 2.0 <self>
   getting-started/index
   general-api-info/index
   api-reference/index
   release-notes/index
   service-updates
   additional-resources
   copyright
