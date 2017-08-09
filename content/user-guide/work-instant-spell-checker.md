---
title: "Instant Spell-checker"
date: 2017-08-06T23:12:48+02:00
weight: 16
draft: false
---

ApSIC Xbench features an innovative method for instantly spell-checking
all ongoing files in your project. Instead of opening and closing 
many files and slowly traversing them with a spell-checker, ignoring false 
alarms, ApSIC Xbench processes all files as a block and then presents 
you the consolidated results so that you can flag real misspellings very 
quickly.

ApSIC Xbench provides 48 spell-checking dictionaries based on the 
Hunspell engine as front-end and Microsoft Word dictionaries as backend 
if Microsoft Word for that language is installed on the machine. Only 
words that do not exist in both dictionaries are flagged as errors.
The pass with Microsoft Word dictionary can be disabled if **Settings->Use 
Microsoft Word dictionary** is deselected in the **ApSIC Xbench Spell Checker**
window.

Spell-checking dictionaries themselves are not included in ApSIC Xbench installer.
Instead, you should download and install them with **Tools->Spell-Checking Dictionaries**.

![Spell-checking Dictionaries](/user-guide/dialog-spell-checking-dictionaries.jpg)

When you add a spell-checking dictionary, the added language appears in the 
**Spell-checking** group.

![Spell-checking check group](/user-guide/dialog-main-window-qa-tab-spell-checking.jpg)

To include spell-checking in the checks to be done, choose **Spell-checking** and
then select the language in **List of Checks**. Then click 
**Check Ongoing Translation**.

![ApSIC Xbench Spell Checker](/user-guide/dialog-apsic-xbench-spell-checker.jpg)

The window that appears shows you all spell-checking issues, grouped by 
misspelled term. Browse through the list, and double-click on those 
issues to move the misspelled word to the **Real Misspelling** list.

Once you have gone through the whole list, click **OK** to add the segments 
with misspelling issues to the main QA report.

In the **Spell-Checking** window there are a few settings that can allow you 
reduce the number of false alarms listed. To show them, click **Exclusions**.

![Exclusions](/user-guide/dialog-exclusions.jpg)

The options available in this pane are:

*	**Words with numbers**. When checked, it does not consider words 
	like Pkd05 or G5HJKH7 to be misspelled.
*	**Words in mixed case with a match in source text**. When checked, 
	it does not consider words like PlantWorks to be misspelled if the 
	term also appears on the source text.
*	**Segments where target text matches source text**. When checked, it 
	does not perform any kind of spell-checking on segments where 
	target text matches exactly with the source text. If you are already 
	using the QA check **Basic->Target same as Source**, this exclusion 
	will allow you to skip words in segments that were deliberately left in 
	the original language. 
*	**Words in UPPERCASE**. When checked, this setting will not spell 
	check words that are in uppercase. 
*	**Words in UPPERCASE with a match in source text**. When 
	checked, this setting will not spell check words that are in 
	UPPERCASE if the exact same words are also in uppercase in the 
	source text. This setting can be useful if your translation has many 
	acronyms that do not change across languages. 
*	**Abbreviations**. When checked, this setting will skip abbreviations.

## Using Addendums 

If your translations contain client-specific terms, such as products, 
brands, common keywords, and so on, it is likely that the dictionaries 
provided do not include them. The ApSIC Xbench spell-checker allows 
you to create one or more addendums for each given dictionary, so that 
you can enable them depending on your project's needs.

To create a new addendum to a dictionary, please do the following:

1.	Choose **Addendums->Manage Addendums**.
![Manage Addendums](/user-guide/dialog-manage-addendums.jpg)
2.	Click **Add**.
+	Enter a name for the addendum and click **OK**.

Once created, if you want to add one or more terms to the addendum, 
select them in the list of issues, right-click and choose 
**Add to addendum: \<addendum_name>**.

![Add to Addendum](/user-guide/dialog-add-to-addendum.jpg)

You can add as many addendums as you wish to any dictionary.
The addendums are stored in the path specified by 
**Settings->Set Addendum Folder**.

## Additional Spell-Checker Features

The ApSIC Xbench spell-checker has some additional interesting 
features:

*	You can change the font size by right-clicking on the 
	**Unknown Words** list, choosing **Settings** and then 
	**Enlarge Font** or **Reduce Font**.
*	You can copy the unknown words to the clipboard by right-clicking 
	on the **Unknown Words** list, choosing **Export** and then 
	**Copy to Clipboard**.
*	You can open Microsoft Word or Microsoft Excel with the unknown 
	words by right-clicking on the **Unknown Words** list, choosing 
	**Export** and then **Open in MS Word** or **Open in MS Excel**. Opening 
	in Microsoft Word can be useful if, for example, you want to spell 
	check the remaining unknown words with Microsoft Word.
*	By default, you flag real misspellings by double-clicking on them and 
	moving them to the **Real Misspellings** list box. This is done under 
	the assumption that most unknown words will be false alarms, which 
	is often the case in a final check or regression. However, if your case 
	is the other way around, you may want to change the working mode 
	so that instead of flagging real misspellings, you flag false alarms 
	instead. To change the working mode, choose **Settings->Change Working Mode**.

## Grammar and Spell-Check  in Microsoft Word

You can use **Tools->Export Ongoing Translation to MS Word** to 
create a Microsoft Word file with source and taget text side-by side.
By default, the source text is flagged as "*no proof*", so you can use 
**F7** to  proof the target column using Microsoft Word spell-checker or grammar 
checker, if it is installed for your language. For example, you can use this 
Word document to proof languages that are not listed among Xbench 
spell-checking dictionaries, such as Thai, Finnish, Japanese, or Chinese.

When you find an issue that you wish to fix, you can select it in Word, 
press **Ctrl+Alt+Backspace** to find the segment in Xbench and then press 
**Ctrl+E** to open the segment with the typo in the native editor, such as 
Trados Studio or memoQ.