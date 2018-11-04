#tag Module
Protected Module SetML
	#tag Method, Flags = &h1
		Protected Sub DrawSlide(g As Graphics, xslide As XmlNode, Style as SlideStyle)
		  //++EMP
		  // September 2005
		  // Copy of the original DrawSlide method, but with the style argument
		  // changed from a XmlNode to a SlideStyle
		  //
		  // Lots of changes here to support the separation of the slide style from the XML
		  // to speed up slide changes.
		  
		  Profiler.BeginProfilerEntry "DrawSlide>Declare 1" ' --------------------------------------------------
		  
		  Dim zoom, bodyZoom As Double
		  Dim background As Picture
		  Dim bodyFont, secondLanguageFont, titleFont, subtitleFont As FontFace
		  Dim gWidth, gHeight As  Integer
		  Dim MainHeight As Integer
		  Dim scale as Double
		  Dim Top, Left As Integer
		  Dim Subtitles() As String
		  Dim i As Integer
		  Dim titleMargins, subtitleMargins, bodyMargins as StyleMarginType
		  Dim bodyTabs() As StyleTabsType
		  
		  // Second language feature -> show second language (every second line) in different style
		  Dim section As SectionMode = SectionMode.Normal
		  Dim separationMark As String
		  If SmartML.GetValueB(xslide, "@bilingual") Then
		    section = SectionMode.Bilingual
		    separationMark = SeparationMarkBilingual
		  Else
		    separationMark = ""
		  End If
		  
		  If Style <> Nil Then 'TODO: What if it's NIL?  Ain't gonna be pretty...
		    bodyFont = Style.BodyFont
		    secondLanguageFont = Style.SecondLanguageFont
		    titleFont = Style.TitleFont
		    subtitleFont = Style.SubtitleFont
		    
		    titleMargins = Style.TitleMargins
		    subtitleMargins = Style.SubtitleMargins
		    bodyMargins = Style.BodyMargins
		    bodyTabs = Style.BodyTabItems()
		  End If
		  
		  gWidth = g.Width
		  gHeight = g.Height
		  
		  zoom = gWidth / 640.0
		  titleFont.Size = titleFont.Size * zoom
		  subtitleFont.Size = subtitleFont.Size * zoom
		  ZoomMargins(titleMargins, zoom)
		  ZoomMargins(subtitleMargins, zoom)
		  ZoomMargins(bodyMargins, zoom)
		  
		  Profiler.EndProfilerEntry
		  Profiler.BeginProfilerEntry "DrawSlide>Background" ' --------------------------------------------------
		  
		  If Style <> Nil Then background = Style.Background().GetImage()
		  
		  // Paint the background color first.  That way the borders from any trimming will
		  // end up in that color.
		  g.ForeColor = Style.BGColor
		  g.FillRect 0, 0, gWidth, gHeight
		  
		  If background <> Nil Then
		    Style.Background().Draw(g)
		  End If
		  
		  If xslide = Nil Then Return
		  
		  Dim slideType As String
		  Dim pic As Picture = Nil
		  Dim resize As String
		  Dim keepaspect As Boolean
		  
		  slideType = SmartML.GetValue(xslide.Parent.Parent, "@type")
		  
		  Dim hasImage As Boolean = (slideType = "image") Or _
		  (slideType = "song" And SmartML.GetValue(xslide.Parent.Parent, "@subtype", False) = "image")
		  
		  If hasImage Then
		    Profiler.BeginProfilerEntry "DrawSlide>ImageSlide-Fullscreen" ' --------------------------------------------------
		    Dim img As StyleImage
		    Dim sImageFile As String
		    dim imagestring As String
		    
		    img = new StyleImage()
		    imagestring = SmartML.GetValue(xslide, "image")
		    sImageFile = SmartML.GetValue(xslide, "filename")
		    If imagestring = "" Then
		      Call img.SetImageFromFileName( sImageFile )
		    Else
		      Call img.SetImageAsString( imagestring )
		    End If
		    
		    pic = img.GetImage()
		    If pic IsA Picture Then
		      resize = SmartML.GetValue(xslide.Parent.Parent, "@resize", False, "default")
		      If resize = "default" Then
		        If ImageDefaults.ResizeToScreenArea() Then
		          resize = "screen"
		        ElseIf ImageDefaults.ResizeToBodyArea() Then
		          resize = "body"
		        End If
		      End If
		      keepaspect = SmartML.GetValueB(xslide.Parent.Parent, "@keep_aspect", False)
		      
		      If resize = "screen" Then
		        If keepaspect Then
		          If pic.Width / g.Width > pic.Height / g.Height Then
		            scale = g.Width / pic.Width
		          Else
		            scale = g.Height / pic.Height
		          End If
		          
		          g.DrawPicture( pic, (g.Width - (pic.Width * scale)) / 2, (g.Height - (pic.Height * scale)) / 2, pic.Width * scale, pic.Height * scale, 0, 0, pic.Width, pic.Height )
		        Else
		          g.DrawPicture( pic, 0, 0, g.Width, g.Height, 0, 0, pic.Width, pic.Height )
		        End If
		      Else
		        'Other variants are drawn after the (sub)titles
		      End If
		    End If
		    Profiler.EndProfilerEntry
		  End If
		  
		  Profiler.EndProfilerEntry
		  
		  Profiler.BeginProfilerEntry "DrawSlide>Declare 2" ' --------------------------------------------------
		  Dim RealBorder, HeaderSize, FooterSize As Integer
		  Dim x, y, z As Integer
		  Dim multiwrap As Boolean
		  Dim UsableWidth As Integer 'Max body width after margins are taken out (EMP 09/05)
		  
		  RealBorder = g.Width / 50
		  HeaderSize = 0
		  FooterSize = 0
		  
		  Profiler.EndProfilerEntry
		  Profiler.BeginProfilerEntry "DrawSlide>Title/Subtitle" ' --------------------------------------------------
		  
		  Dim subtitle As String 'EMP 09/05
		  If Style.SubtitleEnable Then
		    subtitle = SmartML.GetValue(xslide.Parent.Parent, "subtitle")
		    
		    If slideType = "image" Then
		      If SmartML.GetValueB(xslide.Parent.Parent, "@descriptions_in_subtitle", False) = True And SmartML.GetValue(xslide, "description", False) <> "" Then
		        If subtitle <> "" Then
		          subtitle = subtitle + Chr(10)
		        End If
		        subtitle = subtitle + SmartML.GetValue(xslide, "description", False)
		      End If
		    End If
		  End If
		  
		  // Subtitles can now be over one line long.  Split the subtitle string on newlines and iterate
		  Subtitles = Split(subtitle, Chr(10))
		  
		  If Style.TitleVAlign = "top" Then
		    If Style.TitleEnable Then
		      HeaderSize = HeaderSize + DrawSlideTitle(g, xslide, Style, 0, 0, titleFont, RealBorder, HeaderSize, FooterSize, titleMargins)
		    End If
		    'Draw subtitles
		    For i = 0 to UBound(Subtitles)
		      If Style.SubtitleVAlign = "top" Then
		        HeaderSize = HeaderSize + DrawFontString(g, subtitles(i), _
		        0, 0, subtitleFont, RealBorder, HeaderSize, FooterSize, subtitleMargins, g.Width, Style.SubtitleAlign, g.Height, Style.SubtitleVAlign)
		      Else
		        FooterSize = FooterSize + DrawFontString(g, subtitles(Ubound(Subtitles) - i), _
		        0, 0, subtitleFont, RealBorder, HeaderSize, FooterSize, subtitleMargins, g.Width, Style.SubtitleAlign, g.Height, Style.SubtitleVAlign)
		      End If
		    Next
		  Else
		    'Draw Subtitles
		    For i = 0 to UBound(Subtitles)
		      If Style.SubtitleVAlign = "top" Then
		        HeaderSize = HeaderSize + DrawFontString(g, subtitles(i), _
		        0, 0, subtitleFont, RealBorder, HeaderSize, FooterSize, subtitleMargins, g.Width, Style.SubtitleAlign, g.Height, Style.SubtitleVAlign)
		      Else
		        FooterSize = FooterSize + DrawFontString(g, subtitles(Ubound(subtitles) - i), _
		        0, 0, subtitleFont, RealBorder, HeaderSize, FooterSize, subtitleMargins, g.Width, Style.SubtitleAlign, g.Height, Style.SubtitleVAlign)
		      End If
		    Next i
		    If Style.TitleEnable Then
		      FooterSize = FooterSize + DrawSlideTitle(g, xslide, Style, 0, 0, titleFont, RealBorder, HeaderSize, FooterSize, titleMargins)
		    End If
		  End If
		  
		  Profiler.EndProfilerEntry
		  Profiler.BeginProfilerEntry "DrawSlide>Declare 3" ' --------------------------------------------------
		  
		  Dim picBorderTop, picBorderBottom As Integer ' this is used in case of a background pic with resize=body
		  If HeaderSize < bodyMargins.Top Then
		    picBorderTop = Max(HeaderSize + RealBorder - bodyMargins.Top,0)
		    HeaderSize = bodyMargins.Top
		  Else
		    picBorderTop = RealBorder
		  End If
		  If FooterSize < bodyMargins.Bottom Then
		    picBorderBottom = Max(FooterSize + RealBorder + bodyMargins.Bottom,0)
		    FooterSize = bodyMargins.Bottom
		  Else
		    picBorderBottom = RealBorder
		  End If
		  
		  MainHeight = g.Height - HeaderSize - FooterSize - (2 * RealBorder)
		  UsableWidth = g.Width - (2 * RealBorder) - bodyMargins.Left - bodyMargins.Right ' This just comes up again and again in the calcs & won't change (EMP 09/05)
		  
		  Profiler.EndProfilerEntry
		  
		  If hasImage Then
		    'The image was already prepared in the preparation before drawing (sub)title
		    If pic IsA Picture Then
		      
		      If resize = "screen" Then
		        'Image was drawn before the (sub)titles
		      Else
		        
		        Profiler.BeginProfilerEntry "DrawSlide>Background picture (not full screen)" ' --------------------------------------------------
		        
		        If resize = "body" Then
		          Dim picAreaWidth, picAreaHeight As Integer
		          picAreaWidth = UsableWidth + (2 * RealBorder)
		          picAreaHeight = g.Height - HeaderSize - FooterSize - picBorderTop - picBorderBottom
		          'another border for the text inside the background pic
		          MainHeight = picAreaHeight - (2 * RealBorder)
		          HeaderSize = HeaderSize + picBorderTop
		          FooterSize = FooterSize + picBorderBottom
		          
		          If keepaspect Then
		            If pic.Width / picAreaWidth > pic.Height / picAreaHeight Then
		              scale = picAreaWidth / pic.Width
		            Else
		              scale = picAreaHeight / pic.Height
		            End If
		            
		            Select Case Style.BodyAlign
		            Case "right"
		              Left = bodyMargins.Left + picAreaWidth - (pic.Width * scale)
		            Case "center"
		              Left = bodyMargins.Left + ((picAreaWidth - (pic.Width * scale)) / 2)
		            Case Else
		              Left = bodyMargins.Left
		            End Select
		            
		            Select Case Style.BodyVAlign
		            Case "bottom"
		              Top = HeaderSize + picAreaHeight - pic.Height * scale
		            Case "middle"
		              Top = HeaderSize + ((picAreaHeight - (pic.Height * scale)) / 2)
		            Case Else
		              Top = HeaderSize
		            End Select
		            
		            g.DrawPicture( pic, Left, Top, pic.Width * scale, pic.Height * scale, 0, 0, pic.Width, pic.Height )
		          Else
		            g.DrawPicture( pic, bodyMargins.Left, HeaderSize + picBorderTop, picAreaWidth, picAreaHeight, 0, 0, pic.Width, pic.Height )
		          End If
		        Else
		          g.DrawPicture( pic, (g.Width / 2) - (pic.Width / 2), (g.Height / 2) - (pic.Height / 2), pic.Width, pic.Height, 0, 0, pic.Width, pic.Height )
		        End If
		        
		        Profiler.EndProfilerEntry
		        
		      End If
		    End If
		  End If
		  
		  Profiler.BeginProfilerEntry "DrawSlide -> Draw body content"
		  
		  // check for body  ---------------------------------------------------------------------------------
		  Dim drawBody As Boolean = Style.BodyEnable
		  If slideType = "image" Or slideType = "blank" Then drawBody = False
		  If slideType = "song" And _
		    SmartML.GetValueB(xslide.Parent.Parent, "@background_as_text", False, False) And _
		    pic IsA Picture Then
		    drawBody = False
		  End If
		  
		  If drawBody Then
		    
		    Profiler.BeginProfilerEntry "DrawSlide -> prepare body text"  '-------------------------------------
		    
		    Dim s As string
		    Dim line, lines(0) As String
		    Dim MaxLineLen As Integer
		    Dim MaxLenLang As Boolean
		    Dim bodyTextHeight As Integer
		    Dim HWrapPercent, VWrapPercent As Double
		    Dim secondLanguage As Boolean = (section = SectionMode.Bilingual)
		    Dim lineCountPerLanguage(2) As Integer
		    Dim lineHightPerLanguage(2) As Integer
		    Dim lineWidth As Integer
		    Dim maxLineWidthAtZoom1 As Integer
		    Dim f As FontFace
		    
		    If SmartML.GetValueB(xslide, "@emphasize", False) And Style.HighlightChorus Then
		      bodyFont.Italic = Not bodyFont.Italic
		    End If
		    
		    // Take a pass at the slide to see if the lines will fit reasonably as they are.
		    // Hopefully in most cases this will be all we need
		    bodyZoom = 1.0
		    
		    s = SmartML.GetValue(xslide, "body", True).FormatUnixEndOfLine
		    s = StringUtils.Trim(s, StringUtils.WhiteSpaces)
		    
		    ' make sure the first line does not start with a separationMark
		    While s.StartsWith(SeparationMarkBilingual)
		      s = s.Mid(SeparationMarkBilingual.Len + 1)
		    Wend
		    
		    Dim smartWrapped As Boolean
		    Dim wrapAnew As Boolean
		    Dim splitWidth As Integer
		    Dim stopZoomingOut As Boolean
		    Dim kSplitThreshold As Double = 0.85 // maximum zoom without wrapping
		    wrapAnew = True
		    multiwrap = False
		    smartWrapped = False
		    maxLineWidthAtZoom1 = 0
		    stopZoomingOut = Not style.BodyScale
		    If Val(Left(s, 2)) > 0 Then multiwrap = True ' If the slide starts with a number, it is probably a verse; lets force multiwrap
		    If style.BodyScale Then
		      splitWidth = 0
		    Else
		      splitWidth = UsableWidth
		    End If
		    
		    Do
		      secondLanguage = (section = SectionMode.Bilingual)
		      MaxLineLen = 0
		      bodyTextHeight = 0
		      lineCountPerLanguage = Array(0,0,0)
		      If bodyZoom = 1 Then maxLineWidthAtZoom1 = 0
		      
		      If Not secondLanguage Then
		        f = bodyFont
		        f.OntoGraphics(g, zoom * bodyZoom)
		      End If
		      
		      If wrapAnew Then
		        SplitToArray(s, lines, Chr(10))
		        wrapAnew = False
		      End If
		      
		      For i = 1 to UBound(lines)
		        
		        // Second language feature: calculate character length with different font size, change every second line
		        If section = SectionMode.Bilingual Then
		          If Not lines(i).StartsWith(separationMark) Then //only change style if not line break inserted automatically before
		            secondLanguage = Not secondLanguage
		            If secondLanguage Then
		              f = secondLanguageFont
		            Else
		              f = bodyFont
		              lineCountPerLanguage(0) = lineCountPerLanguage(0) + 1 // count transitions from 2nd to 1st language for interline gap
		            End If
		            f.OntoGraphics(g, zoom * bodyZoom)
		          End If
		        End If
		        If secondLanguage Then
		          lineCountPerLanguage(2) = lineCountPerLanguage(2) + 1
		        Else
		          lineCountPerLanguage(1) = lineCountPerLanguage(1) + 1
		        End If
		        
		        If splitWidth > 0 Then
		          Dim oldMultiWrap As Boolean = multiwrap
		          lineWidth = SplitLine(lines, i, splitWidth, multiwrap, smartWrapped, lineCountPerLanguage, MaxLineLen, section = SectionMode.Bilingual, MaxLenLang, g, zoom * bodyZoom, bodyFont, secondLanguageFont, secondLanguage, separationMark)
		          If oldMultiWrap <> multiwrap Then
		            wrapAnew = True
		            Continue Do
		          End If
		        Else
		          If separationMark <> "" And lines(i).StartsWith(separationMark) Then
		            z = separationMark.Len + 1
		          Else
		            z = 1
		          End If
		          lineWidth = FontFaceWidth(g, lines(i).Mid(z), f)
		        End If
		        If lineWidth > MaxLineLen Then
		          MaxLineLen = lineWidth
		          MaxLenLang = secondLanguage
		        End If
		        If bodyZoom = 1 And MaxLineLen > maxLineWidthAtZoom1 Then
		          maxLineWidthAtZoom1 = lineWidth
		        End If
		      Next i
		      
		      // calculate resulting bodyTextHeight  -------------------------------------------------------------
		      bodyTextHeight = 0
		      If section = SectionMode.Bilingual Then
		        lineCountPerLanguage(0) = lineCountPerLanguage(0) - 1
		        lineHightPerLanguage(0) = Ceil(Style.BiLanguageInterline(g, zoom * bodyZoom))
		        bodyTextHeight = lineCountPerLanguage(0) * lineHightPerLanguage(0)
		        If Not secondLanguage Then
		          secondLanguageFont.OntoGraphics(g, zoom * bodyZoom)
		        End If
		        lineHightPerLanguage(2) = FontFaceHeight(g, secondLanguageFont)
		        bodyTextHeight = bodyTextHeight + lineCountPerLanguage(2) * lineHightPerLanguage(2)
		        bodyFont.OntoGraphics(g, zoom * bodyZoom)
		      End If
		      lineHightPerLanguage(1) = FontFaceHeight(g, bodyFont)
		      bodyTextHeight = bodyTextHeight + lineCountPerLanguage(1) * lineHightPerLanguage(1)
		      
		      // Check used width and height and decide what to do next  -----------------------------------------
		      splitWidth = 0
		      If style.BodyScale Then
		        If bodyTextHeight > MainHeight Then
		          If stopZoomingOut Then Exit
		          VWrapPercent = MainHeight / bodyTextHeight
		          If MaxLineLen * bodyZoom * VWrapPercent > UsableWidth Then
		            If MaxLenLang Then i = 2 Else i = 1
		            y = Floor(MaxLineLen * Min(bodyZoom * VWrapPercent, kSplitThreshold) / UsableWidth)
		            lineCountPerLanguage(i) = lineCountPerLanguage(i) + y
		          End If
		          VWrapPercent = bodyZoom
		          bodyZoom = FindVerticalZoomFactor(g, Style, zoom, bodyZoom, lineCountPerLanguage, lineHightPerLanguage, MainHeight, stopZoomingOut)
		          If bodyZoom >= VWrapPercent Then Exit
		          wrapAnew = True
		          splitWidth = UsableWidth
		        ElseIf MaxLineLen > UsableWidth Then
		          If bodyZoom > kSplitThreshold Then
		            HWrapPercent = UsableWidth / MaxLineLen
		            If bodyZoom * HWrapPercent >= kSplitThreshold Then
		              bodyZoom = bodyZoom * HWrapPercent
		              wrapAnew = True
		              splitWidth = UsableWidth
		            ElseIf bodyZoom < 1 And bodyZoom > kSplitThreshold Then
		              bodyZoom = kSplitThreshold
		            Else
		              wrapAnew = bodyZoom <> 1
		              bodyZoom = 1
		              splitWidth = maxLineWidthAtZoom1 - 1
		            End If
		          Else
		            If MaxLenLang Then i = 2 Else i = 1
		            If bodyTextHeight + lineHightPerLanguage(i) > MainHeight Then
		              HWrapPercent = UsableWidth / MaxLineLen
		              bodyZoom = bodyZoom * HWrapPercent
		              wrapAnew = True
		              splitWidth = UsableWidth
		            Else
		              splitWidth = MaxLineLen - 1
		            End If
		          End If
		        Else
		          Exit
		        End If
		      Else
		        Exit
		      End If
		    Loop
		    
		    ' Post-shrink
		    
		    Profiler.EndProfilerEntry
		    Profiler.BeginProfilerEntry "DrawSlide>Draw body text" ' --------------------------------------------------
		    
		    bodyFont.Size = bodyFont.Size * zoom * bodyZoom
		    secondLanguageFont.Size = secondLanguageFont.Size * zoom * bodyZoom
		    ZoomTabs(bodyTabs, zoom * bodyZoom)
		    
		    Lines.Remove(0)
		    
		    x = bodyMargins.Left + RealBorder
		    y = HeaderSize + RealBorder
		    If section = SectionMode.Bilingual Then
		      If bodyTextHeight > MainHeight Then bodyTextHeight = MainHeight  // confine the drawn text to the body area
		      If Style.BodyVAlign = "middle" Then
		        y = y + (MainHeight - bodyTextHeight) / 2
		      ElseIf Style.BodyVAlign = "bottom" Then
		        y = y + MainHeight - bodyTextHeight
		      End If
		      lineHightPerLanguage(0) = Ceil(Style.BiLanguageInterline(g, zoom * bodyZoom))
		      
		      secondLanguage = True
		      For i = 0 To UBound(lines)
		        line = lines(i)
		        
		        If Not line.StartsWith(separationMark) Then
		          secondLanguage = Not secondLanguage
		          If secondLanguage Then
		            f = secondLanguageFont
		          Else
		            f = bodyFont
		            If i > 0 Then
		              y = y + lineHightPerLanguage(0)
		            End If
		          End If
		        Else
		          line = Mid(line, separationMark.Len + 1)
		        End If
		        y = y + DrawFontString(g, line, x, y, f, UsableWidth, Style.BodyAlign, MainHeight - y + RealBorder, "top", bodyTabs, insertafterbreak)
		        
		        If y >= gHeight - FooterSize Then Exit  // don't draw another line if in footer area
		      Next
		    Else
		      line = Join(Lines, Chr(10))
		      Call DrawFontString(g, line, x, y, bodyFont, UsableWidth, Style.BodyAlign, MainHeight, Style.BodyVAlign, bodyTabs, insertafterbreak)
		    End If
		    
		    Profiler.EndProfilerEntry
		    
		  End If
		  
		  Profiler.EndProfilerEntry
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DrawSlideTitle(g As Graphics, xslide As XmlNode, Style as SlideStyle, x As Integer, y As Integer, f As FontFace, RealBorder as Integer, HeaderSize as Integer, FooterSize as Integer, titleMargins as StyleMarginType) As Integer
		  Dim presentation, slideId, currentVerse, verse as String
		  Dim parts() As String
		  Dim title As String
		  Dim titleHeight, drawHeight As Integer
		  Dim p As Integer
		  Dim main, curr, rest As String
		  Dim fontHeight, titleWidth, mainWidth, currWidth, restWidth As Integer
		  Dim fVerse, fCurrVerse As FontFace
		  Dim align As String
		  Dim currPart, section As String
		  Dim ChorusNr, PresentationIndex, currChorusNr As Integer
		  
		  titleHeight = 0
		  title = SmartML.GetValue(xslide.Parent.Parent, "title")
		  title = ReplaceAll(title, "|", Chr(10))
		  
		  If Style.TitleIncludeVerse Then
		    presentation = SmartML.GetValue(xslide.Parent.Parent, "presentation")
		    slideId = Trim(SmartML.GetValue(xslide, "@id"))
		    ChorusNr = (SmartML.GetValueN (xslide, "@ChorusNr"))
		    PresentationIndex = (SmartML.GetValueN (xslide, "@PresentationIndex"))
		    
		    If presentation <> "" And slideId <> "" Then
		      If Left(slideId, 1) = "V" Then
		        currentVerse = Trim(Mid(slideId, 2))
		      End If
		      
		      parts = presentation.split(" ")
		      currChorusNr = 0
		      For p = 0 To UBound(parts)
		        currPart = parts(p)
		        section = Left(currPart, 1)
		        If Len(currPart) > 1 Then
		          verse = Trim(Mid(currPart, 2))
		        Else
		          verse = ""
		        End If
		        
		        If section = "V" Then
		          If p + 1 = PresentationIndex Then
		            If main <> "" And curr = "" Then main = main + ", "
		            curr = currentVerse
		          Else
		            If verse <> "" Then
		              If curr = "" Then
		                If main <> "" Then
		                  main = main + ", "
		                End If
		                main = main + verse
		              Else
		                rest = rest + ", " + verse
		              End If
		            End If
		          End If
		        ElseIf section = "P" Then
		          If currPart = slideId Then
		            If main <> "" And curr = "" Then main = main + ", "
		            curr = App.T.Translate("songml/prechorus_abbreviation/@caption")
		          End If
		        ElseIf section = "C" Then
		          currChorusNr = currChorusNr + 1
		          If currPart = slideId Then
		            If ChorusNr = Val(verse) And currChorusNr < ChorusNr Then
		              'Fix verse display for presentation order C1 V1 C2 V2 C2 V3 C2
		              currChorusNr = ChorusNr
		            End If
		            If ChorusNr = currChorusNr Then
		              If main <> "" And curr = "" Then main = main + ", "
		              curr = App.T.Translate("songml/chorus_abbreviation/@caption")
		            End If
		          End If
		        ElseIf section = "B" Then
		          If currPart = slideId Then
		            If main <> "" And curr = "" Then main = main + ", "
		            curr = App.T.Translate("songml/bridge_abbreviation/@caption")
		          End If
		        ElseIf section = "T" Then
		          If currPart = slideId Then
		            If main <> "" And curr = "" Then main = main + ", "
		            curr = App.T.Translate("songml/tag_abbreviation/@caption")
		          End If
		        End If
		        
		      Next
		      If curr = "" And currChorusNr > 0 Then
		        'probaly never true, for emergency only, add to the end
		        If main <> "" And curr = "" Then main = main + ", "
		        curr = App.T.Translate("songml/chorus_abbreviation/@caption")
		      End If
		      
		      fVerse = f.Clone()
		      fVerse.Bold = False
		      fCurrVerse = f.Clone()
		      If main <> "" Or rest <> "" Then
		        fCurrVerse.Bold = True
		      End If
		      
		      If main <> "" Or curr <> "" Or rest <> "" Then
		        main = ": " + main
		      End If
		      title = Trim(title)
		      
		      f.OntoGraphics(g)
		      fontHeight = FontFaceHeight(g, f) + FontFaceAscent(g, f)
		      titleHeight = CountFields(title, Chr(10)) * fontHeight
		      titleWidth = FontFaceWidth(g, title, f)
		      fVerse.OntoGraphics(g)
		      If rest <> "" Then restWidth = FontFaceWidth(g, rest, fVerse)
		      If main <> "" Then mainWidth = FontFaceWidth(g, main, fVerse)
		      fCurrVerse.OntoGraphics(g)
		      If curr <> "" Then currWidth = FontFaceWidth(g, curr, fCurrVerse)
		      
		      align = Style.TitleAlign
		      If align = "center" Then
		        x = x + (g.Width / 2) - ((titleWidth + mainWidth + currWidth + restWidth) / 2)
		        align = "left"
		      End If
		      
		      If align = "left" Then
		        drawHeight = DrawFontString(g, title, _
		        x, y, f, RealBorder, HeaderSize, FooterSize, titleMargins, g.Width, align, g.Height, Style.TitleVAlign)
		        If drawHeight > titleHeight Then titleHeight = drawHeight
		        titleMargins.Left = titleMargins.Left + titleWidth
		        
		        'Adjust the starting y position to make sure the verses have the same vertical alignment as a multiline title
		        If Style.TitleVAlign = "top" Then
		          y = y + (titleHeight - fontHeight)
		        End If
		        
		        If main <> "" Then
		          drawHeight = DrawFontString(g, main, _
		          x+titleWidth, y, fVerse, RealBorder, HeaderSize, FooterSize, titleMargins, g.Width, align, g.Height, Style.TitleVAlign)
		          If drawHeight > titleHeight Then titleHeight = drawHeight
		          titleMargins.Left = titleMargins.Left + mainWidth
		        End If
		        If curr <> "" Then
		          drawHeight = DrawFontString(g, curr, _
		          x+titleWidth+mainWidth, y, fCurrVerse, RealBorder, HeaderSize, FooterSize, titleMargins, g.Width, align, g.Height, Style.TitleVAlign)
		          If drawHeight > titleHeight Then titleHeight = drawHeight
		          titleMargins.Left = titleMargins.Left + currWidth
		        End If
		        If rest <> "" Then
		          drawHeight = DrawFontString(g, rest, _
		          x+titleWidth+mainWidth+currWidth, y, fVerse, RealBorder, HeaderSize, FooterSize, titleMargins, g.Width, align, g.Height, Style.TitleVAlign)
		          If drawHeight > titleHeight Then titleHeight = drawHeight
		        End If
		        
		      ElseIf align = "right" Then
		        'Adjust the value for calculating the starting y position to make sure the verses have the same vertical alignment as a multiline title
		        If Style.TitleVAlign = "bottom" Then
		          fontHeight = titleHeight
		        End If
		        
		        If rest <> "" Then
		          drawHeight = DrawFontString(g, rest, _
		          x, y + (titleHeight - fontHeight), fVerse, RealBorder, HeaderSize, FooterSize, titleMargins, g.Width, align, g.Height, Style.TitleVAlign)
		          If drawHeight > titleHeight Then titleHeight = drawHeight
		          titleMargins.Right = titleMargins.Right+restWidth
		        End If
		        If curr <> "" Then
		          drawHeight = DrawFontString(g, curr, _
		          x, y + (titleHeight - fontHeight), fCurrVerse, RealBorder, HeaderSize, FooterSize, titleMargins, g.Width-restWidth, align, g.Height, Style.TitleVAlign)
		          If drawHeight > titleHeight Then titleHeight = drawHeight
		          titleMargins.Right = titleMargins.Right+currWidth
		        End If
		        If main <> "" Then
		          drawHeight = DrawFontString(g, main, _
		          x, y + (titleHeight - fontHeight), fVerse, RealBorder, HeaderSize, FooterSize, titleMargins, g.Width-restWidth-currWidth, align, g.Height, Style.TitleVAlign)
		          If drawHeight > titleHeight Then titleHeight = drawHeight
		          titleMargins.Right = titleMargins.Right+mainWidth
		        End If
		        drawHeight = DrawFontString(g, title, _
		        x, y + (titleHeight - fontHeight), f, RealBorder, HeaderSize, FooterSize, titleMargins, g.Width-restWidth-currWidth-mainWidth, align, g.Height, Style.TitleVAlign)
		        If drawHeight > titleHeight Then titleHeight = drawHeight
		      End If
		      
		    Else
		      titleHeight = DrawFontString(g, title, _
		      x, y, f, RealBorder, HeaderSize, FooterSize, titleMargins, g.Width, Style.TitleAlign, g.Height, Style.TitleVAlign)
		    End If
		    
		  Else
		    titleHeight = DrawFontString(g, title, _
		    x, y, f, RealBorder, HeaderSize, FooterSize, titleMargins, g.Width, Style.TitleAlign, g.Height, Style.TitleVAlign)
		  End If
		  
		  Return titleHeight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DrawTitle(g As Graphics, xslide As XmlNode, xstyle As XmlNode, x As Integer, y As Integer, width As Integer, align As String, valign As String) As Integer
		  Dim i, oldY, newX As Integer
		  Dim zoom As Double
		  Dim title, subtitle As String
		  Dim titleStyle, subtitleStyle As FontFace
		  
		  titleStyle = SmartML.GetValueF(xstyle, "title")
		  subtitleStyle = SmartML.GetValueF(xstyle, "subtitle")
		  
		  oldY = y
		  zoom = g.Width / 640
		  
		  title = SmartML.GetValue(xslide.Parent.Parent, "title")
		  subtitle = SmartML.GetValue(xslide.Parent.Parent, "subtitle")
		  
		  For i = 1 To 2
		    ' ----- SUBTITLE -----
		    If (i = 1 And valign = "bottom") Or (i = 2 And valign = "top") Then
		      subtitleStyle.Size = subtitleStyle.Size * zoom
		      subtitleStyle.OntoGraphics g
		      
		      If align = "right" Then
		        newX = x + width - FontFaceWidth(g, subtitle, subtitleStyle)
		      ElseIf align = "center" Then
		        newX = x + (width - FontFaceWidth(g, subtitle, subtitleStyle)) / 2
		      Else
		        newX = x
		      End If
		      If valign = "top" Then y = y + FontFaceHeight(g, subtitleStyle)
		      
		      Call DrawFontString(g, subtitle, newX, y, subtitleStyle, 0, "left", 0, "bottom")
		      
		      If valign = "bottom" Then y = y - FontFaceHeight(g, subtitleStyle)
		      If valign = "top" Then Return y - oldY
		    End If
		    
		    ' ----- TITLE -----
		    If (i = 1 And valign = "top") Or (i = 2 And valign = "bottom") Then
		      titleStyle.Size = titleStyle.Size * zoom
		      titleStyle.OntoGraphics g
		      
		      If valign = "top" Then y = y + FontFaceAscent(g, titleStyle)
		      
		      If align = "right" Then
		        newX = x + width - FontFaceWidth(g, title, titleStyle)
		      ElseIf align = "center" Then
		        newX = x + (width - FontFaceWidth(g, title, titleStyle)) / 2
		      Else
		        newX = x
		      End If
		      
		      Call DrawFontString(g, title, newX, y, titleStyle, 0, "left", 0, "bottom")
		      
		      If valign = "bottom" Then
		        y = y - FontFaceAscent(g, titleStyle)
		        Return oldY - y
		      End If
		    End If
		    
		  Next i
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FindVerticalZoomFactor(g As Graphics, Style As SlideStyle, zoom As Double, bodyZoom As Double, lineCountPerLanguage() As Integer, lineHightPerLanguage() As Integer, MainHeight As Integer, ByRef minimumReached As Boolean) As Double
		  ' return bodyZoom scaled such that vertical space is well used but not overused
		  ' non-linear scaling of border and shadow and gc.TextHeight messes things up a little ...
		  
		  Dim gc As Graphics
		  Dim bodyHeight1, bodyHeight2 As Integer
		  Dim lh2(3) As Integer
		  Dim bilingual As Boolean
		  Dim oldFactor, factor As Double
		  Dim bodyFont, l2Font As FontFace
		  Dim maxTextHeight As Integer
		  Dim kScrew As Double = 100
		  
		  gc = g.Clip(0,0,g.Width,g.Height)
		  
		  bilingual = lineCountPerLanguage(2) > 0
		  minimumReached = False
		  
		  If Not bilingual Then
		    bodyFont = Style.BodyFont
		    maxTextHeight = Floor(MainHeight / lineCountPerLanguage(1))
		    bodyHeight1 = lineCountPerLanguage(1) * lineHightPerLanguage(1)
		    factor = zoom * bodyZoom * MainHeight / bodyHeight1
		    oldFactor = zoom * bodyZoom
		    bodyFont.OntoGraphics(gc, oldFactor)
		    If gc.TextHeight <= 4 Or gc.TextSize <=1 Then
		      minimumReached = True
		      Return (bodyZoom)
		    End If
		    Do
		      bodyFont.OntoGraphics(gc, factor)
		      lh2(1) = FontFaceHeight(gc, bodyFont)
		      If lh2(1) <= maxTextHeight Then Exit
		      If gc.TextHeight <= 4 Or gc.TextSize <=1 Then
		        minimumReached = True
		        Exit
		      End If
		      factor = factor * (1 - 1 / (lh2(1) * kScrew))
		    Loop
		    If lh2(1) < maxTextHeight Then
		      Do
		        oldFactor = factor
		        factor = factor * (1 + 1 / (maxTextHeight * kScrew))
		        bodyFont.OntoGraphics(gc, factor)
		        lh2(1) = FontFaceHeight(gc, bodyFont)
		        If lh2(1) > maxTextHeight Then
		          factor = oldFactor
		          Exit
		        End
		      Loop
		    End If
		  Else
		    bodyHeight1 = _
		    lineCountPerLanguage(0) * lineHightPerLanguage(0) + _
		    lineCountPerLanguage(1) * lineHightPerLanguage(1) + _
		    lineCountPerLanguage(2) * lineHightPerLanguage(2)
		    factor = zoom * bodyZoom * MainHeight / bodyHeight1
		    bodyFont = Style.BodyFont
		    l2Font = Style.SecondLanguageFont
		    oldFactor = zoom * bodyZoom
		    bodyFont.OntoGraphics(gc, oldFactor)
		    If gc.TextHeight <= 4 Or gc.TextSize <=1 Then
		      minimumReached = True
		      Return (bodyZoom)
		    End If
		    l2Font.OntoGraphics(gc, oldFactor)
		    If gc.TextHeight <= 4 Or gc.TextSize <=1 Then
		      minimumReached = True
		      Return (bodyZoom)
		    End If
		    Do
		      bodyFont.OntoGraphics(gc, factor)
		      If gc.TextHeight <= 4 Or gc.TextSize <=1 Then minimumReached = True
		      lh2(1) = FontFaceHeight(gc, bodyFont)
		      l2Font.OntoGraphics(gc, factor)
		      lh2(2) = FontFaceHeight(gc, l2Font)
		      lh2(0) = Ceil(Style.BiLanguageInterline(gc, factor))
		      bodyHeight2 = _
		      lineCountPerLanguage(0) * lh2(0) + _
		      lineCountPerLanguage(1) * lh2(1) + _
		      lineCountPerLanguage(2) * lh2(2)
		      If bodyHeight2 <= MainHeight Then Exit
		      If gc.TextHeight <= 4 Or gc.TextSize <=1 Then minimumReached = True
		      If minimumReached Then Exit
		      factor = factor * (1 - 1 / (Max(lh2(0),lh2(1),lh2(2)) * kScrew))
		    Loop
		    If bodyHeight2 < MainHeight Then
		      Do
		        oldFactor = factor
		        factor = factor * (1 + 1 / (Max(lh2(0),lh2(1),lh2(2)) * kScrew))
		        bodyFont.OntoGraphics(gc, factor)
		        lh2(1) = FontFaceHeight(gc, bodyFont)
		        l2Font.OntoGraphics(gc, factor)
		        lh2(2) = FontFaceHeight(gc, l2Font)
		        lh2(0) = Ceil(Style.BiLanguageInterline(gc, factor))
		        bodyHeight2 = _
		        lineCountPerLanguage(0) * lh2(0) + _
		        lineCountPerLanguage(1) * lh2(1) + _
		        lineCountPerLanguage(2) * lh2(2)
		        If bodyHeight2 > MainHeight Then
		          factor = oldFactor
		          Exit
		        End If
		      Loop
		    End If
		  End If
		  Return (factor / zoom)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function FloorMinMax(d As Double, min As Integer, max As Integer) As Integer
		  ' Rounds, but if it ends up 0, it jumps to 1.
		  Dim i As Integer
		  i = Floor(d)
		  If i > max Then Return max
		  If i < min Then Return min
		  Return i
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetNextSlide(xSlide As XmlNode) As XmlNode
		  Dim slide_group As XmlNode
		  
		  If xslide.NextSibling <> Nil Then
		    Return xslide.NextSibling
		  Else
		    slide_group = xSlide.Parent.Parent.NextSibling
		    Do Until slide_group = Nil Or SmartML.GetValue(slide_group, "@type") <> "style"
		      slide_group = slide_group.NextSibling
		    Loop
		    
		    If slide_group <> Nil Then
		      Return SmartML.GetNode(slide_group, "slides", True).FirstChild
		    Else
		      Return Nil
		    End If
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetPrevSlide(xSlide As XmlNode) As XmlNode
		  Dim slide_group As XmlNode
		  
		  If xslide.PreviousSibling <> Nil Then
		    Return xslide.PreviousSibling
		  Else
		    slide_group = xSlide.Parent.Parent.PreviousSibling
		    Do Until slide_group = Nil Or SmartML.GetValue(slide_group, "@type") <> "style"
		      slide_group = slide_group.PreviousSibling
		    Loop
		    If slide_group <> Nil Then
		      Return SmartML.GetNode(slide_group, "slides", True).LastChild
		    Else
		      Return Nil
		    End If
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSetItem(xSet As XmlDocument, index As Integer) As XmlNode
		  Dim slide_groups As XmlNode
		  Dim i As Integer
		  i = 1
		  
		  slide_groups = SmartML.GetNode(xSet.DocumentElement, "slide_groups", True)
		  If slide_groups = Nil Then Return Nil
		  
		  If index < 1 Or index > slide_groups.ChildCount Then Return Nil
		  Return slide_groups.Child(index-1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSlide(xSet As XmlDocument, index As Integer) As XmlNode
		  ' TODO: Use SlideCounts to speed up
		  If index = 0 Then Return Nil
		  index = index - 1
		  
		  Dim count As Integer
		  Dim slide_group, slides As XmlNode
		  
		  slide_group = SmartML.GetNode(xSet.DocumentElement, "slide_groups", True).FirstChild
		  
		  While count <= index
		    If slide_group = Nil Then
		      Return Nil ' Ran out of slides
		    ElseIf SmartML.GetValue(slide_group, "@type") <> "style" Then
		      slides = SmartML.GetNode(slide_group, "slides", True)
		      If count + slides.ChildCount > index Then
		        index = index - count
		        count = index + 1 ' flags the loop to stop
		      Else
		        count = count + slides.ChildCount
		        slide_group  = slide_group.NextSibling
		      End If
		    Else ' this group is a style group; skip it
		      slide_group  = slide_group.NextSibling
		    End If
		  Wend
		  
		  Return slides.Child(index)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSlideGroupCaption(SlideGroup As XmlNode) As String
		  Dim set_item_name As String = SmartML.GetValue(slideGroup, "@name", True)
		  Dim set_item_type As String = SmartML.GetValue(slideGroup, "@type", True)
		  If set_item_type = "style" Then
		    // style has no user provided name, thus the name needs to be translated; additionally the action goes to the type
		    If SmartML.GetValue(slideGroup, "@action", True) = "revert" Then
		      set_item_name = App.T.Translate("sets_mode/items/revert")
		      set_item_type = "revert"
		    Else
		      set_item_name = App.T.Translate("sets_mode/items/style")
		    End If
		  End If
		  
		  Dim set_item_caption As String = App.T.Translate("sets_mode/items/"+set_item_type+"/@caption")
		  If set_item_type = "" or set_item_caption = "" Then // unknown slide type
		    App.DebugWriter.Write "MainWindow.ActionInSetAddSlide.Change: Unknown slide type '" + set_item_type + "/@caption" + "'", 1
		    set_item_caption = "*ERROR*"
		  End If
		  Return set_item_name + " " + set_item_caption
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSlideStyle(xSlide As XmlNode) As SlideStyle
		  Dim styleNode As XmlNode
		  Dim styleIndex As String
		  
		  styleNode = SmartML.GetNode(xSlide.Parent.Parent, "style")
		  styleIndex = SmartML.GetValue(styleNode, "@index", False)
		  If styleIndex = "" Or PresentWindow.GetStyle(styleIndex) = Nil Then
		    styleIndex = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "default_style/@index", False, "default_style")
		    If xSlide <> Nil Then
		      If xSlide.Parent <> Nil Then
		        If SmartML.GetValue(xSlide.Parent.Parent, "@type", False) = "scripture" Then
		          styleIndex = SmartML.GetValue(App.MyPresentSettings.DocumentElement, "scripture_style/@index", False, "scripture_style")
		        End If
		      End If
		    End If
		  End If
		  
		  Return PresentWindow.GetStyle(styleIndex)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetSlideTransition(xSlide As XmlNode) As SlideTransitionEnum
		  Dim transition As SlideTransitionEnum
		  Dim slide_group As XmlNode
		  Dim t As Integer
		  
		  transition = SlideTransitionEnum.ApplicationDefault
		  
		  If xslide <> Nil Then
		    slide_group = xSlide.Parent.Parent
		    If slide_group <> Nil Then
		      t = SmartML.GetValueN(slide_group, "@transition", False)
		      Select Case t
		      Case 1
		        transition = SlideTransitionEnum.UseTransition
		      Case 2
		        transition = SlideTransitionEnum.NoTransition
		      Case Else
		        transition = SlideTransitionEnum.ApplicationDefault
		      End Select
		    End If
		  End If
		  
		  Return transition
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSong(slidegroup As XmlNode, Songs As FolderDB, ByRef songFolder As String) As XmlDocument
		  Dim songDoc As XmlDocument
		  Dim songF as FolderItem
		  
		  If slidegroup <> Nil Then
		    
		    songFolder = SmartML.GetValue(slidegroup, "@path", False)
		    If Songfolder = "" Then
		      songfolder = "/"
		    End If
		    
		    songf = Songs.GetFile(songFolder + SmartML.GetValue(slidegroup, "@name", False))
		    If songf = Nil Or (Not songf.Exists) Then
		      songDoc = Nil
		    Else
		      songDoc = SmartML.XDocFromFile(songf)
		      If songDoc = Nil Then
		        InputBox.Message App.T.Translate("errors/bad_format", SmartML.GetValue(slidegroup, "@name", False))
		      Else
		        ' Can be used by an external renderer.
		        Dim pathnode as XmlNode = songDoc.FirstChild.AppendChild(songDoc.CreateElement("path"))
		        pathnode.AppendChild(songDoc.CreateTextNode(songfolder))
		      End If
		    End If
		  Else
		    songFolder = ""
		  End If
		  
		  Return songDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InsertAfterBreak() As String
		  'gp start
		  if slidetype = "song" then
		    if  SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "style/@insping_after_break", True, True) then // there's no GUI for this option
		      Return "   "
		    end if
		  end if
		  return ""
		  'gp end
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsExternal(slide As XmlNode) As Boolean
		  Dim slideType As String
		  Dim external As Boolean = False
		  
		  Try
		    If slide <> Nil Then
		      If Not IsNull(slide) Then
		        
		        'Handle both the situation that the slide XmlNode is passend (PresentWindow.XCurrentSlide) and that the slideGroup XmlNode is passed (PresentWindow.PreviousSlide)
		        If slide.Name = "slide" Then
		          slideType = SmartML.GetValue(slide.Parent.Parent, "@type", False)
		        ElseIf slide.Name = "slide_group" Then
		          slideType = SmartML.GetValue(slide, "@type", False)
		        End If
		        
		        If slideType = "external" Then
		          external = True
		        End If
		      End If
		    End If
		  Catch e as NilObjectException
		    '... no idea why this Nil and Null checks have no effect
		  End Try
		  
		  Return external
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SetItemCount(xSet As XmlDocument) As Integer
		  Dim slide_groups As XmlNode
		  
		  slide_groups = SmartML.GetNode(xSet.DocumentElement, "slide_groups", True)
		  
		  If slide_groups = Nil Then Return 0
		  Return slide_groups.ChildCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SmartWrap(ByRef str As String) As String
		  // Truncates the passed string at the wrap point and returns the second line of the string
		  
		  Dim temp, c As String
		  Dim i, center, quarter, breakpoint As Integer
		  Const Punctuation = ",.;:?!)""" 'EMP 09/05
		  
		  center = Len(str)/2
		  quarter = Len(str)/4
		  breakpoint = 0
		  
		  For i = quarter To 3*quarter
		    c = Mid(str, i, 1)
		    If c = "," Or c = ":" Or c = ";" Or c = "." Or c = "?" Or c = "!" Or c = ")" Then
		      If Abs(i - center) <= Abs(breakpoint - center) Then breakpoint = i Else Exit
		    End If
		  Next i
		  If breakpoint = 0 Then
		    For i = 1 To Len(str)
		      c = Mid(str, i, 1)
		      If c = "," Or c = ":" Or c = ";" Or c = "." Or c = "?" Or c = "!" Or c = ")" Or c = " " Then
		        If Abs(i - center) <= Abs(breakpoint - center) Then breakpoint = i Else Exit
		      End If
		    Next i
		    If breakpoint = 0 Then Return ""
		  End If
		  
		  If breakpoint = 0 Then breakpoint = center
		  
		  //++EMP 09/05
		  'Take care of a corner case with this....since the loop counts upward, it can miss
		  ' the case where two or more punctuation marks immediately follow each other
		  ' example is something like: Here I am ("Here I am"),
		  ' this should wrap after the comma, not the quote mark
		  '
		  c = mid(str, breakpoint + 1, 1)
		  While InStr(Punctuation, c) > 0
		    breakpoint = breakpoint + 1
		    c = mid(str, breakpoint + 1, 1)
		  Wend
		  //--EMP 09/05
		  
		  temp = Trim(Mid(str, breakpoint+1))
		  str = Trim(Left(str, breakpoint))
		  Return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SongStylePreferred(SlideGroup As XmlNode) As Boolean
		  //++
		  // February 2007: Songs can either take on the style defined by the song
		  // or by a style change.  The behavior prior to BL14 was that the song style
		  // prevailed always.  In BL15, introduce a "hidden" control for this, allowing a style
		  // change to control the song's appearance (which seems to me to be the
		  // "path of least astonishment" after spending hours to chase down what I thought
		  // was a bug -- EMP)
		  //--
		  //++
		  // Determine if a song-specific style should be used even
		  // if a style change is active.
		  //
		  // Coded this way to allow for this to be handled on a song-by-song basis
		  // in  the future.
		  //--
		  Return SmartML.GetValueB(App.MyPresentSettings.DocumentElement, "song_style_preferred", True, True)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SplitLine(ByRef lines() As String, ByRef i As Integer, splitWidth As Integer, ByRef multiwrap As Boolean, ByRef smartWrapped As Boolean, ByRef lineCountPerLanguage() As Integer, ByRef MaxLineLen As Integer, isBilingual As Boolean, ByRef MaxLenLang As Boolean, g As Graphics, zoom As Double, bodyFont As FontFace, secondLanguageFont As FontFace, ByRef secondLanguage As Boolean, separationMark As String) As Integer
		  // this is basically part of DrawSlide, outsourced here to hopefully get a better overview.
		  // On the other hand, there are a lot of parameters, most of which are even ByRef, because they may change
		  //
		  // The line lines(i) is split to fit within the width of splitWidth
		  // Parameters should support for splitting the corresponding line of the alternate language in sync with line i. This is not done yet.
		  
		  Dim lineLen As Integer
		  Dim x, y, z As Integer
		  Dim Line As String
		  Dim d, d2 As String
		  Dim lineSepMark As String
		  Dim f As FontFace
		  
		  If secondLanguage Then
		    f = secondLanguageFont
		  Else
		    f = bodyFont
		  End If
		  
		  line = lines(i)
		  If separationMark <> "" And line.StartsWith(separationMark) Then
		    line = line.Mid(separationMark.Len + 1)
		    lineSepMark = separationMark
		  Else
		    lineSepMark = ""
		  End If
		  
		  lineLen = FontFaceWidth(g, line, f)
		  If (lineLen >  splitWidth * 2) Or (multiwrap And lineLen >  splitWidth) Then
		    ' this line is more than twice as long: multiple-wrapping
		    ' or this line is too long and this slide has already been multiwrapped
		    If Not multiwrap Then
		      multiwrap = True
		      If smartWrapped Then Return lineLen ' restart, don't change mid through
		    End If
		    ' find what fits on the line
		    ' estimate the number of characters that fit on the line (y) and choose a character count (x) to start the search with
		    y = line.Len() / (lineLen /  splitWidth) / 0.85
		    x = y \ 5
		    If x = 0 Then x = 1
		    lineLen = FontFaceWidth(g, line.Left(y), f)
		    If lineLen <  splitWidth Then
		      Do
		        y = y + x
		      Loop Until FontFaceWidth(g, line.Left(y), f) >=  splitWidth
		      x = -x \ 2
		      z = -1
		    ElseIf lineLen >  splitWidth Then
		      Do
		        y = y - x
		      Loop Until FontFaceWidth(g, line.Left(y), f) <=  splitWidth
		      x = x \ 2
		      z = 1
		    Else
		      x = 0
		    End If
		    ' binary search for limit of what fits on the line, y: len, x: increment, z: direction (+/-)
		    While x > 0
		      If z > 0 Then
		        y = y + x
		      Else
		        y = y - x
		      End If
		      lineLen = FontFaceWidth(g, line.Left(y), f)
		      If lineLen >  splitWidth Then
		        z = -1
		      ElseIf lineLen <  splitWidth Then
		        z = 1
		      Else
		        x = 0
		      End If
		      x = x \ 2
		    Wend
		    If lineLen >  splitWidth Then y = y - 1
		    
		    ' back off until we fit...
		    For z = y DownTo 2
		      d = Mid(line, z, 1)
		      If d = " " and z <> 2 Then ' wrap it here
		        y = z
		        Exit
		      End If
		      //++
		      // For CJK characters, it is perfectly ok to wrap before or after
		      // a CJK character (Unicode codepoint between 4E00 and 9FBF)
		      // (Additional fix for 1530629 added after section outside "For z" loop was inserted)
		      //--
		      d2 = Mid(line, z-1, 1)
		      If (d.Asc >= &h4E00 and d.Asc <= &h9FBF) or _
		        (d2.Asc >= &h4E00 and d2.Asc <= &h9FBF) Then
		        y = z
		        Exit
		      End If
		    Next z
		    
		    // If we did not alter y in the back off loop above, we just wrap at the end of splitWidth
		    lines(i) = lineSepMark + line.Left(y)
		    lines.Insert(i+1, separationMark + insertafterbreak + Mid(line, y+1))
		    z = lineSepMark.Len + 1
		    lineLen = FontFaceWidth(g, lines(i).Mid(z), f)
		  ElseIf lineLen >  splitWidth Then ' this line is less than twice as long, but still too long: smart wrap it (EMP 09/05)
		    lines.Insert i+1, separationMark + insertafterbreak + SmartWrap(line) // CHANGE-PJ: Second language feature - add separationMark in case of a bilingual section to identify auto linebreak by algorithm
		    lineLen = FontFaceWidth(g, line, f)
		    If lineLen > MaxLineLen Then
		      MaxLineLen = lineLen
		      MaxLenLang = secondLanguage
		    End If
		    lines(i) = lineSepMark + line
		    z = separationMark.Len + 1
		    lineLen = FontFaceWidth(g, lines(i+1).Mid(z), f)
		    i = i + 1 ' skip the extra
		    smartWrapped = True
		    If secondLanguage Then
		      lineCountPerLanguage(2) = lineCountPerLanguage(2) + 1
		    Else
		      lineCountPerLanguage(1) = lineCountPerLanguage(1) + 1
		    End If
		  End If
		  
		  If lineLen > MaxLineLen Then
		    MaxLineLen = lineLen
		    MaxLenLang = secondLanguage
		  End If
		  
		  Return lineLen
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SplitToArray(str As String, ByRef arr() As String, char As String)
		  Dim st, x As Integer
		  ReDim arr(0)
		  
		  str = str + char
		  
		  st = 1
		  x = InStr(st, str, char)
		  While x >= st
		    arr.Append StringUtils.RTrim(Mid(str, st, x-st), StringUtils.WhiteSpaces)
		    
		    st = x + Len(char)
		    x = InStr(st, str, char)
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ZoomMargins(ByRef margins As StyleMarginType, zoom as Double)
		  margins.Left = margins.Left * zoom
		  margins.Right = margins.Right * zoom
		  margins.Top = margins.Top * zoom
		  margins.Bottom = margins.Bottom * zoom
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ZoomTabs(ByRef tabs() As StyleTabsType, zoom as Double)
		  Dim i As Integer
		  
		  For i = 0 to UBound(tabs)
		    tabs(i).Position = tabs(i).Position * zoom
		  Next i
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Return(&u200C) 'ZERO WIDTH NON-JOINER
			End Get
		#tag EndGetter
		Protected SeparationMarkBilingual As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		#tag Note
			// only used in InsertAfterBreak, but never set!
		#tag EndNote
		SlideType As String
	#tag EndProperty


	#tag Enum, Name = SectionMode, Type = Integer, Flags = &h0
		Normal
		Bilingual
	#tag EndEnum


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
			Name="SlideType"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
