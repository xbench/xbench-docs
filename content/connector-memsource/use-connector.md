---
title: "Using the Connector"
date: 2017-08-09T13:56:38+02:00
draft: false
weight: 4
---

When it is first launched, the connector will ask you for your Memsource credentials.

![Connect to Memsource](/connector-memsource/dialog-connect-to-memsource.png)

The connector uses the Memsource API, that is available to all user roles 
(**Admin**, **PM**, and **Linguist**) of all Memsource paid editions.

Once you are connected to Memsource your projects will appear in a tree, 
arranged by **Project Status** (**NEW**, **ASSIGNED**, **COMPLETED**).

![Xbench Connector to Memsource](/connector-memsource/dialog-main-window-02.png)

{{% notice note %}}
By default, the connector shows the latest 100 projects to which your Memsource user has access. 
If you wish to work with older projects, choose **Settings->Project Scope** and then choose **Latest 500 
Projects**, **Latest 1000 Projects**, or **All Projects**. If you have a large number of projects and choose 
to show all projects, the refresh of the project list may take longer. Your selection for **Project Scope** 
will be saved in future sessions.
{{% /notice %}}


## Running a QA Pass with the Connector

To run a QA pass in Xbench, select a project in the tree, and click **Run QA**. 
The following window will appear, where you will be able to select the language 
and the workflow step for the QA pass.

![Run QA](/connector-memsource/dialog-run-qa.png)

If the project has Termbases attached and you are an **Admin** or **PM** user with export 
rights for the full termbase, two additional check boxes will appear in this dialog:

*	**Include Termbases**. Select this check box if you wish that termbases attached to project 
	are fetched from memsource.com and loaded in the Xbench project for QA. The termbases will
	appear with high priority (green color) in the Xbench project.
*	**Only Primary Termbase**. Select this check box if you wish that only the termbase defined 
	in write mode is fetched from memsource.com.

After you click **OK**, the connector will retrieve any required files from the cloud and will 
launch an Xbench project ready for QA.

When you find in Xbench a translation issue that you wish to fix, just right-click and then 
choose **Edit Source** and the Memsource Editor will open right at the segment that needs to be fixed.

## Comparing Files in Two Workflow steps with the Connector

To compare the files in two workflow steps, select the project in the project tree and choose 
**Compare Workflow Steps**.

![Compare Workflow Steps](/connector-memsource/context-menu-compare-workflow-steps.png)

Please note that the **Compare Workflow Steps** only appears if the project has 
several workflow steps defined.

![Compare Workflow Steps](/connector-memsource/dialog-compare-workflow-steps.png)

Choose the language to compare, and the old and new workflow steps and then click **OK**. 
Your default browser will open with the comparison report.

{{% notice note %}}
The comparison report will be stored in the **My Documents** folder. 
You can get to this folder with Windows **Start->Documents**.
{{% /notice %}}

## Other Useful Features of the Connector

The ApSIC Xbench Connector is handy to keep an eye on the progress in your Memsource projects. 
If you wish to see the translation progress of each document, you need to first enable it in 
**Settings -> Job Progress**.

![Job Progress](/connector-memsource/menu-settings-job-progress.png)

When **Job Progress** is enabled, a **Progress** column appears in the document list. To update 
the progress data, or to see if a new project is listed in the **Projects** tree, click **Refresh** 
or press **F5**.

If you wish to edit a document online with the Memsource WebEditor, just select the document, 
right-click and then choose **Edit with Memsource WebEditor**. Also, if you wish to manage the project, 
select the project in the tree, right-click and then choose **Manage in Memsource.com**.
