#tag Class
Class RBPrjFileLocator
Implements RBPrjFileLocating
	#tag Method, Flags = &h0
		Function LocateMissingFile(fileName as String, itemName as String) As FolderItem
		  // this one may interact with the user
		  
		  #if TargetHasGUI
		    
		    dim dlg as new OpenDialog
		    dim dir, f as FolderItem
		    
		    if me.forceThatDir then
		      
		      // should have been found already
		      
		    else
		      
		      // try to find it in the given dirs
		      
		      if fileName <> "" then
		        for each dir in me.chosenDirs
		          f = dir.TrueChild (fileName)
		          if f.Exists then
		            return f
		          end
		        next
		      end
		      
		      // let the user choose interactively
		      
		      dlg.Title = "Locate '"+itemName+"'"
		      dlg.PromptText = dlg.Title
		      dlg.InitialDirectory = me.chosenDirs(UBound(me.chosenDirs)) // last used dir
		      
		      f = dlg.ShowModal ()
		      
		      if f <> nil then
		        // remember this dir for the next time
		        if not me.chosenDirs(UBound(me.chosenDirs)).IsSameFolderItem (f.Parent) then
		          me.chosenDirs.Append f.Parent
		        end
		      end
		      
		      return f
		      
		    end
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(defaultDir as FolderItem, forceThatDir as Boolean, externalsFileNameSuffix as String)
		  me.defaultDir = defaultDir
		  me.forceThatDir = forceThatDir
		  me.fileSuffix = externalsFileNameSuffix
		  
		  me.chosenDirs.Append me.defaultDir
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RelocateFile(f as FolderItem, fileName as String, itemName as String) As FolderItem
		  // this one must not interact with the user (and gets called before LocateMissingFile)
		  
		  if me.forceThatDir and me.defaultDir <> nil and fileName <> "" then
		    f = me.defaultDir.TrueChild (fileName)
		  end
		  
		  if f <> nil and me.fileSuffix <> "" then
		    f = RBPrjHelper.AddedBeforeExtension (f, me.fileSuffix)
		  end
		  
		  return f
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private defaultDir As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private forceThatDir As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fileSuffix As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private chosenDirs() As FolderItem
	#tag EndProperty


End Class
#tag EndClass
