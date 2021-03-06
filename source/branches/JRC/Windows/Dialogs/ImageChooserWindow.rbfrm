#tag Window
Begin Window ImageChooserWindow
   BackColor       =   16777215
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   390
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
   Resizeable      =   True
   Title           =   "Find Image"
   Visible         =   True
   Width           =   475
   Begin PushButton btn_browse
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Browse..."
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   156
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   340
      Underline       =   False
      Visible         =   True
      Width           =   75
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
      Left            =   241
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   340
      Underline       =   False
      Visible         =   True
      Width           =   75
   End
   Begin Label txt_path
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   True
      Left            =   10
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
      Text            =   ""
      TextAlign       =   1
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   365
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   455
   End
   Begin Separator sep_1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   328
      Visible         =   True
      Width           =   475
   End
   Begin ScrollBar scr_vertical
      AcceptFocus     =   true
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   328
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   458
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   0
      Minimum         =   0
      PageStep        =   3
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   1
      Value           =   0
      Visible         =   True
      Width           =   16
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   10
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   10
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Left            =   190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   10
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   10
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      Left            =   370
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   10
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   5
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   90
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   6
      InitialParent   =   ""
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   90
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   7
      InitialParent   =   ""
      Left            =   190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   90
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   8
      InitialParent   =   ""
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   90
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   9
      InitialParent   =   ""
      Left            =   370
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   90
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   10
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   170
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   11
      InitialParent   =   ""
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   170
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   12
      InitialParent   =   ""
      Left            =   190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   170
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   13
      InitialParent   =   ""
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   170
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   14
      InitialParent   =   ""
      Left            =   370
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   170
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   15
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   250
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   16
      InitialParent   =   ""
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   250
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   17
      InitialParent   =   ""
      Left            =   190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   250
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   18
      InitialParent   =   ""
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   250
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Canvas can
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   60
      HelpTag         =   ""
      Index           =   19
      InitialParent   =   ""
      Left            =   370
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   250
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   70
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   70
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   70
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   70
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   370
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   70
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   5
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   150
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   6
      InitialParent   =   ""
      Italic          =   False
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   150
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   7
      InitialParent   =   ""
      Italic          =   False
      Left            =   190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   150
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   8
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   150
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   9
      InitialParent   =   ""
      Italic          =   False
      Left            =   370
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   150
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   10
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   230
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   11
      InitialParent   =   ""
      Italic          =   False
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   230
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   12
      InitialParent   =   ""
      Italic          =   False
      Left            =   190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   230
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   13
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   38
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   230
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   14
      InitialParent   =   ""
      Italic          =   False
      Left            =   370
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   230
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   15
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   40
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   310
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   16
      InitialParent   =   ""
      Italic          =   False
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   41
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   310
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   17
      InitialParent   =   ""
      Italic          =   False
      Left            =   190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   42
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   310
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   18
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   43
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   310
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label nte_name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   19
      InitialParent   =   ""
      Italic          =   False
      Left            =   370
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   44
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "file name"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   310
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
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
		  Dim pic As Picture
		  
		  '++JRC Added check here for backgrounds folder
		  'if it doesn't exist then switch to the Op System documents folder
		  If App.CheckDocumentFolders(App.BACKGROUNDS_FOLDER) <> App.NO_FOLDER Then
		    BackgroundFolder = App.DocsFolder.Child(App.STR_BACKGROUNDS)
		  Else
		    #If TargetWin32
		      BackgroundFolder = SpecialFolder.Documents
		    #ElseIf TargetMacOS
		      BackgroundFolder = SpecialFolder.Documents
		    #ElseIf TargetLinux
		      BackgroundFolder = Nil
		    #EndIf
		  End If
		  '--
		  App.T.TranslateWindow Me, "find_image", App.TranslationFonts
		  ReloadDirectory
		  App.CenterInControlScreen Me
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Lookup() As FolderItem
		  ShowModalWithin MainWindow
		  Return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ReloadDirectory()
		  // JDL 2/01/2006  Modified formula used to calculate scr_vertical.Maximum
		  // JDL 2/01/2006  Added some OpSys specific code for the txt_path.Caption
		  Dim path As String
		  Dim folderIndex,i, j, TotImg, jd, jd2 As Integer
		  '++JRC If BackgroundFolder is Nil do nothing
		  If BackgroundFolder = Nil Then Return
		  
		  path = BackgroundFolder.AbsolutePath
		  #If TargetWin32                                                                            // JDL 2/01/2006
		    If InStr(path, "My Documents") > 0 Then path = Mid(path, InStr(path, "My Documents"))
		  #ElseIf TargetMacOS                                                                     // JDL 2/01/2006
		    If InStr(path, "Documents") > 0 Then path = Mid(path, InStr(path, "Documents"))    // JDL 2/01/2006
		  #ElseIf TargetLinux                                                                       // JDL 2/01/2006
		    //Linux code goes right here.                                                    // JDL 2/01/2006
		  #EndIf                                                                                           // JDL 2/01/2006
		  
		  txt_path.Caption = path
		  
		  ReDim ImageFiles(0)
		  If BackgroundFolder.AbsolutePath <> App.DocsFolder.Child("Backgrounds").AbsolutePath Then
		    ImageFiles.Append New FolderItem("(parent)")
		    folderIndex = 1
		  End If
		  
		  App.MouseCursor = System.Cursors.Wait
		  For i = 1 To BackgroundFolder.Count
		    If BackgroundFolder.Item(i).Name <> "thumbs.db" _
		      And BackgroundFolder.Item(i).IsFileVisible Then
		      If BackgroundFolder.Item(i).Directory Then
		        folderIndex = folderIndex + 1
		        ImageFiles.Insert folderIndex, BackgroundFolder.Item(i)
		      Else
		        ImageFiles.Append BackgroundFolder.Item(i)
		      End If
		      j = j + 1
		    End If
		  Next i
		  
		  App.MouseCursor = Nil
		  
		  'scr_vertical.Maximum = Ceil(j/COLS) - ROWS                               // JDL 2/01/2006
		  TotImg = folderIndex + j                                                              // JDL 2/01/2006
		  If TotImg > 20 Then                                                                      // JDL 2/01/2006
		    scr_vertical.Maximum = Ceil((TotImg - (COLS * ROWS))/COLS)   // JDL 2/01/2006
		  Else                                                                                               // JDL 2/01/2006
		    scr_vertical.Maximum = 0                                                          // JDL 2/01/2006
		  End If                                                                                            // JDL 2/01/2006
		Catch ex
		  App.DebugWriter.Write("ImageChooserWindow.ReloadDirectory: caught " + ex.ToString)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected BackgroundFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected f As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageFiles(0) As FolderItem
	#tag EndProperty


	#tag Constant, Name = COLS, Type = Integer, Dynamic = False, Default = \"5", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = ROWS, Type = Integer, Dynamic = False, Default = \"4", Scope = Protected
	#tag EndConstant


