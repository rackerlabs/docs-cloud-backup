.. _gsg-using-cloud-backup:

=========================
Create and manage backups
=========================

You can use the simple examples in the following sections for basic Cloud
Backup requests that you will commonly use. You can get agent information,
create backups, manage configurations, and work with restores by using
Cloud Backup API operations. Example requests are provided in cURL, followed by
the response.

Before running the examples, review the :ref:`Cloud Backup concepts<concepts>`.

To start using the API and run the examples in this section, you need the
following items:

- Rackspace Cloud account. If you don't have one, sign up for a
  :rax-cart:`Rackspace Cloud account <cloud>`.
- Username and password to access the account
- API key to access Rackspace Cloud services
- Account number
- :ref:`Command-line tool or browser client <send-api-requests>` for
  communicating with the API service.
- :ref:`Configured environment variables <configure-environment-variables>`

.. note::
     These examples use the ``$API_ENDPOINT``, ``$AUTH_TOKEN``, and
     ``$TENANT_ID`` environment variables to specify the API endpoint,
     authentication token, and project ID values for accessing the service.
     Make sure you
     :ref:`configure these variables<configure-environment-variables>` before running the
     code samples.

For more information about all Cloud Files operations, see the
:ref:`API reference <api-reference>`.

.. include:: examples/list-all-agents-for-user.rst
.. include:: examples/list-agent-details.rst
.. include:: examples/create-backup-config.rst
.. include:: examples/list-current-backup-configs.rst
.. include:: examples/update-configuration.rst
.. include:: examples/start-backup.rst
.. include:: examples/check-backup-status.rst
.. include:: examples/list-agent-activity.rst
.. include:: examples/create-restore-config.rst
.. include:: examples/restore-backup.rst
.. include:: examples/get-restore-report.rst
.. include:: examples/delete-backup-config.rst
