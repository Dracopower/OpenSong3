#tag Window
Begin Window ExportConfigWin
   Placement       =   0
   Width           =   300
   Height          =   267
   MinWidth        =   64
   MinHeight       =   64
   MaxWidth        =   32000
   MaxHeight       =   32000
   Frame           =   0
   Composite       =   "False"
   HasBackColor    =   "False"
   BackColor       =   16777215
   Backdrop        =   ""
   Title           =   "Vault Export Options"
   Visible         =   "True"
   FullScreen      =   "False"
   MenuBarVisible  =   "True"
   CloseButton     =   "True"
   Resizeable      =   "False"
   LiveResize      =   "False"
   MaximizeButton  =   "False"
   MinimizeButton  =   "True"
   BalloonHelp     =   ""
   MacProcID       =   0
   MenuBar         =   ""
   Begin GroupBox GroupBox1
      Index           =   -2147483648
      ControlOrder    =   0
      Left            =   20
      Top             =   14
      Width           =   260
      Height          =   77
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   ""
      TabPanelIndex   =   0
      Caption         =   "Vault Contents"
      Enabled         =   "True"
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   0
      Begin RadioButton contentsUseFoldersRad
         Index           =   -2147483648
         ControlOrder    =   1
         Left            =   31
         Top             =   39
         Width           =   239
         Height          =   20
         LockLeft        =   "True"
         LockTop         =   ""
         LockRight       =   "True"
         LockBottom      =   ""
         TabPanelIndex   =   0
         Caption         =   "Items adopt Folder Hierarchy"
         Enabled         =   "True"
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "System"
         TextSize        =   0
         Bold            =   ""
         Italic          =   ""
         Underline       =   ""
         Value           =   "True"
         InitialParent   =   "GroupBox1"
         BehaviorIndex   =   1
      End
      Begin RadioButton contentsFlatRad
         Index           =   -2147483648
         ControlOrder    =   2
         Left            =   31
         Top             =   63
         Width           =   239
         Height          =   20
         LockLeft        =   "True"
         LockTop         =   ""
         LockRight       =   "True"
         LockBottom      =   ""
         TabPanelIndex   =   0
         Caption         =   "Items appear Flat in Vault"
         Enabled         =   "True"
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "System"
         TextSize        =   0
         Bold            =   ""
         Italic          =   ""
         Underline       =   ""
         Value           =   ""
         InitialParent   =   "GroupBox1"
         BehaviorIndex   =   2
      End
   End
   Begin GroupBox GroupBox2
      Index           =   -2147483648
      ControlOrder    =   3
      Left            =   20
      Top             =   108
      Width           =   260
      Height          =   101
      LockLeft        =   "True"
      LockTop         =   "True"
      LockRight       =   "True"
      LockBottom      =   ""
      TabPanelIndex   =   0
      Caption         =   "Externals Handling"
      Enabled         =   "True"
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   3
      Begin RadioButton externalsSeparateRad
         Index           =   -2147483648
         ControlOrder    =   4
         Left            =   31
         Top             =   132
         Width           =   239
         Height          =   20
         LockLeft        =   "True"
         LockTop         =   ""
         LockRight       =   "True"
         LockBottom      =   ""
         TabPanelIndex   =   0
         Caption         =   "Externals appear next to Originals"
         Enabled         =   "True"
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "System"
         TextSize        =   0
         Bold            =   ""
         Italic          =   ""
         Underline       =   ""
         Value           =   ""
         InitialParent   =   "GroupBox2"
         BehaviorIndex   =   4
      End
      Begin RadioButton externalsPrjItemsInVaultRad
         Index           =   -2147483648
         ControlOrder    =   5
         Left            =   31
         Top             =   156
         Width           =   239
         Height          =   20
         LockLeft        =   "True"
         LockTop         =   ""
         LockRight       =   "True"
         LockBottom      =   ""
         TabPanelIndex   =   0
         Caption         =   "Externals appear in Vault"
         Enabled         =   "True"
         Visible         =   "True"
         HelpTag         =   ""
         AutoDeactivate  =   "True"
         TextFont        =   "System"
         TextSize        =   0
         Bold            =   ""
         Italic          =   ""
         Underline       =   ""
         Value           =   "True"
         InitialParent   =   "GroupBox2"
         BehaviorIndex   =   5
      End
      Begin Checkbox externalsAllItemsInVaultChk
         Index           =   -2147483648
         ControlOrder    =   6
         Left            =   51
         Top             =   181
         Width           =   198
         Height          =   20
         LockLeft        =   ""
         LockTop         =   ""
         LockRight       =   ""
         LockBottom      =   ""
         TabPanelIndex   =   0
         Caption         =   "Include non-project files"
         Enabled         =   "False"
         Visible         =   "True"
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
         InitialParent   =   "GroupBox2"
         BehaviorIndex   =   6
      End
   End
   Begin PushButton okBut
      Index           =   -2147483648
      ControlOrder    =   7
      Left            =   190
      Top             =   227
      Width           =   90
      Height          =   20
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Caption         =   "OK"
      Default         =   "True"
      Cancel          =   ""
      Enabled         =   "True"
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   7
   End
   Begin PushButton cancelBut
      Index           =   -2147483648
      ControlOrder    =   8
      Left            =   88
      Top             =   227
      Width           =   90
      Height          =   20
      LockLeft        =   ""
      LockTop         =   ""
      LockRight       =   "True"
      LockBottom      =   "True"
      TabPanelIndex   =   0
      Caption         =   "Cancel"
      Default         =   ""
      Cancel          =   "True"
      Enabled         =   "True"
      Visible         =   "True"
      HelpTag         =   ""
      AutoDeactivate  =   "True"
      TextFont        =   "System"
      TextSize        =   0
      Bold            =   ""
      Italic          =   ""
      Underline       =   ""
      InitialParent   =   ""
      BehaviorIndex   =   8
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  #if not TargetMacOS
		    // reverse the button order on Windows and Linux
		    dim buts() as RectControl
		    buts.Append cancelBut
		    buts.Append okBut
		    reverseButtonOrder buts
		  #endif
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub reverseButtonOrder(buts() as RectControl)
		  dim ctl as RectControl
		  dim ctlIdx, ofs as Integer
		  ofs = buts(Ubound(buts)).Left + buts(Ubound(buts)).Width
		  for ctlIdx = 0 to Ubound(buts)
		    buts(ctlIdx).Left = ofs - buts(ctlIdx).Width
		    ofs = buts(ctlIdx).Left - 12 // space between buttons
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub finishDlg(accepted as Boolean)
		  if accepted then
		    if contentsFlatRad.Value or contentsUseFoldersRad.Value then
		      theConfig.SetContentsHierarchy (contentsUseFoldersRad.Value)
		    end
		    if externalsSeparateRad.Value or externalsPrjItemsInVaultRad.Value then
		      theConfig.SetExternalsHandling (externalsSeparateRad.Value, externalsAllItemsInVaultChk.Value)
		    end
		  end
		  self.accepted = accepted
		  self.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub updateControls()
		  externalsAllItemsInVaultChk.Enabled = externalsPrjItemsInVaultRad.Value
		  okBut.Enabled = _
		  (externalsSeparateRad.Value or externalsPrjItemsInVaultRad.Value) and _
		  (contentsFlatRad.Value or contentsUseFoldersRad.Value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EnterOptions(config as RBPrjExportConfig) As Boolean
		  dim useFolders, separate, allFiles as Boolean
		  
		  if config.GetContentsHierarchy (useFolders) then
		    if useFolders then
		      contentsUseFoldersRad.Value = true
		    else
		      contentsFlatRad.Value = true
		    end
		  end
		  
		  if config.GetExternalsHandling (separate, allFiles) then
		    if separate then
		      externalsSeparateRad.Value = true
		    else
		      externalsPrjItemsInVaultRad.Value = true
		    end
		    externalsAllItemsInVaultChk.Value = allFiles
		  end
		  
		  updateControls
		  
		  self.theConfig = config
		  self.ShowModal
		  return self.accepted
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private accepted As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private theConfig As RBPrjExportConfig
	#tag EndProperty


#tag EndWindowCode

#tag Events contentsUseFoldersRad
	#tag Event
		Sub Action()
		  updateControls
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events contentsFlatRad
	#tag Event
		Sub Action()
		  updateControls
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events externalsSeparateRad
	#tag Event
		Sub Action()
		  updateControls
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events externalsPrjItemsInVaultRad
	#tag Event
		Sub Action()
		  updateControls
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events externalsAllItemsInVaultChk
	#tag Event
		Sub Action()
		  updateControls
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events okBut
	#tag Event
		Sub Action()
		  finishDlg true
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cancelBut
	#tag Event
		Sub Action()
		  finishDlg false
		End Sub
	#tag EndEvent
#tag EndEvents
