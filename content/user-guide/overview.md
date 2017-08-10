---
title: "Overview"
date: 2017-08-06T19:19:42+02:00
weight: 1
draft: false
---
ApSIC Xbench allows you to organize and search your bilingual
reference terminology. ApSIC Xbench also features several Quality
Assurance (QA) checks to boost the quality of your translations.

## Search features

ApSIC Xbench allows you to perform powerful searches on the following
bilingual formats:

* Tab-delimited text files (*.txt, *.tsv, *.utx)
* XLIFF files, including memoQ XLIFF, Memsource XLIFF, Idiom
  XLIFF, Translation Workspace XLIFF, XTM XLIFF, and other
  flavors of XLIFF (*.xlf, *.xlif, *.xliff, *.xlz, *.mqxlz, *.mqxliff, *.mxliff)
* TMX memories (*.tmx)
* TBX/MARTIF glossaries (*.xml, *.tbx, *.mtf) TIPP files (*.tipp)
* Trados exported memories (*.txt)
* Trados exported MultiTerm 5 glossaries (*.txt)
* Trados MultiTerm glossaries (*.xml, *.sdltb, *.mdb)
* Trados TagEditor files (*.ttx)
* Trados Word uncleaned files (*.doc, *.rtf)
* Trados Studio files (*.sdlxliff, *.sdlproj)
* Trados Studio memories (*.sdltm)
* memoQ files, including hand-off and hand-back packages (*.mqxlz,
*.mqxliff, *.mqout, *.mqback)
* memoQ termbases in CSV format
* SDLX ITD files (*.itd). Note: This option requires that SDLX is
  installed on the machine.
* SDLX memories (*.mdb)
* STAR Transit 2.6/XV/NXT directories
* PO files (*.po)
* IBM TranslationManager exported dictionaries (*.sgm)
* IBM TranslationManager installed and exported folders (*.fxp)
* IBM TranslationManager exported memories (*.exp)
* OpenTM2 exported dictionaries (*.sgm)
* OpenTM2 installed and exported folders (*.fxp)
* OpenTM2 exported memories (*.exp)
* Wordfast memories (*.txt)
* Wordfast glossaries (*.txt)
* Wordfast Pro files (*.txml, *.txlf)
* Déjà Vu X/Idiom files, including Satellite and Pack&Go (*.wsprj,
  *.dvprj, *.dvsat, *.dvpng)
* Déjà Vu X/Idiom memories (*.wstm, *.dvmdb)
* Déjà Vu X/Idiom termbases (*.wstd, *.dvtdb)
* Logoport RTF files (*.rtf)
* Microsoft software glossaries (*.csv)
* Mac OS X glossaries (*.ad, *.lg)
* Qt Linguist files (*.ts)
* Passolo glossaries (*.glo)
* Transifex projects
* Matecat jobs
* Remote Xbench Server glossaries

Reference terminology can be organized in several levels of priority to
show clearly to translators the particular translation project preferences.

ApSIC Xbench runs on the background and can be invoked to search for
the currently marked text using a system-wide key combination (by
default, **Ctrl+Alt+Insert**). This effectively provides instant terminology
searches from within any Windows application using a common key
combination.

ApSIC Xbench features a very powerful search engine. Not only can you
search by source or target text but also perform negative or conditional
searches with the PowerSearch function (**Ctrl+P**) or perform complex
searches using either regular expressions or Microsoft Word wildcards.

{{% notice note %}}
After it is launched, ApSIC Xbench stays on the background until it
is explicitly closed with the **Shut Down Xbench** command that is
available either by right-clicking the icon on the Windows task bar or
using the **Project** pull-down menu. 
{{% /notice %}}


## QA features

By defining your current translation files as ongoing translation in your
ApSIC Xbench project, you can run the following QA checks:

* Find untranslated segments
* Find segments with the same source text and different target text
* Find segments with the same target text and different source text
* Find segments whose target text matches the source text (potentially
untranslated text)
* Find tag mismatches
* Find number mismatches
* Find URL mismatches
* Find alphanumeric mismatches
* Find unpaired symbols (i.e. unpaired parentheses, square brackets, or
braces)
* Find unpaired quotes
* Find double blanks
* Find repeated words
* Find UPPERCASE words in the source text without a match in the
target text and UPPERCASE words in the target text without a match
in the source text
* Find CamelCase words in the source text without a match in the
target text and CamelCase words in the target text without a match in
the source text
* Find terminology mismatches against a list of key terms
* Execute user-defined checklists.
* Spell-check translations (requires downloading the language
dictionary with **Tools**->**Spell-Checking Dictionaries**)

Checklists are user-defined searches that you can run in batch against
your ongoing translation. For example, with checklists you can search for
banned words or typical translator pitfalls.
