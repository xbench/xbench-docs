---
title: "Regular Expressions and Microsoft Word Wildcards"
date: 2017-08-06T23:06:24+02:00
weight: 7
draft: false
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
\\ | Escape character. The character following it is parsed as a simple character. | **phone\\.** will match all units that have a period after **phone**. (In this case, the dot does not mean "any character" because it is escaped).
% | Make the preceding character or expression case-insensitive. When ApSIC Xbench search mode is case- sensitive, this modifier can be used to make part of the search string case-insensitive. | In ApSIC Xbench case-sensitive mode, **a%** will match **a** and **A**. Similarly, **P(hone)%** will match **Phone** and **PHONE**, but will not match **phone** because in the latter case, the letter **p** is not included in the expression affected by the modifier.
\\xnn or \\xnnnn | The character specified by **nn** or **nnnn**, where **nn** or **nnnn** is a hexadecimal number. If only two digits are specified, it is assumed to be its Unicode equivalent **\\x00nn**. | **\\x48\\x6f\\x77\\x64\\x79\\x3f** and **\\x0048\\x006f\\x0077\\x0064\\x0079\\x003f** both match **Howdy?**
\| | OR operator | **^(H\|I)** matches all sentences that start with an **H** or that start with an **I**.
() | Parenthesis operator to specify priority | **(^H)\|I** matches all sentences that start with an **H** or that contain an **I**.
[set-expression] | One character belonging to the set defined by set-expression. A set is defined by individual characters (for example, [aeiou]) and/or by ranges of characters specified by the starting and the ending character (for example, **[a-z]**). | **File[0-9]** matches **File0**, **File1**, **File2**, ... **File9**, but does not match **FileX**. **File[ABC]** matches **FileA**, **FileB** and **FileC**, but does not match **FileD**.
[:special-set:] | One character belonging to a predefined **special-set**. The following special sets are predefined In ApSIC Xbench: [:space:], [:control:], [:punctuation:], [:punct:], [:separator:], [:sep:], [:symbol:], [:alpha:], [:num:], [:xdigit:], [:alphanum:], [:letter:], [:digit:], [:letterdigit:], [:number:]. Special set must be used within set-expressions (for example [:digit:]). The characters matched by each special- set are listed in [Special Sets]({{< relref "special-sets.md" >}}). | **File[:digit:]** matches **File0**, **File1** or **File2**, but does not match **FileA** or **FileB**. **File[:alpha:][:digit:]** matches **FileA0**, **FileB1** or **FileC2**, but does not match **File1A** or **File2B**.
[^set-expression] | Any character not belonging to the set-expression. | **File[^ABC]** matches **FileD** or **FileE**, but does not match **FileA**, **FileB** and **FileC**.
(expression)=n | Assigns to variable n the resolved value of the expression in the currently parsed segment. The resolved value can be recalled with the expression **@n**. | **(File[0-9])=1** defines variable **1** as the resolved value of **File[0-9]**.
@n | Renders the resolved value of variable **n**. | **@1** in the example above would resolve to string **File1** if the string searched contains **File1**, **File2** if it contains **File2**, and so on.

## Microsoft Word Wildcards Syntax

Character or Expression | Meaning | Examples
------------------------|---------| --------
. | Any character | **Jo.n** matches **John** and **Joan**, but does not match **Johan**.
* | 0 or more characters | **Joh*n** matches **John**, **Johan** and **Johhn**, but does not match **Jon**.
? | 0 or 1 characters | **Jo?n** matches **Jon**, **John** and **Joan**, but does not match **Johan**.
@ | 1 or more repetitions of the preceding character | **Joh@n** matches **John**, and **Johhn**, but does not match **Jon** or **Johan**.
{m} | Exactly m repetitions of the preceding character | **Joh{2}n** matches **Johhn**, but does not match **Jon**, **John** or **Johhhn**.
{m,} | **m** or more repetitions of the preceding character | **Joh{2,}n** matches **Johhn** and **Johhhn**, but does not match **Jon** or **John**.
{,n} | 1 to **n** repetitions of the preceding character | **Joh{,2}n** matches **John** and **Johhn**, but does not match **Jon** or **Johhhn**.
{m,n} | **m** to **n** repetitions of the preceding character | **Joh{1,2}n** matches **John** and **Johhn**, but does not match **Jon** or **Johhhn**.
< | Start of word | **<Phon** matches **Phone** but does not match **iPhone**.
> | End of word | **hones>** matches **Phones** but does not match **Phone**. **Note**: To match a whole word, you can specify **\<Phone>** to match **Phone**, but not **Phones** or **iPhone**, or you can specify **\<Phones*>** to match both **Phone** and **Phones**, but not **iPhone** or **iPhones**.
^ | Start of line (needs to be at the beginning of the expression) | **^Phone** will match all units that start with **Phone**.
$ | End of line (needs to be at the end of the expression) | **received$** will match all units that end with **received**.
\\ | Escape character. The character following it is parsed as a simple character. | **phone\\.** will match all units that have a period after **phone**. (In this case, the dot does not mean "any character" because it is escaped).















