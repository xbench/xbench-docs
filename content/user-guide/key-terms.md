---
title: "Key Terms"
date: 2017-08-06T23:09:24+02:00
weight: 12
draft: true
---
ApSIC Xbench allows you to define one or more files as *Key Terms*. To do so, when in the list of glossaries in **Project Properties**, choose the **Key Terms** check box. A green star will appear next to the glossary entry as shown in the illustration below to indicate that the glossary belongs to the **Key Terms** category.

![Define files as key terms] (/user-guide/dialog-project-properties-files-tab-key-terms.jpg)

When a file is defined as Key Term, its entries appear with a star on top of the results. The color of the star indicates if the key term is an exact match (green star <img class="inline" style="vertical-align: middle" src ="/user-guide/bullet-green-star.gif" />), an exact match except for the case (yellow star <img class="inline" style="vertical-align: middle" src ="/user-guide/bullet-yellow-star.gif" />), or if the text searched is contained in the key term entry (empty star <img class="inline" style="vertical-align: middle" src ="/user-guide/bullet-hollow-star.gif" />).

The example below shows entries "clipboard" and "Clipboard Viewer", which are flagged as Key Terms:

![Search key terms example] (/user-guide/dialog-main-window-search-tab-key-terms.jpg)

In the example above, the green solid star for the "clipboard" entry means that the entry is a full match. The empty star in the "Clipboard viewer" entry means that the searched term is *part* of a key term.

The QA feature also makes use of Key Terms defined for the project by checking if they have been used in the ongoing translation.
