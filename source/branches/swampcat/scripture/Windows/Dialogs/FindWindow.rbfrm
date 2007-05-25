#tag Window
Begin Window FindWindow
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   293
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   64
   MinimizeButton  =   "True"
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   "False"
   Title           =   "Song Search"
   Visible         =   "True"
   Width           =   300
   Begin StaticText txt_song_search
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Enter search string:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   10
      Underline       =   "False"
      Visible         =   True
      Width           =   200
      BehaviorIndex   =   0
   End
   Begin EditField edt_input
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      BalloonHelp     =   ""
      Bold            =   "False"
      Border          =   "True"
      ControlOrder    =   1
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LimitText       =   0
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Mask            =   ""
      Multiline       =   "False"
      Password        =   "False"
      ReadOnly        =   "False"
      ScrollBar       =   "True"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   25
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   195
      BehaviorIndex   =   1
   End
   Begin SButton btn_ok
                      =   ""
                      =   ""
                      =   ""
                      =   100
                      =   ""
                      =   ""
                      =   ""
                      =   "True"
                      =   ""
                      =   ""
      AcceptFocus     =   "True"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      ControlOrder    =   2
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "GroupBox4"
      IsStuck         =   "False"
      Label           =   "OK"
      LabelAlign      =   0
      Left            =   210
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      StickyBevel     =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   25
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      BehaviorIndex   =   2
   End
   Begin SButton btn_cancel
                      =   ""
                      =   ""
                      =   ""
                      =   100
                      =   ""
                      =   ""
                      =   ""
                      =   "True"
                      =   ""
                      =   ""
      AcceptFocus     =   "True"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      BalloonHelp     =   ""
      ControlOrder    =   3
      DisabledBalloonHelp=   ""
      Enabled         =   "True"
      Height          =   24
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "GroupBox4"
      IsStuck         =   "False"
      Label           =   "OK"
      LabelAlign      =   0
      Left            =   210
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      StickyBevel     =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   50
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   80
      BehaviorIndex   =   3
   End
   Begin PushButton btnOK
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "OK"
      ControlOrder    =   4
      Default         =   "True"
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   320
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   14
      Underline       =   "False"
      Visible         =   True
      Width           =   22
      BehaviorIndex   =   4
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Cancel"
      ControlOrder    =   5
      Default         =   "False"
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   320
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   48
      Underline       =   "False"
      Visible         =   True
      Width           =   22
      BehaviorIndex   =   5
   End
   Begin GroupBox grp_search_fields
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Search Fields"
      ControlOrder    =   6
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   205
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   80
      Underline       =   "False"
      Visible         =   True
      Width           =   280
      BehaviorIndex   =   6
   End
   Begin CheckBox chk_search_title
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Title"
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   100
      Underline       =   "False"
      Value           =   "True"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   7
   End
   Begin CheckBox chk_search_author
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Author"
      ControlOrder    =   8
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   120
      Underline       =   "False"
      Value           =   "True"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   8
   End
   Begin CheckBox chk_search_copyright
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Copyright"
      ControlOrder    =   9
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   140
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   9
   End
   Begin CheckBox chk_search_ccli
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "CCLI #"
      ControlOrder    =   10
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   160
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   10
   End
   Begin CheckBox chk_search_presentation
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Presentation"
      ControlOrder    =   11
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   180
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   11
   End
   Begin CheckBox chk_search_lyrics
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Chords/Lyrics"
      ControlOrder    =   12
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   200
      Underline       =   "False"
      Value           =   "True"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   12
   End
   Begin CheckBox chk_search_themes
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Themes"
      ControlOrder    =   13
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   238
      Underline       =   "False"
      Value           =   "True"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   13
   End
   Begin CheckBox chk_search_capo
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Capo"
      ControlOrder    =   14
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   258
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   14
   End
   Begin CheckBox chk_search_time_sig
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Time Signature"
      ControlOrder    =   15
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   155
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   100
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   15
   End
   Begin CheckBox chk_search_tempo
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Tempo"
      ControlOrder    =   16
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   155
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   120
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   16
   End
   Begin CheckBox chk_search_key
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Key"
      ControlOrder    =   17
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   155
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   140
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   17
   End
   Begin CheckBox chk_search_aka
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "AKA"
      ControlOrder    =   18
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   155
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   160
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   18
   End
   Begin CheckBox chk_search_key_line
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Key Line"
      ControlOrder    =   19
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   155
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   180
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   19
   End
   Begin CheckBox chk_search_user1
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "User Defined 1"
      ControlOrder    =   20
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   155
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   200
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   20
   End
   Begin CheckBox chk_search_user2
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "User Defined 2"
      ControlOrder    =   21
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   155
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   220
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   21
   End
   Begin CheckBox chk_search_user3
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "User Defined 3"
      ControlOrder    =   22
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   155
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   240
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   125
      BehaviorIndex   =   22
   End
   Begin CheckBox chk_search_hymn_number
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   "False"
      Caption         =   "Hymn Number"
      ControlOrder    =   23
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      Height          =   19
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   "grp_search_fields"
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   219
      Underline       =   "False"
      Value           =   "False"
      Visible         =   True
      Width           =   123
      BehaviorIndex   =   23
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  App.T.TranslateWindow Me, "song_search", App.TranslationFonts
		  
		  Dim s As String
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user1")
		  If s.Len = 0 Then s = App.T.Translate("advanced_editor/user1/@caption")
		  chk_search_user1.Caption = s
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user2")
		  If s.Len = 0 Then s = App.T.Translate("advanced_editor/user2/@caption")
		  chk_search_user2.Caption = s
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user3")
		  If s.Len = 0 Then s = App.T.Translate("advanced_editor/user3/@caption")
		  chk_search_user3.Caption = s
		  
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub Cancel()
		  Output = False
		  Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Okay()
		  Output = True
		  Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Popup(ByRef find As FindClass) As Boolean
		  Me.find = find
		  
		  edt_input.Text = find.FindString
		  chk_search_title.Value = find.FindTitle
		  chk_search_author.Value = find.FindAuthor
		  chk_search_copyright.Value = find.FindCopyright
		  chk_search_ccli.Value = find.FindCCLI
		  chk_search_presentation.Value = find.FindPresentation
		  chk_search_lyrics.Value = find.FindLyrics
		  '++JRC
		  chk_search_hymn_number.Value = find.FindHymnNumber
		  '--
		  chk_search_themes.Value = find.FindThemes
		  chk_search_capo.Value = find.FindCapo
		  chk_search_time_sig.Value = find.FindTimeSig
		  chk_search_tempo.Value = find.FindTempo
		  chk_search_key.Value = find.FindKey
		  chk_search_aka.Value = find.FindAKA
		  chk_search_key_line.Value = find.FindKeyLine
		  chk_search_user1.Value = find.FindUser1
		  chk_search_user2.Value = find.FindUser2
		  chk_search_user3.Value = find.FindUser3
		  
		  edt_input.SelStart = 0
		  edt_input.SelLength = edt_input.Text.Len
		  
		  ShowModal
		  Return Output
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		find As FindClass
	#tag EndProperty

	#tag Property, Flags = &h0
		Output As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events edt_input
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_input.Text  = c.Text
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  find.FindString = Me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_ok
	#tag Event
		Sub Action()
		  Okay
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon buttonokpic, buttonokmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  Cancel
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon buttoncancepic, buttoncancemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOK
	#tag Event
		Sub Action()
		  Okay
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  Cancel
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_title
	#tag Event
		Sub Action()
		  find.FindTitle = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_author
	#tag Event
		Sub Action()
		  find.FindAuthor = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_copyright
	#tag Event
		Sub Action()
		  find.FindCopyright = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_ccli
	#tag Event
		Sub Action()
		  find.FindCCLI = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_presentation
	#tag Event
		Sub Action()
		  find.FindPresentation = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_lyrics
	#tag Event
		Sub Action()
		  find.FindLyrics = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_themes
	#tag Event
		Sub Action()
		  find.FindThemes = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_capo
	#tag Event
		Sub Action()
		  find.FindCapo = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_time_sig
	#tag Event
		Sub Action()
		  find.FindTimeSig = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_tempo
	#tag Event
		Sub Action()
		  find.FindTempo = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_key
	#tag Event
		Sub Action()
		  find.FindKey = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_aka
	#tag Event
		Sub Action()
		  find.FindAKA = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_key_line
	#tag Event
		Sub Action()
		  find.FindKeyLine = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_user1
	#tag Event
		Sub Action()
		  find.FindUser1 = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_user2
	#tag Event
		Sub Action()
		  find.FindUser2 = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_user3
	#tag Event
		Sub Action()
		  find.FindUser3 = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_search_hymn_number
	#tag Event
		Sub Action()
		  find.FindHymnNumber = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents