#tag Window
Begin Window MainWindow
   BackColor       =   4210752
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   0
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   564
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   -1144876511
   MenuBarVisible  =   "True"
   MinHeight       =   450
   MinimizeButton  =   "True"
   MinWidth        =   750
   Placement       =   2
   Resizeable      =   "True"
   Title           =   "OpenSong"
   Visible         =   "True"
   Width           =   750
   Begin PagePanel pge_contents
      AutoDeactivate  =   "True"
      ControlOrder    =   0
      Enabled         =   True
      Height          =   529
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   255
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      PanelCount      =   4
      Panels          =   ""
      TabPanelIndex   =   0
      Top             =   34
      Value           =   1
      Visible         =   True
      Width           =   495
      BehaviorIndex   =   0
      Begin Canvas can_editor_general_song_editor
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   2
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   520
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_contents"
         Left            =   260
         LockBottom      =   "True"
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         TabPanelIndex   =   1
         Top             =   40
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   485
         BehaviorIndex   =   1
         Begin StaticText hdr_song_header
            AutoDeactivate  =   "True"
            Bold            =   "True"
            ControlOrder    =   3
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Song Editor"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   22
            Top             =   50
            Underline       =   "False"
            Visible         =   True
            Width           =   200
            BehaviorIndex   =   2
         End
         Begin SButton btn_song_show_general_editor
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   9
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Left            =   475
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   50
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   125
            BehaviorIndex   =   3
         End
         Begin SButton btn_song_show_advanced_editor
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   10
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Left            =   605
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   50
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   125
            BehaviorIndex   =   4
         End
         Begin StaticText lbl_song_title
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   11
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Title:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   91
            Underline       =   "False"
            Visible         =   True
            Width           =   220
            BehaviorIndex   =   5
         End
         Begin SEditField edt_song_title
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   12
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   271
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "True"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   1
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   105
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   220
            BehaviorIndex   =   6
         End
         Begin StaticText lbl_song_author
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   13
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Author:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   126
            Underline       =   "False"
            Visible         =   True
            Width           =   220
            BehaviorIndex   =   7
         End
         Begin SEditField edt_song_author
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   14
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   271
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "True"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   1
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   140
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   220
            BehaviorIndex   =   8
         End
         Begin StaticText lbl_song_copyright
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   15
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   505
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Copyright:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   91
            Underline       =   "False"
            Visible         =   True
            Width           =   225
            BehaviorIndex   =   9
         End
         Begin SEditField edt_song_copyright
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   16
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   505
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "True"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   1
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   105
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   225
            BehaviorIndex   =   10
         End
         Begin StaticText lbl_song_ccli
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   17
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   505
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "True"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "CCLI #:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   126
            Underline       =   "False"
            Visible         =   True
            Width           =   105
            BehaviorIndex   =   11
         End
         Begin SEditField edt_song_ccli
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   18
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   505
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "True"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   1
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   140
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   105
            BehaviorIndex   =   12
         End
         Begin StaticText lbl_song_presentation
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   19
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   625
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "True"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Presentation:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   126
            Underline       =   "False"
            Visible         =   True
            Width           =   105
            BehaviorIndex   =   13
         End
         Begin SEditField edt_song_presentation
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   20
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   625
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "True"
            Mask            =   ">CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC"
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   1
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   140
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   105
            BehaviorIndex   =   14
         End
         Begin StaticText lbl_song_hymn_number
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   21
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   13
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   625
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Hymn #:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   176
            Underline       =   "False"
            Visible         =   True
            Width           =   105
            BehaviorIndex   =   15
         End
         Begin SEditField edt_song_hymn_number
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   22
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   19
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   625
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "True"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   1
            Text            =   ""
            TextColor       =   0
            TextFont        =   "System"
            TextSize        =   12
            Top             =   190
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   105
            BehaviorIndex   =   16
         End
         Begin StaticText lbl_song_insert
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   23
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   615
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Insert:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   215
            Underline       =   "False"
            Visible         =   True
            Width           =   120
            BehaviorIndex   =   17
         End
         Begin SButton btn_song_ins_section
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   24
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Left            =   615
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   231
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   115
            BehaviorIndex   =   18
         End
         Begin SButton btn_song_ins_lyrics
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   25
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Left            =   615
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   256
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   115
            BehaviorIndex   =   19
         End
         Begin SButton btn_song_ins_multi_verse
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   26
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Left            =   615
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   281
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   115
            BehaviorIndex   =   20
         End
         Begin SButton btn_song_ins_comment
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   27
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Left            =   615
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   306
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   115
            BehaviorIndex   =   21
         End
         Begin SButton btn_song_ins_column
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   28
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Left            =   615
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   331
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   115
            BehaviorIndex   =   22
         End
         Begin GroupBox grp_song_transpose
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Transpose"
            ControlOrder    =   29
            Enabled         =   True
            Height          =   100
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   635
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   391
            Underline       =   "False"
            Visible         =   True
            Width           =   100
            BehaviorIndex   =   23
            Begin PopupMenu pop_song_transpose
               AutoDeactivate  =   "True"
               Bold            =   "False"
               ControlOrder    =   30
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_song_transpose"
               InitialValue    =   "-6\r-5\r-4\r-3\r-2\r-1\r0\r+1\r+2\r+3\r+4\r+5\r+6"
               Italic          =   "False"
               Left            =   657
               ListIndex       =   6
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               TextFont        =   "Arial"
               TextSize        =   10
               Top             =   414
               Underline       =   "False"
               Visible         =   True
               Width           =   50
               BehaviorIndex   =   24
            End
            Begin StaticText lbl_song_using
               AutoDeactivate  =   "True"
               Bold            =   "False"
               ControlOrder    =   31
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   15
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_song_transpose"
               Italic          =   "False"
               Left            =   645
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "True"
               LockTop         =   "False"
               Multiline       =   "False"
               TabPanelIndex   =   1
               Text            =   "Using:"
               TextAlign       =   1
               TextColor       =   0
               TextFont        =   "Arial"
               TextSize        =   10
               Top             =   441
               Underline       =   "False"
               Visible         =   True
               Width           =   80
               BehaviorIndex   =   25
            End
            Begin PopupMenu pop_song_accidentals
               AutoDeactivate  =   "True"
               Bold            =   "False"
               ControlOrder    =   32
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_song_transpose"
               InitialValue    =   ""
               Italic          =   "False"
               Left            =   645
               ListIndex       =   0
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "True"
               LockTop         =   "False"
               TabPanelIndex   =   1
               TextFont        =   "Arial"
               TextSize        =   10
               Top             =   455
               Underline       =   "False"
               Visible         =   True
               Width           =   80
               BehaviorIndex   =   26
            End
         End
         Begin SEditField edf_song_lyrics
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   33
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   374
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   270
            LimitText       =   0
            LockBottom      =   "True"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "True"
            Mask            =   ""
            Multiline       =   "True"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "True"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   1
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Courier New"
            TextSize        =   11
            Top             =   175
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   340
            BehaviorIndex   =   27
         End
         Begin StaticText lbl_song_lyrics
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   34
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Chord/Lyrics:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   161
            Underline       =   "False"
            Visible         =   True
            Width           =   350
            BehaviorIndex   =   28
         End
         Begin SButton btn_song_ins_page
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   35
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_general_song_editor"
            Left            =   615
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   1
            Top             =   356
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   115
            BehaviorIndex   =   29
         End
      End
      Begin Canvas can_editor_advanced_song_editor
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   36
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   521
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_contents"
         Left            =   260
         LockBottom      =   "True"
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         TabPanelIndex   =   2
         Top             =   39
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   485
         BehaviorIndex   =   30
         Begin StaticText hdr_song_header_2
            AutoDeactivate  =   "True"
            Bold            =   "True"
            ControlOrder    =   37
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "Song Editor"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   22
            Top             =   49
            Underline       =   "False"
            Visible         =   True
            Width           =   200
            BehaviorIndex   =   31
         End
         Begin SButton btn_song_show_general_editor_2
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   38
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Left            =   475
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   2
            Top             =   49
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   125
            BehaviorIndex   =   32
         End
         Begin SButton btn_song_show_advanced_editor_2
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   39
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Left            =   605
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   2
            Top             =   49
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   125
            BehaviorIndex   =   33
         End
         Begin StaticText lbl_song_themes
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   40
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "True"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "Themes:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   90
            Underline       =   "False"
            Visible         =   True
            Width           =   175
            BehaviorIndex   =   34
         End
         Begin ListBox lst_song_themes
            AutoDeactivate  =   "True"
            AutoHideScrollbars=   "True"
            Bold            =   "False"
            ColumnCount     =   1
            ColumnsResizable=   "False"
            ColumnWidths    =   ""
            ControlOrder    =   41
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   True
            EnableDrag      =   "False"
            EnableDragReorder=   "False"
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   "False"
            HeadingIndex    =   -1
            Height          =   421
            HelpTag         =   ""
            Hierarchical    =   "False"
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            InitialValue    =   ""
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "True"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "True"
            RequiresSelection=   ""
            ScrollbarHorizontal=   "False"
            ScrollBarVertical=   "True"
            SelectionType   =   0
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   104
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   True
            Width           =   175
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
            BehaviorIndex   =   35
         End
         Begin SStyleCanvas can_song_style
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   42
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   77
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Left            =   628
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   2
            Top             =   104
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   102
            BehaviorIndex   =   36
         End
         Begin CheckBox chk_song_style
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Override Style"
            ControlOrder    =   43
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "False"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   628
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   184
            Underline       =   "False"
            Value           =   "False"
            Visible         =   True
            Width           =   102
            BehaviorIndex   =   37
         End
         Begin StaticText lbl_song_capo
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   44
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "Capo:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   125
            Underline       =   "False"
            Visible         =   True
            Width           =   125
            BehaviorIndex   =   38
         End
         Begin PopupMenu pop_song_capo
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   45
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            InitialValue    =   "0\r1\r2\r3\r4\r5\r6"
            Italic          =   "False"
            Left            =   460
            ListIndex       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   139
            Underline       =   "False"
            Visible         =   True
            Width           =   55
            BehaviorIndex   =   39
         End
         Begin CheckBox chk_song_capo_print
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Print"
            ControlOrder    =   46
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   525
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   139
            Underline       =   "False"
            Value           =   "False"
            Visible         =   True
            Width           =   100
            BehaviorIndex   =   40
         End
         Begin StaticText lbl_song_key
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   47
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "Key:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   160
            Underline       =   "False"
            Visible         =   True
            Width           =   125
            BehaviorIndex   =   41
         End
         Begin SEditField edt_song_key
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   48
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   2
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   174
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   125
            BehaviorIndex   =   42
         End
         Begin StaticText lbl_song_time_sig
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   49
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "Time Signature:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   195
            Underline       =   "False"
            Visible         =   True
            Width           =   125
            BehaviorIndex   =   43
         End
         Begin PopupMenu pop_song_time_sig
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   50
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            InitialValue    =   ""
            Italic          =   "False"
            Left            =   460
            ListIndex       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   210
            Underline       =   "False"
            Visible         =   True
            Width           =   125
            BehaviorIndex   =   44
         End
         Begin StaticText lbl_song_tempo
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   51
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "Tempo:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   230
            Underline       =   "False"
            Visible         =   True
            Width           =   125
            BehaviorIndex   =   45
         End
         Begin PopupMenu pop_song_tempo
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   52
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            InitialValue    =   ""
            Italic          =   "False"
            Left            =   460
            ListIndex       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   244
            Underline       =   "False"
            Visible         =   True
            Width           =   125
            BehaviorIndex   =   46
         End
         Begin StaticText lbl_song_aka
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   53
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   600
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "AKA:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   230
            Underline       =   "False"
            Visible         =   True
            Width           =   130
            BehaviorIndex   =   47
         End
         Begin SEditField edt_song_aka
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   54
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   600
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   2
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   244
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   130
            BehaviorIndex   =   48
         End
         Begin StaticText lbl_song_key_line
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   55
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "Key Line:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   265
            Underline       =   "False"
            Visible         =   True
            Width           =   270
            BehaviorIndex   =   49
         End
         Begin SEditField edt_song_key_line
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   56
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   2
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   279
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   270
            BehaviorIndex   =   50
         End
         Begin StaticText lbl_song_user1_1
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   57
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "User Defined 1:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   311
            Underline       =   "False"
            Visible         =   True
            Width           =   270
            BehaviorIndex   =   51
         End
         Begin SEditField edt_song_user1
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   58
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "True"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   2
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   325
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   270
            BehaviorIndex   =   52
         End
         Begin StaticText lbl_song_user2
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   59
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "User Defined 2:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   359
            Underline       =   "False"
            Visible         =   True
            Width           =   270
            BehaviorIndex   =   53
         End
         Begin SEditField edt_song_user2
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   60
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "True"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   2
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   373
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   270
            BehaviorIndex   =   54
         End
         Begin StaticText lbl_song_user3
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   61
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "User Defined 3:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   404
            Underline       =   "False"
            Visible         =   True
            Width           =   270
            BehaviorIndex   =   55
         End
         Begin SEditField edt_song_user3
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   62
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_advanced_song_editor"
            Italic          =   "False"
            Left            =   460
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "True"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   2
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   418
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   270
            BehaviorIndex   =   56
         End
      End
      Begin Canvas can_editor_slide_editor
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   63
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   520
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_contents"
         Left            =   260
         LockBottom      =   "True"
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         TabPanelIndex   =   3
         Top             =   39
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   485
         BehaviorIndex   =   57
         Begin StaticText hdr_slide_header
            AutoDeactivate  =   "True"
            Bold            =   "True"
            ControlOrder    =   64
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   3
            Text            =   "Custom Slide Editor"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   22
            Top             =   49
            Underline       =   "False"
            Visible         =   True
            Width           =   460
            BehaviorIndex   =   58
         End
         Begin StaticText lbl_slide_title
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   65
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   3
            Text            =   "Title:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   90
            Underline       =   "False"
            Visible         =   True
            Width           =   145
            BehaviorIndex   =   59
         End
         Begin SEditField edt_slide_title
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   66
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   270
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   104
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   145
            BehaviorIndex   =   60
         End
         Begin StaticText lbl_slide_subtitle
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   67
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   430
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   3
            Text            =   "Subtitle:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   90
            Underline       =   "False"
            Visible         =   True
            Width           =   145
            BehaviorIndex   =   61
         End
         Begin SEditField edt_slide_subtitle
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   68
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   430
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   104
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   145
            BehaviorIndex   =   62
         End
         Begin StaticText lbl_slide_name
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   69
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   590
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   3
            Text            =   "Name:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   90
            Underline       =   "False"
            Visible         =   True
            Width           =   140
            BehaviorIndex   =   63
         End
         Begin SEditField edt_slide_name
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   70
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   590
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   104
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   140
            BehaviorIndex   =   64
         End
         Begin StaticText lbl_slide_slides
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   71
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   3
            Text            =   "Slides:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   125
            Underline       =   "False"
            Visible         =   True
            Width           =   340
            BehaviorIndex   =   65
         End
         Begin SEditField edt_slide_slides
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   72
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   247
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   270
            LimitText       =   0
            LockBottom      =   "True"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "True"
            Mask            =   ""
            Multiline       =   "True"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "True"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   139
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   340
            BehaviorIndex   =   66
         End
         Begin StaticText lbl_slide_presentation
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   73
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   271
            LockBottom      =   "True"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   3
            Text            =   "Custom Presentation Order:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   403
            Underline       =   "False"
            Visible         =   True
            Width           =   170
            BehaviorIndex   =   67
         End
         Begin EditField edt_slide_order
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   74
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   270
            LimitText       =   0
            LockBottom      =   "True"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   417
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   True
            Width           =   170
            BehaviorIndex   =   68
         End
         Begin StaticText lbl_slide_origorder
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   75
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   453
            LockBottom      =   "True"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   3
            Text            =   "Original Presentation Order:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   403
            Underline       =   "False"
            Visible         =   True
            Width           =   160
            BehaviorIndex   =   69
         End
         Begin EditField edt_slide_origorder
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   76
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   453
            LimitText       =   0
            LockBottom      =   "True"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "True"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   417
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   True
            Width           =   160
            BehaviorIndex   =   70
         End
         Begin StaticText lbl_slide_notes
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   77
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "True"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   3
            Text            =   "Notes:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   435
            Underline       =   "False"
            Visible         =   True
            Width           =   340
            BehaviorIndex   =   71
         End
         Begin SEditField edt_slide_notes
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   78
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "True"
            Format          =   ""
            Height          =   100
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   270
            LimitText       =   0
            LockBottom      =   "True"
            LockLeft        =   "True"
            LockRight       =   "True"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "True"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "True"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   449
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   340
            BehaviorIndex   =   72
         End
         Begin StaticText lbl_slide_insert
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   79
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   615
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   3
            Text            =   "Insert:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   139
            Underline       =   "False"
            Visible         =   True
            Width           =   115
            BehaviorIndex   =   73
         End
         Begin SButton btn_slide_ins_slide
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   80
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Left            =   615
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   3
            Top             =   154
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   115
            BehaviorIndex   =   74
         End
         Begin CheckBox chk_slide_loop
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Loop Slides"
            ControlOrder    =   81
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   628
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   3
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   194
            Underline       =   "False"
            Value           =   "False"
            Visible         =   True
            Width           =   110
            BehaviorIndex   =   75
         End
         Begin CheckBox chk_slide_print
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Print in Set List"
            ControlOrder    =   82
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   628
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   3
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   214
            Underline       =   "False"
            Value           =   "False"
            Visible         =   True
            Width           =   110
            BehaviorIndex   =   76
         End
         Begin StaticText lbl_slide_auto_advance
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   83
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   615
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "True"
            TabPanelIndex   =   3
            Text            =   "Auto-advance slide(s) every..."
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   254
            Underline       =   "False"
            Visible         =   True
            Width           =   130
            BehaviorIndex   =   77
         End
         Begin EditField edt_slide_auto_advance
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   86
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   660
            LimitText       =   0
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "False"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "True"
            Styled          =   "False"
            TabPanelIndex   =   3
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   284
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   True
            Width           =   40
            BehaviorIndex   =   78
         End
         Begin StaticText txt_slide_seconds
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   87
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   630
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            Multiline       =   "True"
            TabPanelIndex   =   3
            Text            =   "seconds"
            TextAlign       =   1
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   304
            Underline       =   "False"
            Visible         =   True
            Width           =   100
            BehaviorIndex   =   79
         End
         Begin CheckBox chk_slide_style
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Override Style"
            ControlOrder    =   88
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   "False"
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Italic          =   "False"
            Left            =   630
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   3
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   414
            Underline       =   "False"
            Value           =   "False"
            Visible         =   True
            Width           =   100
            BehaviorIndex   =   80
         End
         Begin SStyleCanvas can_slide_style
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   90
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   77
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_editor_slide_editor"
            Left            =   628
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "True"
            LockTop         =   "False"
            TabPanelIndex   =   3
            Top             =   334
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   102
            BehaviorIndex   =   81
         End
      End
      Begin Canvas cnv_editor_style_change
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   91
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   519
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_contents"
         Left            =   260
         LockBottom      =   "True"
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         TabPanelIndex   =   4
         Top             =   39
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   485
         BehaviorIndex   =   82
         Begin StaticText hdr_style_header
            AutoDeactivate  =   "True"
            Bold            =   "True"
            ControlOrder    =   93
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   30
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "cnv_editor_style_change"
            Italic          =   "False"
            Left            =   270
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   4
            Text            =   "Style Change"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   22
            Top             =   49
            Underline       =   "False"
            Visible         =   True
            Width           =   460
            BehaviorIndex   =   83
         End
         Begin RadioButton rad_style_revert
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Revert to Previous Style"
            ControlOrder    =   94
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "cnv_editor_style_change"
            Italic          =   "False"
            Left            =   275
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   4
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   104
            Underline       =   "False"
            Value           =   "True"
            Visible         =   True
            Width           =   250
            BehaviorIndex   =   84
         End
         Begin RadioButton rad_style_change
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Change Style to the Following:"
            ControlOrder    =   95
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "cnv_editor_style_change"
            Italic          =   "False"
            Left            =   275
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   4
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   129
            Underline       =   "False"
            Value           =   "False"
            Visible         =   True
            Width           =   250
            BehaviorIndex   =   85
         End
         Begin SStyleCanvas can_style_style
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   96
            Enabled         =   "True"
            EraseBackground =   "True"
            Height          =   240
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "cnv_editor_style_change"
            Left            =   340
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   4
            Top             =   179
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   320
            BehaviorIndex   =   86
         End
      End
   End
   Begin PagePanel pge_controls
      AutoDeactivate  =   "True"
      ControlOrder    =   1
      Enabled         =   True
      Height          =   529
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   1
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "False"
      LockTop         =   "True"
      PanelCount      =   2
      Panels          =   ""
      TabPanelIndex   =   0
      Top             =   35
      Value           =   0
      Visible         =   True
      Width           =   250
      BehaviorIndex   =   87
      Begin Canvas can_controls_songs_mode
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   84
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   520
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_controls"
         Left            =   5
         LockBottom      =   "True"
         LockLeft        =   "True"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   1
         Top             =   40
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   240
         BehaviorIndex   =   88
         Begin GroupBox grp_songs_all_songs
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "All Songs"
            ControlOrder    =   85
            Enabled         =   True
            Height          =   100
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   40
            Underline       =   "False"
            Visible         =   True
            Width           =   110
            BehaviorIndex   =   89
            Begin SButton btn_songs_print
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   97
               Enabled         =   "True"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_all_songs"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   60
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   90
            End
            Begin SButton btn_songs_export
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   98
               Enabled         =   "True"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_all_songs"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   85
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   91
            End
            Begin SButton btn_songs_find
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   99
               Enabled         =   "True"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_all_songs"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   110
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   92
            End
         End
         Begin GroupBox grp_songs_new_song
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "New Song"
            ControlOrder    =   89
            Enabled         =   True
            Height          =   75
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   145
            Underline       =   "False"
            Visible         =   True
            Width           =   110
            BehaviorIndex   =   93
            Begin SButton btn_song_create
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   100
               Enabled         =   "True"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_new_song"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   165
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   94
            End
            Begin SButton btn_song_import
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   103
               Enabled         =   "True"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_new_song"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   190
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   95
            End
         End
         Begin GroupBox grp_songs_selected_song
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Selected Song"
            ControlOrder    =   92
            Enabled         =   True
            Height          =   225
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   "False"
            Left            =   130
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   40
            Underline       =   "False"
            Visible         =   True
            Width           =   110
            BehaviorIndex   =   96
            Begin SButton btn_song_save
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   104
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   60
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   97
            End
            Begin SButton btn_song_revert
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   112
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   85
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   98
            End
            Begin SButton btn_song_print
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   114
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   110
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   99
            End
            Begin SButton btn_song_present
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   115
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   135
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   100
            End
            Begin SButton btn_song_export
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   116
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   160
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   101
            End
            Begin SButton btn_song_rename
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   117
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   185
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   102
            End
            Begin SButton btn_song_move
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   118
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   210
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   103
            End
            Begin SButton btn_song_delete
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   119
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_songs_selected_song"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   1
               Top             =   235
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   104
            End
         End
         Begin StaticText lbl_songs_song_folders
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   101
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "True"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Folders:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   256
            Underline       =   "False"
            Visible         =   True
            Width           =   230
            BehaviorIndex   =   105
         End
         Begin PopupMenu pop_songs_song_folders
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   102
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            InitialValue    =   ""
            Italic          =   "False"
            Left            =   10
            ListIndex       =   -1
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "True"
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   271
            Underline       =   "False"
            Visible         =   True
            Width           =   190
            BehaviorIndex   =   106
         End
         Begin StaticText lbl_songs_songs
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   105
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "False"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "True"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Songs:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   296
            Underline       =   "False"
            Visible         =   True
            Width           =   230
            BehaviorIndex   =   109
         End
         Begin ListBox lst_songs_songs
            AutoDeactivate  =   "True"
            AutoHideScrollbars=   "True"
            Bold            =   "False"
            ColumnCount     =   1
            ColumnsResizable=   "False"
            ColumnWidths    =   ""
            ControlOrder    =   106
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   True
            EnableDrag      =   "False"
            EnableDragReorder=   "False"
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   "False"
            HeadingIndex    =   -1
            Height          =   195
            HelpTag         =   ""
            Hierarchical    =   "False"
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            InitialValue    =   ""
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "True"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "True"
            RequiresSelection=   ""
            ScrollbarHorizontal=   "False"
            ScrollBarVertical=   "True"
            SelectionType   =   0
            TabPanelIndex   =   1
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   314
            Underline       =   "False"
            UseFocusRing    =   "False"
            Visible         =   True
            Width           =   230
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
            BehaviorIndex   =   110
         End
         Begin StaticText lbl_songs_curr_folder
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   107
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "True"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   1
            Text            =   "Containing Folder:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   509
            Underline       =   "False"
            Visible         =   True
            Width           =   230
            BehaviorIndex   =   111
         End
         Begin EditField edt_songs_curr_folder
            AcceptTabs      =   "False"
            Alignment       =   0
            AutoDeactivate  =   "True"
            BackColor       =   16777215
            Bold            =   "False"
            Border          =   "True"
            ControlOrder    =   108
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Italic          =   "False"
            Left            =   10
            LimitText       =   0
            LockBottom      =   "True"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "False"
            Mask            =   ""
            Multiline       =   "False"
            Password        =   "False"
            ReadOnly        =   "True"
            ScrollbarHorizontal=   "False"
            ScrollbarVertical=   "False"
            Styled          =   "False"
            TabPanelIndex   =   1
            Text            =   ""
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   8
            Top             =   528
            Underline       =   "False"
            UseFocusRing    =   "False"
            Visible         =   True
            Width           =   227
            BehaviorIndex   =   112
         End
         Begin SButton btn_songs_song_folders_add
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   120
            Enabled         =   "False"
            EraseBackground =   "True"
            Height          =   18
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Left            =   203
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "True"
            TabPanelIndex   =   1
            Top             =   273
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   18
            BehaviorIndex   =   107
         End
         Begin SButton btn_songs_song_folders_delete
            AcceptFocus     =   "False"
            AcceptTabs      =   "False"
            AutoDeactivate  =   "True"
            Backdrop        =   0
            ControlOrder    =   122
            Enabled         =   "False"
            EraseBackground =   "True"
            Height          =   18
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_songs_mode"
            Left            =   222
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "True"
            TabPanelIndex   =   1
            Top             =   273
            UseFocusRing    =   "True"
            Visible         =   "True"
            Width           =   18
            BehaviorIndex   =   108
         End
      End
      Begin Canvas can_controls_sets_mode
         AcceptFocus     =   "False"
         AcceptTabs      =   "False"
         AutoDeactivate  =   "True"
         Backdrop        =   0
         ControlOrder    =   109
         Enabled         =   True
         EraseBackground =   "True"
         Height          =   519
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "pge_controls"
         Left            =   5
         LockBottom      =   "True"
         LockLeft        =   "True"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   2
         Top             =   40
         UseFocusRing    =   "True"
         Visible         =   True
         Width           =   240
         BehaviorIndex   =   113
         Begin GroupBox grp_sets_sets
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Sets"
            ControlOrder    =   110
            Enabled         =   True
            Height          =   50
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   40
            Underline       =   "False"
            Visible         =   True
            Width           =   230
            BehaviorIndex   =   114
            Begin PopupMenu pop_sets_sets
               AutoDeactivate  =   "True"
               Bold            =   "False"
               ControlOrder    =   111
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_sets_sets"
               InitialValue    =   ""
               Italic          =   "False"
               Left            =   21
               ListIndex       =   0
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               TextFont        =   "Arial"
               TextSize        =   10
               Top             =   58
               Underline       =   "False"
               Visible         =   True
               Width           =   185
               BehaviorIndex   =   115
            End
            Begin SButton btn_sets_add
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   123
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   18
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_sets_sets"
               Left            =   209
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   60
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   18
               BehaviorIndex   =   116
            End
         End
         Begin GroupBox grp_set_current_set
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Current Set"
            ControlOrder    =   113
            Enabled         =   True
            Height          =   121
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   89
            Underline       =   "False"
            Visible         =   True
            Width           =   230
            BehaviorIndex   =   117
            Begin SButton btn_set_save
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   124
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   107
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   118
            End
            Begin SButton btn_set_rename
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   125
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   132
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   119
            End
            Begin SButton btn_set_delete
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   127
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   157
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   120
            End
            Begin SButton btn_set_saveas
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   128
               Enabled         =   "True"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   182
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   121
            End
            Begin SButton btn_set_present
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   129
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   107
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   122
            End
            Begin SButton btn_set_print_songs
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   130
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   132
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   123
            End
            Begin SButton btn_set_print_order
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   131
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_set"
               Left            =   141
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   157
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   124
            End
         End
         Begin GroupBox grp_set_new_item
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "New Item"
            ControlOrder    =   121
            Enabled         =   True
            Height          =   125
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   209
            Underline       =   "False"
            Visible         =   True
            Width           =   110
            BehaviorIndex   =   125
            Begin SButton btn_set_add_song
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   134
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_new_item"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   229
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   126
            End
            Begin SButton btn_set_add_scripture
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   135
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_new_item"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   254
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   127
            End
            Begin SButton btn_set_add_slides
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   136
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_new_item"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   279
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   128
            End
            Begin SButton btn_set_add_style
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   137
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_new_item"
               Left            =   21
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   304
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   129
            End
         End
         Begin GroupBox grp_set_current_item
            AutoDeactivate  =   "True"
            Bold            =   "False"
            Caption         =   "Current Item"
            ControlOrder    =   126
            Enabled         =   True
            Height          =   150
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            Italic          =   "False"
            Left            =   127
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   209
            Underline       =   "False"
            Visible         =   True
            Width           =   110
            BehaviorIndex   =   130
            Begin SButton btn_set_move_up
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   138
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               Left            =   138
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   229
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   131
            End
            Begin SButton btn_set_move_down
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   139
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               Left            =   138
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   254
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   132
            End
            Begin SButton btn_set_remove
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   140
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               Left            =   138
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   279
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   133
            End
            Begin SButton btn_set_copy
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   141
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               Left            =   138
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   304
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   134
            End
            Begin SButton btn_set_store
               AcceptFocus     =   "False"
               AcceptTabs      =   "False"
               AutoDeactivate  =   "True"
               Backdrop        =   0
               ControlOrder    =   142
               Enabled         =   "False"
               EraseBackground =   "True"
               Height          =   24
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "grp_set_current_item"
               Left            =   138
               LockBottom      =   "False"
               LockLeft        =   "False"
               LockRight       =   "False"
               LockTop         =   "False"
               TabPanelIndex   =   2
               Top             =   329
               UseFocusRing    =   "True"
               Visible         =   "True"
               Width           =   87
               BehaviorIndex   =   135
            End
         End
         Begin StaticText lbl_set_items
            AutoDeactivate  =   "True"
            Bold            =   "False"
            ControlOrder    =   132
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "False"
            LockLeft        =   "False"
            LockRight       =   "False"
            LockTop         =   "False"
            Multiline       =   "False"
            TabPanelIndex   =   2
            Text            =   "Items In Set:"
            TextAlign       =   0
            TextColor       =   0
            TextFont        =   "Arial"
            TextSize        =   10
            Top             =   350
            Underline       =   "False"
            Visible         =   True
            Width           =   115
            BehaviorIndex   =   136
         End
         Begin ListBox lst_set_items
            AutoDeactivate  =   "True"
            AutoHideScrollbars=   "True"
            Bold            =   "False"
            ColumnCount     =   1
            ColumnsResizable=   "False"
            ColumnWidths    =   ""
            ControlOrder    =   133
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   True
            EnableDrag      =   "False"
            EnableDragReorder=   "True"
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   "False"
            HeadingIndex    =   -1
            Height          =   187
            HelpTag         =   ""
            Hierarchical    =   "False"
            Index           =   -2147483648
            InitialParent   =   "can_controls_sets_mode"
            InitialValue    =   ""
            Italic          =   "False"
            Left            =   10
            LockBottom      =   "True"
            LockLeft        =   "True"
            LockRight       =   "False"
            LockTop         =   "True"
            RequiresSelection=   ""
            ScrollbarHorizontal=   "False"
            ScrollBarVertical=   "True"
            SelectionType   =   0
            TabPanelIndex   =   2
            TextFont        =   "Arial"
            TextSize        =   11
            Top             =   365
            Underline       =   "False"
            UseFocusRing    =   "True"
            Visible         =   True
            Width           =   230
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
            BehaviorIndex   =   137
         End
      End
   End
   Begin StaticText txt_context_help
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   4
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   25
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   420
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      Multiline       =   "True"
      TabPanelIndex   =   0
      Text            =   ""
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   4
      Underline       =   "False"
      Visible         =   True
      Width           =   320
      BehaviorIndex   =   140
   End
   Begin Timer tmr_lookup
      ControlOrder    =   5
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   196
      Mode            =   2
      Period          =   1500
      TabPanelIndex   =   0
      Top             =   1
      BehaviorIndex   =   141
   End
   Begin ContextualMenu mnu_clipboard
      ControlOrder    =   6
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   715
      TabPanelIndex   =   0
      Top             =   0
      UseMacCMM       =   ""
      BehaviorIndex   =   142
   End
   Begin Separator sep_vertical
      AutoDeactivate  =   "True"
      ControlOrder    =   7
      Enabled         =   ""
      Height          =   506
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   249
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "True"
      TabPanelIndex   =   0
      Top             =   35
      Visible         =   True
      Width           =   4
      BehaviorIndex   =   143
   End
   Begin Separator sep_horizontal
      AutoDeactivate  =   "True"
      ControlOrder    =   8
      Enabled         =   ""
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   32
      Visible         =   True
      Width           =   750
      BehaviorIndex   =   144
   End
   Begin SButton btn_mode_songs_mode
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      ControlOrder    =   143
      Enabled         =   "True"
      EraseBackground =   "True"
      Height          =   28
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   3
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   200
      BehaviorIndex   =   138
   End
   Begin SButton btn_mode_sets_mode
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AutoDeactivate  =   "True"
      Backdrop        =   0
      ControlOrder    =   144
      Enabled         =   "True"
      EraseBackground =   "True"
      Height          =   28
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   215
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      TabPanelIndex   =   0
      Top             =   3
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   200
      BehaviorIndex   =   139
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  If Status_Presentation Then PresentWindow.SetFocus
		  If App.SplashShowing Then Splash.Show
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  // Cancel the close if we're presenting.
		  If Status_Presentation Then Return True
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  SmartML.SetValue App.MyMainSettings.DocumentElement, "geometry/@y", CStr(Top)
		  SmartML.SetValue App.MyMainSettings.DocumentElement, "geometry/@x", CStr(Left)
		  SmartML.SetValue App.MyMainSettings.DocumentElement, "geometry/@width", CStr(Width)
		  SmartML.SetValue App.MyMainSettings.DocumentElement, "geometry/@height", CStr(Height)
		  
		  App.MouseCursor = Nil
		  Return False
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  If Status_SongChanged Then ActionSongAskSave
		  If Status_InSetChanged Then ActionInSetAskSave
		  If Status_SetChanged Then ActionSetAskSave
		  
		  If App.MyPrintSettings <> Nil Then
		    If Not SmartML.XDocToFile(App.MyPrintSettings, App.DocsFolder.Child("Settings").Child("PrintSettings")) Then SmartML.DisplayError
		  End If
		  If App.MyMainSettings <> Nil Then
		    If Not SmartML.XDocToFile(App.MyMainSettings, App.DocsFolder.Child("Settings").Child("MainSettings")) Then SmartML.DisplayError
		  End If
		  If App.MyPresentSettings <> Nil Then
		    If Not SmartML.XDocToFile(App.MyPresentSettings, App.DocsFolder.Child("Settings").Child("PresentSettings")) Then SmartML.DisplayError
		  End If
		  Quit
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  If pge_controls.Value = 0 Then ' Songs tab
		    mnu_mode_songs.Checked = True
		    mnu_mode_sets.Checked = False
		    mnu_file_pagesetup.Enabled = True
		    If Status_SongOpen Then
		      btn_song_print.Enabled = True
		      btn_song_present.Enabled = True And (Not Status_Presentation)
		      btn_song_export.Enabled = True
		      btn_song_rename.Enabled = True
		      btn_song_move.Enabled = True
		      btn_song_delete.Enabled = True
		      mnu_file_print.Enabled = True
		      mnu_file_single_screen.Enabled = True
		      mnu_file_dual_screen.Enabled = (ScreenCount > 1) 'EMP 12/05
		      mnu_file_preview_dual_screen.Enabled = True
		      
		      ' EDITOR FIELDS
		      
		      edf_song_lyrics.Enabled = True
		      pop_song_transpose.Enabled = True
		      pop_song_accidentals.Enabled = True
		      edt_song_title.Enabled = True
		      edt_song_author.Enabled = True
		      edt_song_copyright.Enabled = True
		      edt_song_presentation.Enabled = True And (Not Status_Presentation)
		      edt_song_ccli.Enabled = True
		      lst_song_themes.Enabled = True
		      pop_song_capo.Enabled = True
		      chk_song_capo_print.Enabled = True
		      pop_song_tempo.Enabled = True
		      pop_song_time_sig.Enabled = True
		      edt_song_key.Enabled = True
		      edt_song_aka.Enabled = True
		      edt_song_key_line.Enabled = True
		      edt_song_user1.Enabled = True
		      edt_song_user2.Enabled = True
		      edt_song_user3.Enabled = True
		      'Josh
		      edt_song_hymn_number.Enabled = True
		      
		      chk_song_style.Enabled = True
		      If chk_song_style.Value Then
		        If can_song_style.Enabled <> True Then
		          can_song_style.SetEnabled True
		        End If
		      Else
		        If can_song_style.Enabled <> False Then
		          can_song_style.SetEnabled False
		        End If
		      End If
		      
		      ' SHORTCUTS
		      
		      btn_song_ins_column.Enabled = True
		      btn_song_ins_page.Enabled = True
		      btn_song_ins_comment.Enabled = True
		      btn_song_ins_multi_verse.Enabled = True
		      btn_song_ins_section.Enabled = True
		      btn_song_ins_lyrics.Enabled = True
		      
		    Else
		      btn_song_print.Enabled = False
		      btn_song_present.Enabled = False
		      btn_song_export.Enabled = False
		      btn_song_rename.Enabled = False
		      btn_song_move.Enabled = False
		      btn_song_delete.Enabled = False
		      mnu_file_print.Enabled = False
		      mnu_file_single_screen.Enabled = False
		      mnu_file_dual_screen.Enabled = False
		      mnu_file_preview_dual_screen.Enabled = False
		      
		      ' EDITOR FIELDS
		      
		      edf_song_lyrics.Enabled = False
		      pop_song_transpose.Enabled = False
		      pop_song_accidentals.Enabled = False
		      edt_song_title.Enabled = False
		      edt_song_author.Enabled = False
		      edt_song_copyright.Enabled = False
		      edt_song_presentation.Enabled = False
		      edt_song_ccli.Enabled = False
		      lst_song_themes.Enabled = False
		      pop_song_capo.Enabled = False
		      chk_song_capo_print.Enabled = False
		      pop_song_tempo.Enabled = False
		      pop_song_time_sig.Enabled = False
		      edt_song_key.Enabled = False
		      edt_song_aka.Enabled = False
		      edt_song_key_line.Enabled = False
		      edt_song_user1.Enabled = False
		      edt_song_user2.Enabled = False
		      edt_song_user3.Enabled = False
		      
		      'Josh
		      edt_song_hymn_number.Enabled = False
		      
		      chk_song_style.Enabled = False
		      If can_song_style.Enabled <> False Then
		        can_song_style.SetEnabled False
		      End If
		      
		      edf_song_lyrics.Text = ""
		      edt_song_title.Text = ""
		      edt_song_author.Text = ""
		      edt_song_copyright.Text = ""
		      edt_song_presentation.Text = ""
		      edt_song_ccli.Text = ""
		      
		      'Josh
		      edt_song_hymn_number.Text = ""
		      
		      lst_song_themes.DeleteAllRows
		      pop_song_capo.DeleteAllRows
		      chk_song_capo_print.State = False
		      pop_song_tempo.DeleteAllRows
		      pop_song_time_sig.DeleteAllRows
		      edt_song_key.Text = ""
		      edt_song_aka.Text = ""
		      edt_song_key_line.Text = ""
		      edt_song_user1.Text = ""
		      edt_song_user2.Text = ""
		      edt_song_user3.Text = ""
		      can_song_style.ClearStyleNode
		      
		      ' SHORTCUTS
		      
		      btn_song_ins_column.Enabled = False
		      btn_song_ins_page.Enabled = False
		      btn_song_ins_comment.Enabled = False
		      btn_song_ins_multi_verse.Enabled = False
		      btn_song_ins_section.Enabled = False
		      btn_song_ins_lyrics.Enabled = False
		      
		    End If
		    
		    If Status_SongChanged Then
		      btn_song_save.Enabled = True
		      btn_song_revert.Enabled = True
		      mnu_file_save.Enabled = True
		    Else
		      btn_song_save.Enabled = False
		      btn_song_revert.Enabled = False
		      mnu_file_save.Enabled = False
		    End If
		    
		    
		    
		  Else ' Sets tab
		    mnu_mode_songs.Checked = False
		    mnu_mode_sets.Checked = True
		    mnu_file_pagesetup.Enabled = True
		    If Status_SetOpen Then
		      btn_set_add_song.Enabled = True
		      btn_set_add_style.Enabled = True
		      btn_set_add_slides.Enabled = True
		      btn_set_add_scripture.Enabled = True
		      btn_set_present.Enabled = True And (Not Status_Presentation)
		      btn_set_print_songs.Enabled = True
		      btn_set_print_order.Enabled = True
		      btn_set_rename.Enabled = True
		      btn_set_delete.Enabled = True
		      btn_set_saveas.Enabled = True
		      mnu_file_print.Enabled = True
		      mnu_file_single_screen.Enabled = True
		      mnu_file_dual_screen.Enabled = (ScreenCount > 1) 'EMP 12/05
		      mnu_file_preview_dual_screen.Enabled = True
		    Else
		      btn_set_add_song.Enabled = False
		      btn_set_add_style.Enabled = False
		      btn_set_add_slides.Enabled = False
		      btn_set_add_scripture.Enabled = False
		      btn_set_present.Enabled = False
		      btn_set_print_songs.Enabled = False
		      btn_set_print_order.Enabled = False
		      btn_set_rename.Enabled = False
		      btn_set_delete.Enabled = False
		      btn_set_saveas.Enabled = False
		      mnu_file_print.Enabled = False
		      mnu_file_single_screen.Enabled = False
		      mnu_file_dual_screen.Enabled = False
		      mnu_file_preview_dual_screen.Enabled = False
		    End If
		    
		    If Status_InSetChanged Then Status_SetChanged = True
		    
		    If Status_SetChanged Then
		      btn_set_save.Enabled = True
		      mnu_file_save.Enabled = True
		    Else
		      btn_set_save.Enabled = False
		      mnu_file_save.Enabled = False
		    End If
		    
		    
		    
		    If Status_InSetOpen Then
		      ' Move Up
		      If lst_set_items.ListIndex > 0 Then
		        btn_set_move_up.Enabled = True
		      Else
		        btn_set_move_up.Enabled = False
		      End If
		      ' Move Down
		      If lst_set_items.ListIndex < lst_set_items.ListCount-1 Then
		        btn_set_move_down.Enabled = True
		      Else
		        btn_set_move_down.Enabled = False
		      End If
		      ' Remove/Delete
		      btn_set_remove.Enabled = True
		      ' Copy
		      btn_set_copy.Enabled = True
		    Else
		      btn_set_move_up.Enabled = False
		      btn_set_move_down.Enabled = False
		      btn_set_remove.Enabled = False
		      btn_set_copy.Enabled = False
		    End If
		    
		    
		    
		    If Status_InSetChanged Then
		      btn_set_store.Enabled = True
		      mnu_file_save.Enabled = True
		    Else
		      btn_set_store.Enabled = False
		    End If
		    
		    
		    
		    If Status_InSetEditable Then
		      //++EMP
		      'edt_slide_name.Enabled = True
		      'edt_slide_title.Enabled = True
		      'edt_slide_subtitle.Enabled = True
		      'edt_slide_slides.Enabled = True
		      'edt_slide_notes.Enabled = True
		      'edt_slide_auto_advance.Enabled = True
		      'chk_slide_loop.Enabled = True
		      'chk_slide_print.Enabled = True
		      
		      edt_slide_name.Enabled = Not Status_InSetSongEdit
		      edt_slide_name.ReadOnly = Status_InSetSongEdit
		      edt_slide_title.Enabled = True
		      edt_slide_title.ReadOnly = Status_InSetSongEdit
		      edt_slide_subtitle.Enabled = not Status_InSetSongEdit
		      edt_slide_subtitle.ReadOnly = Status_InSetSongEdit
		      edt_slide_slides.Enabled = True
		      edt_slide_slides.ReadOnly = Status_InSetSongEdit
		      edt_slide_notes.Enabled = Not Status_InSetSongEdit
		      edt_slide_auto_advance.Enabled = Not Status_InSetSongEdit
		      edt_slide_order.Enabled = Status_InSetSongEdit
		      edt_slide_order.ReadOnly = False
		      edt_slide_origorder.Enabled = Status_InSetSongEdit
		      chk_slide_loop.Enabled = Not Status_InSetSongEdit
		      chk_slide_print.Enabled = Not Status_InSetSongEdit
		      
		      ' Josh
		      'edt_song_hymn_number.Enabled = True
		      
		      edt_song_hymn_number.Enabled = Not Status_InSetSongEdit
		      //--
		      
		      ' SHORTCUT
		      
		      //++EMP
		      'btn_slide_ins_slide.Enabled = True
		      '
		      'chk_slide_style.Enabled = True
		      btn_slide_ins_slide.Enabled = Not Status_InSetSongEdit
		      
		      chk_slide_style.Enabled = Not Status_InSetSongEdit
		      //--
		      If chk_slide_style.Value Then
		        If can_slide_style.Enabled <> True Then
		          can_slide_style.SetEnabled True
		        End If
		      Else
		        If can_slide_style.Enabled <> False Then
		          can_slide_style.SetEnabled False
		        End If
		      End If
		      
		      ' Style
		      rad_style_change.Enabled = True
		      rad_style_revert.Enabled = True
		      If rad_style_change.Value = True Then
		        can_style_style.SetEnabled True
		      Else
		        can_style_style.SetEnabled False
		      End If
		    Else
		      
		      //++EMP
		      'edt_slide_name.Enabled = False
		      'edt_slide_title.Enabled = False
		      'edt_slide_subtitle.Enabled = False
		      'edt_slide_slides.Enabled = False
		      'edt_slide_notes.Enabled = False
		      'edt_slide_auto_advance.Enabled = False
		      'chk_slide_loop.Enabled = False
		      'chk_slide_print.Enabled = False
		      '' Josh
		      'edt_song_hymn_number.Enabled = False
		      'edt_song_hymn_number.Text = ""
		      '
		      'edt_slide_name.Text = ""
		      'edt_slide_slides.Text = ""
		      'edt_slide_title.Text = ""
		      'edt_slide_subtitle.Text = ""
		      'edt_slide_notes.Text = ""
		      'edt_slide_auto_advance.Text = ""
		      'chk_slide_loop.Value = False
		      'chk_slide_print.Value = True
		      
		      edt_slide_name.Enabled = False
		      edt_slide_name.ReadOnly = False
		      edt_slide_title.Enabled = False
		      edt_slide_title.ReadOnly = False
		      edt_slide_subtitle.Enabled = False
		      edt_slide_subtitle.ReadOnly = False
		      edt_slide_slides.Enabled = False
		      edt_slide_slides.ReadOnly = False
		      edt_slide_notes.Enabled = False
		      edt_slide_notes.ReadOnly = False
		      edt_slide_order.enabled = False
		      edt_slide_origorder.Enabled = False
		      edt_slide_order.ReadOnly = False
		      edt_slide_auto_advance.Enabled = False
		      edt_slide_auto_advance.ReadOnly = False
		      chk_slide_loop.Enabled = False
		      chk_slide_print.Enabled = False
		      edt_slide_name.Text = ""
		      edt_slide_slides.Text = ""
		      edt_slide_title.Text = ""
		      edt_slide_subtitle.Text = ""
		      edt_slide_notes.Text = ""
		      edt_slide_auto_advance.Text = ""
		      edt_slide_order.Text = ""
		      edt_slide_origorder.Text = ""
		      chk_slide_loop.Value = False
		      chk_slide_print.Value = True
		      
		      'JRC: Fixed, now editbox doesn't lose value when
		      'changing between song mode and set mode
		      'edt_song_hymn_number.Enabled = False
		      'edt_song_hymn_number.Text = ""
		      '--
		      
		      ' SHORTCUTS
		      btn_slide_ins_slide.Enabled = False
		      
		      chk_slide_style.Enabled = False
		      can_slide_style.ClearStyleNode
		      can_slide_style.SetEnabled False
		      
		      ' Style
		      rad_style_change.Enabled = False
		      rad_style_revert.Enabled = False
		      can_style_style.SetEnabled False
		    End If
		    
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim i As Integer
		  
		  dim Mode as Integer
		  
		  if asc(key) = 204 Then 'F5
		    mode = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "presentation_mode/@code")
		    if Status_SongOpen Then
		      ActionSongAskSave
		      ActionSongPresent mode
		    elseif Status_SetOpen then
		      ActionSetAskSave
		      ActionSetPresent mode
		    end if
		  end if
		  
		  If Keyboard.AsyncKeyDown(&h60) Then ' F5
		    'If ScreenCount > 1 Then
		    'i = 3
		    'Else
		    'i = 1
		    'End If
		    'If pageMain.Value = 0 Then
		    'If Status_SongOpen Then ActionSongPresent i
		    'Else
		    'If Status_SetOpen Then ActionSetPresent i
		    'End If
		    'Return True
		  ElseIf Keyboard.AsyncKeyDown(&h7a) Then ' F1
		    'HelpWindow.ShowModalWithin Self
		    'Return True
		  ElseIf Keyboard.AsyncKeyDown(&h75) Then ' DELETE
		    If pge_controls.Value = 0 Then
		      If Status_SongOpen Then ActionSongRemove
		    Else
		      If Status_SetOpen And Status_InSetOpen Then ActionInSetRemove
		    End If
		    'ElseIf Keyboard.AsyncKeyDown(&h78) Then ' F2
		    'SetMode 0
		    'ElseIf Keyboard.AsyncKeyDown(&h63) Then ' F3
		    'SetMode 1
		  End If
		  
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  'If IsCMMClick Then
		  'If PPT <> Nil Then PPT.SlideShowWindows.Item(1).View.Exit_
		  'Else
		  'If PPT <> Nil Then PPT.SlideShowWindows.Item(1).View.GotoSlide 6
		  'End If
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  'Try
		  'PPT = New PowerPointApplication
		  'PPT.Visible = 1
		  'PPT.Presentations.Open "C:\Documents and Settings\slickfold\My Documents\Youth Group\10Commandments_forkids.ppt", True, True, True
		  'PPT.ActivePresentation.SlideShowSettings.Run
		  'Catch e as RuntimeException
		  'MsgBox e.Message
		  'PPT = Nil
		  'End Try
		  
		  Profiler.BeginProfilerEntry "MainWindow::Open"
		  Dim output As TextOutputStream
		  Dim MainFolder As FolderItem
		  Dim s As String
		  Dim StartMode As Integer
		  
		  '++JRC
		  Globals.OldFolderSel = -1
		  '--
		  
		  App.MyBible = New Bible
		  
		  Splash.SetStatus App.T.Translate("load_data/bible") + "..."
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "last_scripture/@version")
		  If Len(s) > 0 And App.AppFolder.Child("OpenSong Scripture").Child(s).Exists Then
		    If App.MyBible.LoadBible(App.AppFolder.Child("OpenSong Scripture").Child(s)) Then
		    End If
		  End If
		  
		  Splash.SetStatus App.T.Translate("load_data/songs_cache") + "..."
		  Songs = New FolderDB(App.DocsFolder.Child("Songs"))
		  Songs.SetBuiltinFilters "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )", _
		  "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )"
		  
		  Splash.SetStatus App.T.Translate("load_data/folders") + "..."
		  If UBound(Songs.GetFolders(pop_songs_song_folders)) = 0 Then
		  End If
		  
		  Splash.SetStatus App.T.Translate("load_data/songs") + "..."
		  pop_songs_song_folders.ListIndex = 0
		  
		  Status_ProgramInitialized = False 'The status window will come up otherwise...see LoadSets
		  LoadSets App.DocsFolder.Child("Sets")
		  SongChangesMade = False
		  'Moved the SetMode call down below the initialization of LastSetPane -- if default mode is sets,
		  ' then the initial window came up VERY wrong...  'EMP 1/8/05
		  'SetMode 0
		  
		  Dim controlScreen As Integer
		  controlScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		  If controlScreen < 0 Or controlScreen + 1 > ScreenCount Then controlScreen = 0
		  
		  LastSongPane = 0
		  LastSetPane = 2
		  
		  StartMode = Val(SmartML.GetValue(App.MyMainSettings.DocumentElement,"startmode/@sets")) 'EMP
		  SetMode StartMode
		  
		  Find = New FindClass
		  
		  HSizer = New HalfSizer(Me)
		  
		  HSizer.AddWidth lbl_song_title
		  HSizer.AddWidth edt_song_title
		  HSizer.AddWidth lbl_song_author
		  HSizer.AddWidth edt_song_author
		  HSizer.AddLeftWidth lbl_song_copyright
		  HSizer.AddLeftWidth edt_song_copyright
		  HSizer.AddLeft lbl_song_ccli
		  HSizer.AddLeft edt_song_ccli
		  'Josh
		  HSizer.AddLeftWidth lbl_song_hymn_number , 1, 0'.8, .25
		  HSizer.AddLeftWidth edt_song_hymn_number, 1, 0' .8, .25
		  
		  HSizer.AddLeftWidth lbl_song_presentation
		  HSizer.AddLeftWidth edt_song_presentation
		  
		  HSizer.AddLeftTopWidthHeight can_song_style, .6, 0, .4, .4
		  HSizer.AddLeftTop chk_song_style, .6, .4
		  
		  HSizer.AddTop lbl_song_capo, .4
		  HSizer.AddTop pop_song_capo, .4
		  HSizer.AddTop chk_song_capo_print, .4
		  HSizer.AddTop lbl_song_time_sig, .4
		  HSizer.AddTop pop_song_time_sig, .4
		  HSizer.AddTop lbl_song_tempo, .4
		  HSizer.AddTop pop_song_tempo, .4
		  HSizer.AddTop lbl_song_key, .4
		  HSizer.AddTop edt_song_key, .4
		  HSizer.AddTop lbl_song_aka, .4
		  HSizer.AddTop edt_song_aka, .4
		  HSizer.AddTop lbl_song_key_line, .4
		  HSizer.AddTop edt_song_key_line, .4
		  HSizer.AddTopHeight lbl_song_user1_1, .4, 0
		  HSizer.AddTopHeight edt_song_user1, .4, .2
		  HSizer.AddTopHeight lbl_song_user2, .6, 0
		  HSizer.AddTopHeight edt_song_user2, .6, .2
		  HSizer.AddTopHeight lbl_song_user3, .8, 0
		  HSizer.AddTopHeight edt_song_user3, .8, .2
		  
		  HSizer.AddLeftWidth lbl_slide_title, 0, .4
		  HSizer.AddLeftWidth edt_slide_title, 0, .4
		  HSizer.AddLeftWidth lbl_slide_subtitle, .4, .3
		  HSizer.AddLeftWidth edt_slide_subtitle, .4, .3
		  HSizer.AddLeftWidth lbl_slide_name, .7, .3
		  HSizer.AddLeftWidth edt_slide_name, .7, .3
		  
		  '++JRC Fixed I also moved the control down a little
		  HSizer.AddLeftTop can_style_style, .5, 0
		  '--JRC
		  
		  TranslateMe
		  
		  App.MaximizeInControlScreen Me
		  
		  Profiler.EndProfilerEntry
		  Splash.SetStatus App.T.Translate("welcome")
		  Splash.SlowClose
		  
		  Select Case StartMode
		  Case 0 // Songs
		    lst_songs_songs.SetFocus
		  Case 1 // Sets
		    pop_sets_sets.SetFocus
		  End Select
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics)
		  ' left side
		  g.ForeColor = DarkBevelColor
		  g.FillOval 3, 9, 2, 2
		  g.FillOval 3, 14, 2, 2
		  g.FillOval 3, 19, 2, 2
		  g.ForeColor = LightBevelColor
		  g.FillOval 4, 10, 2, 2
		  g.FillOval 4, 15, 2, 2
		  g.FillOval 4, 20, 2, 2
		  
		  ' right side
		  g.ForeColor = DarkBevelColor
		  g.FillOval g.Width-6, 9, 2, 2
		  g.FillOval g.Width-6, 14, 2, 2
		  g.FillOval g.Width-6, 19, 2, 2
		  g.ForeColor = LightBevelColor
		  g.FillOval g.Width-5, 10, 2, 2
		  g.FillOval g.Width-5, 15, 2, 2
		  g.FillOval g.Width-5, 20, 2, 2
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  If HSizer <> Nil Then HSizer.Resize
		  Refresh True' False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  'Dim NewLeft As Integer
		  If HSizer <> Nil Then HSizer.Resize
		  'NewLeft = edt_song_ccli.Left + edt_song_ccli.Width + 15
		  'edt_song_presentation.Left = NewLeft
		  'lbl_song_presentation.Left = NewLeft
		  'edt_song_presentation.Width = edt_song_copyright.Width - _
		  '(NewLeft - edt_song_copyright.Left)
		End Sub
	#tag EndEvent


