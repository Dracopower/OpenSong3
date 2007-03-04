#tag Window
Begin Window IdentsWin
   Placement       =   0
   Width           =   677
   Height          =   439
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   0
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Global Scope"
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
   Begin RBIdentsListBox theTreeView
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   0
      Top             =   33
      Width           =   677
      Height          =   406
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   1
      ColumnWidths    =   "*"
      HasHeading      =   "True"
      UseFocusRing    =   "True"
      InitialValue    =   "will be set in listbox"
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
      insideView      =   0
      includeInherited=   0
      autoExpand      =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   0
   End
   Begin CheckBox inheritedChk
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   8
      Top             =   6
      Width           =   128
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "show inherited"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   1
   End
   Begin CheckBox insideViewChk
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   142
      Top             =   6
      Width           =   100
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Caption         =   "inside view"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   2
   End
End
#tag EndWindow

#tag WindowCode
#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			self.Close
		End Function
#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ShowIdents(tree as RBPrjIdents)
		  me.theTree = tree
		  theTreeView.Populate tree, inheritedChk.Value, insideViewChk.Value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub refreshTree()
		  theTreeView.Populate nil, inheritedChk.Value, insideViewChk.Value
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private theTree As RBPrjIdents
	#tag EndProperty


#tag EndWindowCode

#tag Events inheritedChk
	#tag Event
		Sub Action()
		  self.refreshTree
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events insideViewChk
	#tag Event
		Sub Action()
		  self.refreshTree
		End Sub
	#tag EndEvent
#tag EndEvents