#tag EndWindowCode

#tag Events btn_browse
	#tag Event
		Sub Action()
		  // 2 December 2006 EMP
		  // Changed local variable f to fi to prevent future confusion
		  // Added a list of picture file types to the GetOpenFolderItem call
		  // to clear up an issue with Mac in particular not allowing the browse to work
		  // [Bug 1495745]
		  Dim fi As FolderItem
		  fi = GetOpenFolderItem("JPG Files;BMP Files;GIF Files;PNG Files;TIFF Files")
		  If fi <> Nil Then
		    Self.f = fi
		    Close
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_cancel
	#tag Event
		Sub Action()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events scr_vertical
	#tag Event
		Sub ValueChanged()
		  Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events can
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  // JDL 2/01/2006  Created ImgNdx to use as index in the ImageFiles array.
		  // JDL 2/01/2006  Also replaced (and modified) hard coded argument with variable.
		  Dim ImgNdx as Integer
		  ImgNdx = scr_vertical.Value * COLS + Index + 1
		  ' If scr_vertical.Value + Index + 1 <= UBound(ImageFiles) Then     // JDL 2/01/2006
		  If ImgNdx <= UBound(ImageFiles) Then                 // JDL 2/01/2006
		    If ImageFiles(ImgNdx).Name = "(parent)" Then    // JDL 2/01/2006
		      If BackgroundFolder.Parent <> Nil Then BackgroundFolder = BackgroundFolder.Parent
		      ReloadDirectory
		      Refresh False
		    ElseIf ImageFiles(ImgNdx).Directory Then           // JDL 2/01/2006
		      BackgroundFolder = ImageFiles(ImgNdx)        // JDL 2/01/2006
		      ReloadDirectory
		      Refresh False
		    Else
		      f = ImageFiles(ImgNdx)                                   // JDL 2/01/2006
		      Close
		    End If
		  End If
		Catch ex
		  ex.message = ex.message + " Index = " + CStr(Index) + ", ImgNdx = " + CStr(ImgNdx)
		  App.DebugWriter.Write("ImageChooserWindow.MouseDown: caught " + ex.ToString, 1)
		  Return False
		End Function
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics)
		  // JDL 2/01/2006  Created ImgNdx to use as index in the ImageFiles array.
		  // JDL 2/01/2006  Replaced (and modified) hard coded argument with variable.
		  // JDL 2/01/2006  Replaced pic.Depth with variable picDepth
		  // EMP 2 December 2006 Fixed attempt to access pic before validating as non-Nil
		  // EMP 2 December 2006 Added code to ignore non-picture files
		  Dim pic, thumb As Picture
		  Dim name As String
		  Dim c As Color
		  Dim cache As FolderItem
		  Dim ImgNdx, picDepth as Integer                                            // JDL 2/01/2006
		  ImgNdx = scr_vertical.Value * COLS + Index + 1                    // JDL 2/01/2006
		  
		  App.MouseCursor = System.Cursors.Wait
		  
		  If ImgNdx <= UBound(ImageFiles) Then                                  // JDL 2/01/2006
		    g.TextSize = 8
		    name = ImageFiles(ImgNdx).Name                                      // JDL 2/01/2006
		    If name = "(parent)" Then
		      g.DrawPicture fileopen, 0, 0, g.Width, g.Height, 0, 0, fileopen.Width, fileopen.Height
		    ElseIf ImageFiles(ImgNdx).Directory Then                             // JDL 2/01/2006
		      g.DrawPicture fileopen, 0, 0, g.Width, g.Height, 0, 0, fileopen.Width, fileopen.Height
		    Else
		      cache = ImageFiles(ImgNdx).Parent.Child("_cache")            // JDL 2/01/2006
		      If cache <> Nil And cache.Exists And cache.Child(name).Exists And _
		        ImageFiles(ImgNdx).ModificationDate <= cache.Child(name).ModificationDate _
		        Then ' read from the cache                                         // JDL 2/01/2006
		        pic = Picture.Open(cache.Child(name))
		        picDepth = pic.Depth                                                       // JDL 2/01/2006
		        If picDepth = 0 then                                                         // JDL 2/01/2006
		          picDepth = 24                                                               // JDL 2/01/2006
		        End If                                                                                // JDL 2/01/2006
		        If pic <> Nil Then
		          thumb = New Picture(80, 60, picDepth)                          // JDL 2/01/2006
		          thumb.Graphics.DrawPicture pic, 0, 0, thumb.Width, thumb.Height, 0, 0, pic.Width, pic.Height
		        End If
		        '++JRC Fix issue where two files with the same name but different Extensions would get
		        'the same thumbnail image. We'll add an extra Extension for the thumbnail's filename
		        'e.g. 1.jpg.bmp .
		      ElseIf cache <> Nil And cache.Exists And cache.Child(name +".bmp").Exists And _
		        ImageFiles(ImgNdx).ModificationDate <= cache.Child(name + ".bmp").ModificationDate Then ' read from the cache   // JDL 2/01/2006
		        'ElseIf cache <> Nil And cache.Exists And cache.Child(Left(name, InStr(name, "."))+"bmp").Exists And _
		        'ImageFiles(ImgNdx).ModificationDate <= cache.Child(Left(name, InStr(name, "."))+"bmp").ModificationDate Then ' read from the cache   // JDL 2/01/2006
		        
		        pic = Picture.Open(cache.Child(name +".bmp"))
		        'pic = cache.Child(Left(name, InStr(name, "."))+"bmp").OpenAsPicture
		        '
		        If pic <> Nil Then
		          picDepth = pic.Depth
		          If picDepth = 0 Then picDepth = 32
		          thumb = New Picture(80, 60, picDepth)
		          thumb.Graphics.DrawPicture pic, 0, 0, thumb.Width, thumb.Height, 0, 0, pic.Width, pic.Height
		        End If
		      Else '  read from the file
		        pic = Picture.Open(ImageFiles(ImgNdx))                         // JDL 2/01/2006
		        If pic <> Nil Then
		          picDepth = pic.Depth                                                       // JDL 2/01/2006
		          If picDepth = 0 then                                                         // JDL 2/01/2006
		            picDepth = 32                                                               // JDL 2/01/2006
		          End If                                                                                // JDL 2/01/2006
		          If cache <> Nil Then ' create the cache
		            If Not cache.Exists Then cache.CreateAsFolder
		            thumb = New Picture(80, 60, picDepth)                          // JDL 2/01/2006
		            thumb.Graphics.DrawPicture pic, 0, 0, thumb.Width, thumb.Height, 0, 0, pic.Width, pic.Height
		            '++JRC
		            thumb.Save(cache.Child(name + ".bmp"), Picture.SaveAsDefault)
		            '
		          End If // cache <> Nil
		        Else
		          // Let's not display anything that isn't a picture or a folder.
		          ImageFiles.Remove ImgNdx
		          Can(Index).Refresh
		          Return
		        End If // pic <> Nil
		      End If
		      If thumb <> Nil Then
		        g.DrawPicture thumb, 0, 0
		      Else
		        g.ForeColor = FillColor
		        g.FillRect 0, 0, g.Width, g.Height
		        g.ForeColor = DarkBevelColor
		        g.DrawLine 0, 0, g.Width, g.Height
		      End If
		    End If
		    nte_name(Index).Text = ImageFiles(ImgNdx).DisplayName    // JDL 2/01/2006
		    g.ForeColor = DarkBevelColor
		    g.DrawRect 0, 0, g.Width, g.Height
		  Else
		    nte_name(Index).Text = ""
		    'g.ForeColor = FillColor
		    'g.FillRect 0, 0, g.Width, g.Height
		  End If
		  
		  App.MouseCursor = Nil
		Catch ex
		  ex.Message = ex.Message + " Index = " + CStr(Index) + ", ImgNdx = " + CStr(ImgNdx)
		  App.DebugWriter.Write("ImageChooserWindow.can().Paint: caught " + ex.ToString, 1)
		End Sub
	#tag EndEvent
#tag EndEvents
