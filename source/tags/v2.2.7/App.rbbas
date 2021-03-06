#tag Class
Class App
Inherits Application
	#tag Event
		Sub Activate()
		  DebugWriter.Write "Begin App.Activate"
		  
		  If Globals.Status_Presentation Then
		    #if Not TargetMacOS
		      App.MinimizeWindow(MainWindow)
		    #endif
		    
		    If PresentWindow.HelperActive Then
		      #if Not TargetWin32
		        App.RestoreWindow(PresentHelperWindow)
		        App.SetForeground(PresentHelperWindow)
		        PresentHelperWindow.SetFocus
		      #else
		        If PresentHelperWindow.IsCollapsed Then
		          App.ShowWin(PresentHelperWindow,SW_RESTORE)
		        Else
		          App.ShowWin(PresentHelperWindow,SW_SHOW)
		        End If
		      #endif
		    Else
		      If Not SetML.IsExternal(PresentWindow.XCurrentSlide) Then
		        #if Not TargetWin32
		          App.RestoreWindow(PresentWindow)
		          App.SetForeground(PresentWindow)
		          PresentWindow.SetFocus
		        #else
		          If PresentWindow.IsCollapsed Then
		            App.ShowWin(PresentWindow,SW_RESTORE)
		          Else
		            App.ShowWin(PresentWindow,SW_SHOW)
		          End If
		        #endif
		      End If
		    End If
		  End If
		  
		  DebugWriter.Write "End App.Activate"
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  If CheckDocumentFolders(SETTINGS_FOLDER) <> NO_FOLDER Then
		    If MyPrintSettings <> Nil Then
		      If Not SmartML.XDocToFile(MyPrintSettings, DocsFolder.Child(STR_SETTINGS).Child("PrintSettings")) Then SmartML.DisplayError
		    End If
		    If MyMainSettings <> Nil Then
		      If Not SmartML.XDocToFile(MyMainSettings, DocsFolder.Child(STR_SETTINGS).Child("MainSettings")) Then SmartML.DisplayError
		    End If
		    If MyPresentSettings <> Nil Then
		      If Not SmartML.XDocToFile(MyPresentSettings, DocsFolder.Child(STR_SETTINGS).Child("PresentSettings")) Then SmartML.DisplayError
		    End If
		  Else
		    MsgBox T.Translate("errors/create_settings_folder", DocsFolder.Child(STR_SETTINGS).AbsolutePath)
		  End If
		  
		  Globals.Status_Presentation = False
		  If MainPreferences <> Nil Then Call MainPreferences.Save
		  DebugWriter.Done
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  Dim OK As Boolean
		  'Profiler.EnableProfiler
		  Profiler.BeginProfilerEntry "App::Open"
		  
		  '++JRC Set ReleaseCandidate Level
		  'IMPORTANT this value will need to be set to 0
		  'for a FINAL relase
		  ReleaseCandidate = 0
		  '--
		  
		  m_statusNotifiers = New Dictionary
		  
		  DebugWriter = New DebugOutput
		  
		  If AppFolder = Nil Then
		    Call MsgBox("AppFolder: """ + AppFolder.Path + """ is Nil", 16, "Find AppFolder")
		  End If
		  
		  If Not AppFolder.Child("OpenSong Settings").Exists Then
		    Call MsgBox("Folder """ + AppFolder.Child("OpenSong Settings").Path + """ does not exist", 16, "Find OpenSong Settings")
		  End If
		  
		  If Not AppFolder.Child("OpenSong Settings").Child("Globals").Exists Then
		    Call MsgBox("FolderItem """ + AppFolder.Child("OpenSong Settings").Child("Globals").Path + """ does not exist", 16, "Find Globals")
		  End If
		  
		  'Can't translate this until we've loaded the translator
		  'Splash.SetStatus "Loading global settings..."
		  MyGlobals = SmartML.XDocFromFile(AppFolder.Child("OpenSong Settings").Child("Globals"))
		  If MyGlobals = Nil Then
		    MsgBox SmartML.ErrorString + ": " + _
		    AppFolder.Child("OpenSong Settings").AbsolutePath + _
		    " (" + Str(SmartML.ErrorCode) + ")"
		    Quit
		    Return
		  End If
		  
		  Dim parameters() As String = System.CommandLine.Split()
		  IsPortable = parameters.IndexOf("--portable")>-1 Or parameters.IndexOf("/portable")>-1
		  If Not IsPortable Then
		    IsPortable =  SmartML.GetValueB(MyGlobals.DocumentElement, "portable/@installation", True, False)
		  End If
		  
		  LoadPreferences
		  '++JRC Couldn't load Preferences, Log error and Bail
		  If MainPreferences = Nil Then
		    App.DebugWriter.Write("App.Open: Error Loading Preferences ", 1)
		    Quit
		  End If
		  DebugWriter.Level = MainPreferences.GetValueN(kLogLevel, 3, True)
		  If MainPreferences.GetValueB(kLogOutput + kLogConsole, True, True) Then
		    DebugWriter.SetOutput(Nil)
		  Else
		    DebugWriter.SetOutput(MainPreferences.GetValueFI(kLogOutput), _
		    MainPreferences.GetValueB(kLogOutput + kLogAppend, False, True))
		  End If
		  
		  OK = DebugWriter.Init
		  DebugWriter.Write "-------------------- Begin Run ----------------------"
		  Dim d As New Date
		  DebugWriter.Write d.SQLDateTime
		  d = Nil
		  
		  Splash.Show
		  
		  SmartML.Init
		  
		  
		  '++JRC Moved translation init to beginning so we can translate error & status Msgs
		  Dim temp As String
		  
		  'Can't translate this until we've loaded the translator
		  'Splash.SetStatus "Loading translation text..."
		  //++
		  // Updated March 2007: Try to prompt the user before giving up.
		  // Possibly avoids user having to manually update Globals or the preferences file.
		  //--
		  temp = MainPreferences.GetValue(Prefs.kLanguage, "") // Check the new location
		  if temp  = "" Then
		    temp = SmartML.GetValue(MyGlobals.DocumentElement, "language/@file") //Check the old location
		    If temp = "" Then // Prompt the user
		      temp = SelectLanguage
		      If temp = "" Then Quit // User cancelled
		    End If
		  End If
		  
		  VideolanPresetList = New Dictionary
		  
		  T = New Translator(AppFolder.Child("OpenSong Languages").Child(temp))
		  If Not T.IsLoaded Then
		    '++JRC
		    App.MouseCursor = Nil
		    temp = SelectLanguage // Prompt for new selection
		    If temp = "" Then Quit
		    T = New Translator(AppFolder.Child("OpenSong Languages").Child(temp))
		    If Not T.IsLoaded Then //Bail out...something's wrong
		      'SmartML.DisplayError
		      InputBox.Message "Language file '" + AppFolder.Child("OpenSong Languages").Child(temp).AbsolutePath +_
		      "' was not found.  OpenSong must exit."
		      Quit
		    End If
		  End If
		  'moved to globals
		  'SmartML.SetValue MyGlobals.DocumentElement, "language/@file", temp
		  MainPreferences.SetValue(Prefs.kLanguage, temp)
		  
		  TranslateMe True
		  '--
		  
		  '++JRC translated
		  Splash.SetStatus T.Translate("load_settings/checking_folders") + "..."
		  '--
		  
		  ' --- CREATE DOCUMENTS FOLDER ---
		  DocsFolder = GetDocsFolder
		  If DocsFolder = Nil Then
		    App.MouseCursor = Nil
		    '++JRC User canceled, show error msg and bail
		    MsgBox T.Translate("errors/no_docs_folder","...")
		    '--
		    Quit
		  End If
		  
		  //++
		  // Initialize Factory objects
		  // PvB: Added the option to have the Scripture in the documents folder instead of the AppFolder.
		  //--
		  If DocsFolder.Child("Scripture").Exists Then
		    ScriptureFolder = DocsFolder.Child("Scripture")
		  ElseIf DocsFolder.Child("OpenSong Scripture").Exists Then
		    ScriptureFolder = DocsFolder.Child("OpenSong Scripture")
		  Else
		    ScriptureFolder = AppFolder.Child("OpenSong Scripture")
		  End If
		  BibleFactory.Folder = ScriptureFolder
		  
		  ' Create whatever sub-folders are needed
		  '++JRC: Fix corner case where the sub-Folders exist but are empty (bug #1803741)
		  
		  '++JRC
		  If Not ScriptureFolder.Exists OR ScriptureFolder.Count = 0 Then
		    App.MouseCursor = Nil
		    MsgBox T.Translate("errors/no_scripture_folder", ScriptureFolder.AbsolutePath)
		    '++JRC Change behavior here to notify user but continue operation
		    'Quit
		  End If
		  '--
		  
		  //++EMP 11/27/05
		  '++JRC Moved default folder checks to function
		  If CheckDefaultFolders(DEFAULTS_FOLDER) <> FOLDER_EXISTS Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox T.Translate("errors/no_defaults_folder", AppFolder.Child(STR_OS_DEFAULTS).AbsolutePath)
		    '--
		    'Quit
		  End If
		  //--
		  Dim result As Integer
		  
		  '++JRC Moved document folder checks to function
		  result = CheckDocumentFolders(DOCUMENTS_FOLDER)
		  If result = FOLDER_EMPTY Then
		    'Documents folder is empty, ask the user if want to try to copy the Default Documents to the docs folder
		    '(as long as the defaults folder isn't empty of course ;)
		    App.MouseCursor = Nil
		    If InputBox.AskYN(App.T.Translate("questions/documents_folder_empty/@caption")) Then
		      If Not FileUtils.CopyPath(AppFolder.Child(STR_OS_DEFAULTS), DocsFolder) Then
		        '++JRC Translated
		        If DocsFolder <> Nil Then
		          MsgBox T.Translate("errors/no_docs_folder", DocsFolder.AbsolutePath)
		        Else
		          MsgBox T.Translate("errors/no_docs_folder", "")
		        End If
		        '--
		        'Quit
		      End If
		    End If
		  ElseIf result = NO_FOLDER Then
		    If DocsFolder <> Nil Then
		      MsgBox T.Translate("errors/no_docs_folder", DocsFolder.AbsolutePath)
		    Else
		      MsgBox T.Translate("errors/no_docs_folder", "")
		    End If
		    'Quit
		  End If
		  
		  //++EMP 11/27/05
		  '++JRC Moved default folder checks to function
		  If CheckDefaultFolders(SETTINGS_FOLDER) <> FOLDER_EXISTS Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox  T.Translate("errors/no_settings_folder", AppFolder.Child(STR_OS_DEFAULTS).Child(STR_SETTINGS).AbsolutePath)
		    '--
		    'Quit
		  End If
		  //--
		  '++JRC Moved document folder checks to function
		  
		  result = CheckDocumentFolders(SETTINGS_FOLDER)
		  If result = FOLDER_EMPTY Then
		    'Settings folder is empty, ask the user if want to try to copy the default Settings to the docs folder
		    '(as long as the defaults folder isn't empty of course ;)
		    If  CheckDefaultFolders(SETTINGS_FOLDER) =  FOLDER_EXISTS Then
		      App.MouseCursor = Nil
		      If InputBox.AskYN(App.T.Translate("questions/settings_folder_empty/@caption")) Then
		        If Not FileUtils.CopyPath(AppFolder.Child(STR_OS_DEFAULTS).Child(STR_SETTINGS), DocsFolder.Child(STR_SETTINGS)) Then
		          '++JRC Translated
		          MsgBox T.Translate("errors/create_settings_folder", DocsFolder.Child(STR_SETTINGS).AbsolutePath)
		          MsgBox T.Translate("errors/load_default_settings")
		          '--
		          'Quit
		        End If
		      End If
		    End If
		  ElseIf result = NO_FOLDER Then
		    If DocsFolder <> Nil Then
		      MsgBox T.Translate("errors/create_settings_folder",  DocsFolder.Child(STR_SETTINGS).AbsolutePath)
		    Else
		      MsgBox T.Translate("errors/no_docs_folder", "")
		    End If
		    MsgBox T.Translate("errors/load_default_settings")
		    'Quit
		  End If
		  //++EMP 11/27/05
		  '++JRC Moved default folder checks to function
		  If CheckDefaultFolders(SONGS_FOLDER) <> FOLDER_EXISTS Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox   T.Translate("errors/no_songs_folder",  AppFolder.Child(STR_OS_DEFAULTS).Child(STR_SONGS).AbsolutePath)
		    '--
		    '++JRC Change behavior here to notify user but continue operation
		    'Quit
		  End If
		  //--
		  '++JRC Moved document folder checks to function
		  result =  CheckDocumentFolders(SONGS_FOLDER)
		  If result = FOLDER_EMPTY Then
		    'Songs folder is empty, ask the user if want to try to copy the default songs to the docs folder
		    '(as long as the defaults folder isn't empty of course ;)
		    If  CheckDefaultFolders(SONGS_FOLDER) =  FOLDER_EXISTS Then
		      App.MouseCursor = Nil
		      If InputBox.AskYN(App.T.Translate("questions/songs_folder_empty/@caption")) Then
		        If Not FileUtils.CopyPath(AppFolder.Child(STR_OS_DEFAULTS).Child(STR_SONGS), DocsFolder.Child(STR_SONGS)) Then
		          '++JRC Translated
		          MsgBox T.Translate("errors/copy_default_songs",  DocsFolder.Child(STR_SONGS).AbsolutePath)
		          '--
		          'Quit
		        End If
		      End If
		    End If
		  ElseIf result = NO_FOLDER Then
		    If DocsFolder <> Nil Then
		      MsgBox T.Translate("errors/create_songs_folder",  DocsFolder.Child(STR_SONGS).AbsolutePath)
		    Else
		      MsgBox T.Translate("errors/no_docs_folder", "")
		    End If
		    'Quit
		  End If
		  
		  //++EMP 11/27/05
		  '++JRC Moved default folder checks to function
		  If CheckDefaultFolders(SETS_FOLDER) <> FOLDER_EXISTS Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox T.Translate("errors/no_sets_folder",  AppFolder.Child(STR_OS_DEFAULTS).Child(STR_SETS).AbsolutePath)
		    '--
		    '++JRC Change behavior here to notify user but continue operation
		    'Quit
		  End If
		  //--
		  '++JRC Moved document folder checks to function
		  result = CheckDocumentFolders(SETS_FOLDER)
		  If result = FOLDER_EMPTY Then
		    'Sets folder is empty, ask the user if want to try to copy the default sets to the docs folder
		    '(as long as the defaults folder isn't empty of course ;)
		    If  CheckDefaultFolders(SETS_FOLDER) =  FOLDER_EXISTS Then
		      App.MouseCursor = Nil
		      If InputBox.AskYN(App.T.Translate("questions/sets_folder_empty/@caption")) Then
		        If Not FileUtils.CopyPath(AppFolder.Child(STR_OS_DEFAULTS).Child(STR_SETS), DocsFolder.Child(STR_SETS)) Then
		          '++JRC Translated
		          MsgBox T.Translate("errors/create_sets_folder",  DocsFolder.Child(STR_SETS).AbsolutePath)
		          '--
		          'Quit
		        End If
		      End If
		    End If
		  ElseIf result = NO_FOLDER Then
		    If DocsFolder <> Nil Then
		      MsgBox T.Translate("errors/create_sets_folder",  DocsFolder.Child(STR_SETS).AbsolutePath)
		    Else
		      MsgBox T.Translate("errors/no_docs_folder", "")
		    End If
		    'Quit
		  End If
		  
		  //++EMP 11/27/05
		  '++JRC Moved default folder checks to function
		  If CheckDefaultFolders(BACKGROUNDS_FOLDER) <> FOLDER_EXISTS Then
		    App.MouseCursor = Nil
		    '++JRC Translated
		    MsgBox  T.Translate("errors/no_backgrounds_folder",  AppFolder.Child(STR_OS_DEFAULTS).Child(STR_BACKGROUNDS).AbsolutePath)
		    '--
		    '++JRC Change behavior here to notify user but continue operation
		    'Quit
		  End If
		  //--
		  '++JRC Moved document folder checks to function
		  result = CheckDocumentFolders(BACKGROUNDS_FOLDER)
		  If result = FOLDER_EMPTY Then
		    'Backgrounds folder is empty, ask the user if want to try to copy the default Backgrounds to the docs folder
		    '(as long as the defaults folder isn't empty of course ;)
		    If  CheckDefaultFolders(BACKGROUNDS_FOLDER) =  FOLDER_EXISTS Then
		      App.MouseCursor = Nil
		      If InputBox.AskYN(App.T.Translate("questions/backgrounds_folder_empty/@caption")) Then
		        If Not FileUtils.CopyPath(AppFolder.Child(STR_OS_DEFAULTS).Child(STR_BACKGROUNDS), DocsFolder.Child(STR_BACKGROUNDS)) Then
		          '++JRC Translated
		          MsgBox T.Translate("errors/create_backgrounds_folder",  DocsFolder.Child("Backgrounds").AbsolutePath)
		          '--
		          'Quit
		        End If
		      End If
		    End If
		  ElseIf result = NO_FOLDER Then
		    If DocsFolder <> Nil Then
		      MsgBox T.Translate("errors/create_backgrounds_folder",  DocsFolder.Child("Backgrounds").AbsolutePath)
		    Else
		      MsgBox T.Translate("errors/no_docs_folder", "")
		    End If
		    'Quit
		  End If
		  
		  '++JRC
		  'If CheckDocumentFolders(DOCUMENTS_FOLDER) = NO_FOLDER  Then
		  '(Not DocsFolder.Child("Songs").Exists) Or _
		  '(Not DocsFolder.Child("Sets").Exists) Or _
		  '(Not DocsFolder.Child("Settings").Exists) Or _
		  '(Not DocsFolder.Child("Backgrounds").Exists) Then
		  
		  'App.MouseCursor = Nil
		  '++JRC Translated
		  'MsgBox T.Translate("errors/folder_error")
		  '--
		  'Quit
		  'End If
		  '--
		  ' --- LOAD SETTINGS ---
		  '++JRC: Load default files if settings files in DocsFolder are corrupted (bug #1803741)
		  'The settings folder should be handled in the Installer/Uninstaller as well
		  '++JRC translated
		  Splash.SetStatus T.Translate("load_settings/main") + "..."
		  '--
		  '++JRC
		  result = CheckDocumentFolders(SETTINGS_FOLDER)
		  If result = FOLDER_EXISTS Then
		    MyMainSettings = SmartML.XDocFromFile(DocsFolder.Child("Settings").Child("MainSettings"))
		  Else
		    MyMainSettings = Nil
		  End If
		  '--
		  If MyMainSettings = Nil Then
		    MyMainSettings = SmartML.XDocFromFile(AppFolder.Child("OpenSong Defaults").Child("Settings").Child("MainSettings"))
		    If MyMainSettings = Nil Then
		      SmartML.DisplayError
		      Quit
		    End If
		  End If
		  
		  Splash.SetStatus T.Translate("load_settings/print") + "..."
		  '++JRC
		  If result = FOLDER_EXISTS Then
		    MyPrintSettings = SmartML.XDocFromFile(DocsFolder.Child("Settings").Child("PrintSettings"))
		  Else
		    MyPrintSettings = Nil
		  End If
		  '--
		  If MyPrintSettings = Nil Then
		    MyPrintSettings = SmartML.XDocFromFile(AppFolder.Child("OpenSong Defaults").Child("Settings").Child("PrintSettings"))
		    If MyPrintSettings = Nil Then
		      SmartML.DisplayError
		      Quit
		    End If
		  End If
		  // Update PritntSettings to use points instead of inches
		  UpdatePrintSettings
		  
		  Splash.SetStatus T.Translate("load_settings/presentation") + "..."
		  '++JRC
		  If result = FOLDER_EXISTS Then
		    MyPresentSettings = SmartML.XDocFromFile(DocsFolder.Child("Settings").Child("PresentSettings"))
		  Else
		    MyPresentSettings = Nil
		  End If
		  '--
		  If MyPresentSettings = Nil Then
		    MyPresentSettings = SmartML.XDocFromFile(AppFolder.Child("OpenSong Defaults").Child("Settings").Child("PresentSettings"))
		    If MyPresentSettings = Nil Then
		      SmartML.DisplayError
		      Quit
		    End If
		  End If
		  // Move some XML around in MyPresentSettings to align with V1.0 BL13 changes.
		  UpdatePresentSettings
		  
		  ' --- BUILD CAPO LIST ---
		  CapoList.Append "1"
		  CapoList.Append "2"
		  CapoList.Append "3"
		  CapoList.Append "4"
		  CapoList.Append "5"
		  
		  ' --- BUILD FONT LIST ---
		  Dim i, j As Integer
		  Splash.SetStatus T.Translate("load_settings/fonts") + "..."
		  j = FontCount - 1
		  For i = 0 to j
		    FontList.Append Font(i)
		  Next i
		  FontList.Sort
		  
		  UpdateTranslationFonts
		  
		  ' --- CHECK FOR LATEST SONG AND SET VERSIONS ---
		  Dim songVersion, setVersion As Double
		  songVersion = SmartML.GetValueN(MyMainSettings.DocumentElement, "version/@songs")
		  setVersion = SmartML.GetValueN(MyMainSettings.DocumentElement, "version/@sets")
		  
		  App.MouseCursor = Nil
		  
		  GraphicsX.ThicknessFactor = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "style/@thickness")
		  
		  Profiler.EndProfilerEntry
		  
		  ' --- CHECK FOR A NEWER VERSION ---
		  
		  If Len(SmartML.GetValue(App.MyMainSettings.DocumentElement, "version/@check", False)) < 4 Then _
		  SmartML.SetValueB(App.MyMainSettings.DocumentElement, "version/@check", True)
		  
		  Dim checkVer As CheckVerThread
		  If SmartML.GetValueB(App.MyMainSettings.DocumentElement, "version/@check") Then
		    Splash.SetStatus T.Translate("load_settings/latest_version") + "..."
		    checkVer = new CheckVerThread
		    checkVer.Run
		  End If
		  
		  '++JRC Load Song Activity Log so the user can view the log
		  'reguardless of whether logging is enabled or not
		  'If MainPreferences.GetValueB(App.kActivityLog, True) Then
		  'Load in the Song Activity Log
		  Globals.SongActivityLog = New ActivityLog
		  'TODO Decide where we want to store the log file
		  '+++EMP Use FolderItem and .Child instead of AbsolutePath
		  result = CheckDocumentFolders(SETTINGS_FOLDER)
		  If  result <> NO_FOLDER Then
		    If NOT Globals.SongActivityLog.Load(DocsFolder.Child("Settings").Child("ActivityLog.xml")) Then
		      MsgBox  T.Translate("errors/activity_disabled", DocsFolder.Child("Settings").Child("ActivityLog.xml").AbsolutePath)  '++JRC Translated
		      Globals.SongActivityLog = Nil
		    End If
		  Else
		    If DocsFolder <> Nil Then
		      MsgBox  T.Translate("errors/activity_disabled", DocsFolder.AbsolutePath + "Settings\ActivityLog.xml")
		    Else
		      MsgBox T.Translate("errors/no_docs_folder", "")
		    End If
		    Globals.SongActivityLog = Nil
		  End If
		  
		  T.TranslateMenu("main_menu", MainMenu)
		  PlatformSpecific
		  
		  m_ControlServer = New REST.RESTServer()
		  m_ControlServer.AddResource(New REST.RESTResourceSong)
		  m_ControlServer.AddResource(New REST.RESTResourceSet)
		  m_ControlServer.AddResource(New REST.RESTResourcePresent)
		  m_ControlServer.AddResource(New REST.RESTResourceWebSocket)
		  InitControlServer()
		  
		  MainWindow.Show
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  Dim Popup As New ErrorPopup
		  Dim i As Integer
		  Dim StackTrace() As String
		  Dim errorType As String
		  
		  'workaround, RB starts whining when I refer to error.Stack(i) directly
		  StackTrace = error.Stack
		  
		  
		  'The exception's type is not part of the error message :(
		  errorType = error.ToString
		  
		  If errorType.Len > 0 Then
		    Popup.ErrorDescription.AppendText(errorType + ":")
		  End If
		  
		  'print stacktrace below error description
		  Popup.ErrorDescription.AppendText(EndOfLine + EndOfLine + "Stacktrace:")
		  For i = 0 To Ubound(error.Stack)
		    Popup.ErrorDescription.AppendText(EndOfLine + StackTrace(i))
		  Next
		  
		  Popup.ShowModal
		  
		  Quit
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CenterInControlScreen(win As Window)
		  Dim controlScreen As Integer
		  If App.MyPresentSettings <> Nil Then
		    controlScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		    If controlScreen < 0 Or controlScreen + 1 > OSScreenCount() Then controlScreen = 0
		  Else
		    controlScreen = 0
		  End If
		  
		  win.Left = OSScreen(controlScreen).Left + (OSScreen(controlScreen).Width - win.Width) / 2
		  win.Top = OSScreen(controlScreen).Top + (OSScreen(controlScreen).Height  - win.Height) / 2 + 10
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckDefaultFolders(which As Integer) As Integer
		  '++JRC This function checks whether or not the default  folders exist or are empty
		  '       Parameters: which as Integer
		  'DEFAULTS_FOLDER = Main Defaults Folder
		  'SONGS_FOLDER = Songs Folder
		  'SETS_FOLDER = Set Folder
		  'BACKGROUNDS_FOLDER = Backgrounds Folder
		  '
		  '       Return Values:
		  'FOLDER_EXISTS = The folder exists and has files
		  'NO_FOLDER = The folder does NOT exist
		  'FOLDER_EMPTY = The folder exists but is empty
		  'INVAILD_FOLDER = Invaild folder specified
		  
		  Dim f As FolderItem
		  
		  Select Case which
		  Case DEFAULTS_FOLDER
		    f = AppFolder.Child(STR_OS_DEFAULTS)
		  Case SONGS_FOLDER
		    f = AppFolder.Child(STR_OS_DEFAULTS).Child(STR_SONGS)
		  Case SETS_FOLDER
		    f = AppFolder.Child(STR_OS_DEFAULTS).Child(STR_SETS)
		  Case BACKGROUNDS_FOLDER
		    f = AppFolder.Child(STR_OS_DEFAULTS).Child(STR_BACKGROUNDS)
		  Case SETTINGS_FOLDER
		    f = AppFolder.Child(STR_OS_DEFAULTS).Child(STR_SETTINGS)
		  Else 'sanity check
		    Return INVAILD_FOLDER
		  End Select
		  
		  If f = Nil Then Return NO_FOLDER
		  If NOT f.Exists Then Return NO_FOLDER
		  IF f.Count = 0 Then Return FOLDER_EMPTY
		  
		  Return FOLDER_EXISTS
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckDocumentFolders(which As Integer, Create As Boolean = True, Prompt As Boolean = False) As Integer
		  '++JRC This function checks whether or not the document  folders exist or are empty
		  '       Parameters: which as Integer
		  'DOCUMENTS_FOLDER = Main Documents Folder
		  'SONGS_FOLDER = Songs Folder
		  'SETS_FOLDER = Set Folder
		  'BACKGROUNDS_FOLDER = Backgrounds Folder
		  '       Create as Boolean
		  'Tells the function whether to create the specified folder or not
		  'default is True
		  '       Prompt as Boolean
		  'Tells the function whether to prompt the user before creating specified folder
		  '(not currently used)
		  '       Return Values:
		  'FOLDER_EXISTS = The folder exists and has files
		  'NO_FOLDER = The folder does NOT exist
		  'FOLDER_EMPTY = The folder exists but is empty
		  'INVAILD_FOLDER = Invaild folder specified
		  
		  Dim f As FolderItem
		  
		  If DocsFolder = Nil Then Return NO_FOLDER
		  
		  'Try to create Documents folder it doesn't exist
		  If Create Then
		    If NOT FileUtils.CreateFolder(DocsFolder) Then Return NO_FOLDER
		  End If
		  
		  Select Case which
		  Case DOCUMENTS_FOLDER
		    f = DocsFolder
		  Case SONGS_FOLDER
		    f = DocsFolder.Child(STR_SONGS)
		  Case SETS_FOLDER
		    f = DocsFolder.Child(STR_SETS)
		  Case BACKGROUNDS_FOLDER
		    f = DocsFolder.Child(STR_BACKGROUNDS)
		  Case SETTINGS_FOLDER
		    f = DocsFolder.Child(STR_SETTINGS)
		  Else 'sanity check
		    Return INVAILD_FOLDER
		  End Select
		  
		  If f = Nil Then Return NO_FOLDER
		  
		  'Try to create folder it doesn't exist
		  If Create Then
		    If NOT FileUtils.CreateFolder(f) Then Return NO_FOLDER
		  End If
		  
		  If NOT f.Exists Then Return NO_FOLDER
		  IF f.Count = 0 Then Return FOLDER_EMPTY
		  
		  Return FOLDER_EXISTS
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FriendlyXMLException(e As XMLException) As String
		  Return e.Message + EndOfLine + " (" + e.Node + ":" + e.Line + ") " + e.Token + " (E" + Str(e.ErrorNumber) + ")"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetDocsFolder() As FolderItem
		  //++
		  // Determine the proper folder for storing the documents (Songs, sets, etc.)
		  // The documents folder is determined as follows:
		  // If it is a portable installation, use AppDocumentsFolder
		  // otherwise
		  // 1. If there is a folder set in the user's preferences, use that if it exists.
		  // 2. If there is nothing in the user's preferences, check the OpenSong Globals
		  //     file.
		  //     a. If there is a relative path specified here, use the built-in DocumentsFolder
		  //         as the top folder.  Store the resultant folder in the user prefs.
		  //     b. If there is an absolute path, use it.  Do not store in the user prefs.
		  // 3. If the folder determined by #1 and #2 doesn't exist, or if the folder is the
		  //     empty string, prompt the user for the folder to use and store this in user prefs.
		  //--
		  
		  Dim f As FolderItem
		  Dim FolderName As String
		  Dim e As RuntimeException
		  Dim Folder As String
		  
		  If IsPortable Then
		    f = AppDocumentsFolder
		    If f = Nil Then
		      e = New RuntimeException
		      e.Message = "GetDocsFolder: AppDocumentsFolder not found for Portable version"
		      Raise e
		    End If
		    Return f
		  End If
		  
		  f = MainPreferences.GetValueFI(Prefs.kDocumentsFolder, Nil, False)
		  If f = Nil Then
		    FolderName = Trim(SmartML.GetValue(MyGlobals.DocumentElement, "documents/@folder"))
		    
		    If FolderName <> "" Then
		      f = GetFolderItem(FolderName, FolderItem.PathTypeAbsolute)
		      If f = Nil Then
		        // Relative path
		        For Each Folder In Split(FolderName, FileUtils.AbsolutePathSeparator)
		          If Not FileUtils.CreateFolder(f.Child(Folder)) Then
		            e = New RuntimeException
		            e.Message = "GetDocsFolder: " + FileUtils.LastError
		            DebugWriter.Write "GetDocsFolder: Trying to create " + f.Child(Folder).AbsolutePath + " got " + FileUtils.LastError, 1
		            Raise e
		          End If
		          f = f.Child(Folder)
		        Next
		      End If
		      If Not f.Exists Then
		        Try
		          f = QueryDocsFolder(f)
		        Catch
		          System.DebugLog "OpenSong: user cancelled document folder selection"
		          Return Nil
		        End Try
		        MainPreferences.SetValueFI(prefs.kDocumentsFolder, f)
		      End If
		    Else // FolderItem in MainPreferences is Nil, FolderName = ""
		      // Nil folderitem in personal prefs, no path in Globals; prompt user
		      Try
		        f = QueryDocsFolder(Nil)
		      Catch
		        System.DebugLog "OpenSong: user cancelled document folder selection"
		        Return Nil
		      End Try
		      
		      If FileUtils.IsChild(f, AppFolder.Child("OpenSong Defaults")) Then
		        MsgBox(App.T.Translate("errors/docs_folder", FileUtils.GetDisplayFullPath(AppDocumentsFolderForOpenSong)))
		        f = AppDocumentsFolderForOpenSong
		      End If
		      MainPreferences.SetValueFI(Prefs.kDocumentsFolder, f)
		    End If //If FolderName <> ""
		  Else // folder found in MainPreferences, make sure it exists.
		    //++
		    // If the DocumentsFolder saved in preferences doesn't exist,
		    // the Macintosh version apparently will grab a random file.
		    // While this will not catch a case where that file is a directory,
		    // the odds are with us that this will catch it.
		    // EMP, 28 August 2010
		    //--
		    If (Not f.exists) Or (Not f.Directory) Then
		      Try
		        f = QueryDocsFolder(Nil)
		      Catch
		        System.DebugLog "OpenSong: user cancelled document folder selection"
		        Quit
		      End Try
		      MainPreferences.SetValueFI(Prefs.kDocumentsFolder, f)
		    End If
		  End If //If MainPreferences.kDocumentsFolder = Nil
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFrontControlScreenWindow() As Window
		  // Returns the frontmost window on the control screen
		  // EMP 26 Feb 2006
		  //
		  Dim wc As Integer
		  Dim i As Integer
		  Dim cs As Integer
		  
		  wc = WindowCount - 1
		  cs = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		  If cs < 0 Or cs + 1 > OSScreenCount() Then cs = 0
		  
		  For i = 0 To wc
		    If Window(i).Visible Then
		      If Window(i).Left >= OSScreen(cs).Left _
		        And Window(i).Left < OSScreen(cs).Left + OSScreen(cs).Width _
		        And Window(i).Top >= OSScreen(cs).Top _
		        And Window(i).Top < OSScreen(cs).Top + OSScreen(cs).Height _
		        Then
		        Return Window(i)
		      End If
		    End If
		  Next i
		  Return Nil // Fell through, no one is on the control screen
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetImageAsString(img As Picture) As String
		  Dim strBase64 As String
		  
		  If img <> Nil Then
		    Dim QualitySetting As ImageQualityEnum = ImageDefaults.ImageQuality()
		    Dim data As MemoryBlock = Nil
		    
		    Try
		      //Try to use GDI+ (fallback to QuickTime) (Windows) or Linux, MacOS native
		      Dim quality as Integer = Picture.QualityDefault
		      Select Case QualitySetting
		      Case ImageQualityEnum.FullCompression
		        quality = 0
		      Case ImageQualityEnum.HighCompression
		        quality = 40
		      Case ImageQualityEnum.LittleCompression
		        quality = 65
		      Case ImageQualityEnum.LowCompression
		        quality = 85
		      Case ImageQualityEnum.NoCompression
		        quality = 100
		      Else
		        quality = Picture.QualityDefault 'Default - no one knows :D
		      End Select
		      
		      data = img.GetData(Picture.FormatJPEG, quality)
		    Catch
		      //If JPEG fails, use the most safe ...
		      data = img.GetData(Picture.FormatBMP)
		    End Try
		    
		    strBase64 = EncodeBase64(data)
		  End If
		  
		  Return strBase64
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetPrefsFolder() As FolderItem
		  //++
		  // Return the appropriate folder for the platform.
		  // Necessary in order to create folder if needed
		  // Also necessary because the folder will have a different
		  // name on certain platforms.
		  //--
		  Dim f As FolderItem
		  
		  f = AppPreferencesFolderForOpenSong
		  
		  If FileUtils.CreateFolder(f) Then
		    Return f
		  Else
		    '++JRC Prevent NilObjectException (bug #1810528)
		    If f <> Nil Then App.DebugWriter.Write("GetPrefsFolder: Error in CreateFolder for " + f.AbsolutePath + ", " + FileUtils.LastError, 1)
		    Return Nil
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPrinterSetup(ShowDialog As Boolean = False, Wnd As Window = Nil) As PrinterSetup
		  //
		  // OpenSong maintains a single PrinterSetup object for the printer.  This routine controls
		  // access to that object.  If ShowDialog is True, then the PrinterSetup dialog will be shown.
		  // If Wnd is not Nil, that Dialog will be attached to the given window (Mac only).
		  //
		  // RealBasic for the Mac has an issue with the PrinterSetup object.  The one returned
		  // from PageSetupDialog is invalid.  It has to be copied into a new one to be used.  For
		  // this reason, a clone is returned on OS X.
		  //
		  // On Windows, a second call to OpenPrinterDialog with the same PrinterSetup object
		  // results in no dialog display and Nil returned for the Graphics object.  Copy it, and
		  // all works fine.  Go figure.
		  //
		  // TODO: Save SetupString across program invocations.  Issues to remember: SetupString is
		  // platform dependent.  SetupString on Windows can't just be sent to an XML file such as
		  // MyPrintSettings with SmartML.SetValue.  Use something like EncodeBase64 to store
		  // and retrieve.
		  // This will also need to include the RB version as an attribute, as SetupStrings changed
		  // format in RB 2006 r3.
		  //
		  // Finally, this needs a different approach for Linux since (as of RB2005R4) PrinterSetup
		  // doesn't do anything useful.
		  //
		  
		  Dim TempPS As PrinterSetup
		  Dim NewPS As PrinterSetup
		  Dim status as Boolean
		  
		  If MyPrinterSetup = Nil And Not ShowDialog Then Return Nil
		  
		  TempPS = New PrinterSetup
		  TempPS.MaxHorizontalResolution = -1
		  TempPS.MaxVerticalResolution = -1
		  
		  If MyPrinterSetup <> Nil Then
		    TempPS.SetupString = MyPrinterSetup.SetupString
		  End If
		  
		  If ShowDialog Then
		    If Globals.UseSheetDialogs Then
		      status = TempPS.PageSetupDialog(Wnd)
		    Else
		      status = TempPS.PageSetupDialog
		    End If
		    If status Then
		      MyPrinterSetup = TempPS // Save the new settings
		      If SmartML.GetValueB(MyPrintSettings.DocumentElement, "page/@points") Then
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@height",_
		        InchesToPoints(TempPS.PageHeight / TempPS.VerticalResolution))
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@width",_
		        InchesToPoints(TempPs.PageWidth / TempPS.HorizontalResolution))
		      Else
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@height", _
		        TempPS.PageHeight / TempPS.VerticalResolution)
		        SmartML.SetValueN(MyPrintSettings.DocumentElement, "page/@width", _
		        TempPS.PageWidth / TempPS.HorizontalResolution)
		      End If
		    Else
		      Return Nil // User cancelled dialog.
		    End If
		  Else // Don't show dialog
		    
		  End If
		  // We have a non-null MyPrinterSetup now.  Copy it and return
		  // Sadly, this has to be OS-specific, at least under RB5.5.
		  // If, on OS X, if you do a straight copy it bombs.  If you copy
		  // the setup string, it doesn't bomb but the horizontal and vertical resolutions
		  // are set to 72, which really does a number on things if it is reporting
		  // height and width at something other than 72dpi.
		  // Copying the setup string on Windows started off working, but
		  // then started returning an invalid pointer that would crash OS.
		  // This is insane...
		  // (September 2006: Curiouser and curiouser.  After taking another look
		  // at this problem, the same code appears to work for both Mac and Windows.
		  // Hopefully the printer fixes in RB 2006 r3 will let us put this to bed once
		  // and for all.)
		  
		  '#If TargetMacOS
		  NewPS = New PrinterSetup
		  NewPS.MaxHorizontalResolution = -1
		  NewPS.MaxVerticalResolution = -1
		  NewPS.SetupString = MyPrinterSetup.SetupString
		  Return NewPS
		  '#ElseIf TargetWin32
		  'Return MyPrinterSetup
		  '#EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InitControlServer()
		  If (SmartML.GetValueB(App.MyMainSettings.DocumentElement, "rcserver/@enable", False)) Then
		    Dim port As Integer = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "rcserver/@port")
		    If port >0 Then
		      m_ControlServer.Port = port
		    Else
		      m_ControlServer.Port = 8080
		    End If
		    
		    m_ControlServer.MinimumSocketsAvailable = 2
		    
		    Dim max_connections As Integer = SmartML.GetValueN(App.MyMainSettings.DocumentElement, "rcserver/@max_connections", False)
		    If max_connections > 0 Then
		      m_ControlServer.MaximumSocketsConnected = max_connections
		    Else
		      m_ControlServer.MaximumSocketsConnected = 25
		    End If
		    
		    m_ControlServer.Key(SmartML.GetValue(App.MyMainSettings.DocumentElement, "rcserver/key"))
		    m_ControlServer.Listen()
		  Else
		    m_ControlServer.StopListening()
		    For Each socket As TCPSocket In m_ControlServer.ActiveConnections()
		      Dim restSocket As REST.RESTSocket = REST.RESTSocket(socket)
		      restSocket.Disconnect()
		    Next
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LoadPreferences()
		  //++
		  // Set up the preferences object to use for reference.
		  //
		  // Edit 21 Apr 2007
		  //    Change filename on non-Mac platforms to have .plist extension
		  //    If MainPreferences is non-Nil, treat this as a reload operation (was NOOP in RC2-16)
		  //--
		  Dim PrefFile As String
		  Dim v As String
		  Dim f As FolderItem
		  
		  #if TargetMacOS
		    f = GetPrefsFolder().Child("org.opensong.opensong.plist")
		  #else
		    //++
		    // Kluge alert! Fix V1.0 RC2-16 issue where the file doesn't have an extension
		    //--
		    PrefFile = "preferences.plist"
		    '++JRC Fixed: f gets eaten by the next call to GetPrefsFolder()
		    f = GetPrefsFolder().Child("preferences")
		    If f = Nil Then
		      'doesn't exist try loading new prefs file
		      f = GetPrefsFolder().Child(PrefFile)
		    Else
		      If f.exists Then
		        f.name = PrefFile 'Rename file
		      Else
		        'doesn't exist try loading new prefs file
		        f = GetPrefsFolder().Child(PrefFile)
		      End If
		    End If
		  #endif
		  
		  If MainPreferences <> Nil Then // Reloading
		    If Not prefsPlist(MainPreferences).Save Then Return
		    MainPreferences = Nil
		  End If
		  
		  MainPreferences = New prefsPlist
		  
		  If Not MainPreferences.Load(f) Then
		    Dim pListErrorWnd As PlistErrorWindow = New PlistErrorWindow()
		    If pListErrorWnd.DoRecover(f) Then
		      If f.Exists() Then
		        f.Delete()
		      End If
		      MainPreferences = New prefsPlist
		      
		      'Try creating the preferences from scratch.
		      'If that fails, crash anyway...
		      If Not MainPreferences.Load(f) Then
		        Dim e As RuntimeException = New RuntimeException()
		        e.Message = MainPreferences.ErrorString
		        MainPreferences = Nil
		        Raise e
		      End If
		    Else
		      MainPreferences = Nil
		      Quit()
		    End If
		  End If
		  
		  //++
		  // Set the version of the file if it doesn't exist.  This will give us a way to
		  // determine if new content needs to be added as this list gets used more
		  //--
		  v = MainPreferences.GetValue("/@version", CStr(PREFERENCESVERSION), True)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaximizeInControlScreen(win As Window)
		  Dim controlScreen As Integer
		  If App.MyPresentSettings <> Nil Then
		    controlScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		    If controlScreen < 0 Or controlScreen + 1 > OSScreenCount() Then controlScreen = 0
		  Else
		    controlScreen = 0
		  End If
		  
		  win.Width = OSScreen(controlScreen).AvailableWidth - 40
		  win.Height = OSScreen(controlScreen).AvailableHeight - 115
		  win.Top = OSScreen(controlScreen).AvailableTop + (OSScreen(controlScreen).AvailableHeight  - win.Height) / 2 + 10
		  win.Left = OSScreen(controlScreen).AvailableLeft + (OSScreen(controlScreen).AvailableWidth - win.Width) / 2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MinimizeWindow(Wnd As Window)
		  //++
		  // Provides functionality to minimize a window to the taskbar on Windows or Mac
		  // No functionality yet on Linux (due to testing constraints)
		  //
		  // This routine can be replaced for all platforms by the Window.Minimize method when OpenSong moves
		  // to RealBasic 2006 or later.
		  //
		  // Ed Palmer, May 2006
		  //--
		  
		  Dim status As Integer
		  
		  #If TargetWin32 Then
		    Dim lparam As New MemoryBlock(4)
		    Const WM_SYSCOMMAND = 274
		    Const SC_MINIMIZE = 61472
		    
		    Declare Function SendMessageA Lib "user32" (ByVal hwnd as Integer, ByVal msg as Integer, ByVal wParam as Integer, ByVal lParam as Ptr) as Integer
		    
		    status = SendMessageA(wnd.Handle, WM_SYSCOMMAND, SC_MINIMIZE, lparam)
		    
		    Return
		    
		  #ElseIf TargetCarbon
		    Const COLLAPSEWIN = 1
		    Const RESTOREWIN = 0
		    #If TargetMachO
		      Declare Function CollapseWindow Lib "Carbon" (window As Integer, collapse As Integer) As Integer
		    #else
		      Declare Function CollapseWindow Lib "CarbonLib" (window As Integer, collapse As Integer) As Integer
		    #endif
		    
		    status = CollapseWindow(Wnd.Handle, COLLAPSEWIN)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PlatformSpecific()
		  //++
		  // PlatformSpecific is used to do anything that might be specific to
		  // the operating system OpenSong is running under.
		  //--
		  #If TargetWin32
		    // Windows items go here
		    mnu_file_quit.KeyboardShortcut = ""
		    Globals.UseSheetDialogs = False
		  #elseif TargetMacOS
		    // Macintosh items go here
		    mnu_help_help_topics.CommandKey = "?"
		    Globals.UseSheetDialogs = MainPreferences.GetValueB(prefs.kUseSheetDialogs, True)
		  #elseif TargetLinux
		    // Linux items go here
		    Globals.UseSheetDialogs = False
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function QueryDocsFolder(path As FolderItem, suggested As String = "OpenSong") As FolderItem
		  Dim mb as SelectFolderDialog
		  Dim f, f1, defaultsFolder As FolderItem
		  Dim e As RuntimeException
		  Dim ask As Boolean = True
		  
		  defaultsFolder = AppFolder.Child("OpenSong Defaults")
		  If path = Nil Then path = AppDocumentsFolder
		  If Not path.Exists Then path = AppDocumentsFolder
		  mb = New SelectFolderDialog
		  mb.InitialDirectory = path.Child(suggested)
		  While ask
		    If T <> Nil Then// Can we translate?
		      mb.ActionButtonCaption = T.Translate("shared/select/@caption")
		      mb.CancelButtonCaption = T.Translate("shared/exit_program/@caption")
		      mb.Title = T.Translate("questions/select_docs_folder/@caption")
		      mb.PromptText = T.Translate("questions/select_docs_folder")
		    Else
		      mb.ActionButtonCaption = "Select"
		      mb.CancelButtonCaption = "Exit Program"
		      mb.Title = "Select an OpenSong documents folder"
		      mb.PromptText = "Please choose a location to store OpenSong songs and sets"
		    End If
		    f = mb.ShowModal
		    If f = Nil Then
		      e = New RuntimeException
		      If T <> Nil Then
		        e.Message = T.Translate("errors/no_docs_folder", "User canceled selection in GetDocsFolder")
		      Else
		        e.Message = "A folder to store OpenSong documents must be selected.  OpenSong must shut down."
		      End If
		      Raise e
		    End If
		    //++
		    // Bug 1204048: DocsPath needs to be somewhere other than under OpenSong Defaults.
		    //--
		    f1 = f
		    ask = False
		    While f1 <> Nil
		      If f1.AbsolutePath = defaultsFolder.AbsolutePath Then
		        MsgBox T.Translate("errors/docs_folder", f.AbsolutePath)
		        ask = True
		        Exit
		      End If
		      f1 = f1.Parent
		    Wend
		  Wend
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RestoreWindow(Wnd As Window)
		  Dim status As Integer
		  
		  #If TargetWin32 Then
		    Dim lparam As New MemoryBlock(4)
		    Const WM_SYSCOMMAND = 274
		    Const SC_RESTORE = &HF120
		    
		    Declare Function SendMessageA Lib "user32" (ByVal hwnd as Integer, ByVal msg as Integer, ByVal wParam as Integer, ByVal lParam as Ptr) as Integer
		    
		    status = SendMessageA(wnd.Handle, WM_SYSCOMMAND, SC_RESTORE, lparam)
		    
		    Return
		    
		  #ElseIf TargetCarbon
		    Const COLLAPSEWIN = 1
		    Const RESTOREWIN = 0
		    #If TargetMachO
		      Declare Function CollapseWindow Lib "Carbon" (window As Integer, collapse As Integer) As Integer
		    #else
		      Declare Function CollapseWindow Lib "CarbonLib" (window As Integer, collapse As Integer) As Integer
		    #endif
		    
		    status = CollapseWindow(Wnd.Handle, RESTOREWIN)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SelectLanguage() As String
		  //++
		  // Allow the user to select a language file from the available translations
		  //--
		  Dim options() As String
		  Dim i As Integer
		  Dim d As FolderItem
		  Dim f As FolderItem
		  
		  d = AppFolder.Child("OpenSong Languages")
		  If Not d.Exists Then Return "" //Bad installation
		  If Not d.Directory Then Return ""
		  
		  options.Append "" // Open dialog with nothing selected
		  
		  For i = 1 To d.Count
		    f = d.Item(i)
		    If f.IsFileVisible And Not f.Directory Then
		      options.Append f.Name
		    End If
		  Next
		  
		  Return InputBox.Pick("Select a language", options)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetForeground(Wnd As Window)
		  '++JRC
		  #If TargetWin32 Then
		    
		    Declare Sub SetForegroundWindow Lib "user32" (ByVal hwnd as Integer)
		    
		    SetForegroundWindow(wnd.Handle)
		  #ElseIf TargetCarbon Then
		    Dim Status As Integer
		    #If TargetMachO
		      Declare Function SelectWindow Lib "Carbon" (window As Integer) As Integer
		    #else
		      Declare Function SelectWindow Lib "CarbonLib" (window As Integer) As Integer
		    #endif
		    
		    Status = SelectWindow(wnd.Handle)
		  #Endif
		  '--
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowWin(Wnd As Window, Cmd As Integer)
		  '++JRC
		  #If TargetWin32 Then
		    Declare Sub ShowWindow Lib "user32" (ByVal hwnd as Integer, ByVal nCmdShow as Integer)
		    
		    ShowWindow(wnd.Handle, Cmd)
		  #Endif
		  '--
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideStyleColor(type As String) As Color
		  Dim slideColor As Color = rgb(255,255,255)
		  
		  If Not SmartML.GetValueC(App. MyMainSettings.DocumentElement, "slide_style_color/"+type+"/@color", slideColor, False) Then
		    Select Case type
		    Case "verse"
		      slideColor = rgb(213,213,255)
		    Case "bridge"
		      slideColor = rgb(138,138,255)
		    Case "pre-chorus"
		      slideColor = rgb(113,113,255)
		    Case "chorus"
		      slideColor = rgb(188,188,255)
		    Case "tag"
		      slideColor = rgb(163,163,255)
		    Case "custom"
		      slideColor = rgb(255,227,213)
		    Case "scripture"
		      slideColor = rgb(255,180,180)
		    Case "style"
		      slideColor = rgb(234,234,255)
		    Case "image"
		      slideColor = rgb(255,255,180)
		    Case "external"
		      slideColor = rgb(213,255,213)
		    End Select
		  End If
		  
		  Return slideColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SlideStyleColorEnabled() As Boolean
		  Return SmartML.GetValueB(App.MyMainSettings.DocumentElement, "slide_style_color/@enabled", True, True)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SmartVersion() As String
		  Dim t As String
		  
		  t = "v" +  Str(App.MajorVersion) + "." + Str(App.MinorVersion)
		  If App.BugVersion > 0 Then t = t + "." + Str(App.BugVersion)
		  //++
		  // If compiled with rb2006r4 or higher, this is likely a Universal Binary.
		  // Identify the target.
		  // There's probably a gestalt that would be a better way to do this so we can
		  // identify a true UB vs. a target-specific binary or an Intel Mac running the UB under Rosetta.
		  // This identifies the processor architecture the executable is running.
		  //--
		  '++JRC
		  If App.StageCode <> App.Final Then
		    t = t + "-"
		    select case App.StageCode
		    case 0
		      t = t + "Development"
		    case 1
		      t = t + "Alpha"
		    case 2
		      t = t + "Beta"
		    End Select
		  Else
		    If ReleaseCandidate > 0 Then
		      t= t + "-RC" + Str(App.ReleaseCandidate)
		    End If
		  End If
		  '--
		  #If TargetMacOS
		    If RBVersion >= 2006.04 Then
		      #If TargetPPC
		        t = t + " (PPC)"
		      #else
		        t = t + " (X86)"
		      #endif
		    End If
		  #endif
		  Return t
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StatusNotifierSubscribe(subject As String, clientId As String) As Boolean
		  Dim notifiers() As String
		  Dim success as Boolean = False
		  
		  If m_ControlServer.HasResource(subject) Then
		    If m_statusNotifiers.HasKey(subject) Then
		      notifiers = m_statusNotifiers.Value(subject)
		    End If
		    
		    If notifiers.IndexOf(clientId) < 0 Then
		      notifiers.Append(clientId)
		      m_statusNotifiers.Value(subject) = notifiers
		      success = True
		      
		      m_ControlServer.StatusNotification(clientId, subject, "subscribe")
		    End If
		  End If
		  
		  Return success
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StatusNotifierUnsubscribe(subject As String, clientId As String) As Boolean
		  Dim notifiers() As String
		  Dim success As Boolean = False
		  
		  If m_ControlServer.HasResource(subject) Then
		    If m_statusNotifiers.HasKey(subject) Then
		      notifiers = m_statusNotifiers.Value(subject)
		    End If
		    
		    Dim i As Integer = notifiers.IndexOf(clientId)
		    If i >= 0 Then
		      notifiers.Remove(i)
		      m_statusNotifiers.Value(subject) = notifiers
		      success = True
		    End If
		  End If
		  
		  return success
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StatusNotifierUpdate(subject As String, info As String)
		  If m_statusNotifiers.HasKey(subject) Then
		    Dim notifiers() As String = m_statusNotifiers.Value(subject)
		    
		    For Each clientId As String In notifiers
		      m_ControlServer.StatusNotification(clientId, subject, info)
		    Next
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TestXML()
		  //++
		  // Test harness for SetValueFI and GetValueFI
		  //--
		  
		  Dim xdoc As New XmlDocument
		  Dim xnode As XmlNode
		  Dim de As XmlNode
		  Dim fi As FolderItem
		  Dim xmlOutput As String
		  
		  de = xdoc.CreateElement("document")
		  xdoc.AppendChild de
		  
		  fi = New FolderItem(SpecialFolder.Documents.Child("PiwigoExport.log"))
		  
		  SmartML.SetValueFI(de, "absolute", fi)
		  SmartML.SetValueFI(de, "relative", fi, SmartML.RelativePath.UserSpecified, Volume(0))
		  SmartML.SetValueFI(de, "app_parent", fi, SmartML.RelativePath.AppParent)
		  SmartML.SetValueFI(de, "app_support", fi, SmartML.RelativePath.AppSupport)
		  SmartML.SetValueFI(de, "mydocuments", fi, SmartML.RelativePath.MyDocuments)
		  SmartML.SetValueFI(de, "opensongdocuments", fi, SmartML.RelativePath.OpenSongDocuments)
		  SmartML.SetValueFI(de, "opensongpreferences", fi, SmartML.RelativePath.OpenSongPreferences)
		  SmartML.SetValueFI(de, "attribute/@filename", fi)
		  SmartML.SetValue(de, "oldstyle", fi.AbsolutePath)
		  xmlOutput = xdoc.Transform(kXmlPrettyPrint)
		  
		  Dim xDoc2 As New XmlDocument(xmlOutput)
		  Dim fi2 As New FolderItem
		  
		  fi2 = SmartML.GetValueFI(xDoc2.DocumentElement, "absolute")
		  If fi2.NativePath <> fi.NativePath Then Break
		  fi2 = SmartML.GetValueFI(xDoc2.DocumentElement, "relative")
		  If fi2.NativePath <> fi.NativePath Then Break
		  fi2 = SmartML.GetValueFI(xDoc2.DocumentElement, "app_parent")
		  If fi2.NativePath <> fi.NativePath Then Break
		  fi2 = SmartML.GetValueFI(xDoc2.DocumentElement, "app_support")
		  If fi2.NativePath <> fi.NativePath Then Break
		  fi2 = SmartML.GetValueFI(xDoc2.DocumentElement, "mydocuments")
		  If fi2.NativePath <> fi.NativePath Then Break
		  fi2 = SmartML.GetValueFI(xDoc2.DocumentElement, "opensongdocuments")
		  If fi2.NativePath <> fi.NativePath Then Break
		  fi2 = SmartML.GetValueFI(xDoc2.DocumentElement, "opensongpreferences")
		  If fi2.NativePath <> fi.NativePath Then Break
		  fi2 = SmartML.GetValueFI(xDoc2.DocumentElement, "attribute/@filename")
		  If fi2.NativePath <> fi.NativePath Then Break
		  fi2 = SmartML.GetValueFI(xDoc2.DocumentElement, "oldstyle")
		  If fi2.NativePath <> fi.NativePath Then Break
		  Break
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TranslateMe(splashShowing As Boolean = False)
		  Dim xnode As XmlNode
		  Dim i As Integer
		  
		  StylePreview = T.GetNode("style_preview")
		  
		  ' --- BUILD TEMPO LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/tempos") + " ..."
		  xnode = T.GetNode("tempo_list").FirstChild
		  For i = UBound(TempoList) DownTo 1
		    TempoList.Remove i
		  Next i
		  While xnode <> Nil
		    TempoList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		  ' --- BUILD THEME LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/themes") + " ..."
		  xnode = T.GetNode("theme_list").FirstChild
		  For i = UBound(ThemeList) DownTo 1
		    ThemeList.Remove i
		  Next i
		  While xnode <> Nil
		    ThemeList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		  ' --- BUILD TIME SIG LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/time_signatures") + " ..."
		  xnode = T.GetNode("time_sig_list").FirstChild
		  For i = UBound(TimeSigList) DownTo 1
		    TimeSigList.Remove i
		  Next i
		  While xnode <> Nil
		    TimeSigList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		  ' --- BUILD TRANSITIONS LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/transitions") + " ..."
		  xnode = T.GetNode("transition_list").FirstChild
		  For i = UBound(TransitionList) DownTo 1
		    TransitionList.Remove i
		  Next i
		  While xnode <> Nil
		    TransitionList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		  ' --- BUILD IMAGEQUALITY LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/imagequality") + " ..."
		  xnode = T.GetNode("imagequality_list").FirstChild
		  For i = UBound(ImageQualityList) DownTo 0
		    ImageQualityList.Remove i
		  Next i
		  While xnode <> Nil
		    ImageQualityList.Append SmartML.GetValue(xnode, "@name")
		    xnode = xnode.NextSibling
		  Wend
		  
		  ' --- BUILD VIDEOLAN PRESET LIST ---
		  If splashShowing Then Splash.SetStatus T.Translate("load_settings/videolan_preset") + " ..."
		  xnode = T.GetNode("videolan_preset_list").FirstChild
		  VideolanPresetList.Clear()
		  While xnode <> Nil
		    If xnode.Name = "preset" Then
		      VideolanPresetList.Value(SmartML.GetValue(xnode, "@name")) = SmartML.GetValue(xnode, "@parameters")
		    End If
		    xnode = xnode.NextSibling
		  Wend
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub UpdatePresentSettings()
		  Dim settings As XmlElement
		  Dim version, currentVersion As Double
		  
		  If MyPresentSettings.DocumentElement = Nil Then Return
		  
		  settings = MyPresentSettings.DocumentElement // save typing
		  
		  version = SmartML.GetValueN(settings, "@version")
		  currentVersion = 1.1
		  If version >= currentVersion Then Return // Already at current version
		  
		  If version < 1.1 Then
		    // these might accidentally have leeked from their internal use during presentation into the settings
		    // if they did, they may migrate by style settings into songs or set items and disrupt proper style handling 
		    SmartML.RemoveNode(settings, "default_style/@index")
		    SmartML.RemoveNode(settings, "scripture_style/@index")
		  End If
		  
		  If version < 1.0 Then
		    //++
		    // Ed Palmer, November 2006 (V1.0 BL13)
		    //
		    // Change the layout of the PresentSettings XML to move certain slide-level
		    // elements (subtitles, descriptive captions, emphasize choruses) to the
		    // <default_style> section of the XML document.
		    //
		    // This helps fix a problem with song-level styles not properly displaying
		    // the subtitles selected for the song instead of the default style.
		    // Actually, it makes the code easier to deal with by making <default_style>
		    // look like any other <style> section, simplifying those areas of the code.
		    //
		    // Also, insert a document-level version number to flag that this is updated.
		    //
		    //--
		    If SmartML.GetValue(settings, "style/@song_subtitles", False) <> "" Then
		      SmartML.SetValue(settings, "default_style/song_subtitle", SmartML.GetValue(settings, "style/@song_subtitles"))
		      SmartML.RemoveNode(settings, "style/@song_subtitles")
		    End If
		    
		    If SmartML.GetValue(settings, "style/@descriptive_subtitle_info", False) <> "" Then
		      SmartML.SetValue(settings, "default_style/subtitle/@descriptive", SmartML.GetValue(settings, "style/@descriptive_subtitle_info", False))
		      SmartML.RemoveNode(settings, "style/@descriptive_subtitle_info")
		    End If
		    
		    If SmartML.GetValue(settings, "style/@highlight_chorus") <> "" Then
		      SmartML.SetValue(settings, "default_style/body/@highlight_chorus", SmartML.GetValue(settings, "style/@highlight_chorus"))
		      SmartML.RemoveNode(settings, "style/@highlight_chorus")
		    End If
		    
		    SmartML.SetValueB(MyPresentSettings.DocumentElement, "song_style_preferred", True)
		    
		    If Not SmartML.XDocToFile(App.MyPresentSettings, App.DocsFolder.Child("Settings").Child("PresentSettings")) Then SmartML.DisplayError
		  End If
		  
		  SmartML.SetValueN(settings, "@version", currentVersion)
		  
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub UpdatePrintSettings()
		  //++
		  // Convert the PrintSettings XML file
		  // Update inches (from versions below 1.0 Beta 2 BL10)
		  // to points.
		  //--
		  Dim value As Double, newvalue As Double
		  Dim attributelist() As String
		  Dim attribute As String
		  Dim inches As Boolean
		  Dim points As Boolean
		  Dim settings As XmlNode
		  
		  settings = MyPrintSettings.DocumentElement
		  points = SmartML.GetValueB(settings, "page/@points", True, False)
		  If points Then Return
		  
		  inches = SmartML.GetValueB(settings, "page/@inches", True, True)
		  
		  attributelist = Split("top,bottom,left,right,height,width", ",")
		  
		  For Each attribute in attributelist
		    value = CDbl(SmartML.GetValue(settings, "page/@" + attribute))
		    If inches Then
		      newvalue = InchesToPoints(value)
		    Else
		      newvalue = CMtoPoints(value)
		    End If
		    SmartML.SetValueN(settings, "page/@" + attribute, Round(newvalue))
		  Next
		  
		  SmartML.SetValueB(settings, "page/@points", True)
		  SmartML.SetValueB(settings, "page/@inches", inches)
		  
		  // Write out the converted file
		  MyPrintSettings.SaveXml DocsFolder.Child("Settings").Child("PrintSettings")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateTranslationFonts()
		  Dim i As Integer
		  For i = UBound(TranslationFonts) DownTo 1
		    TranslationFonts.Remove i
		  Next i
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/headings")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/labels")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/text_fields")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/large_headings")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/buttons")
		  TranslationFonts.Append SmartML.GetValueF(MyMainSettings.DocumentElement, "fonts/fixed_width")
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If IsPortable Then
			    Dim f As FolderItem
			    dim S As string
			    S =  SmartML.GetValue(MyGlobals.DocumentElement, "portable/@absdatapath")
			    if S <> "" then
			      f = GetFolderItem(S, FolderItem.PathTypeAbsolute)
			    else
			      S =  SmartML.GetValue(MyGlobals.DocumentElement, "portable/@relativedatapath")
			      if S = "" then
			        S = "OpenSong Data"
			      end if
			      f = AppFolder.Child(S)
			    end if
			    
			    If FileUtils.CreateFolder(f) Then
			      Return f
			    Else
			      If f <> Nil Then App.DebugWriter.Write("DocumentsFolder: Error in CreateFolder for " + f.AbsolutePath + ", " + FileUtils.LastError, 1)
			      Return Nil
			    End If
			  Else // standard - not portable
			    #If TargetLinux
			      Return SpecialFolder.UserHome
			    #Else
			      Return SpecialFolder.Documents
			    #EndIf
			  End If
			End Get
		#tag EndGetter
		AppDocumentsFolder As FolderItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If IsPortable Then
			    Return AppDocumentsFolder
			  Else
			    Return AppDocumentsFolder.Child("OpenSong")
			  End If
			End Get
		#tag EndGetter
		AppDocumentsFolderForOpenSong As FolderItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If m_AppFolder <> Nil Then
			    Return m_AppFolder
			  End If
			  
			  '++JRC For compatibilty with RB 2008 debugger
			  'RB insists on outputing the executable in a subfolder (sigh)
			  #If Not TargetMacOS
			    #If DebugBuild And RBVersion <= 2012.51
			      m_AppFolder = GetFolderItem("").Parent
			    #Else
			      m_AppFolder = GetFolderItem("")
			    #EndIf
			  #Else
			    #Pragma BreakOnExceptions Off
			    Try
			      m_AppFolder = GetFolderItem(Xojo.IO.SpecialFolder.GetResource("OpenSong Defaults").Parent.Path, FolderItem.PathTypeShell)
			    Catch rtex
			      System.DebugLog "App.Open: GetResource failed due to '" + rtex.Reason + "'"
			      'Use the old way, maybe it's in the same folder as the executable
			      m_AppFolder = GetFolderItem("")
			    End Try
			    #Pragma BreakOnExceptions Default
			  #EndIf
			  
			  Return m_AppFolder
			End Get
		#tag EndGetter
		AppFolder As FolderItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Dim f As FolderItem = Nil
			  
			  If IsPortable Then
			    f = AppFolder.Child("OpenSong Settings")
			    If Not f.Exists Then
			      App.DebugWriter.Write("AppPreferencesFolder: Error 'OpenSong Settings' sub folder doesn't exist", 1)
			    End If
			  Else // standard - not portable
			    // RealBasic SpecialFolder with some platform dependent subfolder
			    #if TargetLinux
			      f = SpecialFolder.Preferences.Child(".OpenSong")
			    #elseif TargetMacOS
			      f = SpecialFolder.Preferences
			    #elseif TargetWin32
			      f = SpecialFolder.Preferences.Child("OpenSong")
			    #endif
			  End If
			  
			  Return f
			  
			End Get
		#tag EndGetter
		AppPreferencesFolderForOpenSong As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		CapoList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DebugWriter As DebugOutput
	#tag EndProperty

	#tag Property, Flags = &h0
		DocsFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		FontList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageQualityList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		IsPortable As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		LastImageFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Holds the main preferences for the application.
			This is the target for all future preferences instead
			of the My...Settings XML documents.
			
			MainPreferences should go in the appropriate location
			for the operating system instead of in the application directory.
			This will typically be in a directory or file under PreferencesFolder
		#tag EndNote
		MainPreferences As IPreferences
	#tag EndProperty

	#tag Property, Flags = &h0
		MyBible As iBible
	#tag EndProperty

	#tag Property, Flags = &h0
		MyFontChooser As FontChooser
	#tag EndProperty

	#tag Property, Flags = &h0
		MyGlobals As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		MyMainSettings As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		MyPresentSettings As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Global printer settings.
		#tag EndNote
		MyPrinterSetup As PrinterSetup
	#tag EndProperty

	#tag Property, Flags = &h0
		MyPrintSettings As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_AppFolder As FolderItem = Nil
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_ControlServer As REST.RESTServer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_statusNotifiers As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		ReleaseCandidate As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ScriptureFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		SplashShowing As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		StylePreview As XmlNode
	#tag EndProperty

	#tag Property, Flags = &h0
		T As Translator
	#tag EndProperty

	#tag Property, Flags = &h0
		TempoList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ThemeList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TimeSigList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TransitionList(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TranslationFonts(0) As FontFace
	#tag EndProperty

	#tag Property, Flags = &h0
		VideolanPresetList As Dictionary = Nil
	#tag EndProperty


	#tag Constant, Name = BACKGROUNDS_FOLDER, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DEFAULTS_FOLDER, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = DOCUMENTS_FOLDER, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = FOLDER_EMPTY, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = FOLDER_EXISTS, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = INVAILD_FOLDER, Type = Double, Dynamic = False, Default = \"-1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kActivityLog, Type = String, Dynamic = False, Default = \"activitylog/level", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kLogAppend, Type = String, Dynamic = False, Default = \"/@append", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kLogConsole, Type = String, Dynamic = False, Default = \"/@console", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kLogLevel, Type = String, Dynamic = False, Default = \"log/level", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kLogOutput, Type = String, Dynamic = False, Default = \"log/file", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPromptBeforePresenting, Type = String, Dynamic = False, Default = \"promptbeforepresenting", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kXmlPrettyPrint, Type = String, Dynamic = False, Default = \"<xsl:stylesheet version\x3D\"1.0\" xmlns:xsl\x3D\"http://www.w3.org/1999/XSL/Transform\">\n    <xsl:preserve-space elements\x3D\"XMLBIBLE BIBLEBOOK CHAPTER VERS bible b c v lyrics\"/>\n    <xsl:output method\x3D\"xml\" indent\x3D\"yes\"/>\n    <xsl:template match\x3D\"/\">\n        <xsl:copy-of select\x3D\".\"/>\n    </xsl:template>\n</xsl:stylesheet>", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NO_FOLDER, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = POINT_TO_CM, Type = Double, Dynamic = False, Default = \"0.035277778", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PREFERENCESVERSION, Type = Double, Dynamic = False, Default = \"1.0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SETS_FOLDER, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SETTINGS_FOLDER, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SONGS_FOLDER, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = STR_BACKGROUNDS, Type = String, Dynamic = False, Default = \"Backgrounds", Scope = Public
	#tag EndConstant

	#tag Constant, Name = STR_OS_DEFAULTS, Type = String, Dynamic = False, Default = \"OpenSong Defaults", Scope = Public
	#tag EndConstant

	#tag Constant, Name = STR_SETS, Type = String, Dynamic = False, Default = \"Sets", Scope = Public
	#tag EndConstant

	#tag Constant, Name = STR_SETTINGS, Type = String, Dynamic = False, Default = \"Settings", Scope = Public
	#tag EndConstant

	#tag Constant, Name = STR_SONGS, Type = String, Dynamic = False, Default = \"Songs", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_NORMAL, Type = Integer, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_RESTORE, Type = Double, Dynamic = False, Default = \"9", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_SHOW, Type = Integer, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_SHOWMINNOACTIVE, Type = Integer, Dynamic = False, Default = \"7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_SHOWNA, Type = Integer, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_SHOWNOACTIVATE, Type = Integer, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = SW_SHOWNORMAL, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="IsPortable"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReleaseCandidate"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SplashShowing"
			Group="Behavior"
			InitialValue="0"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
