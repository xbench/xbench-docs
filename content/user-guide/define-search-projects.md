---
title: "Defining Search Projects"
date: 2017-08-06T21:44:29+02:00
weight: 5
draft: false
---
The first step to use the powerful search features of ApSIC Xbench is to
define the reference material for your project. To do so, add the relevant
files and directories into your project by choosing **Project**->**Properties**
or pressing **F2**. The **Project Properties** dialog appears as illustrated
below.

![Project Properties: Files] (/user-guide/dialog-project-properties-files.tab.jpg)

Click the **Add** button to add files to your project.

Select the type of file that you will be adding to the ApSIC Xbench
project:

![Project Properties: Add Files] (/user-guide/dialog-add-files-to-project.png)

ApSIC Xbench supports the following file types:

* **Tab-delimited Text File (*.txt, *.tsv, *.utx)**. A file where every line
  consists of a number of fields delimited with the tab character. The
  first and the second fields of an entry are assumed to be the source
  and the target texts respectively. The additional fields are assumed to
  be descriptive and there can be any number of them. Tab-delimited
  UTX files are also supported with this format.
* **XLIFF File (*.xlf, *.xlif, *.xliff, *xlz, *.mxliff, *.mqxlz)**. A file compliant
  with the XLIFF specification.
* **TMX Memory (*.tmx)**. A file compliant with the TMX specification.
  Most translation tools are capable of generating TMX memories of
  varying compliance levels.
* **TBX/MARTIF Glossary (*.xml, *.tbx, *.mtf)**. A file compliant with the
  TBX or the MARTIF specification.
* **TIPP File (*.tipp)**. A file compliant with the TIPP specification.
* **Trados Exported Memory (*.txt)**. A Trados memory in .txt format as
  exported from Trados.
* **Trados Exported MultiTerm 5 Glossary (*.txt)**. A MultiTerm glossary
  exported into a .txt file where each entry is delimited with a line
  containing two asterisks (**).
* **Trados MultiTerm Glossary (*.xml, *.sdltb, *.mdb)**. A MultiTerm
  glossary exported in XML, SDLTB, or MDB format.
* **Trados TagEditor File (*.ttx)**. A Trados .ttx file.
* **Trados Word File (*.doc, *.rtf)**. A Trados .doc or .rtf file with bilingual
  segments.
* **Trados Studio File (*.sdlxliff, *.sdlproj)**. A Trados Studio .sdlxliff or
  .sdlproj file. When a Trados Studio project file (*.sdlproj) is
  specified, ApSIC Xbench opens the .sdlxilff files pointed by the
  project file for the first language pair found in the project file.
* **Trados Studio Memory (*.sdltm)**. A Trados Studio Translation Memory
  in .sdltm format.
* **memoQ File**. A memoQ XLIFF file with .mqxlz or .mqxliff extension,
  a memoQ hand-off file (*.mqout), a memoQ hand-back file
  (*.mqback), or a memoQ termbase file (*.csv).
* **SDLX File (*.itd)**. An SDLX .itd file. Note: This option requires that
  SDLX is installed on the machine.
* **SDLX Memory (*.mdb)**. An individual SDLX .mdb file containing a
  translation memory.
* **STAR Transit 2.6/XV/NXT Directory**. A directory that contains Transit
  language pairs.
* **PO File**. A bilingual .po file, normally generated with gettext.
* **IBM TM/OpenTM2 Dictionary (*.sgm)**. An IBM TranslationManager or
  OpenTM2 dictionary in SGML format. This file has the .sgm
  extension.
* **IBM TM/OpenTM2 Folder**. An IBM TranslationManager or OpenTM2
  folder installed on your system. This format can be defined as
  ongoing translation to clearly distinguish the new and the old
  translation and also to display the untranslated segments to make
  better decisions for new terminology.
* **IBM TM/OpenTM2 Exported Folder (*.fxp)**. An IBM
  TranslationManager or OpenTM2 folder exported in .fxp format.
* **IBM TM/OpenTM2 Exported Memory (*.exp)**. An IBM
  TranslationManager or OpenTM2 memory exported in .exp format.
* **Wordfast Memory (*.txt)**. A Wordfast memory, with the .txt extension.
* **Wordfast Glossary (*.txt)**. A Wordfast glossary, with the .txt
  extension.
* **Wordfast Pro TXML (*.txml, *.txlf)**. A Wordfast Pro bilingual file, with
  the *.txml or *.txlf extension.
* **Déjà Vu X/Idiom File (*.wsprj, *.dvprj, *.dvsat, *.dvpng)**. A Déjà Vu or
  Idiom database of project translation files, with extensions .dvprj,
  .dvsat, .dvpng, or .wsprj.
* **Déjà Vu X/Idiom Memory (*.wstm, *.dvmdb)**. A Déjà Vu or Idiom
  translation memory, with extensions .dvmdb or .wstm.
* **Déjà Vu X/Idiom Termbase (*.wstd, *.dvtdb)**. A Déjà Vu or Idiom
  termbase, with extensions .dvtdb or .wstd.
* **Logoport RTF (*.rtf)**. An individual Logoport .rtf file or a directory
  containing Logoport .rtf files.
* **Microsoft Glossary (*.csv)**. A Microsoft software glossary, made
  publicly available by Microsoft via MSDN and containing all the
  strings of a Microsoft software application.
* **Mac OS X Glossary (*.ad, *.lg)**. A file in Apple's XML format for
  software, freely downloadable from the Internet.
* **Qt Linguist Files (*.ts)**. A file in the translation format for the Qt
  framework.
