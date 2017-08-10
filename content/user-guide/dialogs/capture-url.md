---
title: "Capture URL"
date: 2017-08-10T10:51:28+02:00
weight: 30
draft: false
---

The **Capture URL** dialog lets you capture the name and the URL of the current page in the **Internet**
tab to add it to the list of pattern URLs accessible in the **Internet** tab.

If the URL contains your test search string, it is recommended that you replace that string with a **%s**. 
For example, if you go to www.dictionary.com , search for "call" and then select **Capture URL** you will get
the following value in URL:

http://dictionary.reference.com/browse/call

You will notice that the word "call" appears in the URL above. You can now change it to %s in order to obtain 
the URL for generic searches:

http://dictionary.reference.com/browse/%s

By clicking **OK**, the entry is added to the URL list in **Tools->Settings->Internet**.