#tag MenuHandler
		Function mnu_settings_general() As Boolean Handles mnu_settings_general.Action
			MainSettingsWindow.ShowModalWithin MainWindow
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_settings_presentation() As Boolean Handles mnu_settings_presentation.Action
			PresentSettingsWindow.ShowModalWithin MainWindow
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_help_about() As Boolean Handles mnu_help_about.Action
			Dim str As String
			
			str = "OpenSong " + App.SmartVersion
			
			str = str + EndOfLine + App.T.Translate("about/copyright") + " " + Encodings.UTF8.Chr(169) + _
			"2003, 2004, 2005 Sean Lickfold. "
			str = str + EndOfLine + App.T.Translate("about/gpl")
			str = str + EndOfLine + App.T.Translate("about/web")
			str = str + EndOfLine + "Additional development by:" + EndOfLine + "Joshua R. Coley, Gareth Evans and Ed Palmer"
			str = str + EndOfLine + EndOfLine + App.T.Translate("general_settings/general/language/@caption") + ": "
			str = str + App.T.Translate("@name") + " - " + App.T.Translate("@author")
			
			InputBox.Message str
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_help_help_topics() As Boolean Handles mnu_help_help_topics.Action
			HelpWindow.ShowModalWithin Self
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_file_print_alphabetical_toc() As Boolean Handles mnu_file_print_alphabetical_toc.Action
			//
			// Worked over to reflect report object model introduced in V1.0Beta2
			//
			// Ed Palmer, February 2006
			//
			Dim i As Integer
			Dim AlphaTOC As New AlphaTOCReport
			
			App.DebugWriter.Write "MainWindow.mnu_file_print_alphabetical_toc.Action: Enter"
			
			If lst_songs_songs.ListCount = 0 Then
			InputBox.Message App.T.Translate("errors/no_songs")
			Return False
			End If
			
			If Not AlphaTOC.Setup Then Return False
			
			For i = 0 To lst_songs_songs.ListCount - 1
			AlphaTOC.AddItem lst_songs_songs.List(i)
			Next i
			
			If Not AlphaTOC.Prepare Then
			InputBox.Message App.T.Translate("errors/internal") + EndOfLine +_
			"MainWindow, Print Alphabetical TOC, Prepare failed"
			App.DebugWriter.Write "MainWindow.mnu_file_print_alphabetical_toc.Action: " +_
			"AlphaTOCReport.PrepareReport returned False", 1
			Return True
			End If
			
			If Not AlphaTOC.Generate Then
			InputBox.Message App.T.Translate("errors/internal") + EndOfLine +_
			"MainWindow, Print Alphabetical TOC, Generate failed"
			App.DebugWriter.Write "MainWindow.mnu_file_print_alphabetical_toc.Action: " +_
			"AlphaTOCReport.Generate returned False", 1
			Return True
			End If
			
			PrintWindow.SetReport AlphaTOC
			PrintWindow.Left = Self.Left + 20
			PrintWindow.Top = Self.Top + 20
			PrintWindow.Width = Self.Width - 40
			PrintWindow.Height = Self.Height - 40
			PrintWindow.ShowModalWithin Self
			App.DebugWriter.Write "MainWindow.mnu_file_print_alphabetical_toc.Action: Exit"
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_file_print_categorical_toc() As Boolean Handles mnu_file_print_categorical_toc.Action
			//
			// Worked over to reflect report object model introduced in V1.0Beta2
			//
			// Ed Palmer, February 2006
			//
			Dim i As Integer
			Dim CatTOC As New CategoryTOCReport
			
			App.DebugWriter.Write "MainWindow.mnu_file_print_categorical_toc.Action: Enter"
			
			If lst_songs_songs.ListCount = 0 Then
			InputBox.Message App.T.Translate("errors/no_songs")
			Return False
			End If
			
			If Not CatTOC.Setup Then Return False
			
			For i = 0 To lst_songs_songs.ListCount - 1
			CatTOC.AddSong lst_songs_songs.List(i)
			Next i
			
			If Not CatTOC.Prepare Then
			InputBox.Message App.T.Translate("errors/internal") + EndOfLine +_
			"MainWindow, Print Categorical TOC, Prepare failed"
			App.DebugWriter.Write "MainWindow.mnu_file_print_categorical_toc.Action: " +_
			"CategoryTOCReport.Prepare returned False", 1
			Return True
			End If
			
			If Not CatTOC.Generate Then
			InputBox.Message App.T.Translate("errors/internal") + EndOfLine +_
			"MainWindow, Print Categorical TOC, Generate failed"
			App.DebugWriter.Write "MainWindow.mnu_file_print_categorical_toc.Action: " +_
			"CategoryTOCReport.Generate returned False", 1
			Return True
			End If
			
			PrintWindow.SetReport CatTOC
			PrintWindow.Left = Self.Left + 20
			PrintWindow.Top = Self.Top + 20
			PrintWindow.Width = Self.Width - 40
			PrintWindow.Height = Self.Height - 40
			PrintWindow.ShowModalWithin Self
			App.DebugWriter.Write "MainWindow.mnu_file_print_categorical_toc.Action: Exit"
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_edit_find() As Boolean Handles mnu_edit_find.Action
			Find
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_edit_find_next() As Boolean Handles mnu_edit_find_next.Action
			FindNext
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_file_print() As Boolean Handles mnu_file_print.Action
			If pge_controls.Value = 0 Then
			ActionSongPrint
			Else
			ActionSetPrintList
			End If
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_file_save() As Boolean Handles mnu_file_save.Action
			If pge_controls.Value = 0 Then
			If Status_SongChanged Then ActionSongSave
			Else
			If Status_SetChanged Then ActionSetSave
			End If
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_file_new() As Boolean Handles mnu_file_new.Action
			If pge_controls.Value = 0 Then
			ActionSongNew
			Else
			ActionSetNew
			End If
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_file_single_screen() As Boolean Handles mnu_file_single_screen.Action
			If pge_controls.Value = 0 Then
			ActionSongPresent PresentWindow.MODE_SINGLE_SCREEN
			Else
			ActionSetPresent PresentWindow.MODE_SINGLE_SCREEN
			End If
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_file_preview_dual_screen() As Boolean Handles mnu_file_preview_dual_screen.Action
			If pge_controls.Value = 0 Then
			ActionSongPresent PresentWindow.MODE_PREVIEW
			Else
			ActionSetPresent PresentWindow.MODE_PREVIEW
			End If
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_settings_print() As Boolean Handles mnu_settings_print.Action
			PrintSettingsWindow.ShowModalWithin MainWindow
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_mode_songs() As Boolean Handles mnu_mode_songs.Action
			SetMode 0
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_mode_sets() As Boolean Handles mnu_mode_sets.Action
			SetMode 1
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_settings_install_module() As Boolean Handles mnu_settings_install_module.Action
			
			Dim file As FolderItem
			file = GetOpenFolderItem(App.T.Translate("module/file_type"))
			If file = Nil Then Return False
			
			Dim toChild As String
			
			Dim xfile As XmlDocument
			App.MouseCursor = System.Cursors.Wait
			xfile = SmartML.XDocFromFile(file)
			App.MouseCursor = Nil
			If xfile = Nil Then
			InputBox.Message App.T.Translate("module/read_error")
			Return False
			End If
			
			If xfile.DocumentElement.Name = "bible" Then
			toChild = "OpenSong Scripture"
			ElseIf xfile.DocumentElement.Name = "language" Then
			toChild = "OpenSong Languages"
			Else
			InputBox.Message App.T.Translate("module/format_error")
			Return False
			End If
			
			file.MoveFileTo App.AppFolder.Child(toChild)
			If file.LastErrorCode > 0 Then
			InputBox.Message App.T.Translate("module/move_error", App.AppFolder.Child(toChild).AbsolutePath) + " (" + Str(file.LastErrorCode) + ")"
			Return False
			End If
			file = App.AppFolder.Child(toChild).Child(file.Name)
			If file = Nil Then
			InputBox.Message App.T.Translate("module/move_error", App.AppFolder.Child(toChild).AbsolutePath) + " (0)"
			Return False
			End If
			
			If InStr(file.Name, ".") > 0 Then file.Name = Left(file.Name, StringUtils.InStrReverse(file.Name, ".") - 1)
			If file.LastErrorCode > 0 Then
			InputBox.Message App.T.Translate("module/rename_error", App.AppFolder.Child(toChild).AbsolutePath)
			Return False
			End If
			
			InputBox.Message App.T.Translate("module/success")
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_settings_refresh_songs() As Boolean Handles mnu_settings_refresh_songs.Action
			
			ActionSongAskSave
			
			App.MouseCursor = System.Cursors.Wait
			Status_SongOpen = False
			Status_SongChanged = False
			Globals.OldFolderSel = -1 // If this isn't invalidated, the list box doesn't get rebuilt unless we are on a child folder
			If Not Songs.RefreshCache Then
			InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", App.DocsFolder.Child("Songs").AbsolutePath)
			End If
			If UBound(Songs.GetFolders(pop_songs_song_folders)) = 0 Then
			End If
			pop_songs_song_folders.ListIndex = 0
			EnableMenuItems
			App.MouseCursor = Nil
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_file_dual_screen() As Boolean Handles mnu_file_dual_screen.Action
			If ScreenCount = 1 Then
			InputBox.Message App.T.Translate("errors/no_multi_screen")
			Return True
			End If
			
			If pge_controls.Value = 0 Then
			ActionSongPresent PresentWindow.MODE_DUAL_SCREEN
			Else
			ActionSetPresent PresentWindow.MODE_DUAL_SCREEN
			End If
			Return True
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_help_translating() As Boolean Handles mnu_help_translating.Action
			InputBox.Message App.T.Translate("about/translating")
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_settings_refresh_sets() As Boolean Handles mnu_settings_refresh_sets.Action
			ActionSetAskSave
			
			LoadSets App.DocsFolder.Child("Sets")
			
			lst_set_items.DeleteAllRows
			pop_sets_sets.ListIndex = 0
			EnableMenuItems
		End Function
#tag EndMenuHandler

#tag MenuHandler
		Function mnu_file_pagesetup() As Boolean Handles mnu_file_pagesetup.Action
			//++
			// Handler for Print Setup
			//
			// Get page data from either
			//     (a) Margins defined in PrintSettingsWindow
			//     (b) Previously store PrinterSetup object
			//
			// Ed Palmer, 01/06
			//
			Dim ps As PrinterSetup
			
			ps = App.GetPrinterSetup(True, Self)
			'Dim SetupString As String
			'
			'// Is there a valid PrinterSetup in the App?
			'
			'If App.PrinterSettings = Nil Then
			'
			'App.PrinterSettings = New PrinterSetup
			'
			'// Check for an existing setup string first
			'
			'SetupString = DecodeBase64(SmartML.GetValue(App.MyPrintSettings.DocumentElement, "printersetup", False))
			'If SetupString <> "" Then
			'// Build the PrinterSetup object
			'App.PrinterSettings.SetupString = SetupString
			'Else
			'// Default it to max resolution
			'App.PrinterSettings.MaxHorizontalResolution = -1
			'App.PrinterSettings.MaxVerticalResolution = -1
			'End If
			'
			'End If
			'// Present the setup dialog
			'
			'If App.PrinterSettings.PageSetupDialog Then
			'SmartML.SetValue(App.MyPrintSettings.DocumentElement, "printersetup", EncodeBase64(App.PrinterSettings.SetupString))
			'End If
			Return True
		End Function
