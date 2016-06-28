# Rackspace Cloud Backup Admin API documentation

This repository contains the source files that generate the [Cloud Backup Admin API Reference](https://pages.github.rackspace.com/IX/internal-docs-cloud-backup-admin/latest/api-operations/index.html).

The Cloud Backup Admin documentation is internal only. When you commit changes to the ``internal-api-docs`` 
folder in the master branch of this repository, push updates to the following enterprise 
github repository:  [git@github.rackspace.com:IX/internal-docs-cloud-backup-admin.git](https://github.rackspace.com/IX/internal-docs-cloud-backup-admin/).  

1. To push the updates, clone the enterprise repository to your system. 

   ```git clone git@github.rackspace.com:IX/internal-docs-cloud-backup-admin.git```

2. In the directory where you cloned the repo, add this repository as the upstream remote:

  ```git remote add upstream git@github.com:rackerlabs/docs-cloud-backup.git```

3. Sync your local clone of the enterprise github with the upstream remote:

   ```git pull --rebase upstream master```
   
4. To publish the internal documentation, push your changes to the enterprise repository on GitHub.

   ```git push origin master```
   
After you push your changes, the [internal build job](https://docs-staging.rackspace.com/jenkins/job/internal-doc-cloud-backup-admin/) 
kicks off to publish the new content on the gh-pages branch. You can review the updates at the following URL: 
https://pages.github.rackspace.com/IX/internal-docs-cloud-backup-admin/latest/

**Note:** 
      If the build does not run automatically, log in to the [Jenkins server](https://docs-staging.rackspace.com/jenkins) with your SSO credentials. Then, click **Build Now** to run the [internal backup admin  guide](https://docs-staging.rackspace.com/jenkins/job/internal-doc-backup-admin-guide) build manually.


You can also access the Cloud Backup Administrator Guide and other internal documentation from the following URL.
https://pages.github.rackspace.com/IX/internal-docs-landing-page. 


### Support and feedback

We welcome feedback, comments, and bug reports. Follow the [contributor guidelines](../CONTRIBUTING.md) 
to propose a source file change, or [submit a GitHub issue](https://github.com/rackerlabs/docs-cloud-backup/issues/new) 
to request an update or to provide feedback.

You can also contact the [Rackspace documentation team](mailto:devdoc@rackspace.com) directly for general 
issues or questions about the content. 
