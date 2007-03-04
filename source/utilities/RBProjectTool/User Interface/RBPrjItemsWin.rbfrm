#tag Window
Begin Window RBPrjItemsWin
   Placement       =   0
   Width           =   711
   Height          =   425
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   0
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "All items in project ^0"
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
   Begin RBPrjItemsListBox theTreeView
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   0
      Top             =   24
      Width           =   711
      Height          =   401
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
      ordered         =   0
      expanding       =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   0
   End
   Begin CheckBox orderedChk
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   8
      Top             =   2
      Width           =   100
      Height          =   20
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   ""
      LockBottom      =   ""
      Caption         =   "Ordered"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      Value           =   ""
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   1
   End
   Begin StaticText StaticText1
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   153
      Top             =   4
      Width           =   480
      Height          =   16
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   ""
      LockBottom      =   ""
      Text            =   "Note: The first RbBF item is always the main project's. Further RbBF items are externals"
      TextAlign       =   0
      TextColor       =   0
      Multiline       =   ""
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   10
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   2
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  me.origTitle = self.Title
		End Sub
	#tag EndEvent


#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			me.Close
		End Function
#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ShowTree(tree as RBPrjItemsTree, prjname as String = "*", hilightItem as RBPrjItem = nil)
		  if prjname = "*" then
		    prjname = tree.FileRef.Name
		  end
		  self.Title = Replace (me.origTitle, "^0", prjname)
		  theTreeView.Populate (tree, orderedChk.Value)
		  if hilightItem <> nil then
		    ShowItem (hilightItem)
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowItem(hilightItem as RBPrjItem)
		  theTreeView.ShowItem (hilightItem)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RefreshTree()
		  theTreeView.Populate (theTreeView.CurrentTree, orderedChk.Value)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private origTitle As String
	#tag EndProperty


#tag EndWindowCode

#tag Events orderedChk
	#tag Event
		Sub Action()
		  self.RefreshTree
		End Sub
	#tag EndEvent
#tag EndEvents
