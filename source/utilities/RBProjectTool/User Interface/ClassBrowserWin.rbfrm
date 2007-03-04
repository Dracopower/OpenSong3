#tag Window
Begin Window ClassBrowserWin
   Placement       =   0
   Width           =   624
   Height          =   530
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   0
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "Class Browser"
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
   Begin GrayEditField FindEdit
      Index           =   -2147483648
      Left            =   20
      Top             =   14
      Height          =   22
      Width           =   584
      TextFont        =   "System"
      TextSize        =   0
      ControlOrder    =   0
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      TabPanelIndex   =   0
      Border          =   "True"
      Multiline       =   "False"
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "True"
      Password        =   "False"
      UseFocusRing    =   "True"
      TextColor       =   0
      BackColor       =   16777215
      Enabled         =   "True"
      Format          =   ""
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   ""
      Mask            =   ""
      ReadOnly        =   "False"
      LimitText       =   0
      AcceptTabs      =   "False"
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      black           =   0
      gray            =   0
      CompletionSelectsAll=   0
      CompleteOnLostFocus=   0
      BehaviorIndex   =   0
   End
   Begin GroupBox ClassBox
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   20
      Top             =   48
      Width           =   202
      Height          =   291
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "True"
      Caption         =   "Classes"
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
   Begin PopupMenu classViewPopup
      Index           =   -2147483648
      ControlOrder    =   2
      Left            =   32
      Top             =   74
      Width           =   178
      Height          =   16
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "False"
      Enabled         =   True
      InitialValue    =   "flat\rhierar. (in->out)\rhierar. (out->in)"
      ListIndex       =   0
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "ClassBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   2
   End
   Begin ListBox ClassList
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   32
      Top             =   102
      Width           =   178
      Height          =   226
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
      HasHeading      =   "False"
      UseFocusRing    =   "True"
      InitialValue    =   "<Globals>"
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "SmallSystem"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "False"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "ClassBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   3
   End
   Begin GroupBox MembersBox
      Index           =   -2147483648
      ControlOrder    =   4
      Left            =   240
      Top             =   48
      Width           =   364
      Height          =   291
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Caption         =   "Members"
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
      BehaviorIndex   =   4
   End
   Begin CheckBox insideViewChk
      Index           =   -2147483648
      ControlOrder    =   5
      Left            =   253
      Top             =   74
      Width           =   340
      Height          =   16
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "inside view"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "False"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "MembersBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   5
   End
   Begin CheckBox inheritedChk
      Index           =   -2147483648
      ControlOrder    =   6
      Left            =   253
      Top             =   95
      Width           =   340
      Height          =   16
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "show inherited"
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Value           =   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "MembersBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   6
   End
   Begin ListBox MembersList
      Index           =   -2147483648
      ControlOrder    =   7
      Left            =   253
      Top             =   122
      Width           =   340
      Height          =   206
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   2
      ColumnWidths    =   20
      HasHeading      =   "False"
      UseFocusRing    =   "True"
      InitialValue    =   ""
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "False"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "SmallSystem"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Hierarchical    =   "False"
      EnableDrag      =   "False"
      EnableDragReorder=   "False"
      RequiresSelection=   ""
      SelectionType   =   0
      ColumnsResizable=   "False"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   "MembersBox"
      TabPanelIndex   =   0
      BehaviorIndex   =   7
   End
   Begin EditField ContentView
      Index           =   -2147483648
      ControlOrder    =   8
      Left            =   20
      Top             =   358
      Width           =   584
      Height          =   160
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      Border          =   "True"
      Multiline       =   "True"
      ScrollbarHorizontal=   "True"
      ScrollbarVertical=   "True"
      Styled          =   "False"
      Password        =   "False"
      UseFocusRing    =   "True"
      TextColor       =   0
      BackColor       =   16777215
      Enabled         =   True
      Format          =   ""
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "SmallSystem"
      TextSize        =   10
      Bold            =   "False"
      Italic          =   "False"
      Underline       =   "False"
      Text            =   ""
      Mask            =   ""
      ReadOnly        =   "True"
      LimitText       =   0
      AcceptTabs      =   "False"
      Alignment       =   0
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   8
   End
   Begin MarsSplitter MarsSplitter1
      Index           =   -2147483648
      Left            =   222
      Top             =   48
      Height          =   291
      Width           =   18
      TextFont        =   "System"
      TextSize        =   0
      ControlOrder    =   9
      LockLeft        =   "False"
      LockTop         =   "True"
      LockRight       =   "False"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   "True"
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      MinTopLeft      =   100
      MinBottomRight  =   100
      BehaviorIndex   =   9
   End
   Begin MarsSplitter MarsSplitter2
      Index           =   -2147483648
      Left            =   20
      Top             =   339
      Height          =   18
      Width           =   584
      TextFont        =   "System"
      TextSize        =   0
      ControlOrder    =   10
      LockLeft        =   "True"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   "True"
      UseFocusRing    =   "True"
      Backdrop        =   0
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      EraseBackground =   "True"
      InitialParent   =   ""
      MinTopLeft      =   160
      MinBottomRight  =   60
      BehaviorIndex   =   10
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Resized()
		  if RBVersion < 2005 then
		    MsgBox "Sorry, but the window resizing has probably messed up the layout of items in the window. Wouldn't happen if you'd use RB 2005 or if RS had fixed this earlier"
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  me.setup()
		End Sub
	#tag EndEvent


#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			self.Close
		End Function
