---
title: "Regular Expressions and Microsoft Word Wildcards"
date: 2017-08-06T23:06:24+02:00
weight: 7
draft: true
---

ApSIC Xbench allows you to perform powerful searches using regular expressions or Microsoft Word wildcards. To activate these search modes, do the following:

1. Choose **View**->**Search Options** to show the **Search Options** pane.
2. Expand the **Search Mode** drop-down and choose **Regular
Expressions** or **MS Word Wildcards**.
3. You will notice that an icon will appear next to the **Source Term** and
**Target Term** fields to indicate that you are in the selected mode.

## Regular Expressions Syntax

Character or Expression | Meaning | Examples
------------------------|---------|---------
. |  Any character |  **Jo.n** matches **John** and **Joan**, but does not match **Johan**.
* | 0 or more instances of the preceding character | **Joh*n** matches **Jon**, **John**, and **Johhn**, but does not match **Johan**. **Note**: In Regular Expressions, the asterisk does not have the same behavior as in Microsoft Word wildcards. To mean any number of characters you need to use the dot-asterisk sequence (.*). For example, **Joh.*n** matches **John**, **Johhn**, and **Johan** (but does not match **Jon**). 