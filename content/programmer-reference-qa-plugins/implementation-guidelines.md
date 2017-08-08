---
title: "Implementation Guidelines"
date: 2017-08-08T23:10:53+02:00
weight: 1
draft: false
---

An ApSIC Xbench QA plug-in is a standard Windows DLL that implements a
predefined set of function calls designed to extend the QA built-in
capabilities.

The QA plug-in can be implemented in any programming language that
supports standard Windows DLL development.

All function calls described in this reference guide must be implemented
and exported. If not all functions are exported, ApSIC Xbench will either
not recognize the QA plug-in or crash.

The name of all ApSIC Xbench QA plug-in DLLs must begin with *XbenchQA*.
