#tag Window
Begin Window RBPrjObjsWin
   Placement       =   0
   Width           =   927
   Height          =   579
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   0
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Class Hierarchy"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "True"
   LiveResize      =   "True"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin RBPrjObjsListBox theTreeView
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   0
      Top             =   0
      Width           =   927
      Height          =   579
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   1
      ColumnWidths    =   ""
      HasHeading      =   "True"
      UseFocusRing    =   "True"
      InitialValue    =   "will be set up in listbox"
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   14
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "SmallSystem"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "True"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "True"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      autoExpand      =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			me.Close
		End Function
#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ShowTree(tree as RBPrjObjTree)
		  theTreeView.Populate tree, true
		End Sub
	#tag EndMethod


#tag EndWindowCode

