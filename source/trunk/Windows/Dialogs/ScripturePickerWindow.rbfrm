#tag Window
Begin Window ScripturePickerWindow Implements iScripturePicker
   BackColor       =   16777215
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   "True"
   Composite       =   "False"
   Frame           =   1
   FullScreen      =   "False"
   HasBackColor    =   "False"
   Height          =   570
   ImplicitInstance=   "True"
   LiveResize      =   "True"
   MacProcID       =   1046
   MaxHeight       =   32000
   MaximizeButton  =   "True"
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   "True"
   MinHeight       =   570
   MinimizeButton  =   "True"
   MinWidth        =   570
   Placement       =   0
   Resizeable      =   "True"
   Title           =   "Scripture Lookup"
   Visible         =   "False"
   Width           =   570
   Begin PushButton btn_add
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Add"
      ControlOrder    =   0
      Default         =   "True"
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   455
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   150
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
   End
   Begin PushButton btn_done
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "True"
      Caption         =   "Done"
      ControlOrder    =   1
      Default         =   "False"
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   455
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   185
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
   End
   Begin PushButton btn_insert
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Insert"
      ControlOrder    =   2
      Default         =   "False"
      Enabled         =   "False"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   455
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   116
      Underline       =   "False"
      Visible         =   "False"
      Width           =   69
   End
   Begin GroupBox grp_quick_lookup
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Quick Lookup"
      ControlOrder    =   3
      Enabled         =   "True"
      Height          =   75
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   105
      LockBottom      =   "False"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   11
      Top             =   10
      Underline       =   "False"
      Visible         =   "True"
      Width           =   360
      Begin StaticText lbl_quick_reference
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   4
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_quick_lookup"
         Italic          =   "False"
         Left            =   110
         LockBottom      =   "False"
         LockLeft        =   "True"
         LockRight       =   "False"
         LockTop         =   "True"
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Reference:"
         TextAlign       =   2
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   10
         Top             =   36
         Underline       =   "False"
         Visible         =   "True"
         Width           =   65
      End
      Begin SEditField edt_quick_lookup
         AcceptTabs      =   "False"
         Alignment       =   0
         AutoDeactivate  =   "True"
         BackColor       =   16777215
         Bold            =   "False"
         Border          =   "True"
         ControlOrder    =   5
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_quick_lookup"
         Italic          =   "False"
         Left            =   180
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
         TabPanelIndex   =   0
         Text            =   ""
         TextColor       =   0
         TextFont        =   "Arial"
         TextSize        =   12
         Top             =   35
         Underline       =   "False"
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   200
      End
      Begin StaticText nte_quick_example
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   6
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
         Height          =   12
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_quick_lookup"
         Italic          =   "True"
         Left            =   175
         LockBottom      =   "False"
         LockLeft        =   "True"
         LockRight       =   "True"
         LockTop         =   "True"
         Multiline       =   "False"
         TabPanelIndex   =   0
         Text            =   "Ex: ""2Pet 1:1-2"" or ""2Pet 1:1-2 (KJV)"""
         TextAlign       =   1
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   9
         Top             =   60
         Underline       =   "False"
         Visible         =   "True"
         Width           =   210
      End
      Begin PushButton btn_quick_lookup
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Cancel          =   "False"
         Caption         =   "Lookup"
         ControlOrder    =   7
         Default         =   "False"
         Enabled         =   "True"
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_quick_lookup"
         Italic          =   "False"
         Left            =   389
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "True"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   10
         Top             =   35
         Underline       =   "False"
         Visible         =   "True"
         Width           =   69
      End
   End
   Begin PushButton btn_search
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Cancel          =   "False"
      Caption         =   "Search"
      ControlOrder    =   8
      Default         =   "False"
      Enabled         =   "True"
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   486
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   34
      Underline       =   "False"
      Visible         =   "True"
      Width           =   69
   End
   Begin GroupBox grp_Books
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   ""
      ControlOrder    =   9
      Enabled         =   "True"
      Height          =   388
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   91
      Underline       =   "False"
      Visible         =   "True"
      Width           =   200
      Begin HighlightList lst_scr_ot
         AutoDeactivate  =   "True"
         AutoHideScrollbars=   "True"
         Bold            =   ""
         ColumnCount     =   1
         ColumnsResizable=   ""
         ColumnWidths    =   ""
         ControlOrder    =   10
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   "True"
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   ""
         HeadingIndex    =   -1
         Height          =   360
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_Books"
         InitialValue    =   ""
         Italic          =   ""
         Left            =   30
         LockBottom      =   "True"
         LockLeft        =   "True"
         LockRight       =   "False"
         LockTop         =   "True"
         RequiresSelection=   ""
         ScrollbarHorizontal=   ""
         ScrollBarVertical=   "True"
         SelectionType   =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   100
         Underline       =   ""
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   80
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin HighlightList lst_scr_nt
         AutoDeactivate  =   "True"
         AutoHideScrollbars=   "True"
         Bold            =   ""
         ColumnCount     =   1
         ColumnsResizable=   ""
         ColumnWidths    =   ""
         ControlOrder    =   11
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   "True"
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   ""
         HeadingIndex    =   -1
         Height          =   360
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_Books"
         InitialValue    =   ""
         Italic          =   ""
         Left            =   122
         LockBottom      =   "True"
         LockLeft        =   ""
         LockRight       =   "True"
         LockTop         =   "True"
         RequiresSelection=   ""
         ScrollbarHorizontal=   ""
         ScrollBarVertical=   "True"
         SelectionType   =   0
         TabPanelIndex   =   0
         TextFont        =   "System"
         TextSize        =   0
         Top             =   100
         Underline       =   ""
         UseFocusRing    =   "True"
         Visible         =   "True"
         Width           =   85
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
   Begin HighlightList lst_scr_chapter
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   12
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   "True"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "False"
      HeadingIndex    =   -1
      Height          =   360
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   229
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      RequiresSelection=   ""
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   100
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   50
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin HighlightList lst_scr_from_verse
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   13
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   "True"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "False"
      HeadingIndex    =   -1
      Height          =   360
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   290
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      RequiresSelection=   ""
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   100
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   50
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin HighlightList lst_scr_to_verse
      AutoDeactivate  =   "True"
      AutoHideScrollbars=   "True"
      Bold            =   "False"
      ColumnCount     =   1
      ColumnsResizable=   "False"
      ColumnWidths    =   ""
      ControlOrder    =   14
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   "True"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   "False"
      HeadingIndex    =   -1
      Height          =   360
      HelpTag         =   ""
      Hierarchical    =   "False"
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   "False"
      Left            =   355
      LockBottom      =   "True"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      RequiresSelection=   ""
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      SelectionType   =   0
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   100
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   50
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin GroupBox grp_options_version
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Version"
      ControlOrder    =   15
      Enabled         =   "True"
      Height          =   55
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   415
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   218
      Underline       =   "False"
      Visible         =   "True"
      Width           =   145
      Begin PopupMenu pop_scr_version
         AutoDeactivate  =   "True"
         Bold            =   "False"
         ControlOrder    =   16
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_version"
         InitialValue    =   ""
         Italic          =   "False"
         Left            =   440
         ListIndex       =   0
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   12
         Top             =   238
         Underline       =   "False"
         Visible         =   "True"
         Width           =   95
      End
   End
   Begin GroupBox grp_options_verses_per_slide
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Verses Per Slide"
      ControlOrder    =   17
      Enabled         =   "True"
      Height          =   50
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   415
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   283
      Underline       =   "False"
      Visible         =   "True"
      Width           =   145
      Begin RadioButton rad_verses_one
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   1
         ControlOrder    =   18
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_verses_per_slide"
         Italic          =   "False"
         Left            =   430
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   303
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   35
      End
      Begin RadioButton rad_verses_two
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   2
         ControlOrder    =   19
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_verses_per_slide"
         Italic          =   "False"
         Left            =   475
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   303
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   35
      End
      Begin RadioButton rad_verses_three
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   3
         ControlOrder    =   20
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_verses_per_slide"
         Italic          =   "False"
         Left            =   520
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   303
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   35
      End
   End
   Begin GroupBox grp_options_format
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Caption         =   "Format"
      ControlOrder    =   21
      Enabled         =   "True"
      Height          =   70
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   415
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "Arial"
      TextSize        =   11
      Top             =   343
      Underline       =   "False"
      Visible         =   "True"
      Width           =   145
      Begin RadioButton rad_format_paragraph
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Paragraph"
         ControlOrder    =   22
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_format"
         Italic          =   "False"
         Left            =   430
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   363
         Underline       =   "False"
         Value           =   "True"
         Visible         =   "True"
         Width           =   120
      End
      Begin RadioButton rad_format_verse
         AutoDeactivate  =   "True"
         Bold            =   "False"
         Caption         =   "Verse"
         ControlOrder    =   23
         Enabled         =   "True"
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_options_format"
         Italic          =   "False"
         Left            =   430
         LockBottom      =   "False"
         LockLeft        =   "False"
         LockRight       =   "False"
         LockTop         =   "True"
         TabPanelIndex   =   0
         TextFont        =   "Arial"
         TextSize        =   10
         Top             =   383
         Underline       =   "False"
         Value           =   "False"
         Visible         =   "True"
         Width           =   120
      End
   End
   Begin Checkbox chk_shownumbers
      AutoDeactivate  =   "True"
      Bold            =   ""
      Caption         =   "Number Verses"
      ControlOrder    =   24
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   415
      LockBottom      =   ""
      LockLeft        =   ""
      LockRight       =   "True"
      LockTop         =   "True"
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   10
      Top             =   426
      Underline       =   ""
      Value           =   "True"
      Visible         =   "True"
      Width           =   145
   End
   Begin SEditField edt_preview
      AcceptTabs      =   "False"
      Alignment       =   0
      AutoDeactivate  =   "True"
      BackColor       =   16777215
      Bold            =   "False"
      Border          =   "True"
      ControlOrder    =   25
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Format          =   ""
      Height          =   71
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   20
      LimitText       =   0
      LockBottom      =   "True"
      LockLeft        =   "True"
      LockRight       =   "True"
      LockTop         =   "False"
      Mask            =   ""
      Multiline       =   "True"
      Password        =   "False"
      ReadOnly        =   "True"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      TabPanelIndex   =   0
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   491
      Underline       =   "False"
      UseFocusRing    =   "True"
      Visible         =   "True"
      Width           =   530
   End
   Begin StaticText txt_verse_dash
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   26
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   342
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "-"
      TextAlign       =   1
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   260
      Underline       =   "False"
      Visible         =   "True"
      Width           =   10
   End
   Begin StaticText txt_verse_colon
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   27
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   277
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "True"
      LockTop         =   "True"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   ":"
      TextAlign       =   1
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   260
      Underline       =   "False"
      Visible         =   "True"
      Width           =   10
   End
   Begin StaticText StaticText1
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   28
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   -818
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Label:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   150
      Underline       =   "False"
      Visible         =   "True"
      Width           =   100
   End
   Begin StaticText lbl_bible_book
      AutoDeactivate  =   "True"
      Bold            =   "False"
      ControlOrder    =   29
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   "True"
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   "False"
      Left            =   20
      LockBottom      =   "False"
      LockLeft        =   "False"
      LockRight       =   "False"
      LockTop         =   "False"
      Multiline       =   "False"
      TabPanelIndex   =   0
      Text            =   "Bible Book"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   69
      Underline       =   "False"
      Visible         =   "True"
      Width           =   100
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  'System.DebugLog "ScripturePickerWindow.Close"
		  SPController = Nil
		  Globals.Status_ScripturePickerOpen = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  App.T.TranslateWindow Me, "scripture_lookup", App.TranslationFonts
		  App.CenterInControlScreen Me
		  
		  '++JRC Ensure the scrollbars are enabled if necessary
		  lst_scr_nt.ScrollPosition = 1
		  lst_scr_nt.ScrollPosition = 0
		  lst_scr_ot.ScrollPosition = 1
		  lst_scr_ot.ScrollPosition = 0
		  '--
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  ResizeBookLists
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  ResizeBookLists
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(controller As ScripturePickerController)
		  
		  // call the Window constructor, or Open events will not fire
		  Super.Window()
		  
		  Try
		    SPController = controller
		    SPController.registerObserver self
		  Catch e As NilObjectException
		    // If controller is Nil, then there's a logic error higher up in the program
		    App.DebugWriter.Write "ScripturePickerWindow.Constructor: Controller is Nil!?", 1
		    App.DebugWriter.Write "Stack dump: "
		    App.DebugWriter.Write Join(RuntimeException(e).Stack, EndOfLine)
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSearchResult(verse as String)
		  dim parts(), bookName as String
		  Dim book, chap, ver, x as Integer
		  
		  
		  parts= verse.split(" ")
		  
		  'combine all parts of the book name
		  bookName=parts(0)
		  for x=1 to UBound(parts)-1
		    bookName= bookName+" "+parts(x)
		  next x
		  
		  book= Bible(App.MyBible).GetBookNum(bookName)-1
		  
		  parts= parts(UBound(parts)).split(":")
		  chap=Val(parts(0))-1
		  ver=Val(parts(1))-1
		  
		  if (book<lst_scr_ot.ListCount) then
		    lst_scr_ot.ListIndex= book
		    lst_scr_nt.ListIndex=-1
		  else
		    lst_scr_nt.ListIndex= book- lst_scr_ot.ListCount
		    lst_scr_ot.ListIndex=-1
		  end if
		  
		  lst_scr_chapter.ListIndex=chap
		  lst_scr_to_verse.ListIndex=ver
		  lst_scr_from_verse.ListIndex=ver
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangeBible(newBible As iBible)
		  //++
		  // Part of iScripturePicker Interface
		  //--
		  //
		  // Store the new bible
		  //
		  If newBible = Nil Then Return
		  MyBible = newBible
		  
		  //
		  // Build the version popup
		  //
		  Dim bibles() As String
		  bibles = BibleFactory.BibleList
		  pop_scr_version.DeleteAllRows
		  pop_scr_version.AddRows(bibles)
		  pop_scr_version.ListIndex = bibles.IndexOf(newBible.Name)
		  
		  //
		  // Load the lists from the new bible
		  //
		  RebuildBooklistListBoxes
		  
		  ActiveBible = newBible.Name
		  
		  ActiveBookNumber = -1
		  lst_scr_ot.ListIndex = -1
		  lst_scr_nt.ListIndex = -1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RebuildBooklistListboxes()
		  //
		  // Rebuild the OT & NT listboxes from the current bible
		  //
		  
		  //
		  // Clear old values
		  //
		  lst_scr_ot.DeleteAllRows
		  lst_scr_nt.DeleteAllRows
		  lst_scr_chapter.DeleteAllRows
		  lst_scr_from_verse.DeleteAllRows
		  lst_scr_to_verse.DeleteAllRows
		  
		  Dim s() As String
		  Dim n() As Integer
		  
		  Dim i As Integer
		  Dim cnt As Integer
		  
		  cnt = MyBible.GetOTBooks(s, n) - 1
		  
		  For i = 0 To cnt
		    lst_scr_ot.AddRow s(i)
		    lst_scr_ot.CellTag(i, 0) = n(i)
		  Next
		  
		  ReDim s(-1)
		  ReDim n(-1)
		  
		  cnt = MyBible.GetNTBooks(s, n) - 1
		  
		  For i = 0 To cnt
		    lst_scr_nt.AddRow s(i)
		    lst_scr_nt.CellTag(i, 0) = n(i)
		  Next
		  
		  lst_scr_ot.ListIndex = -1
		  lst_scr_nt.ListIndex = -1
		  OldSel = -1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SendCommand(command As String, parameter As Variant = Nil)
		  'System.DebugLog "ScripturePickerWindow.SendCommand: Sending " + command
		  
		  SPController.CommandNotification(command, Self, parameter)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetSelection(bookNumber As Integer, chapterNumber As Integer, fromVerse As Integer, toVerse As Integer)
		  Dim i As Integer
		  Dim bookIndex As Integer = -1
		  Dim bookControl As Listbox = Nil
		  Dim notBookControl As Listbox = Nil
		  Dim chapterCount As Integer
		  Dim verseList() As String
		  
		  bookIndex = FindBookInListbox(bookNumber, lst_scr_ot)
		  If bookIndex >= 0 Then
		    bookControl = lst_scr_ot
		    notBookControl = lst_scr_nt
		  Else
		    bookIndex = FindBookInListbox(bookNumber, lst_scr_nt)
		    If bookIndex >= 0 Then bookControl = lst_scr_nt
		    notBookControl = lst_scr_ot
		  End If
		  
		  If bookControl = Nil Then
		    System.DebugLog "ScripturePickerWindow.SetSelection: couldn't find book " + CStr(bookNumber)
		    Return
		  End If
		  
		  //
		  // Was this a change? If so, rebuild chapter and verse listboxes
		  //
		  
		  If bookControl.CellTag(bookIndex, 0) <> ActiveBookNumber Then
		    RebuildChapterListbox(bookNumber, chapterNumber)
		    RebuildVerseListboxes(bookNumber, chapterNumber)
		  End If
		  
		  ActiveBookNumber = bookNumber
		  bookControl.ListIndex = bookIndex
		  notBookControl.ListIndex = -1
		  
		  //
		  // The bible object deals with one-based offsets, but for
		  // simplicity translate that now into zero-based for the
		  // listboxes.
		  // Check for chapter change in case a new chapter
		  // was selected within the same book.
		  //
		  If ActiveChapterNumber <> chapterNumber - 1 Then
		    RebuildVerseListboxes(bookNumber, chapterNumber)
		  End If
		  ActiveChapterNumber = chapterNumber - 1
		  ActiveFromVerse = fromVerse - 1
		  ActiveThruVerse = toVerse - 1
		  
		  lst_scr_chapter.ListIndex = ActiveChapterNumber
		  lst_scr_from_verse.ListIndex = ActiveFromVerse
		  lst_scr_to_verse.ListIndex = ActiveThruVerse
		  
		  UpdatePreview
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FindBookInListbox(bookNumber As Integer, bookControl As ListBox) As Integer
		  //
		  // Look through the listbox to find a matching book number in the CellTag
		  //
		  // Brute force, but simple
		  //
		  
		  Dim i, j As Integer
		  
		  If bookControl = Nil Then Return -1
		  
		  j = bookControl.ListCount - 1
		  For i = 0 To j
		    If bookControl.CellTag(i, 0) = bookNumber Then
		      Return i
		    End If
		  Next
		  
		  Return -1
		  
		Catch ex
		  System.DebugLog "ScripturePicker.FindBookInListbox: caught a " + ex.ToString
		  Return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RebuildChapterListbox(bookNumber As Integer, chapterNumber As Integer)
		  Dim chapterCount As Integer
		  
		  lst_scr_chapter.DeleteAllRows
		  chapterCount = MyBible.GetChapterCount(bookNumber)
		  For i As Integer = 1 To chapterCount
		    lst_scr_chapter.AddRow CStr(i)
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub BookSelected(newBook As Integer)
		  SendCommand ScripturePickerController.cmdSelectBook, newbook
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PassageChanged()
		  Dim newPassage() As String
		  
		  //
		  // Pack the current selections into the string
		  //
		  // Really should be an object
		  //
		  newPassage.Append CStr(CurrentBookNumber)
		  newPassage.Append CStr(CurrentChapter)
		  newPassage.Append CStr(CurrentFromVerseIndex)
		  newPassage.Append CStr(CurrentThruVerseIndex)
		  
		  SendCommand ScripturePickerController.cmdSelectionChanged, Join(newPassage, Chr(0))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub UpdatePreview()
		  Dim verses() As String
		  Dim sep As String
		  
		  If MyBible Is Nil Then Return
		  
		  verses = MyBible.GetPassage(CurrentBookNumber, CurrentChapter, CurrentFromVerseIndex, CurrentThruVerseIndex, chk_shownumbers.Value)
		  
		  If rad_format_paragraph.Value Then
		    sep = " "
		  ElseIf rad_format_verse.Value Then
		    sep = EndOfLine
		  End If
		  
		  edt_preview.Text = Join(verses, sep)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableUI()
		  App.DebugWriter.Write "ScripturePickerWindow.DisableUI", 4
		  //
		  // Disable all the controls on the window
		  //
		  
		  Dim count As Integer
		  Dim c As RectControl
		  count = Self.ControlCount - 1
		  
		  Self.MouseCursor = WatchCursor
		  
		  For i As Integer = 0 To count
		    If Not (Self.Control(i) IsA RectControl) Then Continue
		    c = RectControl(Self.Control(i))
		    If c.Enabled Then
		      EnabledControls.Append c
		      c.Enabled = False
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableUI()
		  App.DebugWriter.Write "ScripturePickerWindow.EnableUI", 4
		  Dim max As Integer
		  
		  max = UBound(EnabledControls)
		  
		  For i As Integer = max DownTo 0
		    EnabledControls(i).Enabled = True
		    EnabledControls.Remove i
		  Next
		  Self.MouseCursor = Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  App.DebugWriter.Write "ScripturePickerWindow.Destructor"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ResizeBookLists()
		  //
		  // Add code to balance book lists
		  // The Lock... attributes for controls don't seem
		  // to be able to deal with two adjacent controls that need to resize equally
		  // when the window size changes
		  //
		  // Ed Palmer, October 2005
		  //
		  Dim listwidth As Integer
		  
		  listwidth = (grp_Books.Width / 2) - 11
		  lst_scr_nt.Left = lst_scr_ot.Left + listwidth + 5
		  lst_scr_ot.Width = listwidth
		  lst_scr_nt.Width = listwidth
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentBookNumber() As Integer
		  If lst_scr_ot.ListIndex > -1 Then
		    Return lst_scr_ot.CellTag(lst_scr_ot.ListIndex, 0)
		  Else
		    Return lst_scr_nt.CellTag(lst_scr_nt.ListIndex, 0)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentChapter() As Integer
		  Return lst_scr_chapter.ListIndex + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentFromVerseIndex() As Integer
		  Return lst_scr_from_verse.ListIndex + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentThruVerseIndex() As Integer
		  Return lst_scr_to_verse.ListIndex + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FormatAsParagraph(useParagraphFormat As Boolean)
		  // Part of the iScripturePicker interface.
		  
		  PropertiesUpdating = True
		  rad_format_paragraph.Value = useParagraphFormat
		  rad_format_verse.Value = Not useParagraphFormat
		  
		  UpdatePreview
		  PropertiesUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowVerseNumbers(show As Boolean)
		  PropertiesUpdating = True
		  chk_shownumbers.Value = show
		  
		  UpdatePreview
		  PropertiesUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VersesPerSlide(verseCount As Integer)
		  If verseCount < 1 Or verseCount > 3 Then Return
		  PropertiesUpdating = True
		  
		  Select Case verseCount
		  Case 1
		    rad_verses_one.Value = True
		  Case 2
		    rad_verses_two.Value = True
		  Case 3
		    rad_verses_three.Value = True
		  End Select
		  
		  UpdatePreview
		  PropertiesUpdating = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentChapterNumber() As Integer
		  // Part of the iScripturePicker interface.
		  
		  Return lst_scr_chapter.ListIndex + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangePassage(bookNumber As Integer, chapterNumber As Integer, fromVerse As Integer, thruVerse As Integer)
		  // Part of the iScripturePicker interface.
		  //
		  // Callback indicating the selected passage has changed.
		  // Update controls accordingly
		  //
		  
		  //
		  // Validate before changing
		  //
		  
		  If MyBible = Nil Then Return
		  If MyBible.ValidateCitation(bookNumber, chapterNumber, fromVerse, thruVerse) Then
		    SetSelection(bookNumber, chapterNumber, fromVerse, thruVerse)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloseScripturePicker()
		  // Part of the iScripturePicker interface.
		  
		  Self.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function VersesPerSlide() As Integer
		  // Part of the iScripturePicker interface.
		  If rad_verses_one.Value Then
		    Return 1
		  ElseIf rad_verses_two.Value Then
		    Return 2
		  ElseIf rad_verses_three.Value Then
		    Return 3
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FormatAsParagraph() As Boolean
		  // Part of the iScripturePicker interface.
		  
		  Return rad_format_paragraph.Value
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShowVerseNumbers() As Boolean
		  // Part of the iScripturePicker interface.
		  Return chk_shownumbers.Value
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RebuildVerseListboxes(bookNumber As Integer, chapterNumber As Integer)
		  Dim verseList() As String
		  lst_scr_from_verse.DeleteAllRows
		  lst_scr_to_verse.DeleteAllRows
		  verseList = MyBible.GetVerseNumbers(bookNumber, chapterNumber)
		  For i As Integer = 0 To UBound(verseList)
		    lst_scr_from_verse.AddRow verseList(i)
		    lst_scr_to_verse.AddRow verseList(i)
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private PresentationIsRunning As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected OldSel As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PresentMode As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected MyBible As iBible
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SPController As ScripturePickerController
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Used by lst_scr_from_verse to determine if a value change has occurred
		#tag EndNote
		Private ActiveFromVerse As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Used by lst_scr_to_verse to determine if a value change has occurred
		#tag EndNote
		Private ActiveThruVerse As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Used by lst_scr_chapter.Change to determine if a change has occurred.
		#tag EndNote
		Private ActiveChapterNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Used by Change events of lst_scr_ot and lst_scr_nt to determine if a change has occurred.
		#tag EndNote
		Private ActiveBookNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Used by pop_scr_version.Change to determine if a change has occurred.
		#tag EndNote
		Private ActiveBible As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			If True, indicates the window is opened from a presentation.
			If False, indicates the window is opened from an editor.
		#tag EndNote
		#tag Getter
			Get
			Return PresentationIsRunning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			btn_insert.Visible = value
			btn_insert.Enabled = value
			PresentationIsRunning = value
			End Set
		#tag EndSetter
		Live As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		#tag Note
			Used by EnableUI/DisableUI to store the controls affected
		#tag EndNote
		Protected EnabledControls() As RectControl
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Flag to controls that a programmatic update is in progress,
			not one triggered by direct user interaction
		#tag EndNote
		Protected PropertiesUpdating As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Bindings
	#tag BeginBinding
		SourceItem = 11
		DestinationItem = 10
		ItemType = bindListBoxes
		ItemDescription = Notify lst_scr_ot when lst_scr_nt has a selection
	#tag EndBinding
	#tag BeginBinding
		SourceItem = 10
		DestinationItem = 11
		ItemType = bindListBoxes
		ItemDescription = Notify lst_scr_nt when lst_scr_ot has a selection
	#tag EndBinding