#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub SetTree(tree as RBPrjIdents)
		  me.theTree = tree
		  
		  populateClassList
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub populateClassList()
		  dim names(), name as String
		  
		  '### need to evaluate "classViewPopup" as well!
		  
		  ClassList.DeleteAllRows
		  ClassList.AddRow me.globalsName // Globals come always first in list, the rest gets sorted
		  ClassList.CellTag (ClassList.LastIndex, 0) = ""
		  
		  names = me.theTree.AllClassNames ()
		  names.Sort
		  
		  redim me.autoCompletionChoices(-1)
		  for each name in names
		    ClassList.AddRow name
		    ClassList.CellTag (ClassList.LastIndex, 0) = name
		    me.autoCompletionChoices.Append name
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setup()
		  me.globalsName = ClassList.List(0)
		  
		  if RBVersion < 2005 then
		    // Due to bugs (or shortcomings) in RB 5.5, resizing GroupBoxes
		    // does not automatically resize its contained items along properly.
		    // Because of this, the resizing is suppressed for this experimental
		    // window to avoid the ugly side effects.
		    MarsSplitter1.enabled = false
		    MarsSplitter2.enabled = false
		    self.GrowIcon = false // actually, this does not even work - the window remains resizable in RB 5.5.5,
		    self.ZoomIcon = false // so we warn the user instead in the Window.Resized event
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub showMembers(tree as RBPrjIdents, className as String, includeInherited as Boolean, insideView as Boolean)
		  dim items(), tmpItems(), item, tmpItem, classItem as RBPrjObjEntity
		  dim inheritedItems as Dictionary
		  dim isContainer as Boolean
		  dim container as RBPrjIdentContainer
		  dim s, superName as String
		  
		  items = tree.AllIdents (className)
		  
		  inheritedItems = new Dictionary
		  if includeInherited then
		    superName = className
		    do
		      classItem = tree.LookupClass (superName)
		      if classItem = nil then exit
		      superName = classItem.SuperClass
		      if superName = "" then exit
		      tmpItems = tree.AllIdents (superName)
		      for each tmpItem in tmpItems
		        if not tmpItem.IsPrivate() then // never include privates from super classes
		          '### should detect overidden methods here and mark them in the view somehow
		          items.Append tmpItem
		          inheritedItems.Value(tmpItem) = true
		        end if
		      next
		    loop
		  end
		  
		  // sort the items by their name
		  TTsArraySorter.SortValueArray items, true
		  
		  MembersList.DeleteAllRows
		  for each item in items
		    if (insideView or item.IsPublic) then
		      isContainer = tree.IsContainer (item.Name)
		      if not isContainer then
		        select case item.Type
		        case RBPrjObjEntity.TypeMethod
		          s = "M"
		        case RBPrjObjEntity.TypeEventDef
		          s = "E"
		        case RBPrjObjEntity.TypeEventHandler
		          s = "H"
		        case RBPrjObjEntity.TypeVariable, RBPrjObjEntity.TypeProperty
		          s = "P"
		        case RBPrjObjEntity.TypeConstant
		          s = "C"
		        else
		          s = "?" // it's usually a control, but we can't handle them here yet ###
		        end
		        if isContainer then
		          MembersList.AddFolder s
		        else
		          MembersList.AddRow s
		        end
		        MembersList.CellTag (MembersList.LastIndex, 0) = item
		        s = item.Name
		        if Left(item.Declaration, 1) = "(" then // '### I am not happy with how this works out yet. I need to change the way I store this information!
		          s = s + " " + item.Declaration
		        else
		          s = s + " as " + item.Declaration
		        end
		        MembersList.Cell (MembersList.LastIndex, 1) = s
		        if inheritedItems.HasKey (item) then
		          MembersList.CellItalic (MembersList.LastIndex, 1) = true
		        end
		        'Cell (LastIndex, 1) = item.TypeName
		        'Cell (LastIndex, 2) = item.SuperClass
		        'Cell (LastIndex, 3) = item.Declaration
		        'Cell (LastIndex, 4) = ReplaceAll (item.Content, EndOfLine, " / ")
		        'Cell (LastIndex, 5) = ReplaceAll (item.Notes, EndOfLine, " / ")
		        'if isContainer and (autoExpand or expanded.HasKey (item)) then
		        'Expanded(LastIndex) = true
		        'end
		      end if
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub refreshMembers()
		  if ClassList.ListIndex >= 0 then
		    me.currClassName = ClassList.CellTag (ClassList.ListIndex, 0)
		  end if
		  me.includeInherited = inheritedChk.Value
		  me.insideView = insideViewChk.Value
		  
		  me.showMembers me.theTree, me.currClassName, me.includeInherited, me.insideView
		  
		  me.refreshContentView // this effectively clears the content view
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub refreshContentView()
		  dim item as RBPrjObjEntity
		  dim s as String
		  
		  if MembersList.ListIndex >= 0 then
		    item = MembersList.CellTag (MembersList.ListIndex, 0)
		    s = item.Notes + EndOfLine + item.Content
		  end
		  ContentView.Text = s
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private theTree As RBPrjIdents
	#tag EndProperty

	#tag Property, Flags = &h21
		Private globalsName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private autoCompletionChoices() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private currClassName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private includeInherited As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private insideView As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events FindEdit
	#tag Event
		Sub GetChoices(ByRef choices() as String)
		  choices = self.autoCompletionChoices
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  dim theChoice as String
		  dim i as Integer
		  
		  if me.Text <> "" then
		    theChoice = me.Text
		    for i = 0 to ClassList.ListCount-1
		      if ClassList.List(i) = theChoice then
		        ClassList.ListIndex = i
		        exit
		      end if
		    next
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClassList
	#tag Event
		Sub Change()
		  self.refreshMembers
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events insideViewChk
	#tag Event
		Sub Action()
		  self.refreshMembers
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events inheritedChk
	#tag Event
		Sub Action()
		  self.refreshMembers
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MembersList
	#tag Event
		Sub Change()
		  self.refreshContentView
		End Sub
	#tag EndEvent
#tag EndEvents
