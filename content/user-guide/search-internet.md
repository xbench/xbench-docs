---
title: "Searching the Internet"
date: 2017-08-06T23:17:59+02:00
weight: 22
draft: false
---

ApSIC Xbench features an **Internet** tab that provides an integration path with some information and terminology sources available in the Internet. The following illustration shows a search in Google done within ApSIC Xbench.

![Search internet](/user-guide/search-internet-example.jpg)

ApSIC Xbench has a few predefined shortcuts, but the user can change or define new links as required. Defined shortcuts are accessible using one of the following methods:

Move to the **Internet** tab, select the desired source in the **Website** field, type the search string in the **Text to search** field and press **Enter**.

When ApSIC Xbench is the current application, press **Alt**+*n*, where *n* can be any number from 0 to 9. The 0 corresponds to the 10th entry in the list. The current term in the **Source** field of the **Project** tab or in the **Text to search** field of the **Internet** tab will be used for the search. The number corresponds to the sequence number of the shortcut in **Tools**->**Settings**->**Internet**.

From any Windows application, highlight the term searched, and press the key combination **Ctrl+Insert** followed by **Ctrl+Alt**+*n*, where the number *n* must be typed in the numeric keypad with **Num Lock** set.

## Defining Internet Shortcuts

Internet shortcuts are defined in **Internet**->**Define Links**. The shortcuts are very easy to define. Just follow these steps:

1. Open the list of shortcuts in **Internet**->**Define Links**. To create a new entry, you just have to move down the keyboard cursor beyond the last entry with the arrow keys.

![Settings-\>Internet tab](/user-guide/dialog-settings-internet-tab.png)

2. Perform a search in the website source that you want to check. For example, do a search in Google of a term, for example *xbench*.

3. Copy the URL into the clipboard, for example, your URL may look like this:

    http://www.google.com/search?hl=en&lr=&ie=UTF-8&q=xbench

4. Paste the URL into one entry of the window and replace the term you searched with a **%s** as shown below. In future queries that use this query string, ApSIC Xbench will replace the **%s** sequence with the search string.

5. Assign a name to your shortcut by moving the cursor to the **Name** column and typing the name there. This name will appear in the **Website** field of the **Internet** tab and also in the **Internet** pull-down menu.

6. If you wish to move the current entry down in the list (this has the effect of changing the hotkey number) you can click on the **Up** and **Down** buttons located on the bottom of the window.

If you run into an interesting link when you browse a page using the Internet tab of ApSIC Xbench, you can quickly add it to the list of pages by using the **Internet**->**Capture URL** menu item.

If you have the tool bar turned on, a number of tool bar buttons appear that help you to browse Internet pages. One of these buttons allows you to open Internet Explorer with the same page you are looking at. This can also be done with **Internet**->**Open Browser** or with the **Ctrl+B** hotkey.

