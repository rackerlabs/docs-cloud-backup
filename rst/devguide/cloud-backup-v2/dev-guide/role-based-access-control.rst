.. _cbu-dgv2-rbac:

=========================
Role Based Access Control
=========================

Role Based Access Control (RBAC) restricts access to the capabilities of Rackspace Cloud services, including the Cloud Backup API, to authorized users only. RBAC enables Rackspace Cloud customers to specify which account users of their Cloud account have access to which Cloud Backup API service capabilities, based on `roles defined by Rackspace <cbu-dgv2-rbac-roles>`_. 

The permissions to perform certain operations in Cloud Backup API&mdash;create, read, update, delete&mdash;are assigned to specific roles, and these roles can be assigned by the Cloud account admin user to account users of the account.

.. _cbu-dgv2-rbac-assigning:

Assigning roles to account users
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The account owner (identity:user-admin) can create account users on the account and then assign roles to those users. The roles grant the account users specific permissions for accessing the capabilities of the Cloud Backup service. Each account has only one account owner, and that role is assigned by default to any Rackspace Cloud account when the account is created.

See the *Cloud Identity Client Developer Guide* for information about how to perform the following tasks:

-  `Create account users`_

-  `Assign roles to account users`_

-  `Delete roles from account users`_

..  note:: 
    The account admin user (identity:user-admin) role cannot hold any additional roles because it already has full access to all capabilities by default.

.. _Create account users: http://docs.rackspace.com/auth/api/v2.0/auth-client-devguide/content/POST_addUser_v2.0_users_User_Calls.html

.. _Assign roles to account users: http://docs.rackspace.com/auth/api/v2.0/auth-client-devguide/content/PUT_addUserRole__v2.0_users__userId__roles__roleid__Role_Calls.html

.. _Delete roles from account users: http://docs.rackspace.com/auth/api/v2.0/auth-client-devguide/content/DELETE_deleteUserRole__v2.0_users__userId__roles__roleid__Role_Calls.html

.. _cbu-dgv2-rbac-available: 

Roles available for Cloud Backup
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Three roles (admin, creator, and observer) can be used to access the Cloud Backup API specifically. The following table describes these roles and their permissions.

+--------------------------------------+--------------------------------------+
| Role name                            | Role permissions                     |
+======================================+======================================+
| cloudBackup:admin                    | This role provides Create, Read,     |
|                                      | Update, and Delete permissions in    |
|                                      | Cloud Backup, where access is        |
|                                      | granted.                             |
+--------------------------------------+--------------------------------------+
| cloudBackup:creator                  | This role provides Create, Read and  |
|                                      | Update permissions in Cloud Backup,  |
|                                      | where access is granted.             |
+--------------------------------------+--------------------------------------+
| cloudBackup:observer                 | This role provides Read permission   |
|                                      | in Cloud Backup, where access is     |
|                                      | granted.                             |
+--------------------------------------+--------------------------------------+

Additionally, two multiproduct roles apply to all products. Users with multiproduct roles inherit access to future products when those products become RBAC-enabled. The following table describes these roles and their permissions.

+--------------------------------------+--------------------------------------+
| Role name                            | Role permissions                     |
+======================================+======================================+
| admin                                | This role provides Create, Read,     |
|                                      | Update, and Delete permissions in    |
|                                      | all products, where access is        |
|                                      | granted.                             |
+--------------------------------------+--------------------------------------+
| observer                             | This role provides Read permission   |
|                                      | in all products, where access is     |
|                                      | granted.                             |
+--------------------------------------+--------------------------------------+

.. _cbu-dgv2-rbac-resolving:

Resolving conflicts between RBAC multiproduct vs. custom (product-specific) roles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The account owner can set roles for both multiproduct and Cloud Backup scope, and it is important to understand how any potential conflicts among these roles are resolved. When two roles appear to conflict, the role that provides the more extensive permissions takes precedence. Therefore, admin roles take precedence over observer and creator roles, because admin roles provide more permissions.

The following table shows two examples of how potential conflicts between user roles in the Control Panel are resolved:

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

.. _cbu-dgv2-rbac-permissions:

RBAC permissions cross-reference to Cloud Backup API operations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

API operations for Cloud Backup may or may not be available to all roles. To see which operations are permitted to invoke which calls, please review `the Knowledge Center article`_.

.. _the Knowledge Center article: http://www.rackspace.com/knowledge_center/article/permissions-matrix-for-role-based-access-control-rbac