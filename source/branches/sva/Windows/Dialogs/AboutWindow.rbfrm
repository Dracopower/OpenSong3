#tag Window
Begin Window AboutWindow
   BackColor       =   "&cFFFFFF00"
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   350
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "About OpenSong"
   Visible         =   True
   Width           =   562
   Begin PushButton btn_about_close
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Close"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   442
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   310
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label txt_about_version
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   36
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "OpenSong V2.1"
      TextAlign       =   0
      TextColor       =   "&c00000000"
      TextFont        =   "Arial"
      TextSize        =   24.0
      TextUnit        =   0
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   328
   End
   Begin Label txt_about_copyright
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Copyright (c) 2003, 2004, 2005, 2006 Sean Lickfold"
      TextAlign       =   0
      TextColor       =   "&c00000000"
      TextFont        =   "Arial"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   54
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   376
   End
   Begin Label txt_about_gpl
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Licensed under the GNU Public License V2.1"
      TextAlign       =   0
      TextColor       =   "&c00000000"
      TextFont        =   "Arial"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   74
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   376
   End
   Begin Label txt_about_web
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "http://www.opensong.org"
      TextAlign       =   0
      TextColor       =   "&c0000FF00"
      TextFont        =   "Arial"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   95
      Transparent     =   False
      Underline       =   True
      Visible         =   True
      Width           =   376
   End
   Begin Label txt_about_programmers
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   71
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Joshua Coley, Ed Palmer, Gareth Evans, Joseph Dol, Sebastian Schöps, Rüdiger Greeb, Martyn Eggleton, Ben Henny, Matt Gillies, Jon Wright, Dean Whisnant, Ewout Voogt, Gerrit Prins, Tim Howard, Ng Oon-Ee, Caleb, Patrick van Beem, Philipp Jahn"
      TextAlign       =   0
      TextColor       =   "&c00000000"
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   127
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   376
   End
   Begin TextArea edt_about_libraries
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   "&cFFFFFF00"
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   82
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   160
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   "&c00000000"
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   210
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   376
   End
   Begin Label txt_about_compiler
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   22
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Compiler"
      TextAlign       =   2
      TextColor       =   "&c00000000"
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   235
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label txt_about_memory
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Memory"
      TextAlign       =   2
      TextColor       =   "&c00000000"
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   249
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   102
   End
   Begin Label txt_about_objects
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Object Count"
      TextAlign       =   2
      TextColor       =   "&c00000000"
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   263
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   102
   End
   Begin Label txt_about_build
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Build"
      TextAlign       =   2
      TextColor       =   "&c00000000"
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   277
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   102
   End
   Begin Label txt_about_language
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "English: Sean Lickfold"
      TextAlign       =   0
      TextColor       =   "&c00000000"
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   313
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   410
   End
   Begin Canvas Canvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   1430269951
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   128
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   14
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   128
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim str As String
		  
		  str = "OpenSong " + App.SmartVersion
		  txt_about_version.Text = str
		  str = App.T.Translate("about/copyright") + " " + Encodings.UTF8.Chr(169) + _
		  " 2003-2006, Sean Lickfold"
		  txt_about_copyright.Text = str
		  
		  txt_about_gpl.Text = App.T.Translate("about/gpl")
		  txt_about_web.Text = App.T.Translate("about/web")
		  '++JRC translated
		  txt_about_programmers.Text = App.T.Translate("about/additional") + EndOfLine + txt_about_programmers.Text
		  '--
		  str = App.T.Translate("general_settings/general/language/@caption") + ": "
		  str = str + App.T.Translate("@name") + " - " + App.T.Translate("@author")
		  txt_about_language.Text = str
		  
		  str = App.T.Translate("about/sources")
		  edt_about_libraries.Text = str
		  
		  btn_about_close.Caption = App.T.Translate("shared/close/@caption")
		  
		  txt_about_memory.Text = Format(Runtime.MemoryUsed, "#,##9")
		  txt_about_objects.Text = Format(Runtime.ObjectCount, "#,##9")
		  txt_about_build.Text = Format(App.NonReleaseVersion, "#,##9")
		  txt_about_compiler.Text = RBVersionString
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events btn_about_close
	#tag Event
		Sub Action()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txt_about_web
	#tag Event
		Sub MouseEnter()
		  App.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  ShowURL "http://www.opensong.org/"
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  App.MouseCursor = Nil
		End Sub
	#tag EndEvent
#tag EndEvents
