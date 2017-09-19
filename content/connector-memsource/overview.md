---
title: "Overview"
date: 2017-08-09T13:55:16+02:00
draft: false
weight: 2
---


The **ApSIC Xbench Connector for Memsource** allows you to quickly run *Quality Assurance* (QA)
tasks in ApSIC Xbench on your projects in the Memsource translation platform on the cloud. 
For projects with several workflow steps, it also allows you to obtain a comparison report 
listing changes to segments a la tracked changes, which is useful to audit or to document 
modifications done to translations by reviewers.

To run all features the connector you need:

*	A Memsource account with access to the Memsource API
*	ApSIC Xbench 3.0 build 1299 or later (download from http://www.xbench.net)
*	Memsource Editor (download from http://www.memsource.com)

The connector allows you to browse the projects that you are authorized to see on Memsource and 
instantly run a QA pass on ApSIC Xbench with all relevant files for the given project and target
language. If your Memsource project has several workflow steps, you can also choose the workflow
step for the QA pass.

![Xbench Connector](/connector-memsource/dialog-main-window-01.png)

Once in ApSIC Xbench, you can quickly fix issues in your translation, by choosing **Edit Segment**, 
which will open the Memsource Editor right at the segment that is currently selected in ApSIC Xbench.

The connector also can be used as a quick way to see your Memsource projects progress.