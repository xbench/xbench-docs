---
title: "Main Window - Internet"
date: 2017-08-10T09:11:51+02:00
weight: 2
draft: false
---


The **Internet** tab allows you to send queries to a number of predefined Internet sites. 
You can define any number of pattern URLs in the **Internet** tab of the **Settings** window. 
To get to this window, select **Tools->Properties->Internet**. ApSIC Xbench will replace the
**%s** sequence found in the pattern URL with the search text and will submit a query to the Internet. 

The first 10 URL defined are automatically assigned the key combination At+*n* within ApSIC Xbench, 
where *n* can be any number from 0 to 9. 

{{% notice note %}}
The 0 is assigned to the 10th entry of the list.
{{% /notice %}}

The URLs beyond 10 do not have a hotkey attached, but can be easily selected with the **Website** drop-down.

You can also perform a direct search from any Windows application by selecting the text, pressing **Ctrl+Insert**
to copy the text into the clipboard and then pressing Ctrl+Alt+*n*, where *n* can be any number from 0 to 9 in 
the numeric keyboard (the same number assignments that apply for Alt+*n* within ApSIC Xbench). If **Tools->Settings->
Layout & Hotkeys->Open in Default Browser** is checked, the default browser will open directly and ApSIC Xbench will
not appear at all. This configuration allows using Internet dictionaries directly with one simple keystroke.

