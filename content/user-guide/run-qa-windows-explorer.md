---
title: "Running QA from Explorer"
date: 2017-08-06T23:11:55+02:00
weight: 15
draft: true
---

ApSIC Xbench includes a shell extension that allows you to start a QA session right from Windows Explorer. This can be very handy when you want to run a simple QA pass of one or more files or of a directory.

To run QA from Windows Explorer:

1. In Windows Explorer, select the file or directory that you wish to QA.
2. Right-click and choose **Run QA with Xbench**.

These actions will launch ApSIC Xbench with a newly created project that considers *on-going translation* all files selected with Windows Explorer.

The project is now ready to run a QA pass. If you wish to further customize the ApSIC Xbench project just created, for example to add a Key Terms file, you can do so in **Project**->**Properties**.

The project created with Windows Explorer is in your Windows *TEMP* directory. If you wish to save the ApSIC Xbench project for further reuse, you can choose **Project**->**Save** As and give it a new name in a new location on your computer.