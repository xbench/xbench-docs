---
title: "QA Plugin Structure"
date: 2017-08-08T23:10:53+02:00
weight: 2
draft: false
---

The QA plug-in implements two sets of functions that are used by ApSIC Xbench
at two different stages:

## Startup Stage

These functions are called when ApSIC Xbench starts and are used to get
information about the functionality of all QA plug-ins installed.

ApSIC Xbench uses this information to extend the check box options available
in the QA view. Each QA plug-in maps to an item in the check group list and
each check function implemented in the QA plug-in maps to a check in the list
of checks list linked to the check group. All check functions are enabled by
default.

The function calls used at this stage are: For every QA plug-in:

* **GetDeclareName**
* **GetDeclareInfo**
* **GetFirstFunction**
* **SetConfigFile**

For every check function in the QA plug-in:

* **GetFunctionName**
* **GetNextFunction**

The following flowchart shows how ApSIC Xbench uses these functions upon
startup:

TODO: Insert flowchart

## QA Check Stage

These functions are called in the QA check process started from ApSIC Xbench
using the Check Ongoing Translation button.

The QA process works at two different levels: segment level and process level.
The segment level is used to check a segment without context information and
the process level is used to check for QA issues that depend on the full set
of segments included in the QA check. Every check function in the QA plug-in
can implement either one level or both.

Examples of QA checks at segment level are: repeated words, number formats
and spell checks. Examples of QA checks at process level are: translation
inconsistencies and cross-reference issues.

The function calls used at this stage are:

* **ProcessBegin**
* **ProcessEnd**
* **ProcessSegment**
* **GetFirstResult** 
* **GetNextResult**

The following flowchart shows how ApSIC Xbench uses these functions upon a QA
check start:

TODO: Insert flowchart

The ProcessBegin call is used to notify the QA plug-in that a new check function
has been launched and the QA plug-in should initialize all internal structures
used by this check function.

Then, ApSIC Xbench calls ProcessSegment for each segment included in the QA
segment set, providing the QA plug-in with the segment data needed. This function
should implement all segment level checks and return a pointer to a
**TQAPluginResult** structure with error information or NULL if nothing to report
is detected.

If a process level check is needed, this function call should also store the
segment data received as a parameter in an internal working structure.

When ProcessSegment has been called for every segment, ApSIC Xbench calls
GetFirstResult. If no process check is implemented, this function must simply
return NULL, otherwise it should perform the process checks using the segment
data stored in the previous ProcessSegment calls. When checks are finished, it
should return a pointer to a TQAPluginResult with the information of the first
issue found.

ApSIC Xbench will add this issue in the QA result list and will keep calling
GetNextResult function to retrieve subsequent errors until NULL is returned.

At the end of the process, ProcessEnd will be called to inform the QA plug-in
that all working resources allocated during the QA checks should be freed.