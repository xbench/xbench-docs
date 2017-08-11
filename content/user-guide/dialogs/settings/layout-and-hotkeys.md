---
title: "Layout & Hotkeys"
date: 2017-08-10T10:12:34+02:00
weight: 18
draft: false
---

The **Layout & Hotkeys** tab lets you define a few settings related to
appearance and behavior that are preserved across different ApSIC Xbench
launches.

The fields in this window are:

* **Maximize on Startup**. If you check this box, ApSIC Xbench will
  appear maximized when it is launched. It is recommended to check this
  box, as the maximized mode is the one that provides the maximum amount
  of information at the same time.

* **Internet Hotkeys / Open in default browser**. When checked, it opens in
  your default browser the Internet query associated to the hotkey (for
  example, Ctrl+Alt+1 or Ctrl+Alt+2), instead of opening it in ApSIC Xbench
  embedded browser. For example, if you have the first configured entry of
  defined Internet links pointing to Google, you can use this feature to search
  the marked text directly in Google just by pressing Ctrl+Alt+1.


The following settings belong to the **Hotkeys** group.

* **Disable**. This check box lets you disable the system-wide key combinations
  featured by ApSIC Xbench. It is recommended to leave this box unchecked as one
  of the most valuable features of ApSIC Xbench is the capability to search
  directly from any Windows application.
* **Source Hotkey**. This is the hotkey defined to trigger a search of the
  clipboard contents in the source text. By default it is **Ctrl+Alt+Insert**.
* **Target Hotkey**. This is the hotkey defined to trigger a reverse search
  of the clipboard contents in the target text. By default it is
  **Ctrl+Alt+Backspace**.

It is recommended not to change the above hotkey settings unless they clash
with the values in another application.

ApSIC Xbench uses the clipboard as a transfer mechanism between the different
Windows applications and ApSIC Xbench. The behavior for the transfer is defined
in the **Transfer Method** group. Normally the most convenient and consistent
transfer method is to leave the default options **Manual Copy** and **Manual 
Paste**, but in some scenarios (for example with applications that do not
feature standard copy and paste keystrokes), you may have to change these
settings to get the most out of ApSIC Xbench.

The options available as a transfer method for **Input** are:

* **Copy Message**. When you press **Ctrl+Alt+Insert**, ApSIC Xbench sends a
  COPY message to the application to copy the selected text into the clipboard
  and then performs a search using the contents of the clipboard. A limited
  number of applications support this technique, but it has the advantage of
  avoiding the need for copying manually the text into the clipboard (normally
  with **Ctrl+Insert**).
* **Manual Copy**. In this mode, ApSIC Xbench expects that the user has already
  copied the text to search in the clipboard. It sounds more tedious, but it
  has the advantage that many applications support the **Ctrl+Insert** key
  combination for copying text, which means that you feel a more consistent
  behavior across applications. On the downside, if the editing application has
  a slow response time, you may go too fast with the combination 
  **Ctrl+Insert**, **Crl+Alt+Insert** for the application.
* **Keyboard Emulation (Ctrl+Insert)**. In this mode, ApSIC Xbench sends the 
  **Ctrl+Insert** keystroke to the editing application and then performs the
  search. This way the user needs not to type **Ctrl+Insert** manually prior to
  the search. Some applications may not support this input method.
* **Keyboard Emulation (Ctrl+C)**. In this mode, ApSIC Xbench sends the
  **Ctrl+C** keystroke to the editing application and then performs the
  search. This way the user needs not to type **Ctrl+C** manually prior to the
  search. Some applications may not support this input method.

The options available as a transfer method for **Output** are:

* **Paste Message**. When you press **Enter** to select a translation, ApSIC
  Xbench sends a PASTE message to the application to paste the translation.
  A limited number of applications support this technique, but it has the
  advantage of avoiding the need for pasting manually the text into the
  clipboard (normally with **Shift+Insert**).
* **Manual Paste**. In this mode, ApSIC Xbench copies the target text of the
  selected entry into the clipboard if you press **Enter** to select a
  translation. The user is expected to press **Shift+Insert** (or the
  corresponding key combination for pasting text in the application) to complete
  the copy and paste operation. This is the default and recommended mode for
  consistency reasons across applications.
* **Keyboard Emulation**. In this mode, ApSIC Xbench sends the target text as
  keystrokes to the editing application when you select an entry in the search
  results and press **Enter**.
* **Keyboard Emulation (Ctrl+V)**. In this mode, ApSIC Xbench sends the target
  text by simulating the **Ctrl+V** keystroke to the editing application when
  you select an entry in the search results and press **Enter**.
