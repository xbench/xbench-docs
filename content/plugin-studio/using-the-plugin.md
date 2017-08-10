---
title: "Using The Plugin"
date: 2017-08-09T12:14:14+02:00
draft: false
weight: 5
---

When you launch SDL Trados Studio with the ApSIC Xbench Plugin
installed, the first thing you will probably notice is that the ribbon for the
**Projects** view has a new guest.

![Run QA in Current Project](/plugin-studio/dialog-studio-main-window-run-qa-in-current-project.png)

The ApSIC Xbench Plugin installs an icon in these three ribbons:

*	The **Home** ribbon of the **Projects** view
*	The **Home** ribbon of the **Files** view
*	The **Review** ribbon of **Editor** view

Any of these icons performs the same action: **Run QA in Current Project**.

The **Run QA in Current Project** action does the following:

1.	Creates an ApSIC Xbench project (.xbp extension) with the following items:

	*	All sdlxliff files for the current project loaded as ongoing translation 
		and with medium priority (maroon color). If your project has more than one
		target language, the **Choose Language** dialog will appear.
	![Run QA in Current Project](/plugin-studio/dialog-choose-language.png)
	*	The first file-based translation memory with *.sdltm* extension
		found for the language in the SDL Trados Studio project settings.
		The ApSIC Xbench plugin first scans the language-specific
		settings and if no translation memory is found, it proceeds with
		the **All Language Pairs** settings. This translation memory is
		loaded with low priority (blue color) in the Xbench project. You
		can disable the load of the translation memory using ApSIC
		Xbench by choosing **Tools->Settings->Studio Plugin** and then
		deselecting the **Add first local translation memory** checkbox.
		**Note:**  If you choose **All Languages** in the **Choose Language**
		dialog, this file will not be loaded in the Xbench project.
		
	*	The first file-based termbase with *.sdltb* or *.mdb* extension found
		for the language in the SDL Trados Studio project settings. This
		MultiTerm glossary is loaded with high priority (green color) in
		the Xbench project. You can disable the load of the termbase by
		using ApSIC Xbench by choosing **Tools->Settings->Studio
		Plugin** and then deselecting the **Add first local termbase**
		checkbox. **Note:**  If you choose **All Languages** in the **Choose Language**
		dialog, this file will not be loaded in the Xbench project.
2.	Launches ApSIC Xbench to load the project and opens the **QA** tab in
	ApSIC Xbench.

Once in Xbench, you can select your desired QA settings and choose
**Check Ongoing Translation** to run the QA. Please remember that only
ongoing translation files (in our case the sdlxliff files) are considered for
QA. Any other files are considered reference for ad hoc searches.

During QA, you may want to search your sdlxliff files and the glossary or
translation memory. You can do so in the **Search** tab of ApSIC Xbench.
The illustration below shows how the information is organized in the
generated Xbench project.

![Search results](/plugin-studio/dialog-main-window-search-tab-studio-plugin.png)

When you find an item in the **Search** or **QA** tabs that you want to
change, simply choose the item, right-click and then choose **Edit Source**.
You can also press **Ctrl+E** as a shortcut to run the **Edit Source** command.
When you do so, SDL Trados Studio will go to the foreground and the
**Editor** view will open the file right at the segment that you chose in
ApSIC Xbench.

![Edit Source](/plugin-studio/context-menu-edit-source.png)

Once you have made your change in SDL Trados Studio, you can go
back to Xbench using the **Alt+Tab** hot key.

After you have done your QA changes in SDL Trados Studio, you can
quickly run a regression QA pass by pressing again the icon in the ribbon.
When you click the ribbon icon, the Xbench plugin will save any unsaved
files and will create a new Xbench project with the updated files.

If you want to run a QA for only some of the files in the SDL Trados
Studio project, simply go to the SDL Trados Studio **Files** view, select the
desired files, right-click to bring up the popup menu and then choose **Run
QA in Selected Files with Xbench**.

