#tag Class
Class RBPrjParseResults
	#tag Method, Flags = &h0
		Sub FetchMessages(ByRef warnings() as String, ByRef errors() as String)
		  warnings = me.warnMsgs
		  errors = me.errMsgs
		  redim me.warnMsgs(-1)
		  redim me.errMsgs(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(progressUpdate as ProgressAware)
		  me.Constructor()
		  me.progressUpdate = progressUpdate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HadProblems() As Boolean
		  return Ubound(me.errMsgs) >= 0 or Ubound(me.warnMsgs) >= 0 or me.hadEncryptedItems
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HadFatalErrors() As Boolean
		  return Ubound(me.errMsgs) >= 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add(source as RBPrjParseResults)
		  dim s as String
		  for each s in source.errMsgs
		    me.errMsgs.Append s
		  next
		  for each s in source.warnMsgs
		    me.warnMsgs.Append s
		  next
		  if source.hadEncryptedItems then
		    me.hadEncryptedItems = true
		  end
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		hadEncryptedItems As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		warnMsgs() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		errMsgs() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		progressUpdate As ProgressAware
	#tag EndProperty


End Class
#tag EndClass
