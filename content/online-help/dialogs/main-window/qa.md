---
title: "QA"
date: 2017-08-10T09:17:08+02:00
weight: 2
draft: false
---

The QA tab allows you to perform a series of predefined checks on the files
defined as *ongoing translation*. This feature helps you locate the following
issues in the translation:

* Untranslated segments
* Segments that have the same source text but a different target text
* Segments that have the same target text but a different source text
* Segments whose target text is identical to the source text (potentially
  untranslated text). This option is disabled by default.
* Segments with tag mismatches
* Segments with number mismatches
* Segments with URL mismatches
* Segments with alphanumeric mismatches
* Segments with unpaired symbols (i.e. unpaired parentheses, square brackets,
  or braces)
* Segments with unpaired quotes
* Segments with repeated words
* Segments with double blanks
* Segments that deviate from the key terms of the project
* Segments that contain a word in CamelCase in the source or target text
  without a counterpart. This option is disabled by default.
* Segments that contain a word fully in uppercase in the source or target text
  without a counterpart. This option is disabled by default.
* Segments that meet the search criteria of entries in the Project or the
  Personal Checklists. See 
  [Managing Checklists]({{<relref "/user-guide/manage-checklists.md">}}) for
  more information about this feature.
* Spell-checking issues

From this window, you can do these tasks:

* Perform all checks selected in **Check Group** and **List of Checks** by
  clicking **Check Ongoing Translation**.
* Perform only the checks defined by the Project Checklists by clicking
  **Run Project Checklists**.
* Perform only the checks defined by the Personal Checklists by clicking
  **Run Personal Checklists**.
* Mark issues to filter them out or in, and optionally save marked issues for future use.
* Export the displayed QA Results by right-clicking and choose
  **Export QA Results** to the following formats: HTML, tab-delimited text,
  Excel, or XML.

The results are shown in the body window. For some file formats, *you can open
directly from ApSIC Xbench the file at the segment shown* to correct it by
right-clicking on it and choosing **Edit Segment** or by pressing **Ctrl+E**.

You can limit the scope of the strings considered by the QA process by checking
the **Only New Segments**, **Only 100% Matches**, **Exclude ICE Segments**, or **Exclude Locked Matches** check boxes. 

You can also make the source and target consistency checks mode case-sensitive
by checking the **Case-sensitive Inconsistencies** check box.

You can ignore tags by checking **Ignore Tags**. This allows you to find
inconsistencies that differ on tags but not in source or target text.
