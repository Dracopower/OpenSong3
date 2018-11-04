#tag Window
Begin Window PresentSettingsWindow
   BackColor       =   "&cFFFFFF00"
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   488
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Presentation Settings"
   Visible         =   True
   Width           =   796
   Begin PushButton btn_ok
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   638
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
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   457
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   70
   End
   Begin PushButton btn_cancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   718
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   457
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin TabPanel tab_present_settings
      AutoDeactivate  =   True
      Bold            =   False
      Enabled         =   True
      Height          =   435
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Styles\rOptions\rSnapshots"
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   776
      Begin Label lbl_style_default_slides
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Default Slide Style:"
         TextAlign       =   1
         TextColor       =   "&c00000000"
         TextFont        =   "Arial"
         TextSize        =   10.0
         TextUnit        =   0
         Top             =   65
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin SStyleCanvas can_style_default
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   150
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SongStyle       =   True
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   80
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   200
      End
      Begin Label nte_style_click_to_change_1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   13
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   True
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "(click to change)"
         TextAlign       =   1
         TextColor       =   "&c00000000"
         TextFont        =   "Arial"
         TextSize        =   9.0
         TextUnit        =   0
         Top             =   235
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin Label lbl_style_scripture_slides
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   255
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Scripture Slide Style:"
         TextAlign       =   1
         TextColor       =   "&c00000000"
         TextFont        =   "Arial"
         TextSize        =   10.0
         TextUnit        =   0
         Top             =   65
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin SStyleCanvas can_style_scripture
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   150
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Left            =   255
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         SongStyle       =   False
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   80
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   200
      End
      Begin Label nte_style_click_to_change_2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   15
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   True
         Left            =   255
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "(click to change)"
         TextAlign       =   1
         TextColor       =   "&c00000000"
         TextFont        =   "Arial"
         TextSize        =   9.0
         TextUnit        =   0
         Top             =   235
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
      End
      Begin GroupBox grp_settings_alerts
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Alerts"
         Enabled         =   True
         Height          =   130
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   300
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   400
         Begin Label lbl_alerts_align
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_alerts"
            Italic          =   False
            Left            =   38
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Align:"
            TextAlign       =   1
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   340
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   90
         End
         Begin SAlignCanvas sal_alerts
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   44
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_alerts"
            Left            =   62
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   355
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   44
         End
         Begin Label lbl_alerts_font
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_alerts"
            Italic          =   False
            Left            =   132
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Font:"
            TextAlign       =   1
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   321
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   250
         End
         Begin SFontCanvas can_alerts_font
            AcceptFocus     =   False
            AcceptMouseDown =   True
            AcceptTabs      =   False
            AdvancedOptions =   True
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   80
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_alerts"
            Left            =   132
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   335
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   250
         End
      End
      Begin GroupBox grp_option_logo
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Logo"
         Enabled         =   True
         Height          =   365
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   566
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   65
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   200
         Begin SImageCanvas can_logo
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            bgColor         =   "&c00000000"
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   120
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_option_logo"
            Left            =   586
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   89
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin Label nte_logo_click_to_change_1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_option_logo"
            Italic          =   True
            Left            =   586
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "(click to change)"
            TextAlign       =   1
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   9.0
            TextUnit        =   0
            Top             =   213
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   160
         End
         Begin Label nte_logo_right_click_to_clear_1
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_option_logo"
            Italic          =   True
            Left            =   586
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "(right-click to clear)"
            TextAlign       =   1
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   9.0
            TextUnit        =   0
            Top             =   228
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   160
         End
         Begin Label lbl_logo_mask
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_option_logo"
            Italic          =   False
            Left            =   586
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "Mask:"
            TextAlign       =   1
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   253
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   160
         End
         Begin SImageCanvas can_logo_mask
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            bgColor         =   "&c00000000"
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   120
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_option_logo"
            Left            =   586
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Top             =   273
            Transparent     =   True
            UseFocusRing    =   True
            Visible         =   True
            Width           =   160
         End
         Begin Label nte_logo_click_to_change_2
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_option_logo"
            Italic          =   True
            Left            =   586
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "(click to change)"
            TextAlign       =   1
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   9.0
            TextUnit        =   0
            Top             =   393
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   160
         End
         Begin Label nte_logo_right_click_to_clear_2
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_option_logo"
            Italic          =   True
            Left            =   586
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Text            =   "(right-click to clear)"
            TextAlign       =   1
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   9.0
            TextUnit        =   0
            Top             =   408
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   160
         End
      End
      Begin GroupBox grp_settings_transitions
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Transitions"
         Enabled         =   True
         Height          =   153
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   430
         Begin CheckBox chk_style_use_transitions
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Use transitions by default"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   39
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   69
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   173
         End
         Begin Label lbl_style_frames
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   39
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Frames"
            TextAlign       =   0
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   89
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   151
         End
         Begin Slider sld_style_frames
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_transitions"
            Left            =   39
            LineStep        =   1
            LiveScroll      =   True
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Maximum         =   10
            Minimum         =   0
            PageStep        =   1
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TickStyle       =   0
            Top             =   112
            Transparent     =   False
            Value           =   5
            Visible         =   True
            Width           =   112
         End
         Begin TextField edt_style_frames
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   "&cFFFFFF00"
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   163
            LimitText       =   2
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "9#"
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   108
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   27
         End
         Begin Label lbl_style_time
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   39
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Time:"
            TextAlign       =   0
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   124
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   151
         End
         Begin Slider sld_style_time
            AutoDeactivate  =   True
            Enabled         =   True
            Height          =   16
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_transitions"
            Left            =   40
            LineStep        =   10
            LiveScroll      =   True
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Maximum         =   1000
            Minimum         =   50
            PageStep        =   20
            Scope           =   0
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            TickStyle       =   0
            Top             =   148
            Transparent     =   False
            Value           =   100
            Visible         =   True
            Width           =   112
         End
         Begin TextField edt_style_time
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   "&cFFFFFF00"
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   152
            LimitText       =   4
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "99##"
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   148
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   38
         End
         Begin Label txt_style_transition_note
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   131
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_transitions"
            Italic          =   False
            Left            =   227
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   True
            Scope           =   0
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "*Transitions are greatly affected by screen resolution. If you are experiencing slow transitions, consider decreasing the resolution of the monitor that the presentation resides on. Also, if you notice that transitions are not showing up, it may be because your color levels are too low on the presentation monitor."
            TextAlign       =   0
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   69
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   223
         End
      End
      Begin GroupBox grp_settings_style
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Style"
         Enabled         =   True
         Height          =   176
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   217
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   430
         Begin Label lbl_style_border_thickness
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   39
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Border Thickness:"
            TextAlign       =   0
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   235
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   140
         End
         Begin TextField edt_style_border_thickness
            AcceptTabs      =   False
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   "&cFFFFFF00"
            Bold            =   False
            Border          =   True
            CueText         =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   39
            LimitText       =   4
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Mask            =   "999#"
            Password        =   False
            ReadOnly        =   False
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   ""
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   250
            Transparent     =   False
            Underline       =   False
            UseFocusRing    =   True
            Visible         =   True
            Width           =   50
         End
         Begin Label lbl_style_initial_mode
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   39
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Initial Mode:"
            TextAlign       =   0
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   278
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   189
         End
         Begin PopupMenu pop_style_initial_mode
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_style"
            InitialValue    =   ""
            Italic          =   False
            Left            =   39
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   289
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   140
         End
         Begin Label lbl_style_mouse_cursor
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   39
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Mouse Cursor:"
            TextAlign       =   0
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   316
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   189
         End
         Begin CheckBox chk_style_blanks
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Insert blank slides"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   240
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   240
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   210
         End
         Begin PopupMenu pop_style_mouse_cursor
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_style"
            InitialValue    =   ""
            Italic          =   False
            Left            =   39
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   326
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   140
         End
         Begin Label txt_style_blanks_between
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   260
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "between set items"
            TextAlign       =   0
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   255
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   190
         End
         Begin Canvas nil_blanks
            AcceptFocus     =   False
            AcceptTabs      =   False
            AutoDeactivate  =   True
            Backdrop        =   0
            DoubleBuffer    =   False
            Enabled         =   True
            EraseBackground =   True
            Height          =   72
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_style"
            Left            =   233
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   2
            TabStop         =   True
            Top             =   282
            Transparent     =   True
            UseFocusRing    =   False
            Visible         =   True
            Width           =   217
            Begin Label lbl_style_blank_style
               AutoDeactivate  =   True
               Bold            =   False
               DataField       =   ""
               DataSource      =   ""
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "nil_blanks"
               Italic          =   False
               Left            =   244
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   0
               Selectable      =   False
               TabIndex        =   0
               TabPanelIndex   =   2
               TabStop         =   True
               Text            =   "Blanks take style of:"
               TextAlign       =   0
               TextColor       =   "&c00000000"
               TextFont        =   "Arial"
               TextSize        =   10.0
               TextUnit        =   0
               Top             =   282
               Transparent     =   False
               Underline       =   False
               Visible         =   True
               Width           =   210
            End
            Begin RadioButton rad_style_blank_prev
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Previous slide"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "nil_blanks"
               Italic          =   False
               Left            =   244
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   1
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "Arial"
               TextSize        =   10.0
               TextUnit        =   0
               Top             =   301
               Transparent     =   False
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   198
            End
            Begin RadioButton rad_style_blank_next
               AutoDeactivate  =   True
               Bold            =   False
               Caption         =   "Next slide"
               Enabled         =   True
               Height          =   20
               HelpTag         =   ""
               Index           =   -2147483648
               InitialParent   =   "nil_blanks"
               Italic          =   False
               Left            =   244
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Scope           =   0
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               TextFont        =   "Arial"
               TextSize        =   10.0
               TextUnit        =   0
               Top             =   324
               Transparent     =   False
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   198
            End
         End
         Begin CheckBox chk_style_blank_is_slide_change
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Empty lyric line indicates slide change"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   "If checked, an empty line in the lyrics (no text) indicates a slide change. Acts like using ""||"" on the line. Simulates EasyWorship-style behavior."
            Index           =   -2147483648
            InitialParent   =   "grp_settings_style"
            Italic          =   False
            Left            =   39
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   9
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   363
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   411
         End
      End
      Begin GroupBox grp_settings_monitor
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Monitor Settings"
         Enabled         =   True
         Height          =   223
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   472
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   52
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   304
         Begin Label lbl_monitor_presentation
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_monitor"
            Italic          =   False
            Left            =   481
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Presentation Monitor:"
            TextAlign       =   0
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   108
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   181
         End
         Begin PopupMenu pop_monitor_presentation
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_monitor"
            InitialValue    =   "1\r\n2"
            Italic          =   False
            Left            =   482
            ListIndex       =   1
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   125
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin Label nte_monitor_detected
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_monitor"
            Italic          =   True
            Left            =   481
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "(1 monitor(s) detected.)"
            TextAlign       =   1
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   153
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   197
         End
         Begin PopupMenu pop_monitor_control
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_monitor"
            InitialValue    =   "1\r\n2"
            Italic          =   False
            Left            =   481
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   83
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   40
         End
         Begin Label lbl_monitor_control
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_monitor"
            Italic          =   False
            Left            =   481
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Control Monitor:"
            TextAlign       =   0
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   66
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   181
         End
         Begin Label lbl_monitor_default_mode
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   15
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_monitor"
            Italic          =   False
            Left            =   482
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            Text            =   "Default Mode:"
            TextAlign       =   0
            TextColor       =   "&c00000000"
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   178
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   182
         End
         Begin PopupMenu pop_monitor_mode
            AutoDeactivate  =   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   25
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_monitor"
            InitialValue    =   ""
            Italic          =   False
            Left            =   482
            ListIndex       =   0
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   195
            Transparent     =   False
            Underline       =   False
            Visible         =   True
            Width           =   200
         End
         Begin CheckBox chk_monitor_force_4_3_preview
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Force 4:3 preview"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_monitor"
            Italic          =   False
            Left            =   481
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   7
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   226
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   197
         End
         Begin CheckBox chk_monitor_force_16_9_preview
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Force 16:9 preview"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_monitor"
            Italic          =   False
            Left            =   481
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   7
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   250
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   197
         End
      End
      Begin CheckBox chk_settings_export_snapshot
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Export a snapshot of each presented slide to the following file"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   45
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   756
      End
      Begin TextField edt_settings_snapshot_filename
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   "&cFFFFFF00"
         Bold            =   False
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   20
         LimitText       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   ""
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   67
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   722
      End
      Begin SButton btn_settings_snapshot_file
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         HasFocus        =   False
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         LabelAlign      =   0
         Left            =   754
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuItem        =   ""
         Scope           =   0
         StickyBevel     =   False
         TabIndex        =   2
         TabPanelIndex   =   3
         TabStop         =   True
         Top             =   67
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   22
      End
      Begin CheckBox chk_settings_export_preview
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Export snapshots during set preview"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   101
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   722
      End
      Begin CheckBox chk_settings_export_live_insertions
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Export snapshots of slides inserted during a live presentation"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   4
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   122
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   722
      End
      Begin CheckBox chk_settings_export_metadata
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Export slide details in a similarly named xml file"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   5
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   143
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   722
      End
      Begin Label txt_settings_snapshot_parameters
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   242
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   True
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   "The following parameters can be used in the file name or path:\r\n- %d: The day of the current month (01-31)\r\n- %H: The hour from the current time of day in 24-hour format (00-23)\r\n- %i: The minutes from the current time (00-59)\r\n- %m: The current month (01-12)\r\n- %n: The number of the slide in the current set (with leading zeroes)\r\n- %N: The name of the current slide\r\n- %P: Presentation index for slides during presentation (with leading zeroes)\r\n- %s: The seconds from the current time (00-59)\r\n- %S: The name of the current set\r\n- %T: The title of the current slide\r\n- %V: The verse indicator of the current slide (for songs, empty for other slides)\r\n- %Y: The current year (4 digits)\r\n"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   546
      End
      Begin GroupBox grp_settings_presentation_control
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Presentation Control"
         Enabled         =   True
         Height          =   77
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "tab_present_settings"
         Italic          =   False
         Left            =   472
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   287
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   304
         Begin CheckBox chk_style_exit_prompt
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Prompt when exiting"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_presentation_control"
            Italic          =   False
            Left            =   482
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   329
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   196
         End
         Begin CheckBox chk_style_exit_doubleclick
            AutoDeactivate  =   True
            Bold            =   False
            Caption         =   "Exit on double-click"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   26
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "grp_settings_presentation_control"
            Italic          =   False
            Left            =   482
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   0
            State           =   0
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextFont        =   "Arial"
            TextSize        =   10.0
            TextUnit        =   0
            Top             =   303
            Transparent     =   False
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   196
         End
      End
   End
   Begin Timer AudioTimer
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   2
      Period          =   500
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Visible         =   True
   End
   Begin GroupBox grp_settings_audio
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Audio"
      Enabled         =   True
      Height          =   75
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   576
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   514
      Transparent     =   False
      Underline       =   False
      Visible         =   False
      Width           =   200
      Begin PushButton btn_audio_browse
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Browse"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_audio"
         Italic          =   False
         Left            =   697
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   531
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   69
      End
      Begin PushButton btn_audio_play
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Play"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_audio"
         Italic          =   False
         Left            =   666
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   559
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   70
      End
      Begin PushButton btn_audio_stop
         AutoDeactivate  =   True
         Bold            =   False
         ButtonStyle     =   0
         Cancel          =   False
         Caption         =   "Stop"
         Default         =   False
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_audio"
         Italic          =   False
         Left            =   584
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Arial"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   559
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   70
      End
      Begin Label lbl_audio_file_to_play
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "grp_settings_audio"
         Italic          =   False
         Left            =   585
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "File to Play:"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "Arial"
         TextSize        =   11.0
         TextUnit        =   0
         Top             =   532
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   109
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  If Keyboard.AsyncKeyDown(&h35) Or Asc(Key) = 27 Then ' Escape
		    Close
		  End If
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  Dim s As String
		  Dim n As Integer 'EMP 09/05
		  Dim Settings As XmlNode = App.MyPresentSettings.DocumentElement
		  
		  App.MouseCursor = System.Cursors.Wait
		  App.DebugWriter.Write("Opening PresentSettingsWindow")
		  Me.BackColor = FillColor
		  
		  edt_style_border_thickness.Text = SmartML.GetValue(Settings, "style/@thickness")
		  chk_style_use_transitions.Value = SmartML.GetValueB(Settings, "style/@transition")
		  chk_style_blanks.Value = SmartML.GetValueB(Settings, "style/@blanks")
		  chk_style_blank_is_slide_change.Value = SmartML.GetValueB(Settings, "style/@blank_is_slide_change")
		  
		  chk_style_exit_prompt.Value = SmartML.GetValueB(Settings, "style/@exit_prompt")
		  chk_style_exit_doubleclick.Value = SmartML.GetValueB(Settings, "style/@exit_doubleclick")
		  '++JRC
		  Dim file As String
		  file = SmartML.GetValue(Settings, "style/@default_audio")
		  CurrAudioFile = GetFolderItem(file)
		  If CurrAudioFile <> Nil Then
		    CurrAudio = CurrAudioFile.OpenAsSound
		  end if
		  if CurrAudio = Nil then
		    CurrAudioFile = Nil
		    btn_audio_play.Enabled = false
		    btn_audio_stop.Enabled = false
		  else
		    btn_audio_play.Enabled = true
		    'btn_audio_stop.Enabled = true
		  end if
		  
		  IsAudioPlaying = false
		  '--
		  //++
		  // Bug 1554999: Update list of monitors to accomodate systems with more than two monitors
		  //--
		  pop_monitor_control.DeleteAllRows
		  pop_monitor_presentation.DeleteAllRows
		  For n = 1 To Max(2, OSScreenCount()) // Permit dual-monitor configuration even if on single-monitor system.
		    pop_monitor_control.AddRow CStr(n)
		    pop_monitor_presentation.AddRow CStr(n)
		  Next
		  
		  pop_monitor_control.ListIndex = SmartML.GetValueN(Settings, "monitors/@control") - 1
		  If pop_monitor_control.ListIndex < 0 Then pop_monitor_control.ListIndex = 0
		  pop_monitor_presentation.ListIndex = SmartML.GetValueN(Settings, "monitors/@present") - 1
		  If pop_monitor_presentation.ListIndex < 0 Then pop_monitor_presentation.ListIndex = 1
		  chk_monitor_force_4_3_preview.Value = SmartML.GetValueB(Settings, "monitors/@force_4_3_preview", True, False)
		  chk_monitor_force_16_9_preview.Value = SmartML.GetValueB(Settings, "monitors/@force_16_9_preview", True, False)
		  
		  can_style_default.SetStyleNode SmartML.GetNode(Settings, "default_style")
		  DefaultStyle = New SlideStyle(can_style_default.GetStyleNode)
		  can_style_scripture.SetStyleNode SmartML.GetNode(Settings, "scripture_style")
		  ScriptureStyle = New SlideStyle(can_style_scripture.GetStyleNode)
		  
		  sal_alerts.SetVAlign SmartML.GetValue(Settings, "alert/@valign")
		  sal_alerts.SetHAlign SmartML.GetValue(Settings, "alert/@align")
		  can_alerts_font.SetFont SmartML.GetValueF(Settings, "alert")
		  
		  can_logo.SetImageAsString SmartML.GetValue(Settings, "logo")
		  can_logo_mask.SetImageAsString SmartML.GetValue(Settings, "logo_mask")
		  
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/normal/@caption")
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/black/@caption")
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/white/@caption")
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/logo/@caption")
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/hidden/@caption")
		  pop_style_initial_mode.AddRow App.T.Translate("presentation_settings/style/modes/frozen/@caption")
		  
		  pop_style_mouse_cursor.AddRow App.T.Translate("presentation_settings/style/mouse_cursor/arrow/@caption")
		  pop_style_mouse_cursor.AddRow App.T.Translate("presentation_settings/style/mouse_cursor/cross/@caption")
		  pop_style_mouse_cursor.AddRow App.T.Translate("presentation_settings/style/mouse_cursor/hidden/@caption")
		  pop_style_mouse_cursor.AddRow App.T.Translate("presentation_settings/style/mouse_cursor/hourglass/@caption")
		  pop_style_mouse_cursor.AddRow App.T.Translate("presentation_settings/style/mouse_cursor/ibeam/@caption")
		  
		  pop_monitor_mode.AddRow App.T.Translate("songs_mode/selected_song/present/single_screen/@caption")
		  pop_monitor_mode.AddRow App.T.Translate("songs_mode/selected_song/present/dual_screen/@caption")
		  pop_monitor_mode.AddRow App.T.Translate("songs_mode/selected_song/present/preview_dual_screen/@caption")
		  
		  pop_monitor_mode.Listindex = SmartML.GetValueN(Settings, "presentation_mode/@code", True) - 1
		  
		  Dim temp As String
		  temp = SmartML.GetValue(Settings, "style/@initial_mode")
		  Select Case temp
		  Case "B"
		    pop_style_initial_mode.ListIndex = 1
		  Case "W"
		    pop_style_initial_mode.ListIndex = 2
		  Case "L"
		    pop_style_initial_mode.ListIndex = 3
		  Case "H"
		    pop_style_initial_mode.ListIndex = 4
		  Case "F"
		    pop_style_initial_mode.ListIndex = 5
		  Else
		    pop_style_initial_mode.ListIndex = 0
		  End Select
		  
		  'Josh
		  temp = SmartML.GetValue(Settings, "style/@mouse_cursor")
		  Select Case temp
		  Case "arrow"
		    pop_style_mouse_cursor.ListIndex = 0
		  Case "cross"
		    pop_style_mouse_cursor.ListIndex = 1
		  Case "hidden"
		    pop_style_mouse_cursor.ListIndex = 2
		  Case "hourglass"
		    pop_style_mouse_cursor.ListIndex = 3
		  Case "ibeam"
		    pop_style_mouse_cursor.ListIndex = 4
		  Else
		    pop_style_mouse_cursor.ListIndex = 0
		  End Select
		  
		  App.MouseCursor = Nil
		  
		  App.T.TranslateWindow Me, "presentation_settings", App.TranslationFonts
		  s = App.T.Translate("presentation_settings/style/initial_mode/@caption")
		  nte_monitor_detected.Caption = Replace(nte_monitor_detected.Caption, "%1", Str(OSScreenCount()))
		  
		  //++EMP 09/05
		  // Code for user-selectable transitions
		  
		  n = SmartML.GetValueN(Settings, "style/@transition_frames", False)
		  If n = 0 Then n = 5
		  sld_style_frames.Value = n
		  edt_style_frames.Text = Str(n)
		  
		  n = SmartML.GetValueN(Settings, "style/@transition_time", False)
		  If n = 0 Then n = 100
		  sld_style_time.Value = n
		  edt_style_time.Text = Str(n)
		  
		  'sld_style_frames.Enabled = chk_style_use_transitions.Value
		  'sld_style_time.Enabled = chk_style_use_transitions.Value
		  'edt_style_frames.Enabled = chk_style_use_transitions.Value
		  'edt_style_time.Enabled = chk_style_use_transitions.Value
		  'lbl_style_time.Enabled = chk_style_use_transitions.Value
		  'lbl_style_frames.Enabled = chk_style_use_transitions.Value
		  //--
		  
		  //++EMP, 11/05
		  // Determine if blanks use the previous or next slide's style
		  
		  rad_style_blank_next.Value = SmartML.GetValueB(Settings, _
		  "style/@blank_uses_next", True, True)
		  rad_style_blank_prev.Value = Not rad_style_blank_next.Value
		  //--
		  
		  chk_settings_export_snapshot.Value = SmartML.GetValueB(Settings, "snapshot/@enable", False, False)
		  edt_settings_snapshot_filename.Text = SmartML.GetValue(Settings, "snapshot/filename", False)
		  chk_settings_export_preview.Value = SmartML.GetValueB(Settings, "snapshot/@export_preview", False, False)
		  chk_settings_export_live_insertions.Value = SmartML.GetValueB(Settings, "snapshot/@export_live_insertions", False, True)
		  chk_settings_export_metadata.Value = SmartML.GetValueB(Settings, "snapshot/@export_metadata", False, True)
		  
		  App.CenterInControlScreen Me
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub PopTo(str As String, pop As PopupMenu)
		  Dim i As Integer
		  For i = 0 To pop.ListCount - 1
		    If Lowercase(str) = Lowercase(pop.List(i)) Then
		      pop.ListIndex = i
		      Return
		    End If
		  Next i
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BGImage As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		BGImageFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrAudio As Sound
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected CurrAudioFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DefaultStyle As SlideStyle
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected FilterString As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected IsAudioPlaying As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ScriptureStyle As SlideStyle
	#tag EndProperty


	#tag Constant, Name = ROW_AUTHOR, Type = Integer, Dynamic = False, Default = \"1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ROW_CCLI_LICENSE, Type = Integer, Dynamic = False, Default = \"4", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ROW_CCLI_NUMBER, Type = Integer, Dynamic = False, Default = \"3", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ROW_COPYRIGHT, Type = Integer, Dynamic = False, Default = \"0", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ROW_HYMN_NUMBER, Type = Integer, Dynamic = False, Default = \"2", Scope = Protected
	#tag EndConstant


