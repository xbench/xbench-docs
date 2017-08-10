---
title: "Checklist Manager"
date: 2017-08-10T11:20:56+02:00
weight: 35
draft: false
---

This tab allows you to manage your Personal and Project Checklists. A checklist is a series of searches that 
can be run in batch from the [QA tab]({{< relref "user-guide/dialogs/main-window/qa.md" >}}).

Typically, you store in checklists common pitfalls in the translation, such as use of banned terms or expressions. 
It is a very good practice to compile client feedback in checklists to make sure that no feedback is forgotten in 
subsequent deliveries of translations.

Personal Checklists are saved on your disk with the .xbckl extension. Your personal checklists are the checklists 
listed under **Personal Checklists** in the navigation tree that appears on the left side of the dialog. 

The Project Checklist has the internal name *\<Project>* and is saved as part of the ApSIC Xbench project file (.xbp extension). 
There is only one \<Project> checklist per ApSIC Xbench project, but it can link to any number of personal checklists. 
Under **Project Checklists** in the navigation tree you will find the \<Project> checklists and all the personal checklists 
linked to the project.

This tab adds the **Checklist** menu to the menu bar, which has the following menu items:

*	**New**. Creates a new checklist under **Personal Checklists** or **Project Checklists**, depending on the position of the
	cursor in the navigation tree.
*	**Add**. Adds a local or remote checklist under **Personal Checklists** or **Project Checklists**.
*	**Save as**. Allows you to save the checklist with another name.
*	**Rename**. Allows you to change the display name of the selected checklist.
*	**Remove**. Removes the selected checklist from the list. This action **does not physically** delete the removed checklist
	from disk or from the server.

Menu items in the **Checklist** menu are also available by right-clicking on a checklist in the left navigation pane.

When a checklist is selected, its entries are shown in the center of the window. If you right-click on an entry, a pop-up menu 
appears with the following menu items:

*	**New**. Adds a new item to the current checklist.
*	**Edit**. Edits an existing item in the current checklist. This option is not available for inherited items.
*	**Test**. Executes the current checklist item in the Search tab, so that you can check if its results are correct.
*	**Override**. Overrides the values of an inherited item in the current checklist. Inherited items appear with the 
	<img class="inline" style="vertical-align: middle" src ="/user-guide/icon-inherited.gif" /> icon. This option is only available
	if the checklist item is inherited.
*	**Disable/Enable**. It disables or enables the item.
*	**Copy**. Copies all selected checklist items to the clipboard.
*	**Paste**. Pastes the checklist items in the clipboard.
*	**Delete**. Deletes the selected item from the checklist. This option is not available for inherited items.

You can get to this tab using **View->Checklist Manager** or clicking the **Checklist Manager** toolbar button.

If you click the **Inheritance** button, a pane appears where you can add parent checklists from which checklist items should 
be inherited. To add a new parent checklist, right-click on the inheritance pane and choose **Add**. 

When you click on a column heading, the list is sorted by that column alphabetically. If you click on the column heading a 
second time, the list is sorted from bottom to top. If you type a sequence of characters, the current column will be searched 
for the typed sequence of characters.

All changes to checklists are saved automatically, with the exception of the \<Project> checklist that will be saved if the 
ApSIC Xbench project itself is saved.
