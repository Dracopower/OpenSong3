#tag Module
Protected Module Profiler
	#tag Method, Flags = &h0
		Sub BeginProfilerEntry(desc As String)
		  If Not ProfileEnabled Then Return
		  
		  If ProfileFile = Nil Then
		    If FileUtils.CreateFolder(App.AppPreferencesFolderForOpenSong) Then
		      ProfileFile = App.AppPreferencesFolderForOpenSong.Child("profile.txt") 'place in a writeable folder
		    End If
		    If ProfileFile.Exists Then ProfileFile.Delete
		    Try
		      If ProfileFile.IsWriteable Then
		        ProfileStream = TextOutputStream.Create(ProfileFile)
		      End If
		    Catch
		      ProfileFile = Nil
		    End Try
		    If ProfileStream = Nil Then 
		      ProfileFile = Nil
		      ProfileEnabled = False
		      App.DebugWriter.Write "Could not prepare profiler file for writing."
		    End If
		  End If
		  
		  If ProfileFile <> Nil Then
		    desc = ReplaceLineEndings(desc,"\n")
		    ProfileStream.WriteLine MakeSpaces(2*UBound(LastDateStack)) + desc
		    LastDateStack.Append New Date
		    LastEntryStack.Append desc
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableProfiler()
		  ProfileEnabled = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EndProfilerEntry()
		  If Not ProfileEnabled Then Return
		  
		  Dim d As New Date
		  Dim diff As Double
		  
		  If ProfileFile <> Nil Then
		    diff = d.TotalSeconds - LastDateStack(UBound(LastDateStack)).TotalSeconds
		    ProfileStream.WriteLine MakeSpaces(2*(UBound(LastDateStack)-1)) + Str(diff) + " seconds (" + LastEntryStack(UBound(LastEntryStack)) + ")"
		    LastDateStack.Remove UBound(LastDateStack)
		    LastEntryStack.Remove UBound(LastEntryStack)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MakeSpaces(count As Integer) As String
		  Dim i As Integer
		  Dim s As String
		  
		  For i = 1 To count
		    s = s + " "
		  Next i
		  
		  Return s
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private LastDateStack(0) As Date
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastEntryStack(0) As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ProfileEnabled As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ProfileFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ProfileStream As TextOutputStream
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