#tag EndWindowCode

#tag Events btn_ok
	#tag Event
		Sub Action()
		  Dim Settings As XmlElement
		  
		  Settings = App.MyPresentSettings.DocumentElement
		  
		  SmartML.SetValue Settings, "@version", "1.0" // Tag this so other parts of the program will know which schema to use.
		  
		  SmartML.SetValue Settings, "alert/@valign", sal_alerts.GetVAlign
		  SmartML.SetValue Settings, "alert/@align", sal_alerts.GetHAlign
		  SmartML.SetValueF Settings, "alert", can_alerts_font.GetFont
		  
		  SmartML.SetValue(Settings, "logo", can_logo.GetImageAsString)
		  SmartML.SetValue(Settings, "logo_mask", can_logo_mask.GetImageAsString)
		  
		  //++EMP 09/05
		  SmartML.SetValueN(Settings, "style/@transition_frames", sld_style_frames.Value)
		  SmartML.SetValueN(Settings, "style/@transition_time", sld_style_time.Value)
		  //--
		  
		  //++EMP 11/05
		  // Moved from Action routines for individual controls so cancelling this form will truly cancel.
		  
		  SmartML.SetValueB Settings, "style/@blanks", chk_style_blanks.Value
		  SmartML.SetValueB Settings, "style/@transition", chk_style_use_transitions.Value
		  SmartML.SetValueB Settings, "style/@blank_is_slide_change", chk_style_blank_is_slide_change.Value
		  
		  
		  SmartML.SetValueB Settings, "style/@exit_prompt", chk_style_exit_prompt.Value
		  SmartML.SetValueB Settings, "style/@exit_doubleclick", chk_style_exit_doubleclick.Value
		  
		  '++JRC 12/05
		  if CurrAudioFile <> Nil then
		    SmartML.SetValue(Settings, "style/@default_audio", CurrAudioFile.AbsolutePath) 'save filename
		  end if
		  '--
		  
		  SmartML.SetValueN Settings, "monitors/@control", pop_monitor_control.ListIndex+1
		  SmartML.SetValueN Settings, "monitors/@present", pop_monitor_presentation.ListIndex+1
		  SmartML.SetValueB Settings, "monitors/@force_4_3_preview", chk_monitor_force_4_3_preview.Value
		  SmartML.SetValueB Settings, "monitors/@force_16_9_preview", chk_monitor_force_16_9_preview.Value
		  
		  ' pop_pres_mode added EMP, 2005
		  ' Allows user to specify default presentation mode (single screen, dual, preview)
		  ' Eventual goal is to support a hotkey to go to presenter mode
		  '
		  SmartML.SetValueN(Settings, "presentation_mode/@code", pop_monitor_mode.ListIndex + 1)
		  
		  // Initial presentation mode
		  Dim temp As String
		  Select Case pop_style_initial_mode.ListIndex
		  Case 0
		    temp = "N"
		  Case 1
		    temp = "B"
		  Case 2
		    temp = "W"
		  Case 3
		    temp = "L"
		  Case 4
		    temp = "H"
		  Case 5
		    temp = "F"
		  End Select
		  SmartML.SetValue Settings, "style/@initial_mode", temp
		  
		  Select Case pop_style_mouse_cursor.ListIndex
		  Case 0
		    temp = "arrow"
		  Case 1
		    temp = "cross"
		  Case 2
		    temp = "hidden"
		  Case 3
		    temp = "hourglass"
		  Case 4
		    temp = "ibeam"
		  End Select
		  SmartML.SetValue Settings, "style/@mouse_cursor", temp
		  
		  'SmartML.SetValue Settings, "style/@song_subtitles", lst_style_subtitles.GetSelectedOptions
		  '
		  ' Subtitle selection moves to the default style to help address an issue with subtitles not being properly
		  ' overridden.
		  '
		  SmartML.SetValueB Settings, "style/@blank_uses_next", rad_style_blank_next.Value
		  
		  If  chk_settings_export_snapshot.Value and  edt_settings_snapshot_filename.Text="" Then
		    MsgBox(App.T.Translate("presentation_settings/errors/snapshot_file"))
		    Return
		  Else
		    SmartML.SetValueB(Settings, "snapshot/@enable", chk_settings_export_snapshot.Value)
		    SmartML.SetValue(Settings, "snapshot/filename", edt_settings_snapshot_filename.Text)
		    SmartML.SetValueB(Settings, "snapshot/@export_preview", chk_settings_export_preview.Value)
		    SmartML.SetValueB(Settings, "snapshot/@export_live_insertions", chk_settings_export_live_insertions.Value)
		    SmartML.SetValueB(Settings, "snapshot/@export_metadata", chk_settings_export_metadata.Value)
		  End If
		  
		  '++JRC: Stop Audio if its playing
		  if IsAudioPlaying = true then
		    //++EMP, 17 Feb 2006
		    //call Globals.SXMSAudio.SXMSWinampStop()
		    //--
		  end if
		  '--
		  
		  //++
		  // Bug 1462055: Save settings on dialog close
		  //
		  If App.CheckDocumentFolders(App.SETTINGS_FOLDER) <> App.NO_FOLDER Then
		    If Not SmartML.XDocToFile(App.MyPresentSettings, App.DocsFolder.Child(App.STR_SETTINGS).Child("PresentSettings")) Then SmartML.DisplayError
		  Else
		    If App.DocsFolder <> Nil Then
		      MsgBox App.T.Translate("errors/create_settings_folder",  App.DocsFolder.AbsolutePath + App.STR_SETTINGS)
		    Else
		      MsgBox App.T.Translate("errors/no_docs_folder", "")
		    End If
		  End If
		  //--
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  '++JRC: Stop Audio if its playing
		  //++EMP 17 Feb 2006
		  //if IsAudioPlaying = true then
		  //call Globals.SXMSAudio.SXMSWinampStop()
		  //end if
		  '--
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sal_alerts
	#tag Event
		Sub Open()
		  Me.SetValid "YYYNNNYYY"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_style_use_transitions
	#tag Event
		Sub Action()
		  'Keep the settings active as transitions can be enabled on a per sheet basis
		  
		  'sld_style_frames.Enabled = Me.Value
		  'sld_style_time.Enabled = Me.Value
		  'edt_style_frames.Enabled = Me.Value
		  'edt_style_time.Enabled = Me.Value
		  'lbl_style_time.Enabled = Me.Value
		  'lbl_style_frames.Enabled = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sld_style_frames
	#tag Event
		Sub ValueChanged()
		  edt_style_frames.Text = Str(Me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_style_frames
	#tag Event
		Sub LostFocus()
		  Dim n As Integer
		  n = CDbl(Me.Text)
		  if n < sld_style_frames.Minimum Then
		    Me.Text = Str(sld_style_frames.Minimum)
		  ElseIf n > sld_style_frames.Maximum Then
		    Me.Text = Str(sld_style_frames.Maximum)
		  Else
		    sld_style_frames.Value = n
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sld_style_time
	#tag Event
		Sub ValueChanged()
		  edt_style_time.Text = Str(Me.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_style_time
	#tag Event
		Sub LostFocus()
		  Dim n As Integer
		  n = CDbl(Me.Text)
		  if n < sld_style_time.Minimum Then
		    Me.Text = Str(sld_style_time.Minimum)
		  ElseIf n > sld_style_time.Maximum Then
		    Me.Text = Str(sld_style_time.Maximum)
		  Else
		    sld_style_time.Value = n
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edt_style_border_thickness
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim c As New Clipboard
		  
		  if strComp(Key, Chr(CTRL_V), 0) = 0 then 'ctrl-v
		    
		    if c.TextAvailable then
		      edt_style_border_thickness.Text  = Left(c.Text, 4)
		      return true
		    end if
		    
		  end if
		  c.close
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  SmartML.SetValueN App.MyPresentSettings.DocumentElement, "style/@thickness", Val(edt_style_border_thickness.Text)
		  GraphicsX.ThicknessFactor = Val(edt_style_border_thickness.Text)
		  Refresh False
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_style_blanks
	#tag Event
		Sub Action()
		  // Disable blanks style radio box if unchecked
		  nil_blanks.Enabled = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbl_monitor_default_mode
	#tag Event
		Sub Open()
		  Dim s as String
		  s = App.T.Translate("presentation_settings/style/initial_mode/@caption")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_monitor_force_4_3_preview
	#tag Event
		Sub Action()
		  if chk_monitor_force_4_3_preview.Value then
		    chk_monitor_force_16_9_preview.Value = false
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_monitor_force_16_9_preview
	#tag Event
		Sub Action()
		  if chk_monitor_force_16_9_preview.Value then
		    chk_monitor_force_4_3_preview.Value = false
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chk_settings_export_snapshot
	#tag Event
		Sub Action()
		  edt_settings_snapshot_filename.Enabled = Me.Value
		  btn_settings_snapshot_file.Enabled = Me.Value
		  chk_settings_export_preview.Enabled = Me.Value
		  chk_settings_export_live_insertions.Enabled = Me.Value
		  chk_settings_export_metadata.Enabled = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_settings_snapshot_file
	#tag Event
		Sub Action()
		  Dim dlg As New SaveAsDialog
		  Dim f As FolderItem
		  
		  dlg.ActionButtonCaption = App.T.Translate("shared/select/@caption")
		  dlg.CancelButtonCaption = App.T.Translate("shared/cancel/@caption")
		  dlg.Title = App.T.Translate("presentation_settings/snapshot_file/@caption")
		  dlg.PromptText = App.T.Translate("presentation_settings/snapshot_file")
		  dlg.Filter=ImageFileTypes.JPGFiles
		  
		  f = dlg.ShowModal()
		  If Not IsNull(f) Then
		    edt_settings_snapshot_filename.Text = f.AbsolutePath()
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.SetIcon fileopenpic, fileopenmask
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AudioTimer
	#tag Event
		Sub Action()
		  '++JRC
		  //++EMP 17 Feb 2006
		  // Commented out for mainstream version
		  //--
		  'Just check every few seconds if CurrAudio has finished playing
		  'Dim error As integer
		  '
		  'if IsAudioPlaying = true then
		  'error = 0
		  'error = Globals.SXMSAudio.SXMSWinampIsPlaying
		  'if error  = 0 then
		  'btn_audio_play.Enabled = true
		  'btn_audio_stop.Enabled = false
		  'IsAudioPlaying = false
		  'btn_audio_play.Caption = App.T.Translate("presentation_settings/audio/play/@caption")
		  '
		  'end if
		  'end if
		  '--
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_audio_browse
	#tag Event
		Sub Action()
		  //++EMP, 17 Feb 2006
		  // Joshua's audio module isn't cross-platform ready,
		  // so it is commented out for the mainstream release
		  //--
		  //
		  ''++JRC
		  'Dim FileName As MemoryBlock
		  'Dim FilterIndex As MemoryBlock
		  'Dim Pos As integer
		  'Dim error As integer
		  'Declare Function OpenFileDialog lib "UTILITY.DLL" (Handle as integer, Title as Cstring, FileTypes as Ptr, FilterIndex as Ptr) as Ptr
		  '
		  'FilterIndex = NewMemoryBlock(4)
		  'FileName = OpenFileDialog(Me.Handle, App.T.Translate("open_titles/audio"), Globals.Filters, FilterIndex)
		  'CurrAudioFile = GetFolderItem(FileName.CString(0))
		  'If CurrAudioFile = Nil Then
		  'CurrAudio = Nil
		  'Return
		  'end if
		  'FilterString  = Globals.GetFilterString(FilterIndex.Long(0))
		  'Pos = Instr(FilterString, " (*.")
		  'FilterString = App.AppFolder.Child("Plugins").AbsolutePath + Mid(FilterString, 0, Pos)
		  '
		  'if IsAudioPlaying = true then
		  'call Globals.SXMSAudio.SXMSWinampStop()
		  'IsAudioPlaying = false
		  'btn_audio_play.Enabled = false
		  'btn_audio_stop.Enabled = false
		  'end if
		  '
		  'error = Globals.SXMSAudio.SXMSWinampLoadPlugIn(FilterString)
		  '
		  'if error = 0 then
		  'InputBox.Message App.T.Translate("errors\plugin_load_failed", FilterString)
		  'return
		  'end if
		  ''CurrAudio = Nil
		  ''CurrAudio = CurrAudioFile.OpenAsSound
		  ''if CurrAudio = Nil then
		  ''CurrAudioFile = Nil
		  ''btn_audio_play.Enabled = false
		  ''btn_audio_stop.Enabled = false
		  ''else
		  'btn_audio_play.Enabled = true
		  ''btn_audio_stop.Enabled = true
		  ''end if
		  '
		  'IsAudioPlaying = false
		  ''--
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_audio_play
	#tag Event
		Sub Action()
		  //++EMP, 17 Feb 2006
		  // Joshua's audio add-on isn't cross-platform ready,
		  // so it is commented out for the mainstream release
		  //--
		  ''++JRC
		  'Dim error As integer
		  'Declare Sub delay lib "UTILITY.DLL" (Seconds as integer)
		  '
		  'if IsAudioPlaying = false then
		  'error = Globals.SXMSAudio.SXMSWinampPlay(CurrAudioFile.AbsolutePath)
		  'if error = 1 and Globals.SXMSAudio.SXMSWinampIsPlaying  = 1 then
		  ''btn_audio_play.Enabled = false
		  'btn_audio_play.Caption = App.T.Translate("presentation_settings/audio/pause/@caption")
		  'btn_audio_stop.Enabled = true
		  'IsAudioPlaying = true
		  'end if
		  'else
		  'error = 0
		  'error = Globals.SXMSAudio.SXMSWinampGetPaused()
		  'if error = 0 then
		  'Call Globals.SXMSAudio.SXMSWinampSetPause(1)
		  'btn_audio_play.Caption = App.T.Translate("presentation_settings/audio/play/@caption")
		  ''MsgBox "Paused"
		  ''delay(5)
		  'else
		  'Call Globals.SXMSAudio.SXMSWinampSetPause(0)
		  'btn_audio_play.Caption = App.T.Translate("presentation_settings/audio/pause/@caption")
		  ''MsgBox "UnPaused"
		  ''delay(5)
		  'end if
		  'end if
		  ''--
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_audio_stop
	#tag Event
		Sub Action()
		  '++JRC
		  //++EMP, 17 Feb 2006
		  //call Globals.SXMSAudio.SXMSWinampStop()
		  //btn_audio_play.Enabled = true
		  //btn_audio_stop.Enabled = false
		  //IsAudioPlaying = false
		  //--
		  '--
		End Sub
	#tag EndEvent
#tag EndEvents
