#tag Window
Begin Window MainWin
   Placement       =   0
   Width           =   693
   Height          =   412
   MinWidth        =   348
   MinHeight       =   400
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   0
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "RB Project Tool ^0"
   Visible         =   "False"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "False"
   LiveResize      =   "False"
   MaximizeButton  =   "False"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin ShowURLText StaticText1
      Index           =   -2147483648
      Left            =   9
      Top             =   393
      Height          =   16
      Width           =   351
      TextFont        =   "SmallSystem"
      TextSize        =   0
      ControlOrder    =   0
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Text            =   "By Thomas Tempelmann (http://www.tempel.org/rb/#prjtool)\r"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   "True"
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      URL             =   "http://www.tempel.org/rb/#prjtool"
      BehaviorIndex   =   0
   End
   Begin GroupBox exportXMLBox
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   8
      Top             =   116
      Width           =   332
      Height          =   106
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Export as XML (.xml)"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   1
   End
   Begin StaticText StaticText3
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   15
      Top             =   139
      Width           =   320
      Height          =   32
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "Drag a project file into this field to export it to an XML file compatible with RB's XML format"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportXMLBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   2
   End
   Begin GroupBox exportTextBox
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   8
      Top             =   231
      Width           =   332
      Height          =   106
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Export as Text (.rbvx)"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   7
   End
   Begin StaticText StaticText4
      Index           =   -2147483648
      ControlOrder    =   4
      Left            =   15
      Top             =   254
      Width           =   320
      Height          =   32
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "Drag a project file into this field to export it to a more or less lossless text file format"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportTextBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   8
   End
   Begin CheckBox xmlIncludeChk
      Index           =   -2147483648
      ControlOrder    =   5
      Left            =   15
      Top             =   176
      Width           =   140
      Height          =   16
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Process Externals"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   "If enabled, external items will be processed as well, otherwise only the main file will be processed"
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportXMLBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   3
   End
   Begin CheckBox xmlRB55Chk
      Index           =   -2147483648
      ControlOrder    =   6
      Left            =   15
      Top             =   198
      Width           =   151
      Height          =   16
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "RB 5.5 compatible"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   "If enabled, Properties will be exported in an older format understood by RB 5 (and earlier as well). Comments for Properties, added with RB 2005, will be lost then, however."
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportXMLBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   4
   End
   Begin CheckBox txtIncludeChk
      Index           =   -2147483648
      ControlOrder    =   7
      Left            =   15
      Top             =   291
      Width           =   140
      Height          =   16
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Process Externals"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   "If enabled, external items will be processed as well, otherwise only the main file will be processed"
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportTextBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   9
   End
   Begin GroupBox exportBinaryBox
      Index           =   -2147483648
      ControlOrder    =   8
      Left            =   8
      Top             =   8
      Width           =   332
      Height          =   96
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Export as Binary (.rbp)"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   13
   End
   Begin StaticText StaticText5
      Index           =   -2147483648
      ControlOrder    =   9
      Left            =   15
      Top             =   31
      Width           =   320
      Height          =   40
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "Drag a project file into this field to export it to an .rbp file compatible with RB's internal binary format. (Adds ""-out"" to file name)"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportBinaryBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   14
   End
   Begin GroupBox classBrowserBox
      Index           =   -2147483648
      ControlOrder    =   10
      Left            =   353
      Top             =   150
      Width           =   332
      Height          =   61
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Class Browser"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   18
   End
   Begin StaticText StaticText6
      Index           =   -2147483648
      ControlOrder    =   11
      Left            =   360
      Top             =   173
      Width           =   320
      Height          =   29
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      Text            =   "Drag a project file into this field to view it in a Class Browser (Note: still in experimental state)"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "classBrowserBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   19
   End
   Begin ChasingArrows exportXMLBusy
      Index           =   -2147483648
      ControlOrder    =   12
      Left            =   320
      Top             =   201
      Width           =   16
      Height          =   16
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   ""
      LockBottom      =   ""
      InitialParent   =   "exportXMLBox"
      Visible         =   "False"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin GroupBox objsBrowserBox
      Index           =   -2147483648
      ControlOrder    =   13
      Left            =   353
      Top             =   79
      Width           =   332
      Height          =   62
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "PrjObjs Browser"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   20
   End
   Begin StaticText StaticText7
      Index           =   -2147483648
      ControlOrder    =   14
      Left            =   360
      Top             =   102
      Width           =   320
      Height          =   30
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "Drag a project file into this field to view its PrjObj items in a hierarchical list (Note: still in experimental state)"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "objsBrowserBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   21
   End
   Begin GroupBox vaultExport
      Index           =   -2147483648
      ControlOrder    =   15
      Left            =   353
      Top             =   220
      Width           =   332
      Height          =   99
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Export to Vault"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   22
   End
   Begin StaticText StaticText8
      Index           =   -2147483648
      ControlOrder    =   16
      Left            =   360
      Top             =   242
      Width           =   320
      Height          =   28
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      Text            =   "Drag a project file (.rbp) into this field to write its items to a ""vault"" directory for use with version control tools."
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "vaultExport"
      TabPanelIndex   =   0
      BehaviorIndex   =   23
   End
   Begin GroupBox vaultImport
      Index           =   -2147483648
      ControlOrder    =   17
      Left            =   353
      Top             =   328
      Width           =   332
      Height          =   61
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Import from Vault"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   28
   End
   Begin StaticText StaticText9
      Index           =   -2147483648
      ControlOrder    =   18
      Left            =   360
      Top             =   351
      Width           =   320
      Height          =   29
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "Drag a vault directory into this field to recreate the project file from it"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "vaultImport"
      TabPanelIndex   =   0
      BehaviorIndex   =   29
   End
   Begin GroupBox itemsBrowserBox
      Index           =   -2147483648
      ControlOrder    =   19
      Left            =   353
      Top             =   8
      Width           =   332
      Height          =   62
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Project Items Browser"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   31
   End
   Begin StaticText StaticText10
      Index           =   -2147483648
      ControlOrder    =   20
      Left            =   360
      Top             =   31
      Width           =   320
      Height          =   30
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "Drag a project file into this field to view all its items in their original structure"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "itemsBrowserBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   32
   End
   Begin CheckBox xmlMergeChk
      Index           =   -2147483648
      ControlOrder    =   21
      Left            =   162
      Top             =   176
      Width           =   90
      Height          =   16
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "merged"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   "If enabled, externals will included in the main file's export;\rIf disabled, externals will generate their own export files"
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportXMLBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin CheckBox txtOrderedChk
      Index           =   -2147483648
      ControlOrder    =   22
      Left            =   15
      Top             =   313
      Width           =   284
      Height          =   16
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Ordered and simplified (useful for comparisons)"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   "If enabled, items will be sorted by their names, leaf groups be collected into single lines, and source code nicely formatted for better readability.\r\rIf disabled, items will appear in their original order, one per line."
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportTextBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   10
   End
   Begin ChasingArrows exportTextBusy
      Index           =   -2147483648
      ControlOrder    =   23
      Left            =   320
      Top             =   316
      Width           =   16
      Height          =   16
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   ""
      LockBottom      =   ""
      InitialParent   =   "exportTextBox"
      Visible         =   "False"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   11
   End
   Begin ChasingArrows vaultImportBusy
      Index           =   -2147483648
      ControlOrder    =   24
      Left            =   665
      Top             =   369
      Width           =   16
      Height          =   16
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   "True"
      LockBottom      =   "True"
      InitialParent   =   "vaultImport"
      Visible         =   "False"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   30
   End
   Begin CheckBox txtMergeChk
      Index           =   -2147483648
      ControlOrder    =   25
      Left            =   162
      Top             =   291
      Width           =   90
      Height          =   16
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "merged"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   "If enabled, externals will included in the main file's export;\rIf disabled, externals will generate their own export files"
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportTextBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   12
   End
   Begin ChasingArrows vaultExportBusy
      Index           =   -2147483648
      ControlOrder    =   26
      Left            =   665
      Top             =   298
      Width           =   16
      Height          =   16
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   ""
      LockBottom      =   "True"
      InitialParent   =   "vaultExport"
      Visible         =   "False"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   24
   End
   Begin ChasingArrows exportBinaryBusy
      Index           =   -2147483648
      ControlOrder    =   27
      Left            =   320
      Top             =   83
      Width           =   16
      Height          =   16
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   ""
      LockBottom      =   ""
      InitialParent   =   "exportBinaryBox"
      Visible         =   "False"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   15
   End
   Begin CheckBox expBinIncludeChk
      Index           =   -2147483648
      ControlOrder    =   28
      Left            =   15
      Top             =   78
      Width           =   140
      Height          =   16
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Process Externals"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   "If enabled, external items will be processed as well, otherwise only the main file will be processed"
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportBinaryBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   16
   End
   Begin CheckBox expBinMergeChk
      Index           =   -2147483648
      ControlOrder    =   29
      Left            =   162
      Top             =   78
      Width           =   90
      Height          =   16
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "merged"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   "If enabled, externals will included in the main file's export;\rIf disabled, externals will generate their own export files"
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportBinaryBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   17
   End
   Begin GroupBox exportDoxyBox
      Index           =   -2147483648
      ControlOrder    =   30
      Left            =   9
      Top             =   450
      Width           =   332
      Height          =   76
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   ""
      LockBottom      =   ""
      Caption         =   "Export to Doxygen"
      Enabled         =   "False"
      Visible         =   "False"
      HelpTag         =   ""
      AutoDeactivate  =   "False"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   33
   End
   Begin StaticText StaticText12
      Index           =   -2147483648
      ControlOrder    =   31
      Left            =   16
      Top             =   475
      Width           =   320
      Height          =   43
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "False"
      Text            =   "Drag a project file into this field to export it to a Java project file for use with Doxygen (converter provided by Andy Dent)"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "exportDoxyBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   34
   End
   Begin ChasingArrows exportDoxygenBusy
      Index           =   -2147483648
      ControlOrder    =   32
      Left            =   321
      Top             =   505
      Width           =   16
      Height          =   16
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   ""
      LockBottom      =   ""
      InitialParent   =   "exportDoxyBox"
      Visible         =   "False"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   35
   End
   Begin ShowURLText StaticText11
      Index           =   -2147483648
      Left            =   360
      Top             =   299
      Height          =   16
      Width           =   293
      TextFont        =   "SmallSystem"
      TextSize        =   0
      ControlOrder    =   33
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Text            =   "http://www.rbwiki.org/doku.php/rbp/scm/rbvexim"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   "True"
      Enabled         =   "True"
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "vaultExport"
      URL             =   "http://www.rbwiki.org/doku.php/rbp/scm/rbvexim"
      BehaviorIndex   =   25
   End
   Begin CheckBox vaultExportFoldersChk
      Index           =   -2147483648
      ControlOrder    =   34
      Left            =   360
      Top             =   276
      Width           =   154
      Height          =   16
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Adopt Folders in Vault"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   "If checked, the files in the vault adopt the project's folder hierarchy.\rIf unchecked, all project item files will be stored flat in the vault directory"
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "vaultExport"
      TabPanelIndex   =   0
      BehaviorIndex   =   26
   End
   Begin CheckBox vaultExportSeparateExtsChk
      Index           =   -2147483648
      ControlOrder    =   35
      Left            =   523
      Top             =   276
      Width           =   134
      Height          =   16
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "Separate Externals"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   "If checked, external files get stored in separate vault folders located next to those files.\rIf unchecked, all external files will be stored inside the project's vault directory."
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "vaultExport"
      TabPanelIndex   =   0
      BehaviorIndex   =   27
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  self.Title = Replace (self.Title, "^0", App.ShortVersion)
		  expBinMergeChk.Enabled = expBinIncludeChk.Value
		  xmlMergeChk.Enabled = xmlIncludeChk.Value
		  txtMergeChk.Enabled = txtIncludeChk.Value
		End Sub
	#tag EndEvent


