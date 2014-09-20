;----------------------------------------
;- F1 will trigger a script reload -
;----------------------------------------
F1::
	Reload
	Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
	MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
	IfMsgBox, Yes, Edit
	return
;-------------------------------------------------
;- Control+Alt+Shift+Q will trigger QueryBuilder -
;-------------------------------------------------
^!+q::
	queryBuilder()
return

;-------------------------------------------------------
;- Control+Alt+Shift+R will trigger ReportAutoDownload -
;-------------------------------------------------------
^!+r::
	ReportAutoDownload()
return

; Global Variables Declaration
; errorFlag = 0
; End of Global Variables Declaration

setProximity(proximityNumber, commandName, concatCount)
{
	; If the amount of "C" is more than 2, then force the proximity slider to use "Concat2"
	if (concatCount > 2)
		commandName := "Concat2"

	if (proximityNumber == 1 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 967, 512
	else if (proximityNumber == 1 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 967, 615
	else if (proximityNumber == 2 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 975, 512
	else if (proximityNumber == 2 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 975, 615
	else if (proximityNumber == 3 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 984, 512
	else if (proximityNumber == 3 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 984, 615
	else if (proximityNumber == 4 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 992, 512
	else if (proximityNumber == 4 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 992, 615
	else if (proximityNumber == 5 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1001, 512
	else if (proximityNumber == 5 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1001, 615
	else if (proximityNumber == 6 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1010, 512
	else if (proximityNumber == 6 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1010, 615
	else if (proximityNumber == 7 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1019, 512
	else if (proximityNumber == 7 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1019, 615
	else if (proximityNumber == 8 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1027, 512
	else if (proximityNumber == 8 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1027, 615
	else if (proximityNumber == 9 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1036, 512
	else if (proximityNumber == 9 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1036, 615
	else if (proximityNumber == 10 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1044, 512
	else if (proximityNumber == 10 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1044, 615
	else if (proximityNumber == 11 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1052, 512
	else if (proximityNumber == 11 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1052, 615
	else if (proximityNumber == 12 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1061, 512
	else if (proximityNumber == 12 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1061, 615
	else if (proximityNumber == 13 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1069, 512
	else if (proximityNumber == 13 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1069, 615
	else if (proximityNumber == 14 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1078, 512
	else if (proximityNumber == 14 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1078, 615
	else if (proximityNumber == 15 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1087, 512
	else if (proximityNumber == 15 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1087, 615
	else if (proximityNumber == 16 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1095, 512
	else if (proximityNumber == 16 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1095, 615
	else if (proximityNumber == 17 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1104, 512
	else if (proximityNumber == 17 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1104, 615
	else if (proximityNumber == 18 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1113, 512
	else if (proximityNumber == 18 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1113, 615
	else if (proximityNumber == 19 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1120, 512
	else if (proximityNumber == 19 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1120, 615
	else if (proximityNumber == 20 && commandName == "Add")
		MouseClickDrag, Left, 958, 512, 1130, 512
	else if (proximityNumber == 20 && commandName == "Concat")
		MouseClickDrag, Left, 958, 615, 1130, 615
	else if (proximityNumber == 1 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 967, 519
	else if (proximityNumber == 2 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 975, 519
	else if (proximityNumber == 3 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 984, 519
	else if (proximityNumber == 4 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 992, 519
	else if (proximityNumber == 5 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1001, 519
	else if (proximityNumber == 6 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1010, 519
	else if (proximityNumber == 7 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1019, 519
	else if (proximityNumber == 8 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1027, 519
	else if (proximityNumber == 9 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1036, 519
	else if (proximityNumber == 10 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1044, 519
	else if (proximityNumber == 11 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1052, 519
	else if (proximityNumber == 12 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1061, 519
	else if (proximityNumber == 13 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1069, 519
	else if (proximityNumber == 14 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1078, 519
	else if (proximityNumber == 15 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1087, 519
	else if (proximityNumber == 16 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1095, 519
	else if (proximityNumber == 17 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1104, 519
	else if (proximityNumber == 18 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1113, 519
	else if (proximityNumber == 19 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1120, 519
	else if (proximityNumber == 20 && commandName == "Concat2")
		MouseClickDrag, Left, 958, 519, 1130, 519

	if (proximityNumber != 0 && commandName == "Concat")
		Send {Click 1248, 468} 				; Click back to the first keyword
}

queryBuilder()
{
	errorFlag = 0
	IfWinExist Radian6 Dashboard
	{
		WinActivate, Radian6 Dashboard
		PixelGetColor, browserType, 15, 15
		if (browserType != "0x3291E9")
		{
			logStatus("E", "QueryBuilder", "Firefox browser not found")
			return
		}

		initializeScreen := ""
		keywordGroupFirstEntry = 0

		Loop
		{
			; File being parsed
			IfNotExist, query_file\query_file.txt
			{
				logStatus("E", "QueryBuilder", "query_file.txt could not be found")
				errorFlag = 1
				return
			}

		    FileReadLine, line, query_file\query_file.txt, %A_Index%
		    if ErrorLevel
		    {
		    	break
		    }
		    
		    categoryContainer := ""
		    commandContainer := ""
		    keywordStep = 0
		    concatCount = 0
			Loop, parse, line, |
			{
				; Set Category Container
				if (A_Index == "1")
				{
					if (A_LoopField == "KG")
					{
						categoryContainer := "KG"
						if (initializeScreen != "KGI")
						{
							Send {Click 329, 916} 						; Select "Keywords and Keywords Group"
							Send {Click 410, 332}						; Select "Advanced features" radio button
							initializeScreen := "KGI"
						}
					}
					else if (A_LoopField == "K1")
					{
						categoryContainer := "K1"
						keywordStep = 0
						if (initializeScreen != "K1I")
						{
							Send {Click 329, 916} 						; Select "Keywords and Keywords Group"
							Send {Click 410, 332}						; Select "Advanced features" radio button
							initializeScreen := "K1I"
						}
					}
					else if (A_LoopField == "K2")
					{
						categoryContainer := "K2"
						if (initializeScreen != "K2I")
						{
							Send {Click 329, 916} 						; Select "Keywords and Keywords Group"
							Send {Click 410, 332}						; Select "Advanced features" radio button
							initializeScreen := "K2I"
						}
					}
					else if (A_LoopField == "KX")
					{
						categoryContainer := "KX"
						if (initializeScreen != "KXI")
						{
							Send {Click 329, 916} 						; Select "Keywords and Keywords Group"
							Send {Click 410, 332}						; Select "Advanced features" radio button
							initializeScreen := "KXI"
						}
					}
					else
					{
						logStatus("E", "QueryBuilder", "Unknown category found under [Category Container]")
						errorFlag = 1
						return
					}
				}
				else
				{
					; Keyword Group Logic
					if (categoryContainer == "KG")
					{
						if (A_Index == "2")
						{
							; Set Command Container
							if (A_LoopField == "A")
								commandContainer := "Add"
							else if (A_LoopField == "D")
								commandContainer := "Delete"
							else
							{
								logStatus("E", "QueryBuilder", "Unknown command found under [Command Container]")
								errorFlag = 1
								return
							}
						}
						else if (A_Index == "3")
						{
							if (commandContainer == "Add")
							{
								if (keywordGroupFirstEntry == 0)
								{
									Send {Click 394, 835} 				; Click "Edit" button
									keywordGroupFirstEntry = 1
								}
								else
									Send {Click 343, 836} 				; Click "Add" button

								Send {Backspace}						; Delete template name
								Send %A_LoopField%						; Enter the name of the Keyword Group
								Send {Enter} 							; Press "Enter" key

								; Wait until screen is finished loading
								addStatus := ""
								while (addStatus != "0xF7F7F7")
								{
									PixelGetColor, addStatus, 1280, 348
									Sleep 100
								}
							}
							if (commandContainer == "Delete")
							{
								if (A_LoopField == "All")
								{
									deletePending = 1
									while (deletePending = 1)
									{
										;Send {Click 1333, 609} xxx
										;Sleep 100 xxx
										PixelGetColor, deleteStatus, 445, 827
										if (deleteStatus == "0x727272")
										{
											Send {Click 445, 834} 		; Click delete button
											Sleep 200
											Send {Enter} 		 		; Confirm deletion
											Sleep 500
										}
										else
										{
											Send {Click 471, 403}		; Click on the second row of the KG if something exists
											PixelGetColor, deleteStatus2, 471, 403
											if (deleteStatus2 == "0xFFFFFF")
												deletePending = 0
										}
											
									}
								}
								else 
								{
									logStatus("E", "QueryBuilder", "Command parameter for delete is incorrect")
									errorFlag = 1
									return
								}
							}
						}
					}
					; First Keyword Logic
					else if (categoryContainer == "K1")
					{
						if (keywordStep == 0)
						{
							; Set Command Container
							keywordStep = 1
							if (A_LoopField == "A")
								commandContainer := "Add"
							else if (A_LoopField == "D")
								commandContainer := "Delete"
							else if (A_LoopField == "C")
							{
								concatCount++
								commandContainer := "Concat"
							}
							else
							{
								logStatus("E", "QueryBuilder", "Unknown command found under [Command Container]")
								errorFlag = 1
								return
							}
						}
						else if (keywordStep == 1)
						{
							; Set Keyword Container
							keywordStep = 2

							if (commandContainer == "Add")
							{
								Sleep 100
								Send {Click 534, 534} 					; Click "Add" button
								Sleep 125
								Send %A_LoopField%						; Enter the name of the Keyword Group
							}
							else if (commandContainer == "Delete")
							{
								if (A_LoopField == "All")
								{
									deletePending := ""
									while (deletePending != "0xFFFFFF")
									{
										Send {Click 779, 535} 			; Click "Delete" button
										Send {Click 941, 440} 			; Click the topmost row
										PixelGetColor, deletePending, 941, 440
									}
								}
								else 
								{
									logStatus("E", "QueryBuilder", "Command parameter for delete is incorrect")
									errorFlag = 1
									return
								}
							}
							else if (commandContainer == "Concat")
							{
								Sleep 125
								Send {Enter} 							; Press ENTER key
								Sleep 125
								Send %A_LoopField%						; Enter the name of the Keyword Group
							}
						}
						else if (keywordStep == 2)
						{
							; Set Proximity Container
							keywordStep = 0
							if (A_LoopField != "")
							{
								setProximity(A_LoopField, commandContainer, concatCount)
							}
						}
					}
					; Second Keyword Logic
					else if (categoryContainer == "K2")
					{
						if (A_Index == "2")
						{
							; Set Command Container
							if (A_LoopField == "A")
								commandContainer := "Add"
							else if (A_LoopField == "D")
								commandContainer := "Delete"
							else
							{
								logStatus("E", "QueryBuilder", "Unknown command found under [Command Container]")
								errorFlag = 1
								return
							}
						}
						else if (A_Index == "3")
						{
							if (commandContainer == "Add")
							{
								Send {Click 534, 687} 					; Click "Add" button
								Send %A_LoopField%						; Enter the name of the Keyword Group
								Send {Click 1132, 640} 					; Click "Done" button

								; Wait until screen is finished loading
								addStatus := ""
								while (addStatus != "0xF7F7F7")
								{
									PixelGetColor, addStatus, 1280, 348
									Sleep 100
								}
							}
							if (commandContainer == "Delete")
							{
								if (A_LoopField == "All")
								{
									deletePending := ""
									while (deletePending != "0xFFFFFF")
									{
										Send {Click 779, 687} 			; Click "Delete" button
										Send {Click 938, 594} 			; Click the topmost row
										PixelGetColor, deletePending, 938, 594
									}
								}
								else 
								{
									logStatus("E", "QueryBuilder", "Command parameter for delete is incorrect")
									errorFlag = 1
									return
								}
							}
						}
					}
					; Non-Containing Keyword Logic
					else if (categoryContainer == "KX")
					{
						if (A_Index == "2")
						{
							; Set Command Container
							if (A_LoopField == "A")
								commandContainer := "Add"
							else if (A_LoopField == "D")
								commandContainer := "Delete"
							else
							{
								logStatus("E", "QueryBuilder", "Unknown command found under [Command Container]")
								errorFlag = 1
								return
							}
						}
						else if (A_Index == "3")
						{
							if (commandContainer == "Add")
							{
								;MsgBox "Name" is %A_LoopField% on Keyword Group will be added
								Send {Click 535, 841} 					; Click "Add" button
								Send %A_LoopField%						; Enter the name of the Keyword Group
								Send {Click 1135, 639} 					; Click "Done" button

								; Wait until screen is finished loading
								addStatus := ""
								while (addStatus != "0xF7F7F7")
								{
									PixelGetColor, addStatus, 1280, 348
									Sleep 100
								}
							}
							if (commandContainer == "Delete")
							{
								if (A_LoopField == "All")
								{
									deletePending := ""
									while (deletePending != "0xFFFFFF")
									{
										Send {Click 779, 838} 			; Click "Delete" button
										Send {Click 938, 745} 			; Click the topmost row
										PixelGetColor, deletePending, 938, 745
									}
								}
								else 
								{
									logStatus("E", "QueryBuilder", "Command parameter for delete is incorrect")
									errorFlag = 1
									return
								}
							}
						}
					}
				}
			}

			if (categoryContainer == "K1" && (commandContainer == "Add" || commandContainer == "Concat"))
			{
				Send {Click 1279, 787} 									; Click "Done" button
			}
		}
		if (errorFlag == 0)
			logStatus("C", "QueryBuilder", "")
		return
	}
	else
	{
		logStatus("E", "QueryBuilder", "Radian6 Dashbord not found")
		return
	}
}

ReportAutoDownload()
{
	IfWinExist Radian6 Dashboard
	{
		WinActivate, Radian6 Dashboard
		PixelGetColor, browserType, 15, 15
		if (browserType != "0x3291E9")
		{

			logStatus("E", "ReportAutoDownload", "Firefox browser not found")
			return
		}

		Send {Click 673, 350} 	; Click "Gear" button on a widget
		Sleep 500
		Send {Click 592, 423} 	; Click "Export Report"
		Sleep 500
		Send {Click 869, 371} 	; Click "Format" drop down list
		Send {Down 5}			; and selected CSV from the drop down list
		Send {ENTER}
		Sleep 500
		Send {Click 952, 493}	; Click "Download" button
		Sleep 500
		
		; This is the initial download
		Loop
		{
			; Check if the "Download Next 10000" button appears
			Sleep 500
			PixelGetColor, singleDownload, 758, 594

			; Wait until the report is completed loading
			Loop
			{
				PixelGetColor, pixCol, 716, 588
				if (pixCol = "0xFFFFFF")
				{
					Sleep 1000
				}
				else if (pixCol = "0x252525")
				{
					Break
				}
			}
			
			
			if (singleDownload = "0x949494")
				Send {Click 820, 593}	; Click "OK" button
			else if (singleDownload = "0xFFFFFF")
				Send {Click 820, 573}	; Click "OK" button

			Sleep 500
			Send {Click 55, 140}	; Click "Desktop" under "Save As" window
			Sleep 500
			Send {Click 522, 368}	; Click "Save" button
			Sleep 500

			
			; Wait until the report is completely downloaded
			Loop
			{
				PixelGetColor, pixCol, 987, 574
				if (pixCol = "0xF3F3F3")
				{
					Sleep 1000
				}
				else if (pixCol = "0x3E7EFF")
				{
					Break
				}
			}
			Break
		}
		

		; Check if the report contains less than 10,000 records (by checking if button exists)
		PixelGetColor, singleDownload, 758, 594

		if (singleDownload != "0xFFFFFF")
		{
			; This is for other downloads afterwards
			Loop
			{
				; Check if button color is disabled or enabled
				Sleep 5000
				PixelGetColor, buttonCol, 758, 594
				

				if (buttonCol = "0x727272")
				{
					Loop
					{
						Send {Click 765, 602}	; Click "Download Items" button
						Sleep 500
						
						; Wait until the report is completed loading
						Loop
						{
							PixelGetColor, pixCol, 716, 588
							
							if (pixCol = "0xFFFFFF")
							{
								WinActivate, Radian6 Dashboard
								Sleep 1000
							}
							else if (pixCol = "0x252525")
							{
								Break
							}
						}
						
						Send {Click 820, 593}	; Click "OK" button
						Sleep 500
						Send {Click 55, 140}	; Click "Desktop" under "Save As" window
						Sleep 500
						Send {Click 522, 368}	; Click "Save" button
						Sleep 500

						; Wait until the report is completely downloaded
						Loop
						{
							PixelGetColor, pixCol, 987, 574
								
							if (pixCol = "0xF3F3F3")
							{
								Sleep 5000
							}
							else if (pixCol = "0x3E7EFF")
							{
								Break
							}
						}
						Break
					}
				}
				else if (buttonCol = "0x949494")
				{
					Break
				}
			}
		}
		moveFile()
		logStatus("C", "ReportAutoDownload", "")
	}
	else
	{
		logStatus("E", "ReportAutoDownload", "Radian6 Dashbord not found")
		return
	}
}

moveFile()
{
	FileRead, filePathMove, config.txt

	; Check if file exist and is not empty
	if not ErrorLevel and filePathMove != "" 
	{
		Loop, C:\Users\afine\Desktop\*.csv
		{
			FileMove, %A_LoopFileFullPath%, %filePathMove%
		}
		; Free memory assigned to filePathMove
		filePathMove =
	}
}

logStatus(statusType, scriptType, errorMessage)
{
	; Items to be appended to the status.log file are:
	; [statusType]|[scriptType]|[errorMessage|[timestamp]
	; [statusType] - either "C" (completed) or "E" (error)
	; [scriptType] - either "QueryBuilder" or "ReportAutoDownload"
	; [errorMessage] - error message from the calling class/method/keystroke
	; [timestamp] - format is yyyy-mm-dd hh-mm-ss

	FormatTime, TimeString
	FormatTime, TimeStringF, TimeString, yyyy-MM-dd HH:mm:ss
	FileAppend, %statusType%|%scriptType%|%errorMessage%|%TimeStringF%`n, status.log
	if (statusType == "E")
		MsgBox %scriptType% - Error: %errorMessage% - %TimeStringF%
	else if (statusType == "C")
		MsgBox %scriptType% - Completed - %TimeStringF%
}


; ; Debugging code
; ;-------------------------------------------------------------------------
; ; The following CTRL + ALT + LeftClick returns the cursor position and pixel color
; ^!LButton::
; 	MouseGetPos, xpos, ypos 
; 	PixelGetColor, buttonColor, xpos, ypos 
; 	Msgbox, The cursor is at X:%xpos% Y:%ypos% Color:%buttonColor%. 
; return

; ; ;550, 473
; ; ;PixelGetColor, OutputVar, X, Y [, Alt|Slow|RGB] 
; ; ;-------------------------------------------------------------------------
^!m::
; PixelGetColor, xxyyzz, 758, 594
; ; PixelGetColor, xxyyzz2, 758, 594
; ; PixelGetColor, xxyyzz3, 758, 595
; ; PixelGetColor, xxyyzz4, 758, 596
; Msgbox, Color is "%xxyyzz%" at 758, 594
; ; Msgbox, Color is "%xxyyzz2%" at 758, 594
; ; Msgbox, Color is "%xxyyzz3%" at 758, 595
; ; Msgbox, Color is "%xxyyzz4%" at 758, 596
; ; MouseMove, 55, 140
; ; MouseMove, 673, 350
; ; Sleep 1000
; ; MouseMove, 522, 368
return