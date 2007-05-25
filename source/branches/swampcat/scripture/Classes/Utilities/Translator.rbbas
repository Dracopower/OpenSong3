#tag Class
Protected Class Translator
	#tag Method, Flags = &h0
		Sub Constructor(f As FolderItem)
		  If f <> Nil And f.Exists Then
		    File = f
		    Document = SmartML.XDocFromFile(f)
		  End If
		  
		  'Else leave File and Document as Nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNode(path As String) As XmlNode
		  If Document = Nil Then Return Nil
		  If Len(path) = 0 Then Return Nil
		  
		  Dim list As XmlNodeList
		  list = Document.Xql("/language/"+path)
		  
		  If list.Length = 0 Then Return Nil
		  Return list.Item(0)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsLoaded() As Boolean
		  If Document <> Nil And Document.DocumentElement <> Nil Then Return True
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Translate(from As String, ParamArray args As String) As String
		  Return Translate(from, args)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Translate(from As String, args() As String) As String
		  If Document = Nil Then Return ""
		  If Len(from) = 0 Then Return ""
		  
		  Dim list As XmlNodeList
		  Try
		    list = Document.Xql("/language/"+from)
		  Catch xml As XmlException
		    MsgBox "Internal Error with XML: '" + from + "': " + xml.Line + ": " + xml.Node
		  End Try
		  
		  Dim temp As String
		  
		  If list = Nil Or list.Length = 0 Then
		    App.DebugWriter.Write(Chr(9) + "In Translate: Can't find " + from)
		    Return ""
		  End If
		  
		  If list.Item(0) IsA XmlAttribute Then
		    temp = list.Item(0).Value
		  ElseIf list.Item(0).ChildCount = 0 Then
		    App.DebugWriter.Write(Chr(9) + "In Translate: Can't find " + from)
		    Return ""
		  Else
		    temp = list.Item(0).FirstChild.Value
		  End If
		  
		  If Left(temp, 5) = "link(" Then
		    Return Translate(Mid(temp, 6, temp.Len-6), args)
		  End If
		  
		  Dim i As Integer
		  For i = 0 To UBound(args)
		    temp = ReplaceAll(temp, "%" + Str(i+1), args(i))
		  Next i
		  temp = Trim(temp)
		  
		  Return temp
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TranslateMenu(menuTag As String, menu As MenuItem)
		  Dim i As Integer
		  Dim tfrom, tto As String
		  Dim appendDots As Boolean
		  
		  For i = 0 To menu.Count - 1
		    tfrom = Lowercase(Mid(menu.Item(i).Name, InStr(5, menu.Item(i).Name, "_")+1))
		    appendDots = False
		    If Right(menu.Item(i).Text, 3) = "..." Then appendDots = True
		    If tfrom.Len > 1 Then ' skips bag text and separators
		      tto = Translate(menuTag + "/" + tfrom + "/@caption")
		      tto = ReplaceAll(tto, "_", "&")
		      If tto.Len > 0 Then
		        If appendDots Then tto = tto + "..."
		        menu.Item(i).Text = tto
		      End if
		      If menu.Item(i).Count > 0 Then
		        TranslateMenu menuTag + "/" + tfrom, menu.Item(i)
		      End If
		    End If
		  Next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TranslateWindow(win As Window, tag As String, fonts() As FontFace, doCaptions As Boolean = True, doFonts As Boolean = True)
		  ' If you're getting XML exceptions, chances are that the window title is not a valid XML tag. Fix it.
		  ' fonts: 1 = groups; 2 = labels; 3 = text fields; 4 = headings; 5 = buttons; 6 = fixed-width
		  
		  Dim i, j As Integer
		  Dim cont As Control
		  Dim parent As RectControl
		  Dim name, parentName, old As String
		  Dim temp As String
		  
		  Dim staticCont As StaticText
		  Dim groupCont As GroupBox
		  Dim buttonCont As PushButton
		  Dim checkCont As CheckBox
		  Dim radioCont As RadioButton
		  Dim tabCont As TabPanel
		  Dim sbuttonCont As SButton
		  Dim listCont As ListBox
		  Dim editCont As EditField
		  Dim popCont As PopupMenu
		  Dim sldCont As Slider 'EMP 09/05
		  
		  For i = 0 To win.ControlCount - 1
		    cont = win.Control(i)
		    name = ParseName(cont)
		    'name = Lowercase(Left(cont.Name, 4) + Mid(cont.Name, InStr(5, cont.Name, "_")+1)) ' drop out the second word (the second words is used for organizing controls and avoiding duplicate control names.)
		    'If Left(Right(name, 2), 1) = "_" And Val(Right(name, 1)) > 0 Then name = Left(name, name.Len-2) ' truncate the _1, _2, _3, etc. in multiple fields
		    
		    
		    
		    If cont IsA StaticText Then
		      staticCont = StaticText(cont)
		      If doCaptions Then
		        parent = RectControl(staticCont.Parent)
		        If parent <> Nil And parent IsA RectControl And Left(parent.Name, 3) = "nil" Then parent = RectControl(parent.Parent)
		        If parent <> Nil Then
		          parentName = Lowercase(Left(parent.Name, 4) + Mid(parent.Name, InStr(5, parent.Name, "_") + 1))
		          temp = tag + "/" + Mid(parentName, 5) + "/" + Mid(name, 5) + "/@caption"
		          staticCont.Caption = Translate(temp)
		        Else
		          temp = tag + "/" + Mid(name, 5) + "/@caption"
		          staticCont.Caption = Translate(temp)
		        End If
		        If Left(name, 3) = "lbl" Then staticCont.Caption = staticCont.Caption + ":"
		        If Left(name, 3) = "nte" Then staticCont.Caption = "(" + staticCont.Caption + ")"
		      End If
		      If doFonts And Left(name, 3) = "hdr" Then
		        If fonts(4).Name.Len > 0 Then
		          staticCont.TextFont = fonts(4).Name
		          staticCont.TextSize = fonts(4).Size
		          staticCont.Bold = fonts(4).Bold
		          staticCont.Italic = fonts(4).Italic
		          staticCont.Underline = fonts(4).Underline
		        End If
		      ElseIf doFonts Then
		        If fonts(2).Name.Len > 0 Then
		          staticCont.TextFont = fonts(2).Name
		          staticCont.TextSize = fonts(2).Size
		          staticCont.Bold = fonts(2).Bold
		          staticCont.Italic = fonts(2).Italic
		          staticCont.Underline = fonts(2).Underline
		          If Left(name, 3) = "nte" Then staticCont.TextSize = fonts(2).Size - 1
		        End If
		      End If
		      
		      
		      
		    ElseIf cont IsA GroupBox Then
		      groupCont = GroupBox(cont)
		      If doCaptions Then
		        temp = tag + "/" + Mid(name, 5) + "/@caption"
		        groupCont.Caption = Translate(temp)
		      End If
		      If doFonts And fonts(1).Name.Len > 0 Then
		        groupCont.TextFont = fonts(1).Name
		        groupCont.TextSize = fonts(1).Size
		        groupCont.Bold = fonts(1).Bold
		        groupCont.Italic = fonts(1).Italic
		        groupCont.Underline = fonts(1).Underline
		      End If
		      
		      
		      
		    ElseIf cont IsA CheckBox Then
		      checkCont = CheckBox(cont)
		      If doCaptions Then
		        parent = RectControl(checkCont.Parent)
		        If parent <> Nil And parent IsA RectControl And Left(parent.Name, 3) = "nil" Then parent = RectControl(parent.Parent)
		        If parent <> Nil Then
		          parentName = Lowercase(Left(parent.Name, 4) + Mid(parent.Name, InStr(5, parent.Name, "_") + 1))
		          temp = tag + "/" + Mid(parentName, 5) + "/" + Mid(name, 5) + "/@caption"
		          checkCont.Caption = Translate(temp)
		        Else
		          temp = tag + "/" + Mid(name, 5) + "/@caption"
		          checkCont.Caption = Translate(temp)
		        End If
		      End If
		      If doFonts And fonts(2).Name.Len > 0 Then
		        checkCont.TextFont = fonts(2).Name
		        checkCont.TextSize = fonts(2).Size
		        checkCont.Bold = fonts(2).Bold
		        checkCont.Italic = fonts(2).Italic
		        checkCont.Underline = fonts(2).Underline
		      End If
		      
		      
		      
		    ElseIf cont IsA EditField Then
		      editCont = EditField(cont)
		      If doFonts And Left(name, 3) = "edf" Then
		        If fonts(6).Name.Len > 0 Then
		          editCont.TextFont = fonts(6).Name
		          editCont.TextSize = fonts(6).Size
		          editCont.Bold = fonts(6).Bold
		          editCont.Italic = fonts(6).Italic
		          editCont.Underline = fonts(6).Underline
		        End If
		      ElseIf doFonts Then
		        If fonts(3).Name.Len > 0 Then
		          editCont.TextFont = fonts(3).Name
		          editCont.TextSize = fonts(3).Size
		          editCont.Bold = fonts(3).Bold
		          editCont.Italic = fonts(3).Italic
		          editCont.Underline = fonts(3).Underline
		        End If
		      End If
		      
		      
		      
		    ElseIf cont IsA PopupMenu Then
		      popCont = PopupMenu(cont)
		      If doFonts And fonts(3).Name.Len > 0 Then
		        popCont.TextFont = fonts(3).Name
		        popCont.TextSize = fonts(3).Size
		        popCont.Bold = fonts(3).Bold
		        popCont.Italic = fonts(3).Italic
		        popCont.Underline = fonts(3).Underline
		      End If
		      
		      
		    ElseIf cont IsA SButton Then
		      sbuttonCont = SButton(cont)
		      If doCaptions Then
		        old = sbuttonCont.GetLabel
		        If sbuttonCont.Name = "btn_ok" Then
		          sbuttonCont.SetLabel Translate("shared/ok/@caption")
		        ElseIf sbuttonCont.Name = "btn_cancel" Then
		          sbuttonCont.SetLabel Translate("shared/cancel/@caption")
		        ElseIf sbuttonCont.Name = "btn_yes" Then
		          sbuttonCont.SetLabel Translate("shared/yes/@caption")
		        ElseIf sbuttonCont.Name = "btn_no" Then
		          sbuttonCont.SetLabel Translate("shared/no/@caption")
		        ElseIf sbuttonCont.Name = "btn_add" Then
		          sbuttonCont.SetLabel Translate("shared/add/@caption")
		        ElseIf sbuttonCont.Name = "btn_done" Then
		          sbuttonCont.SetLabel Translate("shared/done/@caption")
		        ElseIf sbuttonCont.Name = "btn_browse" Then
		          sbuttonCont.SetLabel Translate("shared/browse/@caption")
		        Else
		          parent = RectControl(sbuttonCont.Parent)
		          If parent <> Nil And parent IsA RectControl And Left(parent.Name, 3) = "nil" Then parent = RectControl(parent.Parent)
		          If parent <> Nil Then
		            parentName = Lowercase(Left(parent.Name, 4) + Mid(parent.Name, InStr(5, parent.Name, "_") + 1))
		            sbuttonCont.SetLabel Translate(tag + "/" + Mid(parentName, 5) + "/" + Mid(name, 5) + "/@caption")
		          Else
		            sbuttonCont.SetLabel Translate(tag + "/" + Mid(name, 5) + "/@caption")
		          End If
		        End If
		        If Right(old, 3) = "..." Then sbuttonCont.SetLabel sbuttonCont.GetLabel + "..."
		      End If
		      If doFonts And fonts(5).Name.Len > 0 Then sbuttonCont.SetFont fonts(5)
		      
		      
		      
		    ElseIf cont IsA RadioButton Then
		      radioCont = RadioButton(cont)
		      If doCaptions Then
		        parent = RectControl(radioCont.Parent)
		        If parent <> Nil And parent IsA RectControl And Left(parent.Name, 3) = "nil" Then parent = RectControl(parent.Parent)
		        If parent <> Nil Then
		          parentName = Lowercase(Left(parent.Name, 4) + Mid(parent.Name, InStr(5, parent.Name, "_") + 1))
		          radioCont.Caption = Translate(tag + "/" + Mid(parentName, 5) + "/" + Mid(name, 5) + "/@caption")
		        ElseIf doCaptions Then
		          radioCont.Caption = Translate(tag + "/" + Mid(name, 5) + "/@caption")
		        End If
		      End If
		      If doFonts And fonts(2).Name.Len > 0 Then
		        radioCont.TextFont = fonts(2).Name
		        radioCont.TextSize = fonts(2).Size
		        radioCont.Bold = fonts(2).Bold
		        radioCont.Italic = fonts(2).Italic
		        radioCont.Underline = fonts(2).Underline
		      End If
		      
		      
		      
		    ElseIf cont IsA ListBox Then
		      listCont = Listbox(cont)
		      If doCaptions Then
		        parent = RectControl(listCont.Parent)
		        If parent <> Nil And parent IsA RectControl And Left(parent.Name, 3) = "nil" Then parent = RectControl(parent.Parent)
		        If listCont.ColumnCount > 1 Then
		          If parent <> Nil Then
		            parentName = Lowercase(Left(parent.Name, 4) + Mid(parent.Name, InStr(5, parent.Name, "_") + 1))
		            For j = 0 To listCont.ColumnCount - 1
		              listCont.Heading(j) = Translate(tag + "/" + Mid(parentName, 5) + "/" + Mid(name, 5) + "/@head" + Str(j+1))
		            Next j
		          Else
		            For j = 0 To listCont.ColumnCount - 1
		              listCont.Heading(j) = Translate(tag + "/" + Mid(name, 5) + "/@head" + Str(j+1))
		            Next j
		          End If
		        End If
		      End If
		      If doFonts And fonts(3).Name.Len > 0 Then
		        listCont.TextFont = fonts(3).Name
		        listCont.TextSize = fonts(3).Size
		        listCont.Bold = fonts(3).Bold
		        listCont.Italic = fonts(3).Italic
		        listCont.Underline = fonts(3).Underline
		      End If
		      
		      
		      
		    ElseIf cont IsA TabPanel Then
		      tabCont = TabPanel(cont)
		      If doCaptions Then
		        For j = 0 To tabCont.PanelCount - 1
		          tabCont.Caption(j) = Translate(tag + "/" + Mid(name, 5)  + "/@head" + Str(j+1))
		        Next j
		      End If
		      If doFonts And fonts(1).Name.Len > 0 Then
		        tabCont.TextFont = fonts(1).Name
		        tabCont.TextSize = fonts(1).Size
		        tabCont.Bold = fonts(1).Bold
		        tabCont.Italic = fonts(1).Italic
		        tabCont.Underline = fonts(1).Underline
		      End If
		      
		      
		      
		    ElseIf cont IsA PushButton Then
		      buttonCont = PushButton(cont)
		      If doCaptions Then
		        old = buttonCont.Caption
		        If buttonCont.Name = "btn_ok" Then
		          buttonCont.Caption = Translate("shared/ok/@caption")
		        ElseIf buttonCont.Name = "btn_cancel" Then
		          buttonCont.Caption = Translate("shared/cancel/@caption")
		        ElseIf buttonCont.Name = "btn_yes" Then
		          buttonCont.Caption = Translate("shared/yes/@caption")
		        ElseIf buttonCont.Name = "btn_no" Then
		          buttonCont.Caption = Translate("shared/no/@caption")
		        ElseIf buttonCont.Name = "btn_add" Then
		          buttonCont.Caption = Translate("shared/add/@caption")
		        ElseIf buttonCont.Name = "btn_done" Then
		          buttonCont.Caption = Translate("shared/done/@caption")
		        ElseIf buttonCont.Name = "btn_browse" Then
		          buttonCont.Caption = Translate("shared/browse/@caption")
		        Else
		          parent = RectControl(buttonCont.Parent)
		          If parent <> Nil And parent IsA RectControl And Left(parent.Name, 3) = "nil" Then parent = RectControl(parent.Parent)
		          If parent <> Nil Then
		            parentName = Lowercase(Left(parent.Name, 4) + Mid(parent.Name, InStr(5, parent.Name, "_") + 1))
		            buttonCont.Caption = Translate(tag + "/" + Mid(parentName, 5) + "/" + Mid(name, 5) + "/@caption")
		          Else
		            buttonCont.Caption = Translate(tag + "/" + Mid(name, 5) + "/@caption")
		          End If
		        End If
		        If Right(old, 3) = "..." Then buttonCont.Caption = buttonCont.Caption + "..."
		      End If
		      If doFonts And fonts(5).Name.Len > 0 Then
		        buttonCont.TextFont = fonts(5).Name
		        buttonCont.TextSize = fonts(5).Size
		        buttonCont.Bold = fonts(5).Bold
		        buttonCont.Italic = fonts(5).Italic
		        buttonCont.Underline = fonts(5).Underline
		      End If
		      
		      //++ EMP 09/05
		    ElseIf Cont IsA Slider Then
		      sldCont = Slider(Cont)
		      If doCaptions Then
		        parent = RectControl(sldCont.Parent)
		        If parent <> Nil And parent IsA RectControl And Left(parent.Name, 3) = "nil" Then parent = RectControl(parent.Parent)
		        If parent <> Nil Then
		          parentName = Lowercase(Left(parent.Name, 4) + Mid(parent.Name, InStr(5, parent.Name, "_") + 1))
		          sldCont.HelpTag = Translate(tag + "/" + Mid(parentName, 5) + "/" + Mid(name, 5) + "/@helptag")
		        Else
		          sldCont.HelpTag = Translate(tag + "/" + Mid(name, 5) + "/@helptag")
		        End If
		        
		      End If
		      //--
		    End If
		    
		    
		    
		  Next i
		  
		  If doCaptions Then
		    If win.MenuBar <> Nil Then TranslateMenu "main_menu", win.MenuBar
		    win.Title = Translate(tag + "/@title")
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ParseName(c As Control) As String
		  Dim name As String
		  Dim parts() As String
		  
		  name = c.Name
		  parts = Split(name, "_")
		  
		  //
		  // First element is control type, should be three characters
		  //
		  // If the last element is numeric, drop it (control "array")
		  //
		  // If there are more than two elements after dropping the numeric,
		  // delete the second one (will be replaced by the parent control name)
		  //
		  If UBound(parts) < 1 Then Return name // Can't do anything with a non-conforming name
		  
		  If parts(0).Len <> 3 Then Return name // Leading element is not in correct format
		  
		  If Val(parts(UBound(parts))) > 0 Then parts.Remove(UBound(parts))
		  
		  If UBound(parts) > 1 Then parts.Remove(1)
		  
		  Return Join(parts, "_")
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected Document As XmlDocument
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected File As FolderItem
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass