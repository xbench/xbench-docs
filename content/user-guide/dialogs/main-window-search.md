---
title: "Main Window - Search"
date: 2017-08-09T16:22:38+02:00
draft: true
---

Main Window - Search
From this window, you will be able to perform searches in the source text, in the target text, or both. You can also use the Search Options pane (View->Search Options) to further refine the search or to filter the segments considered by the search. The search results are shown according to their priority level, as defined in the Project Properties.

To find all instances of a certain string in the source or target part of the text, type the string in the Source Term or the Target Term field and press Enter or click Search. You can search from any Windows application by copying the text to find into the clipboard (for example with Ctrl+Insert) and then pressing Ctlr+Alt+Insert to invoke ApSIC Xbench. If Ctrl+Alt+Insert clashes with another function in your Windows application, it can be changed to another hotkey choosing Tools->Settings->Layout & Hotkeys.

Note: If you need to find all segments that contain some specific text in the source part and some specific text in the target part, you can fill both fields and press Enter.

By default, searches are in overview mode. This means that only some of the most relevant matches within each priority level are shown. The overview mode allows you to have a quick glance of results from different terminology sources on a single screen. If you need more detail, you can choose View->Zoom to show all results within a priority level, glossary, or file. You can also double-click or press Ctrl+Enter on any entry in the desired priority level of the search results to zoom by priority level.

When you activate the Search Options pane with View->Search Options, the following search settings are available:

Show All Matches: When checked, instead of showing an overview of search results, it shows all search results. 
Only New Segments: When checked, it shows only matches in segments that are not 100% matches.
Only 100% Matches: When checked, it shows only matches in segments that are 100% matches.
Only Ongoing Translation: When checked, it shows only matches in files that have been defined as ongoing translation in the project properties.
Exclude ICE Segments: When checked, it excludes In-Context Exact Matches (also known as 101% matches or Perfect Matches) from the search results.
Ignore Tags: When checked, it excludes matches that are found within tags.
You can also further qualify the search expression for Source, Target, or Both with the following settings:

Case Sensitive: If checked, only matches containing the search text with the exact sequence of uppercase and lowercase letters will be shown.
Match Whole Words: If checked, only matches containing the search text in a whole word will be shown.
No Whitespace Trimming: If checked, any spacing surrounding the search text will be also considered as part of the search text. 
Normalize Whitespace: If checked, other forms of space such as a hard space will be considered as a match for the space character.
Normalize Native Chars: If checked, it will convert non-English characters to their closest variant in the English alphabet. For example, it will convert "á" to "a", "ñ" to "n", or "ç" to "c" prior to running the search. This settings allows you to search for "á" and get matches that contain "a", "á", "à" and other similar variants based on "a", or to search for "a" and also get matches that contain "a", "á", "à" and other similar variants based on "a". It can be useful to locate more matches when the source text can contain accented vowels and the writers of the source text were not really very careful with their typing.
There are available three search modes. The search mode is selected on the Search Options pane (View->Search Options): 

Simple: The search expression is considered plain text.
Regular Expresions: The search expression follows the regular expressions grammar. For more information on regular expressions, see Regular Expressions and Microsoft Word Wildcards.
MS Word Wildcards: The search expression follows the Microsoft Word wildcards grammar. For more information on Microsoft Word wildcards, see Regular Expressions and Microsoft Word Wildcards.
In addition to the search modes, you can also perform power searches by pressing Ctrl+P. For more information on power searches, see Advanced Features.

If Remove duplicates was selected in the project properties, the # column in the search results contains the number of entries that are identical in a given file.

In addition, ApSIC Xbench uses the following conventions to qualify visually the different types of matches.

A green large dot () indicates that the entry matches exactly the text searched (case sensitive match). This can be quite convenient because you may want to select the entry and press Enter to copy its target value into the clipboard. By doing so, ApSIC Xbench returns to the original application and you can easily paste there your translation pressing Shift+Insert.
A yellow large dot () indicates that the entry matches in content but has a different case (case insensitive match). Normally it is also safe to paste the target text into the clipboard by pressing Enter and then Shift+Insert, but perhaps it is required to edit the case after pasting.
A small red dot () in the icon indicates that the segment is part of the new translation of an ongoing translation. In the project properties you can mark a file as Ongoing Translation in order to distinguish between the new part and the 100% matches already translated. For some formats, such as IBM Translation Manager or SDLX, the untranslated segments appear in the search results, which is indicated with the text ** Untranslated **. This is useful to help decide the best translation for a new term by quickly seeing all instances where that term will appear. If the small red dot is solid (), it means that the segment belongs to the new and changed segments of the ongoing translation. If the small red dot is empty (), it means that the segment belongs to the 100% matches.
A star indicates that the term is defined as key term. A green star ( ) indicates that the key term is an exact match (case sensitive). A yellow star () indicates that the key term is an exact match in content, but the case of each letter does not match the search term. An empty star () indicates that the search term is found somewhere in the key term.
From this window you can click Add last search to checklist also add the term just searched to a checklist. You can also click Search Templates to open a dialog from where you will be able to run predefined searches from a set of sample templates or from entries in your checklists.
