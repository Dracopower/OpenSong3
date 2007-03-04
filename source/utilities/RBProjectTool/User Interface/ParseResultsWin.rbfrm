#tag Window
Begin Window ParseResultsWin
   Placement       =   0
   Width           =   511
   Height          =   244
   MinWidth        =   300
   MinHeight       =   120
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   0
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   ""
   Title           =   "Results from ^0"
   Visible         =   "False"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "True"
   LiveResize      =   "True"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   ""
   Begin ListBox ListBox1
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   20
      Top             =   14
      Width           =   471
      Height          =   184
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   "True"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      ColumnCount     =   2
      ColumnWidths    =   80
      HasHeading      =   "True"
      UseFocusRing    =   "False"
      InitialValue    =   "Type	Message"
      HeadingIndex    =   -1
      ScrollbarHorizontal=   "True"
      ScrollBarVertical=   "True"
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      DefaultRowHeight=   -1
      _ScrollWidth    =   -1
      _ScrollOffset   =   0
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      Hierarchical    =   ""
      EnableDrag      =   ""
      EnableDragReorder=   ""
      RequiresSelection=   ""
      SelectionType   =   1
      ColumnsResizable=   "True"
      AutoHideScrollbars=   "True"
      DataSource      =   ""
      DataField       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   0
   End
   Begin PushButton PushButton1
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   411
      Top             =   210
      Width           =   80
      Height          =   20
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   "True"
      LockBottom      =   "True"
      Caption         =   "Close"
      Default         =   "True"
      Cancel          =   ""
      Enabled         =   True
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   1
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
		Sub ShowResults(results as RBPrjParseResults, where as String)
		  dim s as String
		  
		  self.Title = Replace (self.Title, "^0", where)
		  
		  if Ubound(results.errMsgs) >= 0 then
		    for each s in results.errMsgs
		      addToList false, s
		    next
		  end
		  
		  if results.hadEncryptedItems then
		    addToList true, "Project contains encrypted items"
		  end
		  
		  if Ubound(results.warnMsgs) >= 0 then
		    for each s in results.warnMsgs
		      addToList true, s
		    next
		  end
		  
		  if ListBox1.ListCount = 0 then
		    // nothing to show
		    self.Close
		  else
		    self.Show
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub addToList(isWarning as Boolean, msg as String)
		  dim s as String
		  if isWarning then
		    s = "Warning"
		  else
		    s = "ERROR"
		  end
		  ListBox1.AddRow s
		  ListBox1.Cell (ListBox1.LastIndex, 1) = msg
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events PushButton1
	#tag Event
		Sub Action()
		  self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
