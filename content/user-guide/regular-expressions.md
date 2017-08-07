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
? | 0 or 1 instances of the preceding character | **Joh?n** matches **Jon** and **John**, but does not match **Johan**.
+ | 1 or more repetitions of the preceding character | **Joh+n** matches **John**, and **Johhn**, but does not match **Jon** or **Johan**.
{m} | Exactly **m** repetitions of the preceding character | **Joh{2}n** matches **Johhn**, but does not match **Jon**, **John** or **Johhhn**.
{m,} | **m** or more repetitions of the preceding character | **Joh{2,}n** matches **Johhn** and **Johhhn**, but does not match **Jon** or **John**.
{,n} | 1 to **n** repetitions of the preceding character | **Joh{,2}n** matches **John** and **Johhn**, but does not match **Jon** or **Johhhn**.
{m,n} | **m** to **n** repetitions of the preceding character | **Joh{1,2}n** matches **John** and **Johhn**, but does not match **Jon** or **Johhhn**.
< | Start of word | **<Phon** matches **Phone** but does not match **iPhone**.
> | End of word | **hones>** matches **Phones** but does not match Phone. **Note**: To match a whole word, you can specify **\<Phone>** to match **Phone**, but not **Phones** or **iPhone**, or you can specify **\<Phones*>** to match both **Phone** and **Phones**, but not **iPhone** or **iPhones**.
^ | Start of line (needs to be at the beginning of the expression) | **^Phone** will match all units that start with **Phone**.
$ | End of line (needs to be at the end of the expression) | **received$** will match all units that end with **received**.
