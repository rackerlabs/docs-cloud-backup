.. _gsg-using-cloud-backup:

Create and manage Cloud Backups
-------------------------------

You can use the examples in this section to get agent information,
create backups, manage configurations, and work with restores by using
Cloud Backup API operations. Example requests are provided in
cURL, followed by the response.

Before running the examples, review the
:ref:`Cloud Backup concepts<concepts>`.

.. note::
     These examples use the ``$API_ENDPOINT``, ``$TENANT_ID``, and
     ``$AUTH_TOKEN`` environment variables to specify the API endpoint, tenant
     ID (also called the project ID), and authentication token for accessing
     the service. Be sure to
     :ref:`configure these variables<configure-environment-variables>` before
     running the code samples.

For more information about all Cloud Backup operations, see the
:ref:`API Reference <api-reference>`.

.. include:: examples/list-all-agents-for-project.rst
.. include:: examples/list-agent-details.rst
.. include:: examples/create-backup-config.rst
.. include:: examples/list-configs-for-agent.rst
.. include:: examples/update-configuration.rst
.. include:: examples/start-backup.rst
.. include:: examples/check-backup-status.rst
.. include:: examples/list-agent-activity.rst
.. include:: examples/start-restore.rst
.. include:: examples/get-restore-details.rst
.. include:: examples/delete-backup-config.rst
