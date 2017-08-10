---
title: "Glossary Properties"
date: 2017-08-10T09:30:32+02:00
weight: 7
draft: false
---

The **Glossary Properties** dialog allows you to define or change the following attributes. 
This window appears by dragging and dropping a file or directory into the list of glossaries 
of the **Project Properties** window or by clicking **Properties** in that window. This window 
contains the following fields:

*	**Type of glossary**: If defines the file format for the glossary. Some entries are disabled 
	in this area, as the available types depend on if the entry is a directory or a file. If the 
	current type is wrong, you can change it here.
*	**Priority**: It can be defined as **Low**, **Medium**, or **High**. The priority of a glossary 
	defines the order in which appear results.
*	**Mnemonic Processing**: If you are working with software strings, where typically mnemonics are
	defined by using special characters, you can specify here that the shortcut character is removed from 
	the string in order to improve the search results. For example, if your software strings contain **Cu&t** 
	as the source text, by choosing **Remove shortcuts (&)** for this field you will be able to search for 
	**Cut**, and not for **Cu&t**. This is very useful when you are translating the help of a product for which 
	you were given the software strings in raw format or in a Trados memory.
*	**Flag**. If you select an icon in this field, this icon will be shown next to search results for this file. 
*	**Remove duplicates**: If you check this box, ApSIC Xbench will consolidate all identical source+target 
	entries in a given file into only one search result. The number of entries consolidated will be shown under
	the **#** column in the search results.
*	**Do not reload with Refresh (F5)**: If you check this box, ApSIC Xbench will consider the glossary as static,
	and it will not try to reload it from disk if you press **F5** or select **Project->Refresh Content**.
*	**Ongoing translation**: If you check this box, you are telling ApSIC Xbench that your file or directory is an
	ongoing translation (i.e. the translation you are working on). For a file set defined as ongoing translation,
	ApSIC Xbench displays some additional useful information. For example, it flags with a red dot those translations
	that are new (i.e. are not 100% matches) and also shows the untranslated segments to assist on the process of
	deciding new terminology. Also, the glossaries defined as ongoing translation are elegible for QA.
*	**Swap Source and Target**: If you check this box, the glossary direction is reversed. The source column will
	behave as the target column and the target column as the source column. 
*	**Recurse directories**: This check box is only available to directory-type glossaries. If you check this box,
	ApSIC Xbench will load also the files from child subdirectories.
*	**Key Terms**: If you check this box, the entries in the glossary will be defined as key terms for the project.
	Key term entries are shown at the top and flagged with a star in the results. Key Terms are also used for the QA 
	terminology check.
*	**Auto-Refresh**: If you check this box, this glossary will be added to the pool of project glossaries that are 
	refreshed automatically with the time interval specified in **Project->Properties->Settings**.
*	**Comments**: You can add comments in the **Comments** field. These comments appear as a hover help when you put
	the mouse cursor over an entry in the **Project Properties** dialog. It is recommended to enter information in this
	field to identify more easily in the future the source of the information, for example, during a reorganization of
	the reference information for a given project.

