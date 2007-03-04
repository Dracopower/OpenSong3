#tag Window
Begin Window ProgressWin
   Placement       =   1
   Width           =   327
   Height          =   67
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   4
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   0
   Title           =   "RB Prj Tool Progress"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "True"
   LiveResize      =   "False"
   MaximizeButton  =   "True"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   0
   Begin PushButton PushButton1
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   244
      Top             =   24
      Width           =   72
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "True"
      LockBottom      =   "False"
      Caption         =   "Stop"
      Default         =   "False"
      Cancel          =   "False"
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
      BehaviorIndex   =   0
   End
   Begin ProgressBar ProgressBar1
      Index           =   -2147483648
      ControlOrder    =   1
      Left            =   11
      Top             =   25
      Width           =   221
      Height          =   20
      LockLeft        =   "False"
      LockTop         =   "False"
      LockRight       =   "False"
      LockBottom      =   "False"
      Visible         =   True
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      Enabled         =   True
      Value           =   0
      Maximum         =   100
      InitialParent   =   ""
      TextFont        =   "System"
      TextSize        =   0
      TabPanelIndex   =   0
      BehaviorIndex   =   1
   End
   Begin ProgressAwareCtrl ProgressAwareCtrl1
      Index           =   -2147483648
      Left            =   5
      Top             =   7
      Height          =   32
      Width           =   32
      TextFont        =   "System"
      TextSize        =   0
      ControlOrder    =   2
      InitialParent   =   ""
      TabPanelIndex   =   0
      BehaviorIndex   =   2
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Function myProgressUpdate(current as Integer, maximum as Integer) As Boolean
		  if Microseconds > nextProgressTime then
		    if me.ProgressBar1.Maximum <> maximum then
		      me.ProgressBar1.Maximum = maximum
		    end
		    if me.ProgressBar1.Value <> current then
		      me.ProgressBar1.Value = current
		    end
		    me.ProgressBar1.Refresh
		    App.DoEvents // allow the user to click on the Stop button
		    nextProgressTime = Microseconds + 1000*50 // update every 50ms
		  end
		  
		  return not me.stopped
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private stopped As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private nextProgressTime As Double
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton1
	#tag Event
		Sub Action()
		  self.stopped = true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ProgressAwareCtrl1
	#tag Event
		Function ProgressUpdate_(current as Integer, maximum as Integer) As Boolean
		  return myProgressUpdate (current, maximum)
		End Function
	#tag EndEvent
#tag EndEvents
