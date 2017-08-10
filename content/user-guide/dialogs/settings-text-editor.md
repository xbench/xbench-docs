---
title: "Settings - Text Editor"
date: 2017-08-10T10:13:16+02:00
weight: 22
draft: false
---

The **Text Editor** tab lets you configure command-line arguments for a text editor when using the **Edit Source** feature for 
search results or QA results for a glossary in .txt format. This includes **Tab-delimited Files**, **Trados Exported Memories**, **Wordfast 
Memories**, and **Wordfast Glossaries**. When properly configured, this allows you to open the file directly at the line from which the 
segment selected with **Edit Source** comes from. If you choose to define a Text Editor, you need to assign values to the following fields:

*	**Path to Executable**. This is the path to the .exe file for the text Editor. You can use the button with the ellipsis (**...**) to 
	navigate to the .exe file.
*	**Command-line Parameters**. This field allows you to construct the command-line that should be passed to the editor. You can use
	several variables that will be replaced with values by ApSIC Xbench:
	*	**$Filename**: The file name, including its path of the file.
	*	**$Line**: The line number of the segment in the text file. This line refers to where the target text is located.
	*	**$Column**: The column in the line where the target text is located.
	*	**$Segment**: The segment number in the text file.

	For example, to configure TextPad 4 for line positioning, you must select there the Text Pad executable and specify the following in 
	**Command-Line Parameters**: `$filename($line,$column)`. Similarly, to configure Notepad++, you must select its executable and specify
	the following in **Command-Line Parameters**: `$filename -n$line`. Other text editors will require different values for this field.
	Please check your text editor's documentation for the suitable values.
