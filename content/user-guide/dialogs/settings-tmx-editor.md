---
title: "Settings - TMX Editor"
date: 2017-08-10T10:13:29+02:00
weight: 23
draft: false
---

The **TMX Editor** tab lets you configure command-line arguments for a TMX editor when using the **Edit Source** feature
for search results or QA results for a glossary in .tmx format. When properly configured, this allows you to open
the file directly at the line from which the segment selected with **Edit Source** comes from. If you choose to define 
a TMX Editor, you need to assign values to the following fields:

*	**Path to Executable**. This is the path to the .exe file for the TMX editor. 
	You can use the button with the ellipsis (**...**) to navigate to the .exe file.
*	**Command-line Parameters**. This field allows you to construct the command-line that should be passed to the editor.
	You can use several variables that will be replaced with values by ApSIC Xbench:
	*	**$Filename**: The file name, including its path of the file.
	*	**$Line**: The line number of the segment in the TMX file. This line refers to where the target text is located.
	*	**$Column**: The column in the line where the target text is located.
	*	**$Segment**: The segment number in the TMX file.
		
	For example, to configure OKAPI Olifant for segment positioning, you must select there the Olifant executable and specify the
	following in **Command-Line Parameters**: `$Filename row=$Segment col=trg edit=yes`. Other TMX editors might have different 
	values for this field.

