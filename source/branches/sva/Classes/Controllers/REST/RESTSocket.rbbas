#tag Class
Protected Class RESTSocket
Inherits TCPSocket
	#tag Event
		Sub DataAvailable()
		  Dim handler As REST.RESTProtocolHandler = m_protocolHandler(0)
		  Dim response As REST.RESTresponse = Nil
		  Dim authenticated As Boolean = True
		  
		  Try
		    If handler.ParseRequest(self) Then
		      
		      If Not IsNull(handler.AuthenticationKey()) Then
		        If handler.Method() = HttpMethod.Post Then
		          authenticated = Authenticate(handler.AuthenticationKey())
		        End If
		      End If
		      
		      If authenticated Then
		        Dim resource As REST.RESTResource =_
		        m_server.DispatchRequest(handler.Resource())
		        
		        If Not IsNull(resource) Then
		          response = resource.Process(self, handler)
		        Else
		          response = New REST.RESTResponse("The requested resource could not be found", HttpStatus.NotFound)
		        End If
		        
		      Else
		        response = New REST.RESTResponse("The requested method requires authorisation, please supply credentials.", HttpStatus.Unauthorized)
		        response.headers.Value(REST.kHeaderWWWAuthenticate) = "Basic realm=""OpenSong REST"""
		      End If
		      
		    Else
		      response = New REST.RESTResponse("Unable to parse request", HttpStatus.BadRequest)
		    End If
		    
		  Catch e As RuntimeException
		    response = New REST.RESTResponse(e.Message, HttpStatus.InternalServerError)
		  End Try
		  
		  If Not IsNull(response) Then
		    If Me.IsConnected() Then
		      handler.SendData(self, response)
		    End If
		  End If
		  
		  Me.Flush()
		  
		  'Resources that call ProtocolUpgrade() will insert new handlers in a stack (as first item)
		  'Inserted handlers will be removed in such way that the last inserted handler
		  'will be the handler that is used to process next received data
		  While(m_protocolHandler.Ubound()>1)
		    Call m_protocolHandler.Pop()
		  Wend
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Authenticate(key As String) As Boolean
		  Return m_server.CheckAuthentication(key)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Close()
		  'Actively remove all protocalhandlers from the list of handlers (should only contain one handler)
		  'This will trigger the destructor, allowing the handler to do closing activities
		  While(m_protocolHandler.Ubound()>1)
		    Dim hander As REST.RESTProtocolHandler = m_protocolHandler.Pop()
		    hander.Close(self)
		  Wend
		  
		  Super.Close()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  'The constructor without parameters is hidden because it is not allowed to call this constructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(server As REST.RESTServer)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From TCPSocket
		  // Constructor() -- From SocketCore
		  Super.Constructor
		  
		  m_protocolHandler.Append(New REST.RESTHttpHandler())
		  m_server = server
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  If Me.IsConnected() Then
		    Close()
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProtocolUpgrade(protocolHandler As REST.RESTProtocolHandler)
		  If Not IsNull(protocolHandler) Then
		    m_protocolHandler.Insert(0, protocolHandler)
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private m_protocolHandler() As REST.RESTProtocolHandler
	#tag EndProperty

	#tag Property, Flags = &h21
		Private m_server As REST.RESTServer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Address"
			Visible=true
			Group="Behavior"
			Type="String"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InheritedFrom="TCPSocket"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="TCPSocket"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="TCPSocket"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="TCPSocket"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