* **Passolo Glossaries (*.glo)**. A Passolo glossary, with extension *.glo.
* **Transifex Project**. An online Transifex project.
* **Matecat Job**. An online Matecat job, both from www.matecat.com or
  self-hosted.
* **Remote Xbench Server**. A reference to a Remote ApSIC Xbench
  Server.

After the file type is selected, the **File List** tab appears where you can add
multiple entries of the selected type. Depending on the file type chosen,
click on the **Add File** or **Add Folder** button to add entries to the list.

From this point, the sequence of displays may differ depending on the
selected file type. Follow the instructions corresponding to the specific
file type for the exact steps.

<table>
<thead>
<tr>
<td width="50%">If you are adding a ...</td>
<td>Follow these steps:</td>
</tr>
</thead>
<tbody>
<tr>
<td>
Tab-delimited text file, XLIFF
file, TMX memory, TIPP file,
Trados Exported memory,
Trados Tag Editor file, Trados
Word file, Trados Studio file,
Trados Studio memory, memoQ
file, SDLX file, SDLX Memory,
PO file, IBM TM/OpenTM2
Dictionary, IBM TM/OpenTM2
Exported folder, IBM
TM/OpenTM2 Exported
memory, Wordfast memory,
Wordfast glossary, Wordfast Pro
TXML/TXLF, Microsoft
glossary, Mac OS X glossary,
Déjà Vu X/Idiom file, Déjà
Vu/Idiom memory, Déjà
Vu/Idiom termbase, Logoport
RTF file, Qt Linguist file,
Passolo glossary
</td>
<td>
<ol>
<li>
The <strong>File List</strong> tab appears. Click
<strong>Add File</strong> or <strong>Add Folder</strong> to add files
or folders of files from the selected
type. Folders will appear on
<strong>boldface</strong> in the list.
</li>
<li>
Click <strong>Next</strong> on the <strong>File List</strong> tab to
get to the <strong>Properties</strong> tab.
</li>
<li>
Assign the properties relevant and
click <strong>OK</strong> to finish. <strong>Note</strong>: If you
added any folder in step 1, click
<strong>Next</strong> to get to an additional panel
where you indicate if you wish to
include files of the same type in
child folders with the <strong>Recurse
Directories</strong> check box.
</li>
</ol>	
</td>
</tr>
<tr>
<td>
STAR Transit directory	
</td>
<td>
<ol>
<li>
After the <strong>File List</strong> tab appears,
opening automatically the <strong>Select
Directory</strong> dialog. Navigate to the
directory that contains the files you
wish to load into the ApSIC Xbench
project.
</li>
<li>
Click <strong>Next</strong> on the <strong>File List</strong> tab to
get to the <strong>Properties</strong> tab.
</li>
<li>
Assign the properties relevant to the
directory and click <strong>Next</strong> to get to
the <strong>Directory Settings</strong> tab.
</li>
<li>
In the <strong>Directory Settings</strong> tab you
can check the <strong>Recurse Directories</strong>
check box to have ApSIC Xbench
search also subdirectories for files.
</li>
</ol>
</td>
<tr>
<td>
Trados exported MultiTerm 5
glossary, Trados MultiTerm, or
TBX/MARTIF
</td>
<td>
<ol>
<li>
The <strong>File List</strong> tab appears. Click
Add File or Add Folder to add files
or folders of files from the selected
type. Select all the files of the
current type in this window. If you
need to pick up more files from
another directory, when you are
again in the <strong>File List</strong> tab, click the
<strong>Add File</strong> button to open again the
<strong>Add Glossary</strong> window.
</li>
<li>
Click <strong>Next</strong> on the <strong>File List</strong> tab to
get to the <strong>Properties</strong> tab.
</li>
<li>
Assign the properties relevant to the
file and click <strong>Next</strong> to get to the tab 
corresponding to the file format.
</li>
<li>
Select the source and the target
language from the list of languages
offered and click <strong>OK</strong> to finish.
</li>
</ol>
</td>
</tr>
<tr>
<td>
Transifex Project
</td>
<td>
<ol>
<li>
Assign the properties relevant and
click <strong>Next</strong> to get to the Transifex
tab.
</li>
<li>
Type a Transifex project slug or
paste the URL of a Transifex project
and then click <strong>Connect</strong>.
</li>
<li>
Choose a language from the list of
languages of the project and click
<strong>OK</strong>.
</li>
</ol>
</td>
</tr>
<tr>
<td>
Matecat Job 
</td>
<td>
<ol>
<li>
Assign the properties relevant and
click <strong>Next</strong> to get to the Matecat tab.
</li>
<li>
Paste in Matecat URL the URL
that appears in the browser when
you open the Matecat job in the
Matecat online editor.
</li>
</ol>
</td>
</tr>
<tr>
<td>
Remote Xbench Server
</td>
<td>
<ol>
<li>
Assign the properties relevant and
click <strong>Next</strong> to get to the <strong>Remote
Xbench Server</strong> tab.
</li>
<li>
Assign a name for the connection
and specify the URL of the Xbench
Server.
</li>
</ol>
</td>
</tr>
</tbody>
</table>

Once you are returned to the **Project Properties** window, you can add
other files or directories following the steps described above.

When you are done, click **OK** on the **Project Properties** window to
return to ApSIC Xbench main window. ApSIC Xbench will load the
glossaries into the work environment.

At this time, on the **Project** menu, click **Save as** to save the newly
created project in your directory with other ApSIC Xbench projects. It is
recommended to save project files with meaningful names for later reuse. 

{{% notice note %}}
The next time ApSIC Xbench is started, it will automatically load
the previous project unless this feature is disabled in **Tools**->**Settings**-
>**Miscellaneous**. 
{{% /notice %}}