#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			me.Close
		End Function
#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function ProcessFile(prjFile as FolderItem, processExternals as Boolean, insertExternals as Boolean, exportMode as Integer, hideExternalRefs as Boolean = true) As Boolean
		  dim rbp as new RBPrjFileReader
		  dim proc1, postProcessor, processor as RBPrjProcessing
		  dim outFile as FolderItem
		  dim idents as RBPrjIdents
		  dim results as RBPrjParseResults
		  dim parseOptions as RBPrjItemsTreeParseOptions
		  
		  prjFile = FollowAlias (prjFile)
		  
		  if not rbp.Open (prjFile) then
		    MsgBox "This is not a valid project file: "+prjFile.Name
		    return false
		  end
		  
		  if exportMode = 0 then
		    // text export - original order
		    processor = new RBPrjTextFileWriter (nil, false, false, false)
		  elseif exportMode = 1 then
		    // text export - ordered (sorted) for comparison and optimized for viewing
		    processor = new RBPrjItemsTreeBuilder ()
		    postProcessor = new RBPrjTextFileWriter (nil, true, true, true)
		    parseOptions = new RBPrjItemsTreeParseOptions (RBPrjItemsTreeParseOptions.OptimizeAll)
		  elseif exportMode = 2 then
		    processor = new RBPrjXMLFileWriter ("5.5.5")
		  elseif exportMode = 3 then
		    processor = new RBPrjXMLFileWriter ()
		  elseif exportMode = 4 then
		    processor = new RBPrjObjTreeBuilder ()
		  elseif exportMode = 5 then
		    processor = new RBPrjObjTreeBuilder ()
		  elseif exportMode = 6 then
		    processor = new RBPrjItemsTreeBuilder ()
		  elseif exportMode = 8 then
		    processor = new RBPrjBinaryFileWriter (nil, "-out")
		  elseif exportMode = 11 then
		    processor = new RBPrjXMLBuilder ()
		  else
		    MsgBox "Unknown 'exportMode': "+Str(exportMode)
		    return false
		  end
		  proc1 = processor
		  
		  if processExternals then
		    processor = new RBPrjExternalsIncluder (processor, new RBPrjFileReader, insertExternals, hideExternalRefs, new RBPrjFileLocator (prjFile.Parent, false, ""))
		  end
		  
		  try
		    ProgressWin.Show
		    results = new RBPrjParseResults (ProgressWin.ProgressAwareCtrl1)
		    rbp.Parse (processor, results, RBPrjSupport.IgnoreExternals, nil)
		    ProgressWin.Close
		    // post process:
		    if not results.HadFatalErrors() then
		      if proc1 isA RBPrjItemsTreeBuilder and postProcessor <> nil then
		        RBPrjItemsTreeBuilder(proc1).ItemsTree.Parse (postProcessor, results, RBPrjSupport.SeparateExternals, parseOptions)
		      end
		    end
		  exception exc as RuntimeException
		    ProgressWin.Close
		    if exc isA RBPrjException then
		      MsgBox "The process failed: "+exc.Message
		    else
		      MsgBox "The process failed because of an unexpected exception"
		    end
		    return false
		  end
		  
		  if results.hadEncryptedItems then
		    results.warnMsgs.Insert 0, "Warning: Prj file contains encrypted items that were not handled"
		  end
		  
		  if Ubound(results.errMsgs) >= 0 then
		    MsgBox "There were errors:"+EndOfLine+EndOfLine+Join(results.errMsgs,EndOfLine)
		    return false
		  end
		  
		  if Ubound(results.warnMsgs) >= 0 then
		    MsgBox "There were warnings:"+EndOfLine+EndOfLine+Join(results.warnMsgs,EndOfLine)
		  end
		  
		  if exportMode = 4 then
		    // now open a window with a class browser
		    try
		      idents = new RBPrjIdents (RBPrjObjTreeBuilder (proc1).ObjTree)
		    exception exc2 as RBPrjException
		      MsgBox "The class tree could not be built: "+exc2.Message
		      return false
		    end
		    new ClassBrowserWin.SetTree idents // this opens the window
		  elseif exportMode = 5 then
		    // now open a window with a objs browser
		    new RBPrjObjsWin.ShowTree RBPrjObjTreeBuilder (proc1).ObjTree // this opens the window
		  elseif exportMode = 6 then
		    // now open a window with a items browser
		    new RBPrjItemsWin.ShowTree RBPrjItemsTreeBuilder (proc1).ItemsTree // this opens the window
		  elseif exportMode = 11 then
		    // do a xslt transformation with Andy Dent's transformer
		    #if true
		      MsgBox "Doxygen support removed due to apparent lack of interest"
		    #else
		      if not transformXML (RBPrjXMLBuilder(proc1).AsXML, RB2Doxy, RBPrjHelper.AddedBeforeExtension (prjFile, "-trans")) then
		        MsgBox "Doxygen output failed for unknown reason"
		      end
		    #endif
		  end
		  
		  return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function transformXML(xml as XMLDocument, xsltStr as String, outputRef as FolderItem) As Boolean
		  dim s as String
		  dim ts as TextOutputStream
		  
		  try
		    s = xml.Transform (xsltStr)
		    ts = outputRef.CreateTextFile
		    ts.Delimiter = chr(10) // LF
		    ts.Write s
		    ts.Close
		    return true
		  exception
		    // oops
		  end
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FollowAlias(f as FolderItem) As FolderItem
		  if f.Alias then
		    f = f.Parent.Child(f.Name)
		  end
		  return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function handleVaultAction(inputItem as FolderItem, isExport as Boolean) As Boolean
		  dim ok as Boolean
		  dim results as RBPrjParseResults
		  
		  if isExport then
		    // export to vault
		    ok = RBPrjSupport.WriteProjectToVault (inputItem, results, not vaultExportSeparateExtsChk.Value, vaultExportFoldersChk.Value, false)
		    RBPrjSupport.ShowParseResults results, "Vault Export"
		  else
		    // import from vault
		    ok = RBPrjSupport.CreateProjectFromVault (inputItem, results)
		    RBPrjSupport.ShowParseResults results, "Vault Import"
		  end
		  
		  return ok
		End Function
	#tag EndMethod


