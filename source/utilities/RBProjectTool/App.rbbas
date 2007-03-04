#tag Class
Class App
Inherits Application
	#tag Event
		Sub Open()
		  me.AutoQuit = true // quit the app when the last window closes
		  
		  dim cont as Boolean
		  cont = true
		  
		  #if DebugBuild
		    dim count1, count2 as Integer
		    count1 = Runtime.ObjectCount
		    cont = RunSelfTest()
		    count2 = Runtime.ObjectCount
		    if cont and count2 > count1+5 then
		      MsgBox "there appears to be a leak"
		      DebugDumpObjects "leaks-1.txt"
		      cont = RunSelfTest()
		      DebugDumpObjects "leaks-2.txt"
		    end
		  #endif
		  
		  if cont then
		    MainWin.Show
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function RunSelfTest() As Boolean
		  dim results as RBPrjParseResults
		  dim flist(), dir, f, f1, f2 as FolderItem
		  dim s as String
		  dim ok as Boolean
		  ok = true
		  
		  // if we have a file (or alias) named "input" -- let's process it right away
		  f = GetFolderItem ("input")
		  if f = nil or not f.Exists then
		    return true
		  end
		  
		  ok = RBPrjSupport.WriteProjectToVault (f, results, false, false, false)
		  if ok then
		    ok = RBPrjSupport.WriteProjectToVault (f, results, true, true, true)
		  end
		  RBPrjSupport.ShowParseResults results, "RunSelfTest"
		  
		  return ok
		End Function
	#tag EndMethod


	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"Clear", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant


End Class
#tag EndClass
