---
title: "Add Files to Project - Properties"
date: 2017-08-10T09:31:02+02:00
weight: 10
draft: false
---

The **Properties** tab allows you to define the properties that are common to all glossaries selected in the previous tab. 
If you need that glossaries have different values, simply select some values in this step and when you are returned to the 
**Project Properties** dialog, adjust the settings for each glossary clicking the **Properties** button.

The **Properties** tab has these fields:

*	**Priority**. It can be defined as **Low**, **Medium**, or **High**.
*	**Mnemonic Processing**. If your glossary contains software strings, it is very common that it contains special characters.
	You can specify here that the hotkey character is removed from the string in order to improve the search. For example, if your
	software strings contain **Cu&t** as the source text, by choosing the **Remove shortcuts (&)** option for this field you will be able
	to search for **Cut**, instead of having to search for **Cu&t**.
*	**Flag**. If you select an icon in this field, this icon will be shown next to search results for this file. 
*	**Remove duplicates**. If you check this box, ApSIC Xbench will consolidate all identical source+target entries in a given file in the
	search results, indicating the number of entries consolidated under the **#** column.
*	**Do not reload with Refresh (F5)**. If you check this box, ApSIC Xbench will consider the bilingual corpus as static, and it will not
	try to reload it from disk if you press **F5** or select **Project->Refresh Content**.
*	**Ongoing translation**. If you check this box, you are telling ApSIC Xbench that the bilingual corpus is an ongoing translation 
	(i.e. the translation you are working on). ApSIC Xbench displays some additional useful information for a corpus defined as ongoing 
	translation. For example, Xbench flags with a red dot those translations that are new (i.e. are not 100% matches) and also shows 
	the untranslated segments. Also, files defined as ongoing translation are elegible for the QA features.
*	**Swap Source and Target**. With this option you can reverse the source and target roles.
*	**Key Terms**. If you check this box, the units that match a search criteria will appear with a star.
*	**Auto-Refresh**: If you check this box, this glossary will be added to the pool of project glossaries that are refreshed automatically
	with the time interval specified in **Project->Properties->Settings**.
*	**Comments**. You can add comments in the **Comments** field. These comments appear as a hover help when you put the mouse cursor over
	an entry in the **Project Properties** dialog.

Once you have set the properties, depending on the file type click **Next** or **OK**. 


