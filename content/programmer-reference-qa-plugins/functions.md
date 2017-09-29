---
title: "Functions"
date: 2017-08-08T23:17:20+02:00
weight: 4
draft: false
---

## GetDeclareInfo

Retrieves information about the QA plug-in.

### Syntax
	PQAPluginDeclareInfo GetDeclareInfo()

### Parameters

None

### Result
Returns a pointer to a TQAPluginDeclareInfo object containing information about
the QA plug-in.

---

## GetDeclareName
Retrieves the name for this QA plug-in to be shown in the “Check Group” box in
QA tab.

### Syntax
	PWSTR GetDeclareName()

### Parameters
None

### Result
Returns a pointer to a string with the name of the QA plug-in.

---

## GetFirstFunction
Retrieves the handle of the first function in the QA plug-in.

### Syntax
	DWORD GetFirstFunction()

### Parameters
None

### Result
Returns a handle for the first QA plug-in function. This handle will be later
used to refer to this specific function during the QA pass.

---

## GetFirstResult
Notifies the function QA plug-in that no more segments will be processed so it
can perform any postprocess if needed, and returns the first of the errors that
have to be notified in the QA tab.

### Syntax
	PQAPluginResult GetFirstResult(DWORD aHandle)

### Parameters
*aHandle*: Function handle as obtained with GetFirstFunction and GetNextFunction.

### Result
Returns a pointer to a TQAPluginResult structure if an error has to be notified
or NULL if there are not process errors left.

### Comments
This function involves two actions:

* It tells the QA plug-in that ProcessSegment will not be called again meaning
  that all segments have been checked, and
* It returns the first of the errors found or NULL if none is found or if the
  errors have been notified in ProcessSegment.

---

## GetFunctionName
Retrieves the name of a specific function of the QA plug-in.

### Syntax
	PSTR GetFunctionName(DWORD aHandle)

### Parameters
*aHandle*: Function handle as obtained with GetFirstFunction and GetNextFunction.

### Result
Returns a string with the function name assigned to aHandle. ApSIC Xbench will
display this string in the “List of Checks” box in the QA tab.

---

## GetNextFunction
Retrieves the handle of the next function contained in the QA plug-in.

### Syntax
	DWORD GetNextFunction()

### Parameters
None

### Result
Returns a handle for the next QA plug-in function or zero if no more functions
are present.

### Comments
After calling GetFirstFunction to obtain the handle for the first function,
ApSIC Xbench will keep calling GetNextFunction until the result value is 0.

---

## GetNextResult
Retrieves the next error that must be reported on the QA tab.

### Syntax
	PQAPluginResult GetNextResult(DWORD aHandle)

### Parameters
*aHandle*: Function handle as obtained with GetFirstFunction and
GetNextFunction.

### Result
Returns a pointer to a TQAPluginResult structure if an error has to be notified
or NULL if there are no errors left.

### Comments
If the call to GetFirstResult does not return NULL, ApSIC Xbench will keep
calling GetNextResult until NULL is returned.

---

## ProcessBegin
Notifies the function that a new QA process is being launched and it should
initialize.

### Syntax
	void ProcessBegin(DWORD aHandle, PQAFunctionParams aParams)

### Parameters
*aHandle*: Function handle as obtained with GetFirstFunction and
GetNextFunction.

*aParams*: (currently ignored) Optional parameters to be used by the function.
Should be NULL.

### Result
None

### Comments
ApSIC Xbench will call this function for every function QA plug-in that will be
checked, but not for those that the user has manually disabled in the QA tab, so
it should NOT be assumed that ProcessBegin has been called for other functions
in the same QA plug-in.

---

## ProcessEnd
Notifies the function that the QA process has finished and all allocated
resources should be freed.

### Syntax
	void ProcessEnd(DWORD aHandle)

### Parameters
*aHandle*: Function handle as obtained with GetFirstFunction and GetNextFunction.

### Result
None

---

## ProcessSegment

### Syntax
Provides the function QA plug-in with a segment to be checked or stored in
working structures.

### Syntax
	PQAPluginResult ProcessSegment(DWORD aHandle, TQASegmentInfo aSegInfo)

### Parameters
*aHandle*: Function handle as obtained with GetFirstFunction and
GetNextFunction.

*aSegInfo*: Structure with information about the segment to be checked.

### Result
Returns a pointer to a TQAPluginResult structure if an error has been found in
this segment or NULL if nothing has to be notified.

### Comments
There are two ways of notifying ApSIC Xbench about errors in segments: you can
either return the value in ProcessSegment or use GetFirstResult and
GetNextResult to return the list of errors at the end of the QA check. If you
want to use the later method you can simply return NULL as the result for
ProcessSegment.

The *Options* field of TQAPluginResult structure will be ignored and can be NULL.

---

## SetConfigFile
Sets a filename for the QA plug-in to be used as a configuration file.

### Syntax
	void SetConfigFile(PSTR aFile)

### Parameters
*aFile*: Filename to be used by the QA plug-in as a configuration file.

### Result

None

### Comments
This function allows ApSIC Xbench to provide a filename that the QA plug-in may use for storing and retrieving some configuration values, so the QA plug-in does not need to use a hardcoded filename or guess an appropriate file path.

Currently ApSIC Xbench does not call this function but it must be exported by the QA plug-in anyway.