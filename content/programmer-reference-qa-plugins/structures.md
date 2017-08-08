---
title: "Structures"
date: 2017-08-08T23:47:08+02:00
weight: 5
draft: false
---

## TQAPluginDeclareInfo
Contains information and properties regarding the QA plug-in.

### Syntax
typedef struct _TQAPluginDeclareInfo {
		WORD StructVersion;
		WCHAR Description[256];
		WCHAR Keywords[256];
		WORD Version;
		LANGID SourceLang;
		LANGID TargetLang;
		BOOL AllowsUnicode;
		BOOL AllowsAnsi;
	} TQAPluginDeclareInfo, *PQAPluginDeclareInfo;

### Properties
* **StructVersion**: Version of the TQAPluginDeclareInfo structure. Leave as 0.
* **Description**: Short description of the QA plug-in functionality.
* **Keywords**: Comma separated list of keywords which are related to this
  QA plug-in (not used currently). 
* **Version**: Version for this QA plug-in.
* **SourceLang**: Language ID for the source language accepted by the QA
  plug-in. Leave as 0 if any (not checked currently).
* **TargetLang**: Language ID for the target language accepted by the QA
  plug-in. Leave as 0 if any (not checked currently).
* **AllowsUnicode**: Indicates if the QA plug-in is able to handle Unicode
  strings natively so they will be used if available.
* **AllowsAnsi**: Indicates if the QA plug-in accepts ANSI strings. This value
  is currently ignored and assumed to be TRUE.

### Comments
When ApSIC Xbench feeds segments to the QA plug-in, their source and target text
may be encoded either in ANSI or Unicode. The *AllowsAnsi* and *AllowsUnicode*
fields tell ApSIC Xbench the encodings the QA plug-in is able to handle in case
there is more than one possibility.

Please note that saying that a QA plug-in ALLOWS a specific encoding does not
mean that it WILL get the text using that encoding. For instance, setting
*AllowsUnicode* to TRUE just tells ApSIC Xbench that the encoding is accepted,
but it is not being forced to use it. Actually the engine in ApSIC Xbench 2.9
will only send ANSI strings to the QA plug-in.

---

## TQAPluginResult
Contains information about an error detected by the QA plug-in during the QA.

### Syntax
	typedef struct _TQAPluginResult {
		PWSTR Text;
		DWORD SegId;
		PQAPluginResultOptions Options;
	} TQAPluginResult, *PQAPluginResult;

### Properties
* **Text**: Short description of the error detected.
* **SegId**: ID for the segment having this error.
* **Options**: Pointer to a TQAPluginResultOptions structure containing extra
  information about the result. Can be NULL.

### Comments
The *Options* element is ignored if this structure is returned from
ProcessSegment. It is only checked when returning from
GetFirstResult/GetNextResult.

The segment identifier (*SegId*) is provided by ApSIC Xbench through
ProcessSegment function calls.

---

## TQAPluginResultOptions
Contains extra information about the result for a QA error.

### Syntax
	typedef struct _TQAPluginResultOptions {
		WORD StructVersion;
		BOOL Sorted;
		BOOL Groupable;
	} TQAPluginResultOptions, *PQAPluginResultOptions;

### Properties
* **StructVersion**: Version number of the TQAPluginResultOptions struct. Leave
  as 0.
* **Sorted**: If FALSE, ApSIC Xbench will sort the results before showing them.
  If TRUE it will assume they were already sorted by the QA plug-in and their
  order will not be changed.
* **Groupable**: If FALSE, ApSIC Xbench will not try to pack together repeated
  errors coming from the QA plug-in, thus showing they all as independent
  errors.

---

## TQASegmentInfo

### Syntax

	typedef struct _TQASegmentInfo {
		PSTR Source;
		PSTR Target;
		PWSTR WSource;
		PWSTR WTarget;
		DWORD SegId;
	} TQASegmentInfo, *PQASegmentInfo;

### Properties
* **Source**: String with the ANSI version of the source for a segment.
* **Target**: String with the ANSI version of the target for a segment.
* **WSource**: String with the Unicode version of the source for a segment.
* **WTarget**: String with the Unicode version of the target for a segment.
* **SegId**: Identifier for this segment to be used by
  GetFirstResult/GetNextResult.

### Comments
This structure will never have *both* the ANSI and Unicode versions of a string,
only one of the Source/Target pairs will be present (be it the ANSI or the
Unicode one) and the other will be NULL. It is up to the QA plug- in to check
if the string is valid or NULL. Please note that ApSIC Xbench 2.9 works
internally in ANSI mode even when the original files are Unicode, but this
changed in ApSIC Xbench 3.0, so do not assume you will always get ANSI strings
here.
