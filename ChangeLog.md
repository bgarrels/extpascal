### 0.9.8, Ext JS 3.2.1 support, 03-may-2010 ###

  * New ExtJS 3.2.1, 3.2.0, 3.1.1 and 3.1.0 support
  * New ExtP Toolkit
  * New Fusion Charts support
  * New pre-built wrapper units for ExtJS, ExtToPascal is not necessary
  * New methods AjaxExtFunction and AjaxForms
  * New brMobileSafari browser type
  * New ExtPascalSamples refactored
  * New DebugExtJS define
  * New WebServer property
  * New StyleExtObject property in ExtComponent
  * New JSDateToDateTime function
  * New LineToPixels method
  * New TExtThread.SetCSS method
  * Updated Cachefly support
  * Changed Codepress is now directly below httdocs
  * Fixes on 64K limit, it is over
  * Fixes for MS-IIS (DataStore.Load and FileUpload)
  * Fixes for Embedded WebServer (Ajax calls, FileUpload and Garbage Collector)
  * Fixes for D2009/2010
  * Fixes in ErrorMessages
  * Fixes on FPC compatibility
  * Fixes in CGIGateway, was removing spaces in the input
  * Fixes in BeautifyJS
  * Fixes in StrToJS
  * Fixes in ExtToPascal
  * Many other fixes

### 0.9.7, Draw2D initial support, 07-out-2009 ###

  * New Delphi 2010 support
  * New Draw2D support
  * New ExtJS 2.3.0 support
  * New Windows 2003 server support
  * New Upload file feature
  * New Download file feature
  * New TExtObject.JSString method
  * New TExtObject.AjaxSelection method
  * New TExtObject.MethodURI method
  * New TExtThread.Charset property
  * New ExtFixes for ExtChart support
  * Updated ExtP Toolkit
  * Enhanced DebugJS define for Firefox
  * Fixes on Ajax multiple parameters
  * Fixes on Self-Translation
  * Fixes for Embedded WebServer
  * Fixes for Windows Service mode with FPC
  * More and enhanced error messages
  * Other minor fixes
  * ExtGlobal.pas unit was removed

### 0.9.6, Ext JS 3.0.0 support, 13-jul-2009 ###

  * New Ext JS 3.0.0 support
  * New specific ExtPascalSamples3.dpr file
  * New IsExt3 boolean constant

### 0.9.5, Ext JS 2.2.1 support, 11-jul-2009 ###

  * Ext JS 2.2.1 support
  * Pascal enumerated types support, see ExtFixes.txt for more informations
  * PowerPC and Big-endian architectures support by Phil
  * CacheFly option
  * New helper functions SetMargins and SetPaddings
  * Ext.ux.form.LovCombo support
  * Ext.ux.grid.RecordForm support
  * New SetIconCls method
  * New properties: ImagePath, ExtBuild and Browser
  * Improved TRegexp recognition
  * Blocksocket fixes
  * D2009 support
  * New USESPUBLISHED symbol define
  * Fixes for IIS
  * Configuration and reconfigurantion process based on .INI file by Bee
  * BeautifyJS/CSS functions for JavaScript debugging by Bee
  * Embedded WebServer compiling fixed
  * Embedded WebServer support for Linux (experimental) by Patrício
  * New Ajax overloads
  * New MethodURI
  * Fixed [Issue 8](https://code.google.com/p/extpascal/issues/detail?id=8) "weird behavior of tab demo"
  * Fixed [Issue 14](https://code.google.com/p/extpascal/issues/detail?id=14) "Ajax param can't be filled by many values which come from single control object"
  * New parser for Ext JS 3

### 0.9.4, CodePress, 28-nov-2008 ###

  * New CodePress widget with Object Pascal syntax highlighting

### 0.9.3, Bug fix release, 21-nov-2008 ###

  * Fixed double free.

### 0.9.2, Beta 5 release, 13-nov-2008 ###

  * CHM and HTML help using Doc-O-Matic.
  * Embedded WebServer option for Windows using Indy 10 by Vagner.
  * Delphi Style event handlers by Vagner.
  * Services support for Windows Vista by Patricio.
  * Conversion from ISO-8859-1 to UTF8 upon Windows.
  * On Linux sources should be UTF8.
  * Fix for Response issue pointed by Rovi.
  * Fixes for CGIGateway (loading forever issue) and BlockSocket on Linux/MacOS by Bee.
  * New TApplication.Icon property.
  * New TExtObject.JSExpression method.
  * New TExtObject.Delete method.
  * Updated TExtObject.Free method.
  * New TFCGIThread.QueryAs methods.
  * New TFCGIThread.BeforeThreadDestruction method.
  * Removed some Ajax restrictions.
  * Chars "