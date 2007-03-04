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
      InitialParent   =   ""
      DataField       =   ""
      DataSource      =   ""
      ColumnsResizable=   "True"
      SelectionType   =   1
      RequiresSelection=   ""
      EnableDragReorder=   ""
      EnableDrag      =   ""
      Hierarchical    =   ""
      Underline       =   ""
      Italic          =   ""
      Bold            =   ""
      TextSize        =   0
      TextFont        =   "System"
      DefaultRowHeight=   -1
      GridLinesVertical=   0
      GridLinesHorizontal=   0
      ScrollBarVertical=   "True"
      ScrollbarHorizontal=   "True"
      HeadingIndex    =   -1
      InitialValue    =   "Type	Message"
      UseFocusRing    =   "False"
      HasHeading      =   "True"
      ColumnWidths    =   80
      ColumnCount     =   2
      Enabled         =   "True"
      AutoDeactivate  =   "True"
      HelpTag         =   ""
      Visible         =   "True"
      TabPanelIndex   =   0
      LockBottom      =   "True"
      LockRight       =   "True"
      LockTop         =   "True"
      LockLeft        =   "True"
      Height          =   184
      Width           =   471
      Top             =   14
      Left            =   20
      ControlOrder    =   0
      Index           =   -2147483648
      BehaviorIndex   =   0
   End
   Begin PushButton PushButton1
      InitialParent   =   ""
      Underline       =   ""
      Italic          =   ""
      Bold            =   ""
      TextSize        =   0
      TextFont        =   "System"
      AutoDeactivate  =   "True"
      HelpTag         =   ""
      Visible         =   "True"
      Enabled         =   "True"
      Cancel          =   ""
      Default         =   "True"
      Caption         =   "Close"
      TabPanelIndex   =   0
      LockBottom      =   "True"
      LockRight       =   "True"
      LockTop         =   ""
      LockLeft        =   ""
      Height          =   20
      Width           =   80
      Top             =   210
      Left            =   411
      ControlOrder    =   1
      Index           =   -2147483648
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
