---
title: "Ongoing Translations"
date: 2017-08-06T23:08:33+02:00
weight: 11
draft: true
---

ApSIC Xbench allows you to define any file as ongoing translation in the 
**Project Properties** window.

By default, when they are added to an ApSIC Xbench project, the 
following file types are defined as ongoing translation:

*	XLIFF
*	Trados TagEditor
*	Trados Word
*	Trados Studio
*	memoQ
*	SDLX. 

{{% notice note %}}
This option requires that SDLX is installed on the machine. 
{{% /notice  %}}

*	STAR Transit 2.6/XV/NXT
*	PO
*	IBM TM Folders
*	OpenTM2 Folders
*	Wordfast TXML/TXLF
*	Déjà Vu/Idiom
*	Logoport RTF
*	Qt Linguist
*	Transifex Project
*	Matecat Job


When a file or directory is defined as ongoing translation, the following 
two features are enabled: 

*	**Translations identified** as new (not 100% matches) **are flagged with a 
	small red dot** (<img class="inline" style="vertical-align: middle" src ="/user-guide/bullet-ongoing-translation.gif" />).
	Translations that are **100% matches** in the ongoing 
	translation **are flagged with a hollow red dot** (<img class="inline" style="vertical-align: middle" src ="/user-guide/bullet-hollow.gif" />). 
	These symbols allow you to tell if the term was introduced by you or
	was already in the existing memory. This helps you to make
	terminology-related decisions, for example if you wish to recap on the
	translation for a term and you want to make sure that the term was not
	already used in the official translation memory used to pretranslate
	your project.
*	**Untranslated segments** appear *after* the translated segments.
	This is  especially useful to decide which terminology to use for a new term 
	by seeing how it will appear in all the future instances in your own 
	translation. This way you can make sure that the term chosen will be 
	a good match for all instances in your current translation.

{{% notice note %}}
Glossaries defined as ongoing translation (normally only one per 
project, but can be more) appear in **bold face** in the 
**Project Properties** window.
{{% /notice  %}}

In addition, files defined as ongoing translation can be parsed by ApSIC 
Xbench powerful QA functions or exported using **Tools->Export Ongoing 
Translation to MS Word** so that you can use Microsoft Word 
Grammar Checker or Microsoft Word Spell-Checker (for languages such 
as Thai, Japanese or Chinese that are not supported by Xbench
spell-checking dictionaries).
