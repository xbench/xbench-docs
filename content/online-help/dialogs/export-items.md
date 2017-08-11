---
title: "Export Items"
date: 2017-08-10T10:51:35+02:00
weight: 31
draft: false
---

This dialog allows you to export project items to the following formats:

*	TMX files
*	Tab-delimited text files
*	Excel files

The **Selection** section has the following fields:

*	**All items in project**. It exports all items in all glossaries in the project. This is useful for
	example to export all the items to TMX to import them in a translation memory.
*	**All items in a glossary**. It exports all items that belong to an specific glossary or dictionary of
	the project. This is useful for example when only the newly translated items of the ongoing translation 
	files are exported for a targeted spot check.
*	**Displayed items**. It exports solely the items that are displayed by the query. The reference can have 
	more items matching the query, and only the displayed ones are exported.

The **Filtering** section has the following fields:

*	**Translated items**. Only the items flagged as already translated will be exported. This option can be further
	filtered to export only the **Pretranslated Items** or only the **Newly Translated Items**.
*	**Untranslated items**. This allows exporting only the untranslated items. This is useful for example to feed a
	translation machine engine.

You can also remove the repetitions from the exported file to reduce its size by checking the **Remove repetitions in exported file**
check box, or exclude the ICE (In-Context Exact matches) segments by checking the **Exclude ICE segments** check box.

The **Output** section has the following fields.

*	**Format**. You can choose **TMX Memory**, **Tab-delimited Text File**, **XLSX Excel File**, or **DOCX Word File**. Each option selected has 
	different additional fields, which will be described below.
*	**File Name**. Specify here the name of the file that will contain the exported items. 

If you select **TMX Memory** in the **Format** field, the following fields appear:

*	**Source**. Specify here the ISO language code of the source language, for example, en-us.
*	**Target**. Specify here the ISO language code of the target language, for example, es-es.

{{% notice note %}}
If you are unsure about which code you can enter here, you can click the ellipsis (**...**) button to select the
language and country in the **Language Selection** dialog.
{{% /notice %}}


If you select **Tab-delimited Text File** or **XLSX Excel File** in the **Format** field, the following fields appear:

*	**Use text instead of numbers for 'Glossary Type' and 'Item Type' fields**. Besides the **Source** and **Target** fields, 
	the **Tab-delimited Text File** and **XLSX Excel File** exports also add a few additional columns with more information
	on the entry. You have the choice to store numbers or text in two of these additional fields.
*	**Add a header in first row**. Check this check box to include a first line with the names of the fields.

If you select **DOCX Word File**, the format of the report generated will be the same obtained by choosing **Tools->Export Ongoing Translation to MS Word**.
