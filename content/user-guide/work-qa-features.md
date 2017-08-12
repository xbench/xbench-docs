---
title: "Working with QA Features"
date: 2017-08-06T23:10:11+02:00
weight: 13
draft: false
---

ApSIC Xbench features Quality Assurance (QA) functions to perform 
advanced checks on the files defined as ongoing translation.
The QA functions try to find segments with the following potential problems:

* Untranslated segments
* Segments that have the same source text but a different target text
* Segments that have the same target text but a different source text
* Segments where the target text matches the source text
* Segments with tag mismatches
* Segments with number mismatches
* Segments with URL mismatches
* Segments with alphanumeric mismatches
* Segments with unpaired symbols (i.e. unpaired parentheses, square 
  brackets, or braces)
* Segments with unpaired quotes
* Segments with double blanks
* Segments where words fully in UPPERCASE do not match between 
  source and target
* Segments where words in CamelCase do not match between source 
  and target
* Segments that deviate from the key terms of the project
* Segments that meet the search criteria of items in the Project or 
  Personal Checklists. See 
  [Managing Checklists]({{<relref "/user-guide/manage-checklists.md">}}) for
  more information about this feature.
* If you have installed dictionaries with
  **Tools->Spell-Checking Dictionaries**, segments with spell-checking issues. 

![QA tab](/user-guide/dialog-main-window-qa-tab.jpg)

The Quality Assurance functions are carried out with the **QA**
tab in the main window. The **QA** tab can perform the following functions:

* Perform all checks selected in **Check Group** and **List of Checks** by 
  clicking **Check Ongoing Translation**. By default all available checks are 
  selected, except **Target same as Source**.
* Perform *only* the searches defined by the Project Checklists by 
  clicking on **Run Project Checklists**.
* Perform *only* the searches defined by the current Personal Checklists 
  by clicking on **Run Personal Checklists**. To change the current 
  Personal Checklists, choose **View->Checklist Manager**.
* Export the displayed QA results by right-clicking and choose 
  **Export QA Results** to the following formats: HTML, tab-delimited text, 
  Excel, or XML.

{{% notice note %}}
Please remember that the ApSIC Xbench license does not permit 
removal of the credits on the right-hand side at the beginning of the 
exported QA report. We have tried to make this credit information non-intrusive
and its aim is to avoid tell-a-friend or other more intrusive ways 
of promoting use of the product among peers. 
{{% /notice %}}

Results are shown in the body window of the **QA** tab. For some file 
formats, *you can open directly from ApSIC Xbench the file at the segment 
shown* to correct it by selecting **Tools->Edit Source** or by pressing 
**Ctrl+E**.

You can limit the scope of the strings considered by the QA process by 
checking the **Only New Segments**, **Only 100% Matches**, or 
**Exclude ICE Segments** check boxes. 

You can also make the consistency check mode case-sensitive by 
checking the **Case-sensitive Inconsistencies** check box.

You can ignore the tag content within the segments for the QA pass by 
choosing **Ignore Tags**. This will allow you to find inconsistencies that 
have the same source or target text except for inline tags.

This window allows you to mark an issue by right-clicking on it and 
choosing **Mark/Unmark Issue**. You can then optionally show or hide 
marked issues with the **Show Marked** or **Hide Marked** radio buttons 
under **Filter Issues** in order to limit the number of issues displayed. For 
example, to quickly ignore and hide false alarms from the list of results, 
one good set-up is to choose **Hide Marked** and then mark issues as you 
process the list.

{{% notice note %}}
The **Export QA Results** command only exports displayed issues
(it does not export hidden issues).
{{% /notice %}}