#tag EndBindings
#tag Events btn_add
	#tag Event
		Sub Action()
		  SendCommand(ScripturePickerController.cmdAddToSet)
		  Me.Default = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_done
	#tag Event
		Sub Action()
		  App.DebugWriter.Write "ScripturePickerWindow.btn_done.Action"
		  SendCommand(ScripturePickerController.cmdDone)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_insert
	#tag Event
		Sub Action()
		  // Insert Button becomes default
		  SendCommand(ScripturePickerController.cmdLiveDisplay)
		  Me.Default = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_quick_lookup
	#tag Event
		Sub GotFocus()
		  btn_quick_lookup.Enabled = (Me.Text.Len > 0)
		  If Me.Text.Len > 0 Then
		    btn_quick_lookup.Default = True
		  Else
		    btn_add.Default = True
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  'If Asc(Key) = 13 Or Asc(Key) = 10 Then
		  'Lookup edt_quick_lookup.Text
		  'Return True
		  'End If
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    if c.TextAvailable then
		      edt_quick_lookup.Text  = c.Text
		    end if
		  end if
		  
		  c.close
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  btn_quick_lookup.Default = False
		  btn_add.Default = True
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  btn_quick_lookup.Enabled = False
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  btn_quick_lookup.Enabled = (Me.Text.Len > 0)
		  If Me.Text.Len > 0 Then
		    btn_quick_lookup.Default = True
		  Else
		    btn_add.Default = True
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_quick_lookup
	#tag Event
		Sub Action()
		  Try
		    SendCommand(ScripturePickerController.cmdQuickLookup, edt_quick_lookup.Text)
		  Catch e As BibleRefException
		    InputBox.Message e.Message
		  End Try
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_search
	#tag Event
		Sub Action()
		  SendCommand(ScripturePickerController.cmdSearch)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_ot
	#tag Event
		Sub Change()
		  If Me.ListIndex = -1 Then Return
		  If Me.CellTag(Me.ListIndex, 0) = ActiveBookNumber Then Return
		  
		  BookSelected(Me.CellTag(Me.ListIndex, 0))
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_nt
	#tag Event
		Sub Change()
		  If Me.ListIndex = -1 Then Return
		  If Me.CellTag(Me.ListIndex, 0) = ActiveBookNumber Then Return
		  
		  BookSelected(Me.CellTag(Me.ListIndex, 0))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_chapter
	#tag Event
		Sub Change()
		  If Me.ListIndex = -1 Then Return
		  If Me.ListIndex = ActiveChapterNumber Then Return
		  
		  PassageChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_from_verse
	#tag Event
		Sub Change()
		  Dim newSel As Integer
		  newSel = Me.ListIndex
		  
		  If newSel = -1 Then Return
		  If newSel = ActiveFromVerse Then Return
		  
		  If newSel > ActiveThruVerse Then
		    ActiveThruVerse = newSel
		    lst_scr_to_verse.ListIndex = newSel
		  End If
		  
		  PassageChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lst_scr_to_verse
	#tag Event
		Sub Change()
		  Dim NewSel As Integer
		  NewSel = Me.ListIndex
		  
		  If NewSel = -1 Then Return // List maintenance in progress
		  If NewSel = ActiveThruVerse Then Return
		  
		  // If a value less than ActiveFromVerse is selected, move it also
		  If NewSel < ActiveFromVerse Then
		    ActiveFromVerse = NewSel // Set first to keep Change from firing
		    lst_scr_from_verse.ListIndex = NewSel
		  End If
		  PassageChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pop_scr_version
	#tag Event
		Sub Change()
		  If pop_scr_version.Text = ActiveBible Then Return
		  SendCommand "selectbible", pop_scr_version.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_verses_one
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_verses_two
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_verses_three
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_format_paragraph
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rad_format_verse
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_shownumbers
	#tag Event
		Sub Action()
		  If PropertiesUpdating Then Return
		  SendCommand ScripturePickerController.cmdFormatChanged
		End Sub
	#tag EndEvent
#tag EndEvents