---
title: "Miscellaneous"
date: 2017-08-10T10:13:02+02:00
weight: 21
draft: false
---

You can define here the following settings:

* **Check weekly for new versions**. If this check box is enabled, ApSIC Xbench
  will check once a week if there are updates available.
* **Enable alternative project**. If this check box is checked, ApSIC Xbench
  keeps in memory the project opened prior to the current one. To switch back
  and forth among both projects, choose 
  **Project->Switch to Alternative Project**. To discard the alternative
  project and recall the memory	used by it, choose
  **Project->Forget Alternative Project**.
* **Load last project when ApSIC Xbench starts**. If this check box is checked,
  the next time ApSIC Xbench is started, it will load the project that was
  opened at the time of the last shut down.
* **Show warning when copying fuzzy match**. When enabled, ApSIC Xbench shows a
  warning when you press **Enter** to copy the target text of the current item
  in the search results to the clipboard.
* **Show warning when shutting down**. When enabled, ApSIC Xbench shows a
  warning when you shut it down.
* **Show QA options changed from default**. When enabled, ApSIC Xbench will
  show at the top of the QA report the QA settings that are not with its
  default value.
* **Match whole words in QA check for key terms**. When enabled, ApSIC Xbench
  will force the condition that the key term target text must match a whole
  word in the segment target text. For declined languages you will reduce false
  alarms if you leave this check box unchecked.
* **Show metadata in exported QA reports**. When enabled, ApSIC Xbench will show
  the segment metadata in the Comments column of the exported QA report.
* **Open QA Report file after exporting**. When enabled, the exported QA report file will be automatically open.
* **Default project directory**. This field allows you to specify the default
  folder for your ApSIC Xbench projects.

* **Manage Cloud Settings**. This button opens the dialog to configure Cloud Settings:
  * **Store Settings in the Cloud**: When enabled, a copy of your Xbench configuration will be stored in the cloud. That makes it available from other computers using the same Xbench account, and makes life easier in case of a reinstallation.
  * **Include Transifex Credentials and Settings**: When enabled, your Transifex username and password will also be stored in the cloud. Uncheck if you don’t want your credentials to be automatically retrieved on all Xbench instances using this account.