#tag EndMenuHandler


	#tag Method, Flags = &h1
		Protected Sub ActionInSetAskSave()
		  // Check for unsaved edits
		  // EMP 10/9/04
		  Dim Msg as MessageDialog
		  
		  if Status_InSetChanged then
		    msg = new MessageDialog
		    msg.Message = App.T.Translate("questions/save/@caption", lst_set_items.Cell(CurrentInSetItem, 0))
		    msg.Title = App.T.Translate("sets_mode/current_set/save/@caption")
		    msg.Icon = 3'question
		    msg.ActionButton.Caption = App.T.Translate("shared/yes/@caption")
		    msg.CancelButton.Caption = App.T.Translate("shared/no/@caption")
		    Msg.CancelButton.Visible = true
		    if msg.ShowModal = msg.ActionButton then
		      ActionInSetSave
		    end if
		    Status_InSetChanged = False
		    EnableMenuItems
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionInSetCopy()
		  Dim xgroups, oldGroup, newGroup As XmlNode
		  ActionInSetAskSave
		  
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  oldGroup = xgroups.Child(lst_set_items.ListIndex)
		  
		  newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		  lst_set_items.InsertRow lst_set_items.ListIndex + 1, lst_set_items.List(lst_set_items.ListIndex)
		  
		  SmartML.CloneChildren oldGroup, newGroup
		  SmartML.SetValue newGroup, "@name", SmartML.GetValue(oldGroup, "@name")
		  SmartML.SetValue newGroup, "@type", SmartML.GetValue(oldGroup, "@type")
		  SmartML.SetValue newGroup, "@loop", SmartML.GetValue(oldGroup, "@loop")
		  SmartML.SetValue newGroup, "@seconds", SmartML.GetValue(oldGroup, "@seconds")
		  
		  Status_SetChanged = True
		  lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionInSetRemove()
		  Dim xslides As XmlNodeList
		  
		  Dim slide_groups As XmlNode
		  slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  slide_groups.RemoveChild slide_groups.Child(lst_set_items.ListIndex)
		  
		  lst_set_items.RemoveRow lst_set_items.ListIndex
		  
		  Status_SetChanged = True
		  Status_InSetChanged = False
		  EnableMenuItems
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionInSetSave()
		  Dim i, j As Integer
		  Dim line, str As String
		  Dim xgroup, xslides, xslide As XmlNode
		  
		  If Not Status_InSetChanged then return
		  
		  xgroup = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True).Child(CurrentInSetItem)
		  
		  Select Case SmartML.GetValue(xgroup, "@type")
		    
		  Case "song"
		    SmartML.SetValue xgroup, "@presentation", edt_slide_order.Text
		    
		  Case "style"
		    
		  Case Else
		    str = LTrim(edt_slide_slides.Text.FormatUnixEndOfLine)
		    
		    ' Set the title and sub-title
		    SmartML.SetValue xgroup, "@name", edt_slide_name.Text
		    SmartML.SetValue xgroup, "title", edt_slide_title.Text
		    SmartML.SetValue xgroup, "subtitle", edt_slide_subtitle.Text
		    SmartML.SetValue xgroup, "notes", edt_slide_notes.Text
		    SmartML.SetValueN xgroup, "@seconds", Val(edt_slide_auto_advance.Text)
		    SmartML.SetValueB xgroup, "@loop", chk_slide_loop.Value
		    SmartML.SetValueB xgroup, "@print", chk_slide_print.Value
		    
		    ' Delete the old slides
		    xslides = SmartML.GetNode(xgroup, "slides", False)
		    If xslides <> Nil Then xgroup.RemoveChild xslides
		    
		    ' Create the new slides
		    xslides = xgroup.AppendChild(CurrentSet.CreateElement("slides"))
		    str = edt_slide_slides.Text
		    For i = 1 To CountFields(str, "---")
		      xslide = xslides.AppendChild(CurrentSet.CreateElement("slide"))
		      SmartML.SetValue xslide, "body", Trim(NthField(str, "---", i))
		    Next i
		    
		    lst_set_items.List(CurrentInSetItem) = edt_slide_name.Text + " (" + SmartML.GetValue(xgroup, "@type", True) + ")"
		  End Select
		  Status_InSetChanged = False
		  EnableMenuItems
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ActionSetAskSave()
		  // Check for unsaved edits
		  // EMP 10/9/04
		  Dim Msg as MessageDialog
		  
		  if Status_SetChanged then
		    msg = new MessageDialog
		    msg.Message = App.T.Translate("questions/save/@caption", CurrentSetName)
		    msg.Title = App.T.Translate("sets_mode/current_set/save/@caption")
		    msg.Icon = 3'question
		    msg.ActionButton.Caption = App.T.Translate("shared/yes/@caption")
		    msg.CancelButton.Caption = App.T.Translate("shared/no/@caption")
		    Msg.CancelButton.Visible = true
		    if msg.ShowModal = msg.ActionButton then
		      ActionInSetSave
		      ActionSetSave
		    end if
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetNew()
		  Dim t as String
		  Dim out As TextOutputStream
		  Dim f as FolderItem
		  Dim i As Integer
		  
		  ActionSetAskSave
		  
		  t = InputBox.Input(App.T.Translate("questions/new_name/@caption"), "")
		  If Len(t) > 0 Then
		    If Not FileUtils.IsSafeFileName(t) Then
		      InputBox.Message App.T.Translate("errors/bad_file_name", t)
		      Return
		    End If
		    
		    f = App.DocsFolder.Child("Sets").Child(t)
		    If f.Exists Then
		      InputBox.Message App.T.Translate("errors/already_exists", f.AbsolutePath)
		      Return
		    End If
		    
		    CurrentSet = New XmlDocument
		    CurrentSet.AppendChild CurrentSet.CreateElement("set")
		    
		    CurrentSet.DocumentElement.SetAttribute("name",t)
		    CurrentSetName = t
		    
		    If Not SmartML.XDocToFile(CurrentSet, f) Then
		      SmartML.DisplayError
		      Return
		    End If
		    
		    i = 0
		    While i < pop_sets_sets.ListCount And StringUtils.CompareHymnBookOrder(t, pop_sets_sets.List(i)) = 1
		      i = i + 1
		    Wend
		    
		    pop_sets_sets.InsertRow i, t
		    
		    Status_SetOpen = True
		    Status_SetChanged = False
		    Status_InSetOpen = False
		    Status_InSetChanged = False
		    
		    pop_sets_sets.ListIndex = i
		    
		    EnableMenuItems
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetPresent(mode As Integer)
		  Dim i As Integer
		  Dim lastType As String
		  
		  App.MouseCursor = System.Cursors.Wait
		  Dim setDoc As New XmlDocument
		  setDoc.AppendChild setDoc.ImportNode(CurrentSet.DocumentElement, True)
		  ImportSongs setDoc
		  
		  If SetML.GetSlide(setDoc, 1) = Nil Then
		    InputBox.Message App.T.Translate("sets_mode/current_set/present/no_slides")
		    Return
		  End If
		  
		  Status_Presentation = True
		  'Self.Hide
		  
		  'App.MinimizeWindow(Self)
		  PresentWindow.Present setDoc, Mode
		  
		  '++JRC reset cursor
		  App.MouseCursor = Nil
		  'Me.MouseCursor = Nil
		  '--
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetPrint()
		  Dim i As Integer
		  Dim foundSong As Boolean = False
		  Dim rpt As LeadSheetReport
		  Dim song As FolderItem
		  Dim xgroup As XmlNode
		  
		  App.DebugWriter.Write "MainWindow.ActionSetPrint: Enter"
		  App.MouseCursor = System.Cursors.Wait
		  
		  rpt = New LeadSheetReport
		  If Not rpt.Setup Then Return // User cancelled
		  
		  xgroup = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True).FirstChild
		  While xgroup <> Nil
		    If SmartML.GetValue(xgroup, "@type") = "song" Then
		      song = Songs.GetFile(SmartML.GetValue(xgroup, "@name"))
		      If song <> Nil And song.Exists Then
		        If Not foundSong Then
		          foundSong = True
		        End If
		        rpt.AddSong SmartML.GetValue(xgroup, "@name")
		      Else
		        App.MouseCursor = Nil
		        PrintWindow.Hide
		        InputBox.Message App.T.Translate("folderdb_errors/error[@code=8]", SmartML.GetValue(xgroup, "@name"))
		        App.MouseCursor = System.Cursors.Wait
		      End If
		    End If
		    xgroup = xgroup.NextSibling
		  Wend
		  App.MouseCursor = Nil
		  
		  If Not foundSong Then
		    InputBox.Message App.T.Translate("sets_mode/current_set/print_songs/no_songs")
		    Return
		  End If
		  
		  If rpt.Generate Then
		    PrintWindow.SetReport(rpt)
		    PrintWindow.Top = Self.Top + 40
		    PrintWindow.Height = Self.Height - 80
		    PrintWindow.Left = Self.Left + 40
		    PrintWindow.Width = Self.Width - 80
		    PrintWindow.ShowModalWithin Self
		    App.DebugWriter.Write "MainWindow.ActionSongPrint: Return from PrintWindow"
		  End If
		  rpt = Nil
		  App.DebugWriter.Write "MainWindow.ActionSetPrint: Exit"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetPrintList()
		  //
		  // The 0.9.9 version of this routine has migrated to SetListReport.AddSet
		  //
		  // Print a set list of the current set
		  //
		  // Ed Palmer, February 2006
		  //
		  Dim status As Boolean
		  Dim MySetListReport As SetListReport
		  
		  App.DebugWriter.Write "MainWindow.ActionSetPrintList: Enter"
		  
		  ActionInSetAskSave
		  ActionSetAskSave
		  
		  MySetListReport = New SetListReport
		  If MySetListReport = Nil Then
		    InputBox.Message App.T.Translate("errors/internal") + _
		    EndOfLine + "MainWindow.ActionSetPrintList: New SetListReport returned Nil"
		    App.DebugWriter.Write "MainWindow.ActionSetPrintList: Exit: New SetListReport returned Nil", 1
		    Return
		  End If
		  
		  status = MySetListReport.Setup
		  If Not status Then
		    InputBox.Message App.T.Translate("errors/internal") + _
		    EndOfLine + "MainWindow.ActionSetPrintList: SetListReport.Setup failed"
		    App.DebugWriter.Write "MainWindow.ActionSetPrintList: Exit: SetListReport.Setup failed", 1
		    Return
		  End If
		  
		  status = MySetListReport.AddSet(CurrentSetName, CurrentSet)
		  If Not status Then
		    InputBox.Message App.T.Translate("errors/internal") + _
		    EndOfLine + "MainWindow.ActionSetPrintList: SetListReport.AddSet failed"
		    App.DebugWriter.Write "MainWindow.ActionSetPrintList: Exit: SetListReport.AddSet failed", 1
		    Return
		  End If
		  
		  status = MySetListReport.Generate
		  If Not status Then
		    InputBox.Message App.T.Translate("errors/internal") + _
		    EndOfLine + "MainWindow.ActionSetPrintList: SetListReport.Generate failed"
		    App.DebugWriter.Write "MainWindow.ActionSetPrintList: Exit: SetListReport.Generate failed", 1
		    Return
		  End If
		  
		  PrintWindow.SetReport(MySetListReport)
		  PrintWindow.Top = Self.Top + 40
		  PrintWindow.Height = Self.Height - 80
		  PrintWindow.Left = Self.Left + 40
		  PrintWindow.Width = Self.Width - 80
		  PrintWindow.ShowModalWithin Self
		  App.DebugWriter.Write "MainWindow.ActionSetPrintList: Return from PrintWindow"
		  
		  MySetListReport = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSetSave()
		  Dim f, song As FolderItem
		  Dim output As TextOutputStream
		  Dim i As Integer
		  
		  If Not Status_SetChanged Then Return
		  If Status_InSetChanged Then ActionInSetSave
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  dim att as XMLattribute
		  try
		    att = CurrentSet.documentElement.GetAttributeNode("name")
		  catch err as XMLexception
		    i = msgbox(err.Message, 48, "ActionSetSave")
		    return
		  end try
		  if att = Nil then
		    CurrentSet.documentElement.SetAttribute("name",CurrentSetName)
		  end if
		  
		  f = App.DocsFolder.Child("Sets").Child(CurrentSetName)
		  If Not SmartML.XDocToFile(CurrentSet, f) Then
		    App.MouseCursor = Nil
		    SmartML.DisplayError
		    Return
		  End If
		  Status_InSetChanged = False
		  Status_SetChanged = False
		  EnableMenuItems
		  
		  App.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ActionSongAskSave()
		  //
		  // Check to see if the current song has been changed
		  // if so, give the user a chance to save it before continuing
		  // with an action that will throw away the changes
		  //
		  // EMP 10/09/2004
		  // Complete rewrite JC 12/05
		  '
		  'Changed Added Prompt
		  if CurrentSong <> Nil And Status_SongChanged = True And Globals.OldSongFileName <> "" Then
		    If InputBox.Ask(App.T.Translate("questions/changed/@caption")) Then
		      ActionSongSave false, true
		    End if
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongMove()
		  Dim f As FolderItem
		  Dim folder, folders(0) As String
		  
		  ActionSongAskSave
		  folders = Songs.GetFolders
		  folders.Remove 1 ' drop the ( All )
		  folder = InputBox.Pick(App.T.Translate("songs_mode/selected_song/move/where/@caption", lst_songs_songs.Text), folders, "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )")
		  
		  If folder.Len = 0 Then Return
		  If folder = pop_songs_song_folders.Text Then Return
		  
		  If Not Songs.MoveFile(pop_songs_song_folders.Text + "/" + lst_songs_songs.Text, folder) Then
		    InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.Text)
		  Else
		    If pop_songs_song_folders.Text <> "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )" Then
		      lst_songs_songs.RemoveRow lst_songs_songs.ListIndex
		      Status_SongOpen = False
		      Status_SongChanged = False
		      EnableMenuItems
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongNew()
		  Dim t as String
		  Dim f as FolderItem
		  Dim i As Integer
		  dim j As Integer
		  dim Loc As Integer 'location of file in list
		  Dim xnode As XmlNode
		  
		  ActionSongAskSave
		  t = InputBox.Input(App.T.Translate("questions/new_name/@caption"), "")
		  If Len(t) > 0 Then
		    If Not FileUtils.IsSafeFileName(t) Then
		      InputBox.Message App.T.Translate("errors/bad_file_name", t)
		      Return
		    End If
		    
		    If pop_songs_song_folders.ListIndex > 1 Then
		      f = Songs.AddFile(pop_songs_song_folders.Text + "/" + t)
		    Else
		      f = Songs.AddFile(t)
		    End If
		    
		    If f = Nil Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", t)
		      Return
		    End If
		    
		    CurrentSong = New XmlDocument
		    xnode = CurrentSong.AppendChild(CurrentSong.CreateElement("song"))
		    SmartML.SetValue xnode, "title", t
		    
		    If Not SmartML.XDocToFile(CurrentSong, f) Then
		      SmartML.DisplayError
		      Return
		    End If
		    
		    i = 0
		    // Look for the place to insert the new song
		    While i < lst_songs_songs.ListCount And CompareHymnBookOrder(Lowercase(t), Lowercase(lst_songs_songs.List(i))) = 1
		      i = i + 1
		    Wend
		    'fill list row, CellTag contains folder path
		    lst_songs_songs.InsertRow i, t
		    lst_songs_songs.CellTag(lst_songs_songs.LastIndex, 0) = GetSongFolderPath(pop_songs_song_folders.Text) + "/"
		    'this will trigger the 'Change' event that should do all required updates
		    lst_songs_songs.ListIndex = lst_songs_songs.LastIndex
		  End If
		  UpdateMenuItems
		  edt_song_author.SetFocus
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongPresent(mode As Integer)
		  
		  ActionSongAskSave
		  If Status_SongChanged Then Return 'Don't present if user cancelled the save
		  
		  Dim setDoc As XmlDocument
		  Dim song As XmlNode
		  
		  App.MouseCursor = System.Cursors.Wait
		  setDoc = New XmlDocument
		  song = setDoc.AppendChild(setDoc.CreateElement("set"))
		  song = song.AppendChild(setDoc.CreateElement("slide_groups"))
		  song = song.AppendChild(setDoc.CreateElement("TEMP"))
		  song = SmartML.ReplaceWithImportNode(song, CurrentSong.DocumentElement)
		  SongML.ToSetML song
		  
		  App.MouseCursor = Nil
		  
		  Status_Presentation = True
		  
		  PresentWindow.Present setDoc, Mode
		  
		  'Self.Hide
		  
		  App.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongPrint()
		  Dim rpt As LeadSheetReport
		  ActionSongAskSave
		  If Status_SongChanged Then Return 'Don't print if user cancelled the save
		  
		  'PrintWindow.ClearSongs
		  'PrintWindow.AddSong lst_songs_songs.Text
		  'PrintWindow.PrintLeadSheets
		  
		  rpt = New LeadSheetReport
		  If Not rpt.Setup Then Return // User cancelled
		  rpt.AddSong lst_songs_songs.Text
		  If rpt.Generate Then
		    PrintWindow.SetReport(rpt)
		    PrintWindow.Top = Self.Top + 40
		    PrintWindow.Height = Self.Height - 80
		    PrintWindow.Left = Self.Left + 40
		    PrintWindow.Width = Self.Width - 80
		    PrintWindow.ShowModalWithin Self
		    App.DebugWriter.Write "MainWindow.ActionSongPrint: Return from PrintWindow"
		  End If
		  rpt = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongPrintAll()
		  //
		  // Print all songs in the current list.
		  //
		  Dim rpt As LeadSheetReport
		  Dim i As Integer
		  //++
		  // Feature request 1528693: require confirmation
		  //--
		  If Not InputBox.AskYN(App.T.Translate("questions/long_operation/@caption")) Then Return
		  
		  ActionSongAskSave
		  If Status_SongChanged Then Return 'Don't print if user cancelled the save
		  App.MouseCursor = System.Cursors.Wait
		  rpt = New LeadSheetReport
		  If Not rpt.Setup Then Return // User cancelled
		  For i = 0 To lst_songs_songs.ListCount - 1
		    rpt.AddSong lst_songs_songs.list(i)
		  Next i
		  If rpt.Generate Then
		    PrintWindow.SetReport(rpt)
		    PrintWindow.Top = Self.Top + 40
		    PrintWindow.Height = Self.Height - 80
		    PrintWindow.Left = Self.Left + 40
		    PrintWindow.Width = Self.Width - 80
		    App.MouseCursor = Nil
		    PrintWindow.ShowModalWithin Self
		    App.DebugWriter.Write "MainWindow.ActionSongPrintAll: Return from PrintWindow"
		  End If
		  App.MouseCursor = Nil
		Catch ex
		  App.DebugWriter.Write "MainWindow.ActionSongPrintAll: Caught exception"
		  App.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongRemove()
		  If InputBox.Ask(App.T.Translate("questions/delete/@caption", lst_songs_songs.Text)) Then
		    If Not Songs.DeleteFile(pop_songs_song_folders.Text + "/" + lst_songs_songs.Text) Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.Text)
		    Else
		      lst_songs_songs.RemoveRow lst_songs_songs.ListIndex
		      Status_SongOpen = False
		      Status_SongChanged = False
		      EnableMenuItems
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongRevert()
		  Dim f As FolderItem
		  //++
		  // Feature request 1528693: require confirmation
		  //--
		  If Not InputBox.AskYN(App.T.Translate("questions/revert/@caption")) Then Return
		  
		  f = Songs.GetFile(pop_songs_song_folders.Text + "/" + lst_songs_songs.Text)
		  
		  If f <> Nil And f.Exists Then
		    App.MouseCursor = System.Cursors.Wait
		    CurrentSong = SmartML.XDocFromFile(f)
		    App.MouseCursor = Nil
		    Status_SongOpen = False ' suppress updates
		    LoadSongFields
		    Status_SongOpen = True
		    Status_SongChanged = False
		    EnableMenuItems
		  Else
		    InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.Text)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActionSongSave(noWrite As Boolean = False, SaveOldSong As Boolean = False)
		  'Changed function now has two parameters
		  
		  Dim f As FolderItem
		  Dim theme As String
		  Dim i As Integer
		  Dim FullName As String
		  
		  If Not noWrite Then
		    'Changed
		    if SaveOldSong = true then
		      f = Songs.GetFile(Globals.OldSongFileName)
		      If f = Nil Then
		        InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", Globals.OldSongFileName)
		      End If
		    Else
		      FullName = lst_songs_songs.CellTag(lst_songs_songs.ListIndex, 0).StringValue + lst_songs_songs.Text
		      f = Songs.GetFile(FullName)
		      If f = Nil Then
		        InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", FullName)
		      End If
		    End if
		  End If
		  
		  SmartML.SetValue CurrentSong.DocumentElement, "title", edt_song_title.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "author", edt_song_author.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "copyright", edt_song_copyright.Text
		  'Josh
		  SmartML.SetValue CurrentSong.DocumentElement, "hymn_number", edt_song_hymn_number.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "presentation", edt_song_presentation.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "ccli", edt_song_ccli.Text
		  
		  For i = 0 To lst_song_themes.ListCount - 1
		    If lst_song_themes.CellCheck(i, 0) Then theme = theme + lst_song_themes.Cell(i, 0) + "; "
		  Next i
		  SmartML.SetValue CurrentSong.DocumentElement, "theme", theme
		  SmartML.RemoveSelf SmartML.GetNode(CurrentSong.DocumentElement, "alttheme")
		  
		  SmartML.SetValue CurrentSong.DocumentElement, "capo", pop_song_capo.List(pop_song_capo.ListIndex)
		  SmartML.SetValueB CurrentSong.DocumentElement, "capo/@print", chk_song_capo_print.State
		  
		  If pop_song_tempo.ListIndex >= 0 Then _
		  SmartML.SetValue CurrentSong.DocumentElement, "tempo", pop_song_tempo.Text
		  If pop_song_time_sig.ListIndex >= 0 Then _
		  SmartML.SetValue CurrentSong.DocumentElement, "time_sig", pop_song_time_sig.Text
		  SmartML.RemoveSelf SmartML.GetNode(CurrentSong.DocumentElement, "timesig")
		  
		  SmartML.SetValue CurrentSong.DocumentElement, "key", edt_song_key.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "aka", edt_song_aka.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "key_line", edt_song_key_line.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "user1", edt_song_user1.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "user2", edt_song_user2.Text
		  SmartML.SetValue CurrentSong.DocumentElement, "user3", edt_song_user3.Text
		  
		  SmartML.SetValue CurrentSong.DocumentElement, "lyrics", edf_song_lyrics.Text.FormatUnixEndOfLine
		  
		  If Not noWrite Then
		    If Not SmartML.XDocToFile(CurrentSong, f) Then
		      SmartML.DisplayError
		      Return
		    End If
		    Status_SongChanged = False
		    EnableMenuItems
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Find()
		  App.DebugWriter.Write "MainWindow.Find: Enter"
		  If FindWindow.Popup(Find) Then
		    FindStartSong = lst_songs_songs.ListIndex
		    App.DebugWriter.Write "MainWindow.Find: FindStartSong = " + Str(lst_songs_songs.ListIndex)
		    FindNext
		  End If
		  App.DebugWriter.Write "MainWindow.Find: Exit"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub FindNext()
		  App.DebugWriter.Write "MainWindow.FindNext: Enter"
		  If Find.FindString.Len = 0 Then
		    Find
		    Return
		  End If
		  
		  Dim t as String
		  Dim s As XmlDocument
		  Dim st, i, j As Integer
		  Dim f As FolderItem
		  
		  Dim found As RectControl
		  Dim edtFound As EditField
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  If Status_SongChanged Then ActionSongSave True ' updates CurrentSong but doesn't write it to file
		  If pge_controls.Value <> 0 Then SetMode 0
		  
		  t = Lowercase(find.FindString)
		  If Len(t) = 0 Then Return
		  
		  i = lst_songs_songs.ListIndex
		  If i < 0 Then
		    i = 0 ' if there is no song selected, select the first
		    If FindStartSong < 0 Then FindStartSong = 0 //By implication, if i<0, this is too
		    App.DebugWriter.Write("MainWindow.FindNext: Open " + str(i) + " " +  lst_songs_songs.CellTag(i, 0).StringValue + lst_songs_songs.List(i))
		    f = Songs.GetFile(lst_songs_songs.CellTag(i, 0).StringValue + lst_songs_songs.List(i))
		    If f = Nil Or Not f.Exists Then
		      App.MouseCursor = Nil
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.List(i))
		      Return
		    End If
		    s = SmartML.XDocFromFile(f)
		  Else
		    s = CurrentSong
		  End If
		  
		  While found = Nil And i < lst_songs_songs.ListCount
		    
		    If find.FindTitle And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "title")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 1 Or (FindFocus = 1 And (edt_song_title.SelStart+edt_song_title.SelLength = 0 Or InStr(edt_song_title.SelStart+edt_song_title.SelLength+1, Lowercase(edt_song_title.Text), t) > 0))) Then
		      found = edt_song_title
		    ElseIf find.FindAuthor And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "author")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 2 Or (FindFocus = 2 And (edt_song_author.SelStart+edt_song_author.SelLength = 0 Or InStr(edt_song_author.SelStart+edt_song_author.SelLength+1, Lowercase(edt_song_author.Text), t) > 0))) Then
		      found = edt_song_author
		    ElseIf find.FindCopyright And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "copyright")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 3 Or (FindFocus = 3 And (edt_song_copyright.SelStart+edt_song_copyright.SelLength = 0 Or InStr(edt_song_copyright.SelStart+edt_song_copyright.SelLength+1, Lowercase(edt_song_copyright.Text), t) > 0))) Then
		      found = edt_song_copyright
		    ElseIf find.FindCCLI And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "ccli")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 4 Or (FindFocus = 4 And (edt_song_ccli.SelStart+edt_song_ccli.SelLength = 0 Or InStr(edt_song_ccli.SelStart+edt_song_ccli.SelLength+1, Lowercase(edt_song_ccli.Text), t) > 0))) Then
		      found = edt_song_ccli
		    ElseIf find.FindPresentation And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "presentation")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 5 Or (FindFocus = 5 And (edt_song_presentation.SelStart+edt_song_presentation.SelLength = 0 Or InStr(edt_song_presentation.SelStart+edt_song_presentation.SelLength+1, Lowercase(edt_song_presentation.Text), t) > 0))) Then
		      found = edt_song_presentation
		    ElseIf find.FindLyrics And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "lyrics")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 6 Or (FindFocus = 6 And (edf_song_lyrics.SelStart+edf_song_lyrics.SelLength = 0 Or InStr(edf_song_lyrics.SelStart+edf_song_lyrics.SelLength+1, Lowercase(edf_song_lyrics.Text), t) > 0))) Then
		      found = edf_song_lyrics
		    ElseIf find.FindThemes And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "themes")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 7) Then
		      found = lst_song_themes
		    ElseIf find.FindCapo And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "capo")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 8) Then
		      found = pop_song_capo
		    ElseIf find.FindTimeSig And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "time_sig")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 9) Then
		      found = pop_song_time_sig
		    ElseIf find.FindTempo And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "tempo")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 10) Then
		      found = pop_song_tempo
		    ElseIf find.FindKey And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "key")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 11 Or (FindFocus = 11 And (edt_song_key.SelStart+edt_song_key.SelLength = 0 Or InStr(edt_song_key.SelStart+edt_song_key.SelLength+1, Lowercase(edt_song_key.Text), t) > 0))) Then
		      found = edt_song_key
		    ElseIf find.FindAKA And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "aka")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 12 Or (FindFocus = 12 And (edt_song_aka.SelStart+edt_song_aka.SelLength = 0 Or InStr(edt_song_aka.SelStart+edt_song_aka.SelLength+1, Lowercase(edt_song_aka.Text), t) > 0))) Then
		      found = edt_song_aka
		    ElseIf find.FindKeyLine And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "key_line")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 13 Or (FindFocus = 13 And (edt_song_key_line.SelStart+edt_song_key_line.SelLength = 0 Or InStr(edt_song_key_line.SelStart+edt_song_key_line.SelLength+1, Lowercase(edt_song_key_line.Text), t) > 0))) Then
		      found = edt_song_key_line
		    ElseIf find.FindUser1 And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "user1")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 14 Or (FindFocus = 14 And (edt_song_user1.SelStart+edt_song_user1.SelLength = 0 Or InStr(edt_song_user1.SelStart+edt_song_user1.SelLength+1, Lowercase(edt_song_user1.Text), t) > 0))) Then
		      found = edt_song_user1
		    ElseIf find.FindUser2 And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "user2")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 15 Or (FindFocus = 15 And (edt_song_user2.SelStart+edt_song_user2.SelLength = 0 Or InStr(edt_song_user2.SelStart+edt_song_user2.SelLength+1, Lowercase(edt_song_user2.Text), t) > 0))) Then
		      found = edt_song_user2
		    ElseIf find.FindUser3 And InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "user3")), t) > 0 And (i <> lst_songs_songs.ListIndex Or FindFocus < 16 Or (FindFocus = 16 And (edt_song_user3.SelStart+edt_song_user3.SelLength = 0 Or InStr(edt_song_user3.SelStart+edt_song_user3.SelLength+1, Lowercase(edt_song_user3.Text), t) > 0))) Then
		      found = edt_song_user3
		    End If
		    
		    If found <> Nil Then
		      If lst_songs_songs.ListIndex <> i Then lst_songs_songs.ListIndex = i
		      found.SetFocus
		      If found IsA EditField Then
		        edtFound = EditField(found)
		        If edtFound.SelStart+edtFound.SelLength = 0 Then
		          edtFound.SelStart = InStr(Lowercase(edtFound.Text), t) - 1
		        Else
		          edtFound.SelStart = InStr(edtFound.SelStart+edtFound.SelLength+1, Lowercase(edtFound.Text), t) - 1
		        End If
		        edtFound.SelLength = find.FindString.Len
		      End If
		      If found = edt_song_title Or found = edt_song_author Or found = edt_song_copyright Or found = edt_song_ccli Or found = edt_song_presentation Or found = edf_song_lyrics Then
		        If pge_contents.Value <> 0 Then pge_contents.Value = 0
		      Else
		        If pge_contents.Value <> 1 Then pge_contents.Value = 1
		      End If
		    Else
		      Do
		        i = i + 1
		        If i >= lst_songs_songs.ListCount Then
		          i = 0 // Circle around to the beginning
		        End If
		        //
		        //++ Check for finished
		        //
		        If i = FindStartSong Then Exit
		        //--
		        If i < lst_songs_songs.ListCount Then
		          f = Songs.GetFile(lst_songs_songs.CellTag(i, 0).StringValue + lst_songs_songs.List(i))
		          If f = Nil Or Not f.Exists Then
		            App.MouseCursor = Nil
		            InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.List(i))
		            Return
		          End If
		          s = SmartML.XDocFromFile(f)
		          If s = Nil Then
		            App.DebugWriter.Write("MainWindow.FindNext: Error converting file to XML String: " + lst_songs_songs.CellTag(i, 0).StringValue + lst_songs_songs.list(i), 1)
		            App.MouseCursor = Nil
		            InputBox.Message App.T.Translate("errors/bad_format", lst_songs_songs.List(i))
		            App.MouseCursor = System.Cursors.Wait
		          End If
		        End If
		      Loop Until s <> Nil
		    End If
		    //++
		    // See if we left the loop because we are at the end.  If so, leave the While loop
		    //--
		    If i = FindStartSong Then
		      Exit
		    End If
		  Wend
		  
		  If found = Nil Then
		    App.MouseCursor = Nil
		    InputBox.Message App.T.Translate("errors/end_of_songs")
		  End If
		  
		  App.MouseCursor = Nil
		  App.DebugWriter.Write("MainWindow.FindNext: Exit")
		  Return
		  
		  ' First, let's check the current song after the cursor
		  If lst_songs_songs.ListIndex >= 0 Then
		    j = InStr(edf_song_lyrics.SelStart + edf_song_lyrics.SelLength, Lowercase(edf_song_lyrics.Text), Lowercase(t))
		    If j > 0 Then
		      edf_song_lyrics.SelStart = j - 1
		      edf_song_lyrics.SelLength = Len(t)
		      App.MouseCursor = Nil
		      Return
		    End If
		  End If
		  
		  ' Nothing in this song, or no song open. Let's move on to other songs...
		  If lst_songs_songs.ListIndex >= 0 Then
		    st = lst_songs_songs.ListIndex + 1
		  Else
		    st = 0
		  End If
		  
		  For i = st To lst_songs_songs.ListCount - 1
		    f = Songs.GetFile(pop_songs_song_folders.Text + "/" + lst_songs_songs.List(i))
		    If f <> Nil And f.Exists Then
		      s = SmartML.XDocFromFile(f)
		      j = InStr(Lowercase(SmartML.GetValue(s.DocumentElement, "lyrics", False)), Lowercase(t))
		      If j > 0 Then
		        lst_songs_songs.ListIndex = i
		        ' Find it again? Why? Because of the newline convertions moving stuff around. I.e. Chr(10) >> Chr(13) + Chr(10)
		        j = InStr(Lowercase(edf_song_lyrics.Text), Lowercase(t))
		        edf_song_lyrics.SelStart = j - 1
		        edf_song_lyrics.SelLength = Len(t)
		        App.MouseCursor = Nil
		        Return
		      End If
		    End If
		  Next i
		  App.MouseCursor = Nil
		  InputBox.Message App.T.Translate("errors/end_of_songs")
		  
		  App.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSongFolderPath(FolderName As String) As String
		  //++EMP 18 Feb 2006
		  // This was added to clear up a problem in lst_songs_songs where
		  // the current folder (i.e., what's shown at the bottom of the screen)
		  // must be passed to a Songs FolderDB to return a FolderItem pointing
		  // to it.  This blows up if the folder being used is the main folder.
		  //--
		  Dim PseudoFolder As String
		  Dim RealPath As String = ""
		  PseudoFolder = App.T.Translate("songs_mode/song_folders/filter_all/@caption")
		  If FolderName <> "( " + PseudoFolder + " )" Then
		    PseudoFolder = App.T.Translate("songs_mode/song_folders/filter_main/@caption")
		    If FolderName <> "( " + PseudoFolder + " )" Then
		      RealPath = FolderName
		    End If
		  End If
		  Return RealPath
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ImportSongs(setDoc As XmlDocument)
		  Dim slide_group, slide_groups, temp As XmlNode
		  Dim songDoc As XmlDocument
		  Dim f As FolderItem
		  Dim Presentation As String
		  '++JRC
		  Dim CurStyle As XmlNode
		  '--
		  Dim SongPath As String
		  
		  App.MouseCursor = System.Cursors.Wait
		  slide_groups = SmartML.GetNode(setDoc.DocumentElement, "slide_groups", True)
		  slide_group = slide_groups.FirstChild
		  While slide_group <> Nil
		    If SmartML.GetValue(slide_group, "@type", True) = "song" Then
		      Presentation = SmartML.GetValue(slide_group, "@presentation", False)
		      SongPath = SmartML.GetValue(slide_group, "@path", False)
		      If SongPath <> "" Then
		        SongPath = SongPath + SmartML.GetValue(slide_group, "@name")
		      Else
		        SongPath = SmartML.GetValue(slide_group, "@name")
		      End If
		      f = Songs.GetFile(SongPath)
		      If f = Nil Then
		        InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", SmartML.GetValue(slide_group, "@name", True))
		        songDoc = Nil
		      Else
		        songDoc = SmartML.XDocFromFile(f)
		      End If
		      If songDoc <> Nil Then
		        slide_group = SmartML.ReplaceWithImportNode(slide_group, songDoc.DocumentElement)
		        If Presentation <> "" Then 'Override the song's default presentation
		          SmartML.SetValue(slide_group, "presentation", presentation)
		        End If
		        '++JRC: Pass CurStyle
		        SongML.ToSetML slide_group, CurStyle
		        '--
		        slide_group  = slide_group.NextSibling
		      Else
		        If f <> Nil Then InputBox.Message App.T.Translate("errors/bad_format", SmartML.GetValue(slide_group, "@name", False))
		        If slide_group.NextSibling <> Nil Then
		          slide_group = slide_group.NextSibling
		          slide_group.Parent.RemoveChild slide_group.PreviousSibling
		        Else
		          slide_group.Parent.RemoveChild slide_group
		          slide_group = slide_group.NextSibling
		        End If
		      End If
		      '++JRC: Save Current Style
		    Elseif SmartML.GetValue(slide_group, "@type", True) = "style"  Then
		      if SmartML.GetValue(slide_group, "@action", True) = "new" then
		        CurStyle = slide_group
		        slide_group  = slide_group.NextSibling
		      else
		        'reverting to previous style
		        slide_group  = slide_group.NextSibling
		      end if
		      '--
		    Else
		      slide_group  = slide_group.NextSibling
		    End If
		  Wend
		  App.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadSets(folder as FolderItem)
		  Dim x As Integer
		  Dim s(0) As String
		  
		  pop_sets_sets.DeleteAllRows
		  If App.SplashShowing Then Splash.SetStatus App.T.Translate("load_data/sets") + "..."
		  For x = 1 to folder.count
		    If (folder.item(x).Directory = False) _
		      And (InStr("._", Left(folder.Item(x).Name, 1)) = 0) Then
		      s.Append folder.Item(x).Name
		    End If
		  Next x
		  heapsort s
		  
		  For x = 1 To UBound(s) 'DownTo 1
		    pop_sets_sets.AddRow s(x)
		  Next x
		  
		  lst_set_items.DeleteAllRows
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadSongFields()
		  
		  btn_song_move.SetEnabled True
		  btn_song_delete.SetEnabled True
		  btn_song_rename.SetEnabled True
		  btn_song_export.SetEnabled True
		  btn_song_print.SetEnabled True
		  btn_song_present.SetEnabled True
		  
		  // Load from the object
		  
		  edt_song_title.Text = CurrentSongObj.Title
		  edt_song_author.Text = CurrentSongObj.Author
		  edt_song_copyright.Text = CurrentSongObj.Copyright
		  edt_song_hymn_number.Text = CurrentSongObj.HymnNumber
		  edt_song_presentation.Text = CurrentSongObj.Presentation
		  edt_song_ccli.Text = CurrentSongObj.CCLISongNumber
		  chk_song_capo_print.Value = CurrentSongObj.PrintCapoChords
		  edt_song_key.Text = CurrentSongObj.Key
		  edt_song_aka.Text = CurrentSongObj.AKA
		  edt_song_key_line.Text = CurrentSongObj.KeyLine
		  edt_song_user1.Text = CurrentSongObj.User1
		  edt_song_user2.Text = CurrentSongObj.User2
		  edt_song_user3.Text = CurrentSongObj.User3
		  
		  'edt_song_title.Text = SmartML.GetValue(CurrentSong.DocumentElement, "title", True)
		  'edt_song_author.Text = SmartML.GetValue(CurrentSong.DocumentElement, "author", True)
		  'edt_song_copyright.Text = SmartML.GetValue(CurrentSong.DocumentElement, "copyright", True)
		  'edt_song_hymn_number.Text = SmartML.GetValue(CurrentSong.DocumentElement, "hymn_number", True)
		  '' Josh
		  'edt_song_presentation.Text = SmartML.GetValue(CurrentSong.DocumentElement, "presentation", True)
		  'edt_song_ccli.Text = SmartML.GetValue(CurrentSong.DocumentElement, "ccli", True)
		  'chk_song_capo_print.Value = SmartML.GetValueB(CurrentSong.DocumentElement, "capo/@print", True)
		  'edt_song_key.Text = SmartML.GetValue(CurrentSong.DocumentElement, "key", True)
		  'edt_song_aka.Text = SmartML.GetValue(CurrentSong.DocumentElement, "aka", True)
		  'edt_song_key_line.Text = SmartML.GetValue(CurrentSong.DocumentElement, "key_line", True)
		  'edt_song_user1.Text = SmartML.GetValue(CurrentSong.DocumentElement, "user1", True)
		  'edt_song_user2.Text = SmartML.GetValue(CurrentSong.DocumentElement, "user2", True)
		  'edt_song_user3.Text = SmartML.GetValue(CurrentSong.DocumentElement, "user3", True)
		  '
		  Dim found, foundAlt, i As Integer
		  found = 0
		  
		  Dim theme, alttheme As String
		  'theme = SmartML.GetValue(CurrentSong.DocumentElement, "theme", True)
		  'alttheme = SmartML.GetValue(CurrentSong.DocumentElement, "alttheme", False)
		  'If Len(alttheme) > 0 Then theme = theme + "; "+ alttheme
		  theme = ";" + CurrentSongObj.ThemeList + ";"
		  ' Build the dictionary
		  Dim themeDict As new Dictionary
		  For i = 1 To CountFields(theme, ";")
		    alttheme = Trim(NthField(theme, ";", i))
		    If Len(alttheme) > 0 Then themeDict.Value(alttheme) = False
		  Next i
		  ' Build the list, checking the dictionary
		  lst_song_themes.DeleteAllRows
		  For i = 1 To UBound(App.ThemeList)
		    lst_song_themes.AddRow App.ThemeList(i)
		    lst_song_themes.CellType(lst_song_themes.ListCount-1, 0) = lst_song_themes.TypeCheckbox
		    If themeDict.hasKey(App.ThemeList(i)) Then
		      lst_song_themes.CellCheck(lst_song_themes.ListCount-1, 0) = True
		      themeDict.Value(App.ThemeList(i)) = True
		    End If
		  Next i
		  ' Prepend to the list anything not in the theme list
		  For i = 0 To themeDict.Count - 1
		    If themeDict.Value(themeDict.Key(i)).BooleanValue = False Then
		      lst_song_themes.InsertRow 0, themeDict.Key(i)
		      lst_song_themes.CellType(0, 0) = lst_song_themes.TypeCheckbox
		      lst_song_themes.CellCheck(0, 0) = True
		    End if
		  Next i
		  
		  Dim capo As Integer
		  'capo = SmartML.GetValueN(CurrentSong.DocumentElement, "capo", True)
		  capo = CurrentSongObj.Capo
		  found = 0
		  pop_song_capo.DeleteAllRows
		  pop_song_capo.AddRow ""
		  For i = 1 To UBound(App.CapoList)
		    If App.CapoList(i) = Str(capo) Then found = i
		    pop_song_capo.AddRow App.CapoList(i)
		  Next i
		  If found = 0 And capo > 0 Then pop_song_capo.InsertRow 0, Str(capo)
		  pop_song_capo.ListIndex = found
		  
		  Dim tempo As String
		  'tempo = SmartML.GetValue(CurrentSong.DocumentElement, "tempo", True)
		  tempo = CurrentSongObj.Tempo
		  found = 0
		  pop_song_tempo.DeleteAllRows
		  pop_song_tempo.AddRow ""
		  For i = 1 To UBound(App.TempoList)
		    If App.TempoList(i) = tempo Then found = i
		    pop_song_tempo.AddRow App.TempoList(i)
		  Next i
		  If found = 0 And Len(tempo) > 0 Then pop_song_tempo.InsertRow 0, tempo
		  pop_song_tempo.ListIndex = found
		  
		  Dim timesig As String
		  'timesig = SmartML.GetValue(CurrentSong.DocumentElement, "time_sig", True)
		  timesig = CurrentSongObj.TimeSignature
		  found = 0
		  pop_song_time_sig.DeleteAllRows
		  pop_song_time_sig.AddRow ""
		  For i = 1 To UBound(App.TimeSigList)
		    If App.TimeSigList(i) = timesig Then found = i
		    pop_song_time_sig.AddRow App.TimeSigList(i)
		  Next i
		  If found = 0 And Len(timesig) > 0 Then pop_song_time_sig.InsertRow 0, timesig
		  pop_song_time_sig.ListIndex = found
		  
		  edf_song_lyrics.Text = SmartML.GetValue(CurrentSong.DocumentElement, "lyrics", True).FormatLocalEndOfLine
		  
		  'If SmartML.GetNode(CurrentSong.DocumentElement, "style", False) = Nil Then
		  If CurrentSongObj.SongStyle = Nil Then
		    chk_song_style.Value = False
		    can_song_style.SetEnabled False
		  Else
		    chk_song_style.Value = True
		    can_song_style.Enabled = True
		    can_song_style.SetStyleNode SmartML.GetNode(CurrentSong.DocumentElement, "style")
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  'Try
		  'PPT = New PowerPointApplication
		  'PPT.Visible = 1
		  'PPT.Presentations.Open "C:\Documents and Settings\slickfold\My Documents\Youth Group\10Commandments_forkids.ppt", True, True, True
		  'PPT.ActivePresentation.SlideShowSettings.Run
		  'Catch e as RuntimeException
		  'MsgBox e.Message
		  'PPT = Nil
		  'End Try
		  
		  'Why is this here? Is it used?
		  
		  Profiler.BeginProfilerEntry "MainWindow::Open"
		  Dim output As TextOutputStream
		  Dim MainFolder As FolderItem
		  Dim s As String
		  
		  App.MyBible = New Bible
		  
		  Splash.SetStatus App.T.Translate("load_data/bible") + "..."
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "last_scripture/@version")
		  If Len(s) > 0 And App.AppFolder.Child("OpenSong Scripture").Child(s).Exists Then
		    If App.MyBible.LoadBible(App.AppFolder.Child("OpenSong Scripture").Child(s)) Then
		    End If
		  End If
		  
		  Splash.SetStatus App.T.Translate("load_data/songs_cache") + "..."
		  Songs = New FolderDB(App.DocsFolder.Child("Songs"))
		  Songs.SetBuiltinFilters "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )", _
		  "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )"
		  
		  Splash.SetStatus App.T.Translate("load_data/folders") + "..."
		  If UBound(Songs.GetFolders(pop_songs_song_folders)) = 0 Then
		  End If
		  
		  Splash.SetStatus App.T.Translate("load_data/songs") + "..."
		  pop_songs_song_folders.ListIndex = 0
		  
		  LoadSets App.DocsFolder.Child("Sets")
		  SongChangesMade = False
		  SetMode 0
		  
		  Dim controlScreen As Integer
		  controlScreen = SmartML.GetValueN(App.MyPresentSettings.DocumentElement, "monitors/@control") - 1
		  If controlScreen < 0 Or controlScreen + 1 > ScreenCount Then controlScreen = 0
		  
		  LastSongPane = 0
		  LastSetPane = 2
		  
		  Find = New FindClass
		  
		  HSizer = New HalfSizer(Me)
		  
		  HSizer.AddWidth lbl_song_title
		  HSizer.AddWidth edt_song_title
		  HSizer.AddWidth lbl_song_author
		  HSizer.AddWidth edt_song_author
		  HSizer.AddLeftWidth lbl_song_copyright
		  HSizer.AddLeftWidth edt_song_copyright
		  HSizer.AddLeftWidth lbl_song_ccli, .5, .25
		  HSizer.AddLeftWidth edt_song_ccli, .5, .25
		  HSizer.AddLeftWidth lbl_song_hymn_number, .75, .25
		  HSizer.AddLeftWidth edt_song_hymn_number, .75, .25
		  HSizer.AddLeftWidth lbl_song_presentation, .75, .25
		  HSizer.AddLeftWidth edt_song_presentation, .75, .25
		  
		  HSizer.AddLeftTopWidthHeight can_song_style, .6, 0, .4, .4
		  HSizer.AddLeftTop chk_song_style, .6, .4
		  
		  HSizer.AddTop lbl_song_capo, .4
		  HSizer.AddTop pop_song_capo, .4
		  HSizer.AddTop chk_song_capo_print, .4
		  HSizer.AddTop lbl_song_time_sig, .4
		  HSizer.AddTop pop_song_time_sig, .4
		  HSizer.AddTop lbl_song_tempo, .4
		  HSizer.AddTop pop_song_tempo, .4
		  HSizer.AddTop lbl_song_key, .4
		  HSizer.AddTop edt_song_key, .4
		  HSizer.AddTop lbl_song_aka, .4
		  HSizer.AddTop edt_song_aka, .4
		  HSizer.AddTop lbl_song_key_line, .4
		  HSizer.AddTop edt_song_key_line, .4
		  HSizer.AddTopHeight lbl_song_user1_1, .4, 0
		  HSizer.AddTopHeight edt_song_user1, .4, .2
		  HSizer.AddTopHeight lbl_song_user2, .6, 0
		  HSizer.AddTopHeight edt_song_user2, .6, .2
		  HSizer.AddTopHeight lbl_song_user3, .8, 0
		  HSizer.AddTopHeight edt_song_user3, .8, .2
		  
		  HSizer.AddLeftWidth lbl_slide_title, 0, .4
		  HSizer.AddLeftWidth edt_slide_title, 0, .4
		  HSizer.AddLeftWidth lbl_slide_subtitle, .4, .3
		  HSizer.AddLeftWidth edt_slide_subtitle, .4, .3
		  HSizer.AddLeftWidth lbl_slide_name, .7, .3
		  HSizer.AddLeftWidth edt_slide_name, .7, .3
		  
		  HSizer.AddLeftTop can_style_style, .5, .5
		  
		  TranslateMe
		  
		  App.MaximizeInControlScreen Me
		  
		  Profiler.EndProfilerEntry
		  Splash.SetStatus App.T.Translate("welcome")
		  Splash.SlowClose
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetHelp(str As String)
		  If str = "" Then
		    txt_context_help.Text = ""
		  Else
		    txt_context_help.Text = App.T.Translate(str)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMode(i As Integer)
		  Dim idx As Integer
		  If i = 0 Then
		    ' Change to Song mode
		    ActionSetAskSave
		    If Status_SetChanged Then //User cancelled from AskSave, revert the set since we are changing modes
		      Status_InSetChanged = False // These two lines keep pop_sets_sets.Change calls to ActionSetAskSave from firing
		      Status_SetChanged = False
		      idx = pop_sets_sets.ListIndex //cheats, forces a change event that will reload the set
		      pop_sets_sets.ListIndex = -1
		      pop_sets_sets.ListIndex = idx
		    End If
		    btn_mode_songs_mode.SetStuck True
		    btn_mode_sets_mode.SetStuck False
		    pge_controls.Value = 0
		    pge_contents.Value = LastSongPane
		    mnu_mode_songs.Checked = True
		    mnu_mode_sets.Checked = False
		  Else
		    ' Change to Set mode
		    ActionSongAskSave
		    If Status_SongChanged Then ActionSongRevert //Easier to do here; we've already got a method defined
		    btn_mode_songs_mode.SetStuck False
		    btn_mode_sets_mode.SetStuck True
		    pge_controls.Value = 1
		    pge_contents.Value = LastSetPane
		    mnu_mode_songs.Checked = False
		    mnu_mode_sets.Checked = True
		  End If
		  EnableMenuItems
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SplitToArray(str As String, ByRef arr() As String, char As String)
		  Dim st, x As Integer
		  Dim c As String
		  ReDim arr(0)
		  
		  str = str + char
		  
		  st = 1
		  x = InStr(st, str, char)
		  While x >= st
		    arr.Append RTrim(Mid(str, st, x-st))
		    st = x + Len(char)
		    x = InStr(st, str, char)
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TranslateMe()
		  App.T.TranslateWindow Me, "", App.TranslationFonts
		  txt_context_help.Caption = ""
		  
		  Dim s As String
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user1")
		  If s.Len > 0 Then
		    lbl_song_user1_1.Caption = s + ":"
		  End If
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user2")
		  If s.Len > 0 Then lbl_song_user2.Caption = s + ":"
		  s = SmartML.GetValue(App.MyMainSettings.DocumentElement, "user_defined/@user3")
		  If s.Len > 0 Then lbl_song_user3.Caption = s + ":"
		  
		  Title = "OpenSong " + App.SmartVersion
		  
		  btn_song_present.DeletePopup
		  btn_song_present.AddPopupRow App.T.Translate("songs_mode/selected_song/present/single_screen/@caption")
		  if ScreenCount > 1 Then
		    btn_song_present.AddPopupRow App.T.Translate("songs_mode/selected_song/present/dual_screen/@caption")
		  End If
		  btn_song_present.AddPopupSeparator
		  btn_song_present.AddPopupRow App.T.Translate("songs_mode/selected_song/present/preview_dual_screen/@caption")
		  
		  btn_set_present.DeletePopup
		  btn_set_present.AddPopupRow App.T.Translate("sets_mode/current_set/present/single_screen/@caption")
		  If ScreenCount > 1 Then
		    btn_set_present.AddPopupRow App.T.Translate("sets_mode/current_set/present/dual_screen/@caption")
		  End If
		  btn_set_present.AddPopupSeparator
		  btn_set_present.AddPopupRow App.T.Translate("sets_mode/current_set/present/preview_dual_screen/@caption")
		  
		  pop_song_accidentals.DeleteAllRows
		  pop_song_accidentals.AddRow App.T.Translate("general_song_editor/transpose/using/sharps/@caption")
		  pop_song_accidentals.AddRow App.T.Translate("general_song_editor/transpose/using/flats/@caption")
		  pop_song_accidentals.ListIndex = 0
		  
		  '++JRC: Fixed now translates (All) and (Main) folder items
		  Dim OldIndex As Integer = pop_songs_song_folders.ListIndex
		  
		  Songs = New FolderDB(App.DocsFolder.Child("Songs"))
		  Songs.SetBuiltinFilters "( " + App.T.Translate("songs_mode/song_folders/filter_all/@caption") + " )", _
		  "( " + App.T.Translate("songs_mode/song_folders/filter_main/@caption") + " )"
		  
		  If UBound(Songs.GetFolders(pop_songs_song_folders)) = 0 Then
		  End If
		  
		  pop_songs_song_folders.ListIndex = OldIndex
		  'Rebuild old File Name
		  if Globals.OldSongFileName <> "" then
		    Globals.OldSongFileName = pop_songs_song_folders.Text + "/" + lst_songs_songs.Text
		  end if
		  '--
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateMenuItems()
		  EnableMenuItems
		End Sub
	#tag EndMethod


	#tag Note, Name = Status Hierarchy
		SetOpen
		+ SetChanged
		+ InSetOpen
		   + InSetChanged
	#tag EndNote


	#tag Property, Flags = &h1
		Protected ActiveEditField As EditField
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentInSetItem As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentSet As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentSetName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentSong As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentSongName As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrentSongObj As Song
	#tag EndProperty

	#tag Property, Flags = &h0
		Find As FindClass
	#tag EndProperty

	#tag Property, Flags = &h0
		FindFocus As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			This holds the pointer to the first song (usually the current song) involved in the active search.
			Allows wrapping search support.
		#tag EndNote
		Protected FindStartSong As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected HSizer As HalfSizer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected InSetNameCache As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected KeyedSearch As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LastSearch As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LastSetPane As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LastSongPane As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PopupClicked As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			PowerPointApplication
		#tag EndNote
		PPT As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SongCache(0) As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SongChangesMade As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Songs As FolderDB
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_InSetChanged As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_InSetEditable As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_InSetOpen As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_InSetSongEdit As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Status_Presentation As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_ProgramInitialized As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_SetChanged As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Status_SetOpen As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Status_SongChanged As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Status_SongOpen As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events tmr_lookup
	#tag Event
		Sub Action()
		  KeyedSearch = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events mnu_clipboard
	#tag Event
		Sub Action(item As String)
		  If ActiveEditField = Nil Then Return
		  //++ EMP, 17 Feb 2006
		  // Changed Joshua's Win32 approach to one using
		  // RB's built-in character encoding support
		  //--
		  ''++JRC
		  'dim m As MemoryBlock
		  'Declare Sub ClipboardUNICODEtoTXT lib "utility.dll" (Handle as integer, Buffer as Ptr)
		  ''--
		  
		  Dim c As New Clipboard
		  
		  If item = "Cut" Then
		    c.SetText  ActiveEditField.SelText
		    ActiveEditField.SelText = ""
		  ElseIf item = "Copy" Then
		    c.SetText ActiveEditField.SelText
		  ElseIf item = "Paste" Then
		    ''++JRC
		    'm = NewMemoryBlock(50000)
		    'ClipboardUNICODEtoTXT(MainWindow.Handle, m)
		    ''edf_song_lyrics.Text = m.CString(0)
		    'ActiveEditField.SelText = m.CString(0)
		    '
		    ''--
		    if c.TextAvailable then
		      Try
		        c.Text = ConvertEncoding(c.Text, encodings.UTF8)
		      Catch ex
		        App.DebugWriter.Write("Can't convert string to paste, string is '" + c.text + "'", 1)
		      End Try
		    End If
		    ActiveEditField.SelText = c.text
		  End If
		  
		  PopupClicked = True
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.AddRow "Cut"
		  Me.AddRow "Copy"
		  Me.AddRow "Paste"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_show_general_editor
	#tag Event
		Sub Action()
		  pge_contents.Value = 0
		  LastSongPane = 0
		  Me.Refresh True ' False
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewtext2pic, viewtext2mask
		  Me.SetStuck(True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_show_advanced_editor
	#tag Event
		Sub Action()
		  pge_contents.Value = 1
		  LastSongPane = 1
		  Me.Refresh True ' False
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewdetailed2pic, viewdetailed2mask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_title
	#tag Event
		Sub GotFocus()
		  FindFocus = 1
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/title"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_author
	#tag Event
		Sub GotFocus()
		  FindFocus = 2
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/author"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_copyright
	#tag Event
		Sub GotFocus()
		  FindFocus = 3
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/copyright"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_ccli
	#tag Event
		Sub GotFocus()
		  FindFocus = 4
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ccli"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_presentation
	#tag Event
		Sub GotFocus()
		  FindFocus = 5
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/presentation"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_hymn_number
	#tag Event
		Sub GotFocus()
		  'FindFocus = 3
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/hymn_number"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_section
	#tag Event
		Sub Action()
		  Dim s As String
		  If edf_song_lyrics.Enabled Then
		    s = InputBox.Input(App.T.Translate("general_song_editor/ins_section/section_name/@caption") + ":", "V1")
		    If Len(s) > 0 Then
		      If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then edf_song_lyrics.SelText = SmartML.Newline
		      edf_song_lyrics.SelText = "[" + s + "]" + SmartML.Newline
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_section"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewdetailedpic, viewdetailedmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_lyrics
	#tag Event
		Sub Action()
		  Dim s, t As String
		  Dim i As Integer
		  If edf_song_lyrics.Enabled Then
		    s = InputBox.Input(App.T.Translate("general_song_editor/ins_lyrics/number_of_lines/@caption") + ":", "1")
		    If Len(s) > 0 And Val(s) > 0 Then
		      If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then t = SmartML.Newline
		      For i = 1 To Val(s)
		        t = t + "." + SmartML.Newline + " " + SmartML.Newline
		      Next i
		      edf_song_lyrics.SelText = t
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_lyrics"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewtextpic, viewtextmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_multi_verse
	#tag Event
		Sub Action()
		  Dim s, t, u As String
		  Dim i, j As Integer
		  If edf_song_lyrics.Enabled Then
		    s = InputBox.Input(App.T.Translate("general_song_editor/ins_multi_verse/number_of_verses/@caption") + ":", "4")
		    If Len(s) > 0 And Val(s) > 0 Then
		      t = InputBox.Input(App.T.Translate("general_song_editor/ins_multi_verse/number_of_lines/@caption") + ":", "4")
		      If Len(t) > 0 And Val(t) > 0 Then
		        If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then u = SmartML.Newline
		        u = u + "[V]" + SmartML.Newline
		        For j = 1 To Val(t)
		          u = u + "." + SmartML.Newline
		          For i = 1 To Val(s)
		            u = u + Str(i) + SmartML.Newline
		          Next i
		        Next j
		        edf_song_lyrics.SelText = u
		      End If
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_multi_verse"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewchoosepic, viewchoosemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_comment
	#tag Event
		Sub Action()
		  Dim s, t As String
		  If edf_song_lyrics.Enabled Then
		    s = InputBox.Input(App.T.Translate("general_song_editor/ins_comment/@caption") + ":", "")
		    If Len(s) > 0 Then
		      If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then t = SmartML.Newline
		      t = t + ";" + s + SmartML.Newline
		      edf_song_lyrics.SelText = t
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_comment"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewbottompic, viewbottommask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_column
	#tag Event
		Sub Action()
		  Dim s As String
		  If edf_song_lyrics.Enabled Then
		    If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then s = SmartML.Newline
		    s = s + "---" + SmartML.Newline
		    edf_song_lyrics.SelText = s
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_column"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewleftrightpic, viewleftrightmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_song_transpose
	#tag Event
		Sub Change()
		  SmartML.SetValue CurrentSong.DocumentElement, "lyrics", edf_song_lyrics.Text.FormatUnixEndOfLine
		  
		  If MainWindow.pop_song_accidentals.ListIndex = 0 Then
		    SongML.Transpose CurrentSong, Val(Me.Text), True
		  Else
		    SongML.Transpose CurrentSong, Val(Me.Text), False
		  End If
		  edf_song_lyrics.Text = SmartML.GetValue(CurrentSong.DocumentElement, "lyrics").FormatLocalEndOfLine
		  Me.ListIndex = 6
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/transpose"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_song_accidentals
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/transpose/using"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edf_song_lyrics
	#tag Event
		Sub GotFocus()
		  FindFocus = 6
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/lyrics"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_ins_page
	#tag Event
		Sub Action()
		  Dim s As String
		  If edf_song_lyrics.Enabled Then
		    If edf_song_lyrics.SelStart > 0 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 10 And Asc(Mid(edf_song_lyrics.Text, edf_song_lyrics.SelStart, 1)) <> 13 Then s = SmartML.Newline
		    s = s + "-!!" + SmartML.Newline
		    edf_song_lyrics.SelText = s
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor/ins_page"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewnewpagepic, viewnewpagemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_show_general_editor_2
	#tag Event
		Sub Action()
		  pge_contents.Value = 0
		  LastSongPane = 0
		  Me.Refresh True ' False
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "general_song_editor"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewtext2pic, viewtext2mask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_show_advanced_editor_2
	#tag Event
		Sub Action()
		  pge_contents.Value = 1
		  LastSongPane = 1
		  Me.Refresh True ' False
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewdetailed2pic, viewdetailed2mask
		  Me.SetStuck(True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_song_themes
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  FindFocus = 7
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/themes"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_song_style
	#tag Event
		Sub Action()
		  Status_SongChanged = True
		  EnableMenuItems
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/style"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_song_style
	#tag Event
		Sub Action()
		  Dim xnode As XmlNode
		  
		  If Status_SongOpen Then
		    If Me.Value Then
		      xnode = SmartML.GetNode(CurrentSong.DocumentElement, "style", True)
		      SongML.CloneStyle SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style"), xnode
		      can_song_style.SetStyleNode xnode
		    Else
		      xnode = SmartML.GetNode(CurrentSong.DocumentElement, "style", False)
		      If xnode <> Nil Then SmartML.RemoveSelf xnode
		      can_song_style.ClearStyleNode
		    End If
		    
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/style"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_song_capo
	#tag Event
		Sub Change()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  FindFocus = 8
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/capo"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_song_capo_print
	#tag Event
		Sub Action()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/print_capo"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_key
	#tag Event
		Sub GotFocus()
		  FindFocus = 11
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/key"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_song_time_sig
	#tag Event
		Sub Change()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  FindFocus = 9
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/time_sig"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_song_tempo
	#tag Event
		Sub Change()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  FindFocus = 10
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/tempo"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_aka
	#tag Event
		Sub GotFocus()
		  FindFocus = 12
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/aka"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_key_line
	#tag Event
		Sub GotFocus()
		  FindFocus = 13
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/key_line"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_user1
	#tag Event
		Sub GotFocus()
		  FindFocus = 14
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/user1"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_user2
	#tag Event
		Sub GotFocus()
		  FindFocus = 15
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/user2"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_song_user3
	#tag Event
		Sub GotFocus()
		  FindFocus = 16
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "advanced_song_editor/user3"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_SongOpen Then
		    Status_SongChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_title
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/title"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_subtitle
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/subtitle"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_name
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/name"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_slides
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/slides"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_order
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/order"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_origorder
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/order"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_notes
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/notes"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_slide_ins_slide
	#tag Event
		Sub Action()
		  Dim s As String
		  If edt_slide_slides.Enabled Then
		    If edt_slide_slides.SelStart > 0 And Asc(Mid(edt_slide_slides.Text, edt_slide_slides.SelStart, 1)) <> 10 And Asc(Mid(edt_slide_slides.Text, edt_slide_slides.SelStart, 1)) <> 13 Then s = SmartML.Newline
		    s = s + "---" + SmartML.Newline
		    edt_slide_slides.SelText = s
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/ins_slide"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon viewbottompic, viewbottommask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_slide_loop
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/loop"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_slide_print
	#tag Event
		Sub Action()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/print"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_slide_auto_advance
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  If Me.Enabled And IsCMMClick Then
		    ActiveEditField = Me
		    PopupClicked = False
		    mnu_clipboard.Open
		    Return PopupClicked
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/auto_advance"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  If Status_InSetEditable Then
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_slide_style
	#tag Event
		Sub Action()
		  Dim xnode, xgroup As XmlNode
		  
		  If Status_InSetEditable Then
		    xgroup = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True).Child(lst_set_items.ListIndex)
		    If Me.Value Then
		      xnode = SmartML.GetNode(xgroup, "style", True)
		      If Lowercase(SmartML.GetValue(xgroup, "@type")) = "scripture" Then
		        SongML.CloneStyle SmartML.GetNode(App.MyPresentSettings.DocumentElement, "scripture_style"), xnode
		        can_slide_style.SetStyleNode xnode
		      Else
		        SongML.CloneStyle SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style"), xnode
		        can_slide_style.SetStyleNode xnode
		      End If
		    Else
		      xnode = SmartML.GetNode(xgroup, "style", False)
		      If xnode <> Nil Then SmartML.RemoveSelf xnode
		      can_slide_style.ClearStyleNode
		    End If
		    
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/custom_style"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_slide_style
	#tag Event
		Sub Action()
		  If Status_SetOpen Then Status_SetChanged = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "slide_editor/custom_style"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_style_revert
	#tag Event
		Sub Action()
		  Dim slide_group As XmlNode
		  
		  If Status_InSetEditable Then
		    slide_group = SetML.GetSetItem(CurrentSet, lst_set_items.ListIndex+1)
		    SmartML.SetValue slide_group, "@action", "revert"
		    SmartML.SetValue slide_group, "@name", "-- Revert Style --"
		    lst_set_items.List(lst_set_items.ListIndex) = SmartML.GetValue(slide_group, "@name", True) + " (" + SmartML.GetValue(slide_group, "@type", True) + ")"
		    SmartML.RemoveChildren slide_group
		    
		    can_style_style.ClearStyleNode
		    Status_InSetChanged = True
		    Status_SetChanged = True
		    EnableMenuItems
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "style_change/revert"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_style_change
	#tag Event
		Sub Action()
		  Dim slide_group As XmlNode
		  
		  If Status_InSetEditable Then
		    slide_group = SetML.GetSetItem(CurrentSet, lst_set_items.ListIndex+1)
		    SmartML.SetValue slide_group, "@action", "new"
		    SmartML.SetValue slide_group, "@name", "-- Change Style --"
		    lst_set_items.List(lst_set_items.ListIndex) = SmartML.GetValue(slide_group, "@name", True) + " (" + SmartML.GetValue(slide_group, "@type", True) + ")"
		    SmartML.SafeImport SmartML.GetNode(App.MyPresentSettings.DocumentElement, "default_style"), SmartML.GetNode(slide_group, "style", True)
		    can_style_style.SetStyleNode SmartML.GetNode(slide_group, "style")
		    Status_SetChanged = True
		    Status_InSetChanged = True
		    EnableMenuItems
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "style_change/change"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can_style_style
	#tag Event
		Sub Action()
		  Status_SetChanged = True
		  Status_InSetChanged = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "style_change/style"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_songs_print
	#tag Event
		Sub Action()
		  ActionSongPrintAll
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/all_songs/print"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileprintpic, fileprintmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_songs_export
	#tag Event
		Sub Action()
		  Dim i As Integer
		  Dim dlg as New SelectFolderDialog
		  Dim f, g as FolderItem
		  dlg.ActionButtonCaption = App.T.Translate("shared/ok/@caption")
		  dlg.CancelButtonCaption = App.T.Translate("shared/cancel/@caption")
		  dlg.InitialDirectory = DocumentsFolder
		  dlg.PromptText = App.T.Translate("songs_mode/selected_song/export/to/@caption")
		  
		  Dim output, goutput As TextOutputStream
		  Dim song As XmlDocument
		  
		  'Changed Added Prompt
		  if CurrentSong <> Nil And Status_SongChanged = True And Globals.OldSongFileName <> "" Then
		    If InputBox.Ask(App.T.Translate("questions/changed/@caption")) Then
		      ActionSongSave false, true
		    End if
		  End if
		  
		  f = dlg.ShowModal()
		  If f <> Nil Then
		    App.DoEvents
		    g = f.Child("index.html")
		    goutput = g.CreateTextFile
		    If goutput <> Nil Then
		      goutput.WriteLine "<html><head><title>" + App.T.Translate("songs_mode/songs/@caption") + "</title>"
		      goutput.WriteLine "<link rel=""stylesheet"" href=""style.css"" type=""text/css""/>"
		      goutput.WriteLine "<meta http-equiv=""content-type"" content=""text/html; charset=utf-8"">"
		      goutput.WriteLine "</head><body>"
		      goutput.WriteLine "<div id=""title"">" + App.T.Translate("songs_mode/songs/@caption") + "</div><ul id=""song_list"">"
		    End If
		    App.MouseCursor = System.Cursors.Wait
		    For i = 0 To lst_songs_songs.ListCount - 1
		      output = f.Child(MakeSafeURLName(lst_songs_songs.List(i)) + ".html").CreateTextFile
		      song = SmartML.XDocFromFile(Songs.GetFile(pop_songs_song_folders.Text + "/" + lst_songs_songs.List(i)))
		      If output <> Nil And song <> Nil Then
		        output.Write SongML.ToHTML(song.DocumentElement)
		        If goutput <> Nil Then goutput.WriteLine "<li><a href=""" + MakeSafeURLName(lst_songs_songs.List(i)) + ".html"">" + lst_songs_songs.List(i) + "</a></li>"
		        output.Close
		      End If
		      ProgressWindow.SetProgress (i+1) / lst_songs_songs.ListCount * 100
		    Next i
		    If goutput <> Nil Then
		      goutput.WriteLine "</ul><p><a class=""opensong"" href=""http://www.opensong.org/"">" + App.T.Translate("about/created_with_opensong") + "</a></p>"
		      goutput.Write "</body></html>"
		    End If
		    goutput.Close
		    App.MouseCursor = Nil
		    g = App.AppFolder.Child("OpenSong Settings").Child("style.css")
		    If g <> Nil Then g.CopyFileTo f
		    
		    InputBox.Message App.T.Translate("shared/done/@caption")
		  End If
		  ProgressWindow.Close
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/all_songs/export"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesaveaspic, filesaveasmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_songs_find
	#tag Event
		Sub Action()
		  Find
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/all_songs/find"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon findpic, findmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_create
	#tag Event
		Sub Action()
		  
		  'Changed Added Prompt
		  if CurrentSong <> Nil And Status_SongChanged = True And Globals.OldSongFileName <> "" Then
		    If InputBox.Ask(App.T.Translate("questions/changed/@caption")) Then
		      ActionSongSave false, true
		    End if
		  End if
		  
		  ActionSongNew
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/new_song/create"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filenewpic, filenewmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_songs_song_folders
	#tag Event
		Sub Change()
		  '++JRC
		  if Globals.OldFolderSel = Me.ListIndex then
		    return
		  end if
		  
		  Globals.OldFolderSel = Me.ListIndex
		  '--
		  ActionSongAskSave
		  
		  If UBound(Songs.GetFiles(Me.Text, lst_songs_songs)) > 0 Then
		    lst_songs_songs.SortedColumn = 0
		    lst_songs_songs.Sort
		  End If
		  edt_songs_curr_folder.Text = ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/song_folders"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_import
	#tag Event
		Sub Action()
		  CCLIWindow.ShowModalWithin MainWindow
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/new_song/import"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileopenpic, fileopenmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_save
	#tag Event
		Sub Action()
		  ActionSongSave
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/save"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesavepic, filesavemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_songs_songs
	#tag Event
		Sub Change()
		  Dim f As FolderItem
		  Dim xnode As XmlNode
		  Dim temp As String
		  Dim path_to_songs As String
		  Dim path_to_song As String
		  Dim fullpath As String
		  'Changed
		  
		  //++EMP 18 Feb 2006
		  // If Globals.OldSongSel < 0, then immediately return.
		  // This is a flag that some manipulation of items is going on
		  // (See ActionSongNew, for example)
		  
		  If Globals.OldSongSel < 0 Then Return
		  
		  If lst_songs_songs.ListIndex >= 0 Then
		    'Changed
		    if lst_songs_songs.ListIndex <> Globals.OldSongSel Or lst_songs_songs.CellTag(Me.ListIndex, 0) + lst_songs_songs.Text <> Globals.OldSongFileName then
		      if CurrentSong <> Nil And Status_SongChanged = True And Globals.OldSongFileName <> "" Then
		        If InputBox.Ask(App.T.Translate("questions/changed/@caption")) Then
		          ActionSongSave false, true
		        End if
		      End if
		    Else
		      if CurrentSong <> Nil And Status_SongChanged = True And Globals.OldSongFileName <> "" Then
		        return
		      End if
		      
		    End if
		    Globals.OldSongSel = lst_songs_songs.ListIndex
		    
		    
		  End if
		  
		  If lst_songs_songs.ListIndex >= 0 Then
		    'f = Songs.GetFile(pop_songs_song_folders.Text + "/" + lst_songs_songs.Text)
		    fullpath = lst_songs_songs.CellTag(Me.ListIndex, 0).StringValue + lst_songs_songs.Text
		    f = Songs.GetFile(fullpath)
		    
		    If f <> Nil And f.Exists Then
		      App.MouseCursor = System.Cursors.Wait
		      CurrentSong = SmartML.XDocFromFile(f)
		      
		      // Open as Object...
		      CurrentSongObj = New Song
		      Call CurrentSongObj.Load(f) // We'll ignore error handling for the moment.  Not a good thing.
		      
		      'Changed save current song filename
		      Globals.OldSongFileName = fullpath
		      //++EMP 8/9/05 -- Show which folder this song is found in
		      edt_songs_curr_folder.Text = lst_songs_songs.CellTag(Me.ListIndex, 0).StringValue
		      If right(edt_songs_curr_folder.Text, 1) = "/" Then edt_songs_curr_folder.Text = Left(edt_songs_curr_folder.Text, Len(edt_songs_curr_folder.Text) - 1)
		      //--
		      App.MouseCursor = Nil
		      If CurrentSong <> Nil  Then
		        Status_SongOpen = False ' Just to keep the field changes from calling EnableMenuItems
		        LoadSongFields
		        Status_SongOpen = True
		        Status_SongChanged = False
		        EnableMenuItems
		      Else
		        // Dummy up a doc to avoid a Nil object
		        CurrentSong = New XmlDocument
		        xnode = CurrentSong.AppendChild(CurrentSong.CreateElement("song"))
		        SmartML.SetValue xnode, "title", f.Name
		        LoadSongFields
		        Status_SongOpen = True
		        Status_SongChanged = False
		        EnableMenuItems
		        SmartML.DisplayError
		      End If
		    Else
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_songs_songs.Text)
		      Status_SongOpen = False
		      Status_SongChanged = False
		      EnableMenuItems
		    End If
		  Else
		    Status_SongOpen = False
		    Status_SongChanged = False
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  
		  If column <> 0 Then Return False // Protection for the future: don't use this except for the song name column
		  
		  result = CompareHymnBookOrder(Me.Cell(row1, column), Me.Cell(row2, column))
		  
		  If result = 0 Then //Names are equal, sort by folder
		    result = Compare(Me.CellTag(row1, column).StringValue, Me.CellTag(row2, column).StringValue)
		  End If
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim i, l As Integer
		  Dim temp As TextEncoding
		  Dim NewKey As String
		  Dim SearchedEntry As String
		  //++
		  // Check for a modifier key being pressed...don't do anything if Control or Alt or Command is pressed
		  //--
		  App.DebugWriter.Write "MainWindow.lst_songs_songs.KeyDown: Enter"
		  If Keyboard.CommandKey Or Keyboard.ControlKey Or Keyboard.OptionKey Then Return False
		  
		  App.DebugWriter.Write "MainWindow.lst_songs_songs.KeyDown: key = '" + key + "'"
		  Key = ConvertEncoding(key, Encodings.UTF8)
		  NewKey = ConvertEncoding(KeyedSearch + key, Encodings.UTF8)
		  App.DebugWriter.Write "MainWindow.lst_songs_songs.KeyDown: NewKey = " + NewKey
		  l = Len(NewKey)
		  
		  tmr_lookup.Reset
		  For i = 0 To Me.ListCount - 1
		    SearchedEntry = ConvertEncoding(Left(Me.List(i), l), Encodings.UTF8)
		    If SearchedEntry = NewKey Then
		      Me.ListIndex = i
		      App.DebugWriter.Write "MainWindow.lst_songs_songs.KeyDown: Found match index, value: " + str(i) + " " + Me.List(i)
		      KeyedSearch = NewKey
		      Return True
		    End If
		  Next i
		  Return False
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/songs"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_sets_sets
	#tag Event
		Sub Change()
		  ActionSetAskSave
		  //
		  App.MouseCursor = System.Cursors.Wait
		  lst_set_items.DeleteAllRows
		  If pop_sets_sets.ListIndex < 0 Or Len(pop_sets_sets.Text) <= 0 Then
		    App.MouseCursor = Nil
		    Return
		  End If
		  
		  Dim f, song As FolderItem
		  Dim input As TextInputStream
		  Dim line As String
		  Dim xnode As XmlNode
		  
		  lst_set_items.DeleteAllRows
		  
		  f = App.DocsFolder.Child("Sets").Child(pop_sets_sets.Text)
		  CurrentSet = SmartML.XDocFromFile(f)
		  If CurrentSet = Nil Then
		    App.MouseCursor = Nil
		    CurrentSet = New XmlDocument
		    xnode = CurrentSet.AppendChild(CurrentSet.CreateElement("set"))
		    SmartML.DisplayError
		  End If
		  // This section gets the /set/@name value from the current document
		  // Since this is a non-existent attribute in the released version, add it if
		  // it's not already there.
		  //EMP 10/9/04
		  dim nameAtt as xmlattribute
		  
		  dim strName as String
		  
		  nameAtt = CurrentSet.DocumentElement.GetAttributeNode("name")
		  
		  if nameatt = Nil then
		    CurrentSet.DocumentElement.SetAttribute("name", me.text)
		  end if
		  
		  CurrentSetName = me.text
		  //--
		  Dim slide_groups, xchild As XmlNode
		  Dim i As Integer
		  
		  slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  If slide_groups = Nil Then Return
		  
		  xchild = slide_groups.FirstChild
		  While xchild <> Nil
		    lst_set_items.AddRow xchild.GetAttribute("name") + " (" + xchild.GetAttribute("type") + ")"
		    xchild = xchild.NextSibling
		  Wend
		  
		  Status_SetOpen = True
		  Status_SetChanged = False
		  Status_InSetOpen = False
		  Status_InSetChanged = False
		  EnableMenuItems
		  
		  App.MouseCursor = Nil
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/sets"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_revert
	#tag Event
		Sub Action()
		  ActionSongRevert
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/revert"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon undopic, undomask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_print
	#tag Event
		Sub Action()
		  ActionSongPrint
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/print"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileprintpic, fileprintmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_present
	#tag Event
		Sub Action()
		  If Me.MenuItem = App.T.Translate("songs_mode/selected_song/present/single_screen/@caption") Then
		    ActionSongPresent PresentWindow.MODE_SINGLE_SCREEN
		  ElseIf Me.MenuItem = App.T.Translate("songs_mode/selected_song/present/preview_dual_screen/@caption") Then
		    ActionSongPresent PresentWindow.MODE_PREVIEW
		  ElseIf Me.MenuItem = App.T.Translate("songs_mode/selected_song/present/dual_screen/@caption") Then
		    #If TargetLinux
		      If (Screen(0).Width /2) > Screen(0).Height Then
		        ActionSongPresent PresentWindow.MODE_LINUX_DUAL_SCREEN
		      Else
		        InputBox.Message App.T.Translate("errors/no_multi_screen")
		      End If
		    #Else
		      If ScreenCount > 1 Then
		        ActionSongPresent PresentWindow.MODE_DUAL_SCREEN
		      Else
		        InputBox.Message App.T.Translate("errors/no_multi_screen")
		      End If
		    #EndIF
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/present"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon backgroundpic, backgroundmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_export
	#tag Event
		Sub Action()
		  Dim i As Integer
		  Dim dlg as New SelectFolderDialog
		  Dim f, g as FolderItem
		  dlg.ActionButtonCaption = App.T.Translate("shared/ok/@caption")
		  dlg.CancelButtonCaption = App.T.Translate("shared/cancel/@caption")
		  dlg.InitialDirectory = DocumentsFolder
		  dlg.PromptText = App.T.Translate("songs_mode/selected_song/export/to/@caption")
		  
		  Dim output, goutput As TextOutputStream
		  Dim song As XmlDocument
		  
		  f = dlg.ShowModal()
		  If f <> Nil Then
		    App.MouseCursor = System.Cursors.Wait
		    output = f.Child(MakeSafeURLName(lst_songs_songs.Text) + ".html").CreateTextFile
		    song = SmartML.XDocFromFile(Songs.GetFile(pop_songs_song_folders.Text + "/" + lst_songs_songs.Text))
		    If output <> Nil And song <> Nil Then
		      output.Write SongML.ToHTML(song.DocumentElement)
		      If goutput <> Nil Then goutput.WriteLine "<li><a href=""" + MakeSafeURLName(lst_songs_songs.List(i)) + ".html"">" + lst_songs_songs.List(i) + "</a></li>"
		      output.Close
		    End If
		    App.MouseCursor = Nil
		    g = App.AppFolder.Child("OpenSong Settings").Child("style.css")
		    If g <> Nil Then g.CopyFileTo f
		    
		    InputBox.Message App.T.Translate("shared/done/@caption")
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/export"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesaveaspic, filesaveasmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_rename
	#tag Event
		Sub Action()
		  Dim t as String
		  Dim old as String
		  Dim f as FolderItem
		  Dim xdoc As XmlDocument
		  
		  'Changed Added Prompt
		  if CurrentSong <> Nil And Status_SongChanged = True And Globals.OldSongFileName <> "" Then
		    If InputBox.Ask(App.T.Translate("questions/changed/@caption")) Then
		      ActionSongSave false, true
		    End if
		  End if
		  
		  old = lst_songs_songs.Text
		  
		  t = InputBox.Input(App.T.Translate("questions/rename/@caption", old), old)
		  If Len(t) > 0 Then
		    If Songs.RenameFile(pop_songs_song_folders.Text + "/" + old, t) Then
		      lst_songs_songs.List(lst_songs_songs.ListIndex) = t
		    Else
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", t, old)
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/rename"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon redopic, redomask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_move
	#tag Event
		Sub Action()
		  
		  'Changed Added Prompt
		  if CurrentSong <> Nil And Status_SongChanged = True And Globals.OldSongFileName <> "" Then
		    If InputBox.Ask(App.T.Translate("questions/changed/@caption")) Then
		      ActionSongSave false, true
		    End if
		  End if
		  
		  ActionSongMove
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/move"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileopenpic, fileopenmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_song_delete
	#tag Event
		Sub Action()
		  ActionSongRemove
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/selected_song/delete"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon editdeletepic, editdeletemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_songs_song_folders_add
	#tag Event
		Sub Action()
		  Dim f As FolderItem
		  Dim t As String
		  Dim i As Integer
		  
		  t = InputBox.Input(App.T.Translate("questions/new_name/@caption"), "")
		  If Len(t) > 0 Then
		    If Not FileUtils.IsSafeFileName(t) Then
		      InputBox.Message App.T.Translate("errors/bad_file_name", t)
		      Return
		    End If
		    
		    If pop_songs_song_folders.ListIndex >= 2 Then t = pop_songs_song_folders.Text + "/" + t
		    f = Songs.AddFolder(t)
		    
		    If f = Nil Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", t)
		      Return
		    End If
		    
		    If UBound(Songs.GetFolders(pop_songs_song_folders)) = 0 Then
		    End If
		    
		    For i = 0 To pop_songs_song_folders.ListCount - 1
		      If StrComp(pop_songs_song_folders.List(i), t, 1) = 0 Then pop_songs_song_folders.ListIndex = i
		    Next i
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/song_folders/new"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon addpic, addmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_songs_song_folders_delete
	#tag Event
		Sub Action()
		  If pop_songs_song_folders.ListIndex <= 1 Then Return
		  
		  If InputBox.Ask(App.T.Translate("questions/delete/@caption", pop_songs_song_folders.Text)) Then
		    If Not Songs.DeleteFolder(pop_songs_song_folders.Text) Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", pop_songs_song_folders.Text)
		    Else
		      pop_songs_song_folders.RemoveRow pop_songs_song_folders.ListIndex
		      pop_songs_song_folders.ListIndex = 0
		    End If
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode/song_folders/delete"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon removepic, removemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_sets_add
	#tag Event
		Sub Action()
		  ActionSetNew
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/sets/add"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon addpic, addmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_save
	#tag Event
		Sub Action()
		  ActionSetSave
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/save"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesavepic, filesavemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_rename
	#tag Event
		Sub Action()
		  Dim t as String
		  Dim old as String
		  Dim f as FolderItem
		  Dim i As Integer
		  old = pop_sets_sets.Text
		  ActionSetSave
		  
		  t = InputBox.Input(App.T.Translate("questions/rename/@caption", old), old)
		  If Len(t) > 0 Then
		    If Not FileUtils.IsSafeFileName(t) Then
		      InputBox.Message App.T.Translate("errors/bad_file_name", t)
		      Return
		    End If
		    
		    f = App.DocsFolder.Child("Sets").Child(t)
		    If f.Exists Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code=3]", f.AbsolutePath) ' already exists
		      Exit
		    End If
		    
		    f = App.DocsFolder.Child("Sets").Child(old)
		    If Not f.Exists Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code=8]", f.AbsolutePath) ' could not find file
		      Exit
		    End If
		    f.Name = t
		    i = pop_sets_sets.ListIndex
		    pop_sets_sets.RemoveRow i
		    pop_sets_sets.InsertRow i, t
		    pop_sets_sets.ListIndex = i
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/rename"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon redopic, redomask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_delete
	#tag Event
		Sub Action()
		  If InputBox.Ask(App.T.Translate("questions/delete/@caption", pop_sets_sets.Text)) Then
		    App.DocsFolder.Child("Sets").Child(pop_sets_sets.Text).Delete
		    
		    pop_sets_sets.RemoveRow pop_sets_sets.ListIndex
		    pop_sets_sets.ListIndex = -1
		    
		    Status_SetOpen = False
		    Status_SetChanged = False
		    Status_InSetOpen = False
		    Status_InSetChanged = False
		    Status_InSetEditable = False
		    EnableMenuItems
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/delete"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon editdeletepic, editdeletemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_saveas
	#tag Event
		Sub Action()
		  Dim t as String
		  Dim old as String
		  Dim f, oldf as FolderItem
		  Dim i As Integer
		  old = pop_sets_sets.Text
		  
		  t = InputBox.Input(App.T.Translate("questions/rename/@caption", old), old)
		  If Len(t) > 0 Then
		    If Not FileUtils.IsSafeFileName(t) Then
		      InputBox.Message App.T.Translate("errors/bad_file_name", t)
		      Return
		    End If
		    
		    f = App.DocsFolder.Child("Sets").Child(t)
		    If f.Exists Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code=3]", f.AbsolutePath) ' already exists
		      Exit
		    End If
		    
		    oldf = App.DocsFolder.Child("Sets").Child(old)
		    If Not oldf.Exists Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code=8]", oldf.AbsolutePath) ' could not find file
		      Exit
		    End If
		    MainWindow.MouseCursor = System.Cursors.Wait
		    
		    CurrentSet.DocumentElement.SetAttribute("name", t)
		    
		    CurrentSetName = t
		    
		    f.Name = t
		    
		    Status_SetChanged = True
		    ActionSetSave 'save under the new name
		    
		    'i = pop_sets_sets.ListIndex
		    'pop_sets_sets.InsertRow i, t
		    'pop_sets_sets.Sort
		    'pop_sets_sets.ListIndex = i
		    
		    pop_sets_sets.DeleteAllRows
		    
		    LoadSets app.DocsFolder.Child("Sets")
		    
		    for i = 0 to pop_sets_sets.ListCount - 1
		      if pop_sets_sets.list(i) = t then
		        pop_sets_sets.ListIndex = i
		        Exit
		      End If
		    Next i
		    MainWindow.MouseCursor = Nil
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/saveas"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesavepic, filesavemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_present
	#tag Event
		Sub Action()
		  If Me.MenuItem = App.T.Translate("sets_mode/current_set/present/single_screen/@caption") Then
		    ActionSetPresent PresentWindow.MODE_SINGLE_SCREEN
		  ElseIf Me.MenuItem = App.T.Translate("sets_mode/current_set/present/preview_dual_screen/@caption") Then
		    ActionSetPresent PresentWindow.MODE_PREVIEW
		  ElseIf Me.MenuItem = App.T.Translate("sets_mode/current_set/present/dual_screen/@caption") Then
		    #If TargetLinux
		      If (Screen(0).Width /2) > Screen(0).Height Then
		        ActionSetPresent PresentWindow.MODE_LINUX_DUAL_SCREEN
		      Else
		        InputBox.Message App.T.Translate("errors/no_multi_screen")
		      End If
		    #Else
		      If ScreenCount > 1 Then
		        ActionSetPresent PresentWindow.MODE_DUAL_SCREEN
		      Else
		        InputBox.Message App.T.Translate("errors/no_multi_screen")
		      End If
		    #EndIF
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/present"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon backgroundpic, backgroundmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_print_songs
	#tag Event
		Sub Action()
		  ActionSetPrint
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/print_songs"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileprintpic, fileprintmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_print_order
	#tag Event
		Sub Action()
		  ActionSetPrintList
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_set/print_order"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileprintpic, fileprintmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_set_items
	#tag Event
		Sub Change()
		  Dim songDoc As XmlDocument
		  Dim songF as FolderItem
		  Dim xnode as  XmlNode
		  Dim songTemp as String
		  Dim songResult As Integer
		  Dim sDoc As XmlDocument
		  
		  Dim xgroup As XmlNode
		  Dim xslides As XmlNode
		  Dim s As String
		  Dim i, j As Integer
		  
		  ActionInSetAskSave
		  
		  If Me.ListIndex < 0 Then
		    Status_InSetOpen = False
		    Status_InSetEditable = False
		    Status_InSetChanged = False
		    EnableMenuItems
		    Return
		  End If
		  
		  Status_InSetEditable = False
		  Status_InSetSongEdit = False
		  CurrentInSetItem = lst_set_items.ListIndex
		  xgroup = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True).Child(Me.ListIndex)
		  InSetNameCache = SmartML.GetValue(xgroup, "@name")
		  If xgroup.GetAttribute("type") = "custom" Or xgroup.GetAttribute("type") = "scripture" Then
		    If pge_contents.Value <> 2 Then
		      pge_contents.Value = 2
		      LastSetPane = 2
		    End If
		    Status_InSetEditable = False ' keeps the status from Refresh Falseing for every change
		    
		    edt_slide_name.Text = SmartML.GetValue(xgroup, "@name")
		    edt_slide_title.Text = SmartML.GetValue(xgroup, "title")
		    edt_slide_subtitle.Text = SmartML.GetValue(xgroup, "subtitle")
		    edt_slide_notes.Text = SmartML.GetValue(xgroup, "notes")
		    chk_slide_loop.Value = SmartML.GetValueB(xgroup, "@loop", False)
		    chk_slide_print.Value = SmartML.GetValueB(xgroup, "@print", True, True)
		    edt_slide_auto_advance.Text = Str(SmartML.GetValueN(xgroup, "@seconds", False))
		    edt_slide_order.Text = ""
		    edt_slide_origorder.Text = ""
		    
		    If SmartML.GetNode(xgroup, "style", False) = Nil Then
		      chk_slide_style.Value = False
		      can_slide_style.ClearStyleNode
		    Else
		      chk_slide_style.Value = True
		      can_slide_style.SetStyleNode SmartML.GetNode(xgroup, "style")
		    End If
		    ' can_slide_custom_style.Refresh False
		    s = ""
		    xslides = SmartML.GetNode(xgroup, "slides", True)
		    For i = 0 To xslides.ChildCount - 1
		      If i < xslides.ChildCount - 1 Then
		        s = s + Trim(SmartML.GetValue(xslides.Child(i), "body", False)) + SmartML.Newline + "---" + SmartML.Newline
		      Else
		        s = s + Trim(SmartML.GetValue(xslides.Child(i), "body", False))
		      End If
		    Next i
		    edt_slide_slides.Text  = s
		    
		    Status_InSetOpen = True
		    Status_InSetEditable = True
		    Status_InSetChanged = False
		    EnableMenuItems
		  ElseIf SmartML.GetValue(xgroup, "@type", True) = "song" Then
		    
		    ' New edits...load the text in the slide text box as readonly
		    ' Can update the order to create a custom order.
		    ' EMP 1/18/05
		    
		    If pge_contents.Value <> 2 Then pge_contents.Value = 2
		    '
		    'This part shamelessly stolen
		    '
		    songf = Songs.GetFile(SmartML.GetValue(xgroup, "@name"))
		    If songf = Nil Then
		      InputBox.Message App.T.Translate("folderdb_errors/error[@code='"+Str(Songs.ErrorCode)+"']", lst_set_items.text)
		      sDoc = Nil
		    Else
		      sDoc = SmartML.XDocFromFile(songf)
		    End If
		    Status_InSetOpen = True
		    Status_InSetEditable = False
		    UpdateMenuItems ' Clear out previous values
		    
		    if sDoc <> Nil then
		      edt_slide_slides.Text = SmartML.GetValue(sDoc.DocumentElement, "lyrics", True).FormatLocalEndOfLine
		      edt_slide_title.Text = SmartML.GetValue(sDoc.DocumentElement, "title", True)
		      edt_slide_order.Text = SmartML.GetValue(xgroup, "@presentation",False)
		      edt_slide_origorder.Text = SmartML.GetValue(sDoc.DocumentElement, "presentation", False)
		      Status_InSetEditable = True 'EMP, changed 1/18/2005 for custom order
		      Status_InSetChanged = False
		      Status_InSetSongEdit = True
		      EnableMenuItems
		    End If
		    
		  ElseIf SmartML.GetValue(xgroup, "@type", True) = "style" Then
		    Status_InSetEditable = False ' keeps the status from Refresh Falseing for every change
		    
		    If SmartML.GetValue(xgroup, "@action") = "new" Then
		      rad_style_change.Value = True
		    Else
		      rad_style_revert.Value = True
		    End If
		    can_style_style.SetStyleNode SmartML.GetNode(xgroup, "style")
		    
		    Status_InSetOpen = True
		    Status_InSetEditable = True
		    Status_InSetChanged = False
		    If pge_contents.Value <> 3 Then
		      LastSetPane = 3
		      pge_contents.Value = 3
		    End If
		    
		    EnableMenuItems
		  Else
		    Status_InSetOpen = True
		    Status_InSetEditable = False
		    Status_InSetChanged = False
		    EnableMenuItems
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Dim i As Integer
		  
		  If pop_sets_sets.ListIndex >= 0 Then
		    For i = 0 To lst_songs_songs.ListCount - 1
		      If lst_songs_songs.List(i) = InSetNameCache Then
		        lst_songs_songs.ListIndex = i
		        SetMode 0
		      End If
		    Next i
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function DragReorderRows(newPosition as Integer, parentRow as Integer) As Boolean
		  Dim xgroups As XmlNode
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  Status_SetChanged = True
		  If newPosition > Me.ListIndex Then
		    If newPosition = Me.ListCount - 1 Then
		      xgroups.AppendChild xgroups.Child(Me.ListIndex)
		    Else
		      xgroups.Insert xgroups.Child(Me.ListIndex), xgroups.Child(newPosition+1)
		    End If
		  ElseIf newPosition < Me.ListIndex Then
		    xgroups.Insert xgroups.Child(Me.ListIndex), xgroups.Child(newPosition)
		  End If
		  'EnableMenuItems
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  Dim i, l As Integer
		  If Asc(Key) = 27 Then 'Escape
		    KeyedSearch = "" 'Reset search string
		    Return True
		  End If
		  
		  // If a modifier key is pressed, let RealBasic handle it so menus, etc. will work properly
		  If Keyboard.CommandKey Or Keyboard.ControlKey Or Keyboard.OptionKey Then Return False
		  
		  l = Len(KeyedSearch)
		  tmr_lookup.Reset
		  For i = 0 To Me.ListCount - 1
		    If Left(Me.List(i), l+1) = KeyedSearch + key Then
		      Me.ListIndex = i
		      KeyedSearch = KeyedSearch + key
		      Return True
		    End If
		  Next i
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/set_items"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_add_song
	#tag Event
		Sub Action()
		  Dim f As FolderItem
		  Dim SongPath As String
		  Dim FolderPath As String
		  
		  Dim xgroups, newGroup As XmlNode
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  
		  f = SongPickerWindow.Popup
		  If f <> Nil Then
		    Status_SetChanged = True
		    Status_InSetChanged = False
		    ' No need to EnableMenuItems, since the following selection change will call it
		  End If
		  
		  While f <> Nil
		    If lst_set_items.ListIndex >= 0 Then
		      newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		      lst_set_items.InsertRow lst_set_items.ListIndex + 1, f.Name + " (song)"
		      lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		    Else
		      newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListCount)
		      lst_set_items.AddRow f.Name + " (song)"
		      lst_set_items.ListIndex = lst_set_items.ListCount - 1
		    End If
		    SmartML.SetValue newGroup, "@name", f.Name
		    SmartML.SetValue newGroup, "@type", "song"
		    //++
		    // EMP, May 2006
		    //
		    // Add a path attribute relative to the base songs directory.  Otherwise, two instances
		    // of the same song name in a parent/child folder relationship will never find the song
		    // in the child folder.
		    //
		    SongPath = f.Parent.AbsolutePath
		    FolderPath = MainWindow.Songs.GetRootFolder.AbsolutePath
		    SongPath = Mid(SongPath, Len(FolderPath) + 1) //Take off the leading path separator
		    SongPath = ReplaceAll(SongPath, "\", "/") // Canonical path for a FolderDB item
		    SmartML.SetValue newGroup, "@path", SongPath
		    //--
		    f = SongPickerWindow.Popup
		  Wend
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/new_item/add_song"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon midipic, midimask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_add_scripture
	#tag Event
		Sub Action()
		  Dim verses(0), passage, title, subtitle As String
		  Dim bible As FolderItem
		  Dim advance As Integer
		  Dim xgroups, newGroup As XmlNode
		  
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  If lst_set_items.ListIndex >= 0 Then
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		  Else
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListCount)
		  End If
		  
		  While ScripturePickerWindow.Popup(newGroup)
		    Status_SetChanged = True
		    Status_InSetChanged = False
		    ' No need to EnableMenuItems, since the following selection change will call it
		    
		    If lst_set_items.ListIndex >= 0 Then
		      lst_set_items.InsertRow lst_set_items.ListIndex + 1, SmartML.GetValue(newGroup, "@name", True) + " (" + SmartML.GetValue(newGroup, "@type", True) + ")"
		      lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		    Else
		      lst_set_items.AddRow SmartML.GetValue(newGroup, "@name", True) + " (" + SmartML.GetValue(newGroup, "@type", True) + ")"
		      lst_set_items.ListIndex = lst_set_items.ListCount - 1
		    End If
		    
		    If lst_set_items.ListIndex >= 0 Then
		      newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		    Else
		      newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListCount)
		    End If
		    
		  Wend
		  
		  If lst_set_items.ListIndex >= 0 Then
		    SmartML.RemoveChild xgroups, lst_set_items.ListIndex + 1
		  Else
		    SmartML.RemoveChild xgroups, lst_set_items.ListCount
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/new_item/add_scripture"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon emptypic, emptymask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_add_slides
	#tag Event
		Sub Action()
		  Dim xgroups, newGroup As XmlNode
		  
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  If lst_set_items.ListIndex >= 0 Then
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		  Else
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListCount)
		  End If
		  
		  SmartML.SetValue newGroup, "@name", "Untitled"
		  SmartML.SetValue newGroup, "@type", "custom"
		  SmartML.SetValue newGroup, "title", "Untitled"
		  
		  Status_SetChanged = True
		  ' No need to EnableMenuItems, since the following selection change will call it
		  
		  If lst_set_items.ListIndex >= 0 Then
		    lst_set_items.InsertRow lst_set_items.ListIndex + 1, SmartML.GetValue(newGroup, "@name", True) + " (" + SmartML.GetValue(newGroup, "@type", True) + ")"
		    lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		  Else
		    lst_set_items.AddRow SmartML.GetValue(newGroup, "@name", True) + " (" + SmartML.GetValue(newGroup, "@type", True) + ")"
		    lst_set_items.ListIndex = lst_set_items.ListCount - 1
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/new_item/add_slides"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon documentpic, documentmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_add_style
	#tag Event
		Sub Action()
		  Dim xgroups, newGroup As XmlNode
		  
		  xgroups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  If lst_set_items.ListIndex >= 0 Then
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListIndex + 1)
		  Else
		    newGroup = SmartML.InsertChild(xgroups, "slide_group", lst_set_items.ListCount)
		  End If
		  
		  SmartML.SetValue newGroup, "@name", "-- Style Change --"
		  SmartML.SetValue newGroup, "@type", "style"
		  SmartML.SetValue newGroup, "@action", "revert"
		  
		  Status_SetChanged = True
		  ' No need to EnableMenuItems, since the following selection change will call it
		  
		  If lst_set_items.ListIndex >= 0 Then
		    lst_set_items.InsertRow lst_set_items.ListIndex + 1, SmartML.GetValue(newGroup, "@name", True) + " (" + SmartML.GetValue(newGroup, "@type", True) + ")"
		    lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		  Else
		    lst_set_items.AddRow SmartML.GetValue(newGroup, "@name", True) + " (" + SmartML.GetValue(newGroup, "@type", True) + ")"
		    lst_set_items.ListIndex = lst_set_items.ListCount - 1
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/new_item/add_style"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon colorizepic, colorizemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_move_up
	#tag Event
		Sub Action()
		  Dim index As Integer
		  index = lst_set_items.ListIndex
		  
		  Dim slide_groups As XmlNode
		  slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  SmartML.SwapChildren slide_groups, index, index-1
		  
		  Dim temp As String
		  
		  temp = lst_set_items.List(index-1)
		  lst_set_items.List(index-1) = lst_set_items.List(index)
		  lst_set_items.List(index) = temp
		  
		  lst_set_items.ListIndex = lst_set_items.ListIndex - 1
		  
		  Status_SetChanged = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/move_up"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon uppic, upmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_move_down
	#tag Event
		Sub Action()
		  Dim index As Integer
		  index = lst_set_items.ListIndex
		  
		  Dim slide_groups As XmlNode
		  slide_groups = SmartML.GetNode(CurrentSet.DocumentElement, "slide_groups", True)
		  SmartML.SwapChildren slide_groups, index+1, index
		  
		  Dim temp As String
		  temp = lst_set_items.List(lst_set_items.ListIndex)
		  
		  lst_set_items.List(lst_set_items.ListIndex) = lst_set_items.List(lst_set_items.ListIndex+1)
		  lst_set_items.List(lst_set_items.ListIndex+1) = temp
		  lst_set_items.ListIndex = lst_set_items.ListIndex + 1
		  
		  Status_SetChanged = True
		  EnableMenuItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/move_down"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon downpic, downmask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_remove
	#tag Event
		Sub Action()
		  ActionInSetRemove
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/remove"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon editdeletepic, editdeletemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_copy
	#tag Event
		Sub Action()
		  ActionInSetCopy
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/copy"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon editcopypic, editcopymask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_set_store
	#tag Event
		Sub Action()
		  ActionInSetSave
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode/current_item/store"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon filesavepic, filesavemask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_mode_songs_mode
	#tag Event
		Sub Action()
		  SetMode 0
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "songs_mode"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon midipic, midimask
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_mode_sets_mode
	#tag Event
		Sub Action()
		  SetMode 1
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  SetHelp "sets_mode"
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  SetHelp ""
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon backgroundpic, backgroundmask
		End Sub
	#tag EndEvent
#tag EndEvents