#tag EndWindowCode

#tag Events exportXMLBox
	#tag Event
		Sub Open()
		  me.AcceptFileDrop "RBprj"
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  dim mode as Integer
		  
		  if xmlRB55Chk.Value then
		    mode = 2 // RB 5.5 compatible
		  else
		    mode = 3 // RB 2005 format
		  end
		  
		  exportXMLBusy.Visible = true
		  me.Enabled = false
		  me.Refresh
		  do
		    if obj.FolderItemAvailable then
		      call self.ProcessFile (obj.FolderItem, xmlIncludeChk.Value, xmlMergeChk.Value, mode)
		    end
		  loop until not obj.NextItem
		  me.Enabled = true
		  exportXMLBusy.Visible = false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events exportTextBox
	#tag Event
		Sub Open()
		  me.AcceptFileDrop "RBprj"
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  dim mode as Integer
		  if txtOrderedChk.Value then
		    mode = 1
		  else
		    mode = 0
		  end
		  
		  exportTextBusy.Visible = true
		  me.Enabled = false
		  me.Refresh
		  do
		    if obj.FolderItemAvailable then
		      call self.ProcessFile (obj.FolderItem, txtIncludeChk.Value, txtMergeChk.Value, mode, false)
		    end
		  loop until not obj.NextItem
		  me.Enabled = true
		  exportTextBusy.Visible = false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events xmlIncludeChk
	#tag Event
		Sub Action()
		  xmlMergeChk.Enabled = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtIncludeChk
	#tag Event
		Sub Action()
		  txtMergeChk.Enabled = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events exportBinaryBox
	#tag Event
		Sub Open()
		  if me.Enabled then
		    me.AcceptFileDrop "RBprj"
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  exportBinaryBusy.Visible = true
		  me.Enabled = false
		  me.Refresh
		  do
		    if obj.FolderItemAvailable then
		      call self.ProcessFile (obj.FolderItem, expBinIncludeChk.Value, expBinMergeChk.Value, 8)
		    end
		  loop until not obj.NextItem
		  me.Enabled = true
		  exportBinaryBusy.Visible = false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events classBrowserBox
	#tag Event
		Sub Open()
		  me.AcceptFileDrop "RBprj"
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  do
		    if obj.FolderItemAvailable then
		      call self.ProcessFile (obj.FolderItem, true, true, 4)
		    end
		  loop until not obj.NextItem
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events objsBrowserBox
	#tag Event
		Sub Open()
		  me.AcceptFileDrop "RBprj"
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  do
		    if obj.FolderItemAvailable then
		      call self.ProcessFile (obj.FolderItem, true, true, 5)
		    end
		  loop until not obj.NextItem
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events vaultExport
	#tag Event
		Sub Open()
		  me.AcceptFileDrop "RBprj"
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  vaultExportBusy.Visible = true
		  me.Enabled = false
		  me.Refresh
		  do
		    if obj.FolderItemAvailable then
		      if not handleVaultAction (obj.FolderItem, true) then
		        exit
		      end
		    end
		  loop until not obj.NextItem
		  me.Enabled = true
		  vaultExportBusy.Visible = false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events vaultImport
	#tag Event
		Sub Open()
		  me.AcceptFileDrop "vault"
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  vaultImportBusy.Visible = true
		  me.Enabled = false
		  me.Refresh
		  do
		    if obj.FolderItemAvailable then
		      if not handleVaultAction (obj.FolderItem, false) then
		        exit
		      end
		    end
		  loop until not obj.NextItem
		  me.Enabled = true
		  vaultImportBusy.Visible = false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events itemsBrowserBox
	#tag Event
		Sub Open()
		  me.AcceptFileDrop "RBprj"
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  do
		    if obj.FolderItemAvailable then
		      call self.ProcessFile (obj.FolderItem, true, false, 6)
		    end
		  loop until not obj.NextItem
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events expBinIncludeChk
	#tag Event
		Sub Action()
		  expBinMergeChk.Enabled = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events exportDoxyBox
	#tag Event
		Sub Open()
		  if me.Enabled then
		    me.AcceptFileDrop "RBprj"
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  exportDoxygenBusy.Visible = true
		  me.Enabled = false
		  me.Refresh
		  do
		    if obj.FolderItemAvailable then
		      call self.ProcessFile (obj.FolderItem, true, true, 11)
		    end
		  loop until not obj.NextItem
		  me.Enabled = true
		  exportDoxygenBusy.Visible = false
		End Sub
	#tag EndEvent
#tag EndEvents
