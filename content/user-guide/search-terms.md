---
title: "Searching for Terms"
date: 2017-08-06T22:38:18+02:00
weight: 6
draft: true
---

ApSIC Xbench has a very powerful search engine. For example, you can
search by source term, target term, or both source and target term. ApSIC
Xbench also allows you to search using regular expressions or Microsoft
Word wildcards, and combine them using the PowerSearch mode.

![Search example] (/user-guide/dialog-main-window-search-tab-clipboard.png)

Likely, most of your searches will be done by source term. However,
your need to search for a term will not originate while you are in the
interface of ApSIC Xbench, but when you are translating within Word or
within some other CAT application such as Trados Studio, memoQ,
Wordfast, Déjà Vu, or from a note in your email program such as
Microsoft Outlook.

This is why ApSIC Xbench is **accessible system-wide from any
application with a single key combination (Ctrl+Alt+Insert)**.

The following 5 steps describe how you should interact with ApSIC
Xbench. The starting point for this scenario is an open document with
Microsoft Word in the foreground and an ApSIC Xbench project loaded
in the background.

1. In Microsoft Word, highlight the term (totally or partially) that you
   want to search for. 
2. In Microsoft Word, press Ctrl+Insert and then Ctrl+Alt+Insert to call
   ApSIC Xbench. This action automatically searches the files loaded
   into ApSIC Xbench for the marked term. This sequence of keys will
   be the most important one for you when using ApSIC Xbench for
   searching for terminology. 
3. ApSIC Xbench presents the results of the query as illustrated in the
   figure above.
   You can have up to three priority areas, one in green (high priority),
   one in maroon (medium priority), and one in blue (low priority). The
   column labeled # provides a count of all the occurrences in the file
   that have been grouped for the entry shown on the window.
   The green bullet next to the Target term indicates that the entry is a
   full exact match (case sensitive) with the search string. If a yellow
   bullet appears next to a Target term, it means that the entry is a full
   match except for the case. For example, if in the above example we
   had searched for “Clipboard” instead of “clipboard”, the bullets
   would have been green instead of yellow because the case of the
   query string would match exactly the case of the string that is found
   in the file (Clipboard).
   When translating documentation, this indication is very useful
   because you can copy-and-paste the target term, which makes you
   more productive and accurate. The following steps describe how to
   benefit from this.
4. If you want to copy the target term of the currently selected entry into
   the clipboard, just press Enter to close the ApSIC Xbench window.
   ApSIC Xbench is hidden and you are returned to the calling
   application (in this example, Microsoft Word).
   **Note**: If you do not want to copy anything to the clipboard, press **Esc**
   or **Alt+F4** to hide ApSIC Xbench and return to Microsoft Word.
5. If you opted to close the ApSIC Xbench window with the **Enter** key,
thus saving the target term in the clipboard, you can press **Shift+Insert**
to copy the target term into your document.

You will notice that, especially for software options, it is faster to search
and paste than to type the target software options manually. Thus, you are
more productive and your translations are more consistent at the same
time.

{{% notice tip %}}
Familiarize yourself with the above procedure until you feel it is
intuitive enough. Try it with words that you know are exact matches so
you can get familiar with the paste step. 
{{% /notice %}}