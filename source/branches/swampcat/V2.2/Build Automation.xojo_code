#tag BuildAutomation
			Begin BuildStepList Linux
				Begin CopyFilesBuildStep CopyInitialFilesLinux
					AppliesTo = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vT3BlblNvbmclMjBEZWZhdWx0cy8=
					FolderItem = Li4vT3BlblNvbmclMjBMYW5ndWFnZXMv
					FolderItem = Li4vT3BlblNvbmclMjBTY3JpcHR1cmUv
					FolderItem = Li4vT3BlblNvbmclMjBTZXR0aW5ncy8=
				End
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyInitialFilesOSX
					AppliesTo = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vT3BlblNvbmclMjBEZWZhdWx0cy8=
					FolderItem = Li4vT3BlblNvbmclMjBMYW5ndWFnZXMv
					FolderItem = Li4vT3BlblNvbmclMjBTY3JpcHR1cmUv
					FolderItem = Li4vT3BlblNvbmclMjBTZXR0aW5ncy8=
				End
			End
			Begin BuildStepList Windows
				Begin CopyFilesBuildStep CopyInitialFilesWindows
					AppliesTo = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vT3BlblNvbmclMjBEZWZhdWx0cy8=
					FolderItem = Li4vT3BlblNvbmclMjBMYW5ndWFnZXMv
					FolderItem = Li4vT3BlblNvbmclMjBTY3JpcHR1cmUv
					FolderItem = Li4vT3BlblNvbmclMjBTZXR0aW5ncy8=
				End
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
