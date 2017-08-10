---
title: "Advanced Features"
date: 2017-08-06T23:07:01+02:00
weight: 9
draft: false
---

ApSIC Xbench has some advanced features that you will appreciate when 
you have special needs. They are described in the following sections.

## PowerSearch function

You can use the **Ctrl+P** (PowerSearch) key combination to search with 
more complex criteria. With the PowerSearch function you can search for 
entries: 

* That contain two or more strings, but not necessarily
  next to each other.
* That **do not** contain a given string.
* That contain a string **or** another string.
* Any combination of the above conditions.

Examples:

This expression... | ...does the following
------------------ | ---------------------
string1 string2 |  It find s all entries that contain "string1" **and** "string2"
string1 or string2 | It finds all entries that contain "string1" **or** "string2"
string1 -string2 | It finds all entries that contain "string1" but **do not contain** "string2"
string1 -"string2 with embedded blanks" | It finds all entries that contain "string1" but **do not contain** "string2 with embedded blanks"

In more complex expressions involving several strings with Boolean 
and/or relationships, you can use parenthesis to indicate precedence.

In PowerSearch mode, you need to use double quotes as delimiters if 
your expression contains embedded blanks or parenthesis. If your search 
string contains a double quote character embedded, you need to escape it 
using a sequence of two double quote characters. 

{{% notice note %}}
If one of the words to search in PowerSearch mode is the word 
"or", you need to enclose the word "or" in double quotes to avoid 
that it is parsed as the or operator.
{{% /notice %}}

PowerSearch can be used in any of the searching modes: **Simple**, 
**Regular Expressions**, and **MS Word Wildcards**.

## Zooming In

ApSIC Xbench features 4 types of zoom:

* 	**Zoom to Level**. Shows the entries that belong to a given priority 
  	level.
* 	**Zoom to Glossary**. Shows the entries that belong to a given glossary.
  	If the glossary consists of only one file, it produces the same result as 
	Zoom to File. 
*	**Zoom to File**. Shows the entries that belong to a given file.
*	**Zoom to Flag**. Shows the entries that belong to those glossaries than 
	have been assigned a given flag in their properties. 

As you already noticed, ApSIC Xbench shows a snapshot of the most relevant terms
for each priority level on a single unified view. This allows you to analyze
the sources of potential inconsistencies or even different meanings and make
a more informed decision on which term to choose.

However, it is possible that you want to see more (or all) instances of a 
specific level to make a more thorough analysis of a specific term.

To do so, double-click the body of the window for the level that you want to zoom
in to obtain a full list of entries for the searched term. The background will
become green so that you can tell that you are in zoomed mode.

To exit the zoomed mode, double-click the body of the window again.


## Reverse search

ApSIC Xbench also defines a system-wide key for searching in the target 
column instead of in the source column. The default key combination for 
this feature is **Ctrl+Alt+Backspace**.

This is equivalent to leaving the **Source Term** field blank and the 
**Target Term** field filled out.

For example, this is convenient when you want to use a new term in your 
language and want to make sure that such a term is not already used in 
another term that could create potential clashes in the future with key 
terminology for your project.

## Filtering the search scope

The **Search Options** pane (**View->Search Options**) allows you to 
narrow the scope for the search. The filtering options available are:

*	**Only New Segments**: It shows only matches in segments that are not 
	100% matches.
*	**Only 100% Matches**: It shows only matches in segments that are 
	100% matches.
*	**Only Ongoing Translation**: It shows only matches in files that have 
	been defined as ongoing translation in the project properties.
*	**Exclude ICE Segments**: It excludes In-Context Exact Matches (also 
	known as 101% matches or Perfect Matches) from the search results.

## Seeing the context


If you right-click on a search result and choose the **See Context**
menu item, you will see all units that are found in the file physically 
before and after the current entry appear.


## Ignoring tags

If search matches within the tags need to be excluded from the search 
results, you can choose the **Ignore Tags** check box in the **Search 
Options** pane. 

## Editing the source document

The **Tools->Edit Source** menu item, also attached to the **Ctrl+E**
key combination, allows you to open the source file to which the entry 
currently selected belongs. This is very useful to quickly amend an issue 
detected in an ongoing translation.

For many formats, for example when the source file is an SDLX itd file, a 
Trados Tag Editor ttx file, a Trados Word file, a memoQ file,
a Trados Studio file or an IBM Translation Manager folder, ApSIC Xbench goes 
directly to the segment that contains the text.

For Transifex, it opens a window where you can type your correction and 
send it to Transifex, and for Matecat, it opens a browser with the online 
editor, right at the segment that needs to be edited.

To use this feature with IBM Translation Manager, please ensure that 
IBM Translation Manager is up and running and that there is no document
currently being edited.

Line positioning is a lso available for Tab-delimited files and Trados 
exported memories, but your text editor parameters must be configured in 
**Tools->Settings->Text Editor**. For example, to configure TextPad 4 for 
line positioning, you must select there the Text Pad executable and 
specify the following in **Command-Line Parameters**: `$filename($line,$column)`.
Similarly, to configure Notepad++, you must select its executable and specify the 
following in **Command-Line Parameters**: `$filename -n$line`. Other text
editors will require different values for this field. Please check your text
editor's documentation for the suitable values.

ApSIC Xbench also allows performing segment positioning for the TMX 
format, but the TMX editor must be configured in **Tools->Settings->TMX Editor**.
For example, to configure OKAPI Olifant for segment positioning, you
must select there the Olifant executable and specify the following in
**Command-Line Parameters**: `$Filename row=$Segment col=trg edit=yes`.
Other TMX editors might have different values for this field. 
Please check your TMX editor's documentation for the suitable values. 

This makes ApSIC Xbench a very useful and efficient tool to make 
global changes in terminology for these formats. If you afterwards want to
ensure that all changes were made correctly, you can reload the ApSIC Xbench project with 
**Project->Reload** or **Project->Refresh Content**.

## Search templates

Search templates are predefined searches that you can choose or run. To 
use a search template, click on **Search Templates...** on the Search 
Options pane and then choose the search from the list. In **Template 
Source**, you can choose to show the **Sample Search Templates** or the 
**Project Checklist** entries. Click **Search** to run directly the search 
currently selected or click **Choose** to bring up the search template 
definition to the **Source Term** and **Target Term** fields.

## Switching the layout of search fields

You can switch between a vertical layout and a horizontal layout for the 
**Source Term** and **Target Term** fields in the **Search** tab. In the
horizontal layout, the **Target Term** field appears next to the
**Source Term** field and takes less screen space for the pane, hence there is more 
space available for search results. In the vertical layout, the **Target Term**
field appears below the **Source Term** field and fields are therefore much 
wider.

To switch between the vertical and the horizontal layout, simply pull up 
or pull down the bottom border of the Source/Target pane to shrink it or 
to expand it.
