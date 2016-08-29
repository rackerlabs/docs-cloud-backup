.. _rbac:

=========================
Role-based access control
=========================

Role-based access control (RBAC) restricts access to the capabilities of
Rackspace Cloud services, including the Cloud Backup API, to authorized users
only. RBAC enables Rackspace Cloud customers to specify which account users of
their Cloud account have access to which Cloud Backup API service capabilities,
based on roles defined by Rackspace (see
:ref:`Roles available for Cloud Backup <rbac-available>`). The permissions to
perform certain operations in Cloud Backup API — create, read, update, and
delete — are assigned to specific roles.  The account owner user assigns
these roles, either global (multiproduct) or product-specific (for example,
Cloud Backup), to account users.

.. _rbac-assigning:

Assigning roles to account users
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The account owner (identity:user-admin) can create account users on the account
and then assign roles to those users. The roles grant the account users
specific permissions for accessing the capabilities of the Cloud Backup
service. Each account has only one owner, and that role is assigned by default
to any Rackspace Cloud account when the account is created.

See the
:rax-devguide:`Cloud Identity Client Developer Guide <cloud-identity/v2>` for
information about how to perform the following tasks:

* :rax-devdocs:`Add user <cloud-identity/v2/developer-guide/#add-user>`

* :rax-devdocs:`Add role to user <cloud-identity/v2/developer-guide/#add-role-to-user>`

* :rax-devdocs:`Delete global role from user <cloud-identity/v2/developer-guide/#delete-global-role-from-user>`

..  note::

    The account owner (identity:user-admin) role cannot hold any additional
    roles because it already has full access to all capabilities by default.

.. _rbac-available:

Roles available for Cloud Backup
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Three roles (observer, creator, and admin) can be used to access the Cloud
Backup API specifically. The following table describes these roles and their
permissions.

**Cloud Backup product roles and capabilities**

+--------------------------------------+--------------------------------------+
| Role name                            | Role permissions                     |
+======================================+======================================+
| cloudBackup:admin                    | This role provides create, read,     |
|                                      | update, and delete permissions in    |
|                                      | Cloud Backup, where access is        |
|                                      | granted.                             |
+--------------------------------------+--------------------------------------+
| cloudBackup:creator                  | This role provides create, read and  |
|                                      | update permissions in Cloud Backup,  |
|                                      | where access is granted.             |
+--------------------------------------+--------------------------------------+
| cloudBackup:observer                 | This role provides read permission   |
|                                      | in Cloud Backup, where access is     |
|                                      | granted.                             |
+--------------------------------------+--------------------------------------+

.. _rbac-available-multi:


Additionally, two multiproduct roles apply to all products. Users with
multiproduct roles inherit access to future products when those products become
RBAC-enabled. The following table describes these roles and their permissions.

**Multiproduct global roles and permissions**

+--------------------------------------+--------------------------------------+
| Role name                            | Role permissions                     |
+======================================+======================================+
| admin                                | This role provides create, read,     |
|                                      | update, and delete permissions in    |
|                                      | all products, where access is        |
|                                      | granted.                             |
+--------------------------------------+--------------------------------------+
| observer                             | This role provides read permission   |
|                                      | in all products, where access is     |
|                                      | granted.                             |
+--------------------------------------+--------------------------------------+

.. _rbac-resolving:

Resolving conflicts between RBAC multiproduct versus custom (product-specific) roles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The account owner can set roles for both multiproduct and Cloud Backup scope,
and it is important to understand how any potential conflicts among these roles
are resolved. When two roles appear to conflict, the role that provides the
more extensive permissions takes precedence. Therefore, admin roles take
precedence over observer and creator roles, because admin roles provide more
permissions.

The following table shows two examples of how potential conflicts between user
roles in the Control Panel are resolved.

**Conflict resolution in the Control Panel**

+--------------------------+----------------------+-------------------------+
| Permission configuration | View of permission   | Can the user perform    |
|                          | in the Control Panel | product admin functions |
|                          |                      | in the Control Panel?   |
+==========================+======================+=========================+
| User is assigned the     | Appears that the     | Yes, for Cloud Backup   |
| following roles:         | user has only the    | only. The user has the  |
| multiproduct observer    | multiproduct         | observer role for the   |
| and Cloud Backup admin   | observer role        | rest of the products.   |
+--------------------------+----------------------+-------------------------+
| User is assigned the     | Appears that the     | Yes, for all of the     |
| following roles:         | user has only the    | products. The Cloud     |
| multiproduct admin and   | multiproduct admin   | Backup observer role is |
| Cloud Backup observer    | role                 | ignored.                |
+--------------------------+----------------------+-------------------------+

.. _rbac-permissions:

RBAC permissions cross-reference to Cloud Backup API operations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

API operations for Cloud Backup may or may not be available to all roles. To
see which operations are permitted to invoke which operations, see
:how-to:`Permissions Matrix for Role Based Access Control<permissions-matrix-for-role-based-access-control-rbac>`.
