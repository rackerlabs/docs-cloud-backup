.. _limits:

======
Limits
======

All accounts, by default, have a preconfigured set of thresholds, or limits,
to manage capacity and prevent abuse of the system.

The following table lists the limits for Cloud Backup.

**Table: Limits for Cloud Backup**

+-----------------------+-----------------------------------------------------+
| Name                  | Description                                         |
+=======================+=====================================================+
| Maximum number of     | The number of backup configurations per agent is    |
| backup configurations | limited only by the maximum JSON document size for  |
| per agent             | the agent configuration. (The agent configuration   |
|                       | contains all of the configuration information       |
|                       | specific to an agent.) Currently, the maximum JSON  |
|                       | document size is 1 MB for the total document.       |
+-----------------------+-----------------------------------------------------+
| Maximum number of     | The maximum number of exclusions and inclusions     |
| exclusions and        | per backup configuration is limited only by the     |
| inclusions per backup | maximum JSON document size for the agent            |
| configuration         | configuration. (The agent configuration contains    |
|                       | all of the configuration information specific to an |
|                       | agent.) Currently, the maximum JSON document size is|
|                       | 1 MB for the total document.                        |
+-----------------------+-----------------------------------------------------+
| Maximum length of     | The maximum length of file paths in the             |
| file paths in the     | configuration is limited first by the maximum JSON  |
| configuration         | document size of the agent configuration (see the   |
|                       | preceding limit) and then by the operating          |
|                       | system (OS) limitations. See the documentation for  |
|                       | your OS for the exact maximum size of file paths on |
|                       | your OS.                                            |
+-----------------------+-----------------------------------------------------+
| Maximum backup upload | The maximum upload speed of a backup is currently 2 |
| speeds                | MB per second but that speed depends on multiple    |
|                       | factors including Cloud Files server load, network  |
|                       | bandwidth, number of CPUs, noisy neighbors,         |
|                       | duplicate blocks, and similar items. These factors  |
|                       | can reduce the upload speed of a backup by varying  |
|                       | amounts. However, duplicate or existing blocks      |
|                       | actually increase the speed because uploads are not |
|                       | necessary for those blocks.                         |
+-----------------------+-----------------------------------------------------+
| CPU usage limits      | During an operation like a backup or restore, CPU   |
|                       | usage limits are 95 percent by default.             |
+-----------------------+-----------------------------------------------------+
| Simultaneous uploads  | Simultaneous uploads are based on available CPUs. If|
|                       | a server has one or two CPUs, the agent uses one CPU|
|                       | for its work. If a server has three or four CPUs,   |
|                       | the agent uses two CPUs. If a server has five or six|
|                       | CPUs, the agent uses three CPUs. If the server has  |
|                       | more than six CPUs, the agent uses no more than four|
|                       | CPUs.                                               |
+-----------------------+-----------------------------------------------------+
| Disk space limits for | The disk space of the cache drive is where the agent|
| the cache drive       | stores log and database files, as well as temporary |
|                       | files. Currently, if this drive has less than 100 MB|
|                       | free space, Cloud Backup throttles logging and posts|
|                       | a message to the logs. Currently, the total size of |
|                       | the rollover logs is set to 10 files at 500 MB by   |
|                       | default, but you can edit the log4cxx.xml file to   |
|                       | change this value on a per-machine basis.           |
+-----------------------+-----------------------------------------------------+
| Really Simple Events  | RSE communicates with the agent. RSE throttling     |
| (RSE) throttling      | levels control the traffic to RSE and are defined   |
| levels                | based on the state of the agent: Idle—once every 30 |
|                       | seconds, Active—once every 2 seconds, and Realtime— |
|                       | continuous.                                         |
+-----------------------+-----------------------------------------------------+
