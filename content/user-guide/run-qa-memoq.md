---
title: "Running QA on memoQ Files"
date: 2017-08-06T23:14:37+02:00
weight: 18
draft: true
---

## Instructions for memoQ 6 to memoQ 2014 until build 51

ApSIC Xbench can load memoQ **.mqxliff** and **.mqxlz** files. To add a memoQ document to an Xbench project, you need to do the following:

1. In memoQ, select the document, choose **Export bilingual**, choose **memoQ XLIFF** as the output format and click **Export**.
2. In ApSIC Xbench, choose **Project**->**Properties**, choose **Add** and then choose **memoQ File**.

However, the **Edit Source** command that allows you to go to the same segment in memoQ has one important limitation: it only works if the current mqxliff document is open in memoQ.

Therefore, in order to get the most of the integration with memoQ, you need to put the content you want to QA in a single .mqxlz file. **You can do so by creating a view in memoQ and exporting it**. Therefore the recommended procedure to QA memoQ files is as follows:

1. In memoQ, select in the **Translations** view all documents that you want to QA from the current project, right-click and choose **Create View**. Type something like *ToXbench* in **Name** of the view, choose **Simply glue documents together** and click **OK**.
2. In memoQ, in the **Views** tab, select *ToXbench*, right-click and choose **Export bilingual**. Choose **memoQ XLIFF** and click **Export**.
3. Open the *ToXbench* view in the editor so that it is shown in the translation grid.
4. In ApSIC Xbench, choose **Project**->**Properties**, choose **Add** and then choose **memoQ File**. Add the *ToXbench.mqxlz* file you created in step 2.

With this setup, that is, with the *ToXbench* view open in memoQ and the corresponding mqxlz file loaded in ApSIC Xbench, if you choose **Edit Source** in ApSIC Xbench, it will position in memoQ to exact same segment that you have currently selected in Xbench.

This means that if you find an issue while running a QA on the memoQ file in Xbench, you can fix it directly in memoQ by simply choosing **Edit Source (Ctrl+E)**.

## Instructions for memoQ 2014 build 51 or later

A new feature was added to memoQ 2014 build 51 that greatly simplifies the interoperability with ApSIC Xbench. Starting with this memoQ build, the instructions to QA a memoQ project are as follows:

1. In memoQ, select the documents, choose **Export bilingual**, choose **memoQ XLIFF** as the output format and click **Export** to a folder, for example *ToXbenchQA*.
2. In Windows Explorer, select the *ToXbenchQA* directory, right-click and choose **Run QA in Xbench** (this is a bit faster than using **Project**->**Properties** in ApSIC Xbench).
3. Run the QA (or search) in ApSIC Xbench normally. When you see a memoQ segment in the QA or search results that you wish to edit, just select it, right-click and then choose **Edit Source (Ctrl+E)**.

