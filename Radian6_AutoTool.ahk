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

setProximity(proximityNumber, commandName)
{
	if (proximityNumber == 1 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 811, 385
	else if (proximityNumber == 1 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 811, 488
	else if (proximityNumber == 2 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 822, 385
	else if (proximityNumber == 2 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 822, 488
	else if (proximityNumber == 3 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 829, 385
	else if (proximityNumber == 3 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 829, 488
	else if (proximityNumber == 4 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 835, 385
	else if (proximityNumber == 4 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 835, 488
	else if (proximityNumber == 5 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 844, 385
	else if (proximityNumber == 5 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 844, 488
	else if (proximityNumber == 6 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 853, 385
	else if (proximityNumber == 6 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 853, 488
	else if (proximityNumber == 7 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 862, 385
	else if (proximityNumber == 7 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 862, 488
	else if (proximityNumber == 8 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 870, 385
	else if (proximityNumber == 8 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 870, 488
	else if (proximityNumber == 9 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 879, 385
	else if (proximityNumber == 9 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 879, 488
	else if (proximityNumber == 10 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 888, 385
	else if (proximityNumber == 10 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 888, 488
	else if (proximityNumber == 11 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 895, 385
	else if (proximityNumber == 11 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 895, 488
	else if (proximityNumber == 12 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 905, 385
	else if (proximityNumber == 12 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 905, 488
	else if (proximityNumber == 13 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 913, 385
	else if (proximityNumber == 13 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 913, 488
	else if (proximityNumber == 14 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 922, 385
	else if (proximityNumber == 14 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 922, 488
	else if (proximityNumber == 15 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 930, 385
	else if (proximityNumber == 15 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 930, 488
	else if (proximityNumber == 16 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 938, 385
	else if (proximityNumber == 16 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 938, 488
	else if (proximityNumber == 17 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 947, 385
	else if (proximityNumber == 17 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 947, 488
	else if (proximityNumber == 18 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 956, 385
	else if (proximityNumber == 18 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 956, 488
	else if (proximityNumber == 19 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 963, 385
	else if (proximityNumber == 19 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 963, 488
	else if (proximityNumber == 20 && commandName == "Add")
		MouseClickDrag, Left, 801, 385, 974, 385
	else if (proximityNumber == 20 && commandName == "Concat")
		MouseClickDrag, Left, 801, 488, 974, 488

	if (proximityNumber != 0 && commandName == "Concat")
		Send {Click 950, 341} 				; Click back to the first keyword
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
							Send {Click 345, 637} 						; Select "Keywords and Keywords Group"
							Send {Click 1333, 609} 						; Lower the scroll bar on the right of the screen
							initializeScreen := "KGI"
						}
					}
					else if (A_LoopField == "K1")
					{
						categoryContainer := "K1"
						keywordStep = 0
						if (initializeScreen != "K1I")
						{
							Send {Click 345, 637} 						; Select "Keywords and Keywords Group"
							Send {Click 1333, 308} 						; Bring up the scroll bar on the right of the screen
							initializeScreen := "K1I"
						}
					}
					else if (A_LoopField == "K2")
					{
						categoryContainer := "K2"
						if (initializeScreen != "K2I")
						{
							Send {Click 345, 637} 						; Select "Keywords and Keywords Group"
							Send {Click 1333, 609} 						; Lower the scroll bar on the right of the screen
							initializeScreen := "K2I"
						}
					}
					else if (A_LoopField == "KX")
					{
						categoryContainer := "KX"
						if (initializeScreen != "KXI")
						{
							Send {Click 345, 637} 						; Select "Keywords and Keywords Group"
							Send {Click 1333, 609} 						; Lower the scroll bar on the right of the screen
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
									Send {Click 394, 617} 				; Click "Edit" button
									keywordGroupFirstEntry = 1
								}
								else
									Send {Click 343, 617} 				; Click "Add" button

								Send {Backspace}						; Delete template name
								Send %A_LoopField%						; Enter the name of the Keyword Group
								Send {Click 968, 501} 					; Click "Done" button

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
										Send {Click 1333, 609}
										Sleep 50
										PixelGetColor, deleteStatus, 439, 608
										if (deleteStatus == "0x727272")
										{
											Send {Click 445, 615} 		; Click delete button
											Sleep 200
											Send {Click 796, 486} 		; Confirm deletion
											Sleep 500
										}
										else
										{
											Send {Click 1333, 308}		; Move scroll bar up
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
								commandContainer := "Concat"
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
								Sleep 50
								Send {Click 534, 534} 					; Click "Add" button
								Sleep 50
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
								Sleep 50
								Send {Enter} 							; Press ENTER key
								Sleep 50
								Send %A_LoopField%						; Enter the name of the Keyword Group
							}
						}
						else if (keywordStep == 2)
						{
							; Set Proximity Container
							keywordStep = 0
							if (A_LoopField != "")
							{
								setProximity(A_LoopField, commandContainer)
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
								Send {Click 535, 469} 					; Click "Add" button
								Send %A_LoopField%						; Enter the name of the Keyword Group
								Send {Click 979, 500} 					; Click "Done" button

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
										Send {Click 779, 468} 			; Click "Delete" button
										Send {Click 941, 373} 			; Click the topmost row
										PixelGetColor, deletePending, 940, 374
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
								Send {Click 535, 621} 					; Click "Add" button
								Send %A_LoopField%						; Enter the name of the Keyword Group
								Send {Click 979, 500} 					; Click "Done" button

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
										Send {Click 779, 620} 			; Click "Delete" button
										Send {Click 941, 526} 			; Click the topmost row
										PixelGetColor, deletePending, 940, 526
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
				Send {Click 1120, 660} 									; Click "Done" button
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
	; Get X value of the screen resolution
	SysGet, screenRes, 0, 1
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
		Send {Click 712, 230} 	; Click "Format" drop down list
		Send {Down 5}			; and selected CSV from the drop down list
		Send {ENTER}
		Sleep 500
		Send {Click 798, 349} ; Click "Download" button
		Sleep 500
		
		; This is the initial download
		Loop
		{
			Sleep 500
			if (screenRes == 1366)
				PixelGetColor, singleDownload, 583, 453
			else if (screenRes == 1364)
				PixelGetColor, singleDownload, 583, 452

			; Wait until the report is completed loading
			Loop
			{
				if (screenRes == 1366)
					PixelGetColor, pixCol, 557, 416
				else if (screenRes == 1364)
					PixelGetColor, pixCol, 557, 415
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
				Send {Click 660, 453}	; Click "OK" button
			else if (singleDownload = "0xFFFFFF")
				Send {Click 660, 433}	; Click "OK" button

			Sleep 500
			Send {Click 55, 140}	; Click "Desktop" under "Save As" window
			Sleep 500
			Send {Click 522, 368}	; Click "Save" button
			Sleep 500

			
			; Wait until the report is completely downloaded
			Loop
			{
				if (screenRes == 1366)
					PixelGetColor, pixCol, 832, 430
				else if (screenRes == 1364)
					PixelGetColor, pixCol, 832, 429
				if (pixCol = "0xEFEFEF")
				{
					Sleep 1000
				}
				else if (pixCol = "0x4D88FF")
				{
					Break
				}
			}
			Break
		}
		

		if (screenRes == 1366)
			PixelGetColor, singleDownload, 583, 453
		else if (screenRes == 1364)
			PixelGetColor, singleDownload, 583, 452
		if (singleDownload != "0xFFFFFF")
		{
			; This is for other downloads afterwards
			Loop
			{
				; Check if button color is disabled or enabled
				WinActivate, Radian6 Dashboard

				if (screenRes == 1366)
					PixelGetColor, buttonCol, 598, 453
				else if (screenRes == 1364)
					PixelGetColor, buttonCol, 598, 452
				
				if (buttonCol = "0x727272")
				{
					Loop
					{
						Send {Click 606, 460}	; Click "Download Items" button
						Sleep 500
						
						; Wait until the report is completed loading
						Loop
						{
							if (screenRes == 1366)
								PixelGetColor, pixCol, 557, 416
							else if (screenRes == 1364)
								PixelGetColor, pixCol, 557, 415
							
							if (pixCol = "0xFFFFFF")
							{
								Sleep 1000
							}
							else if (pixCol = "0x252525")
							{
								Break
							}
						}
						
						Send {Click 660, 453}	; Click "OK" button
						Sleep 500
						Send {Click 55, 140}	; Click "Desktop" under "Save As" window
						Sleep 500
						Send {Click 522, 368}	; Click "Save" button
						Sleep 500

						; Wait until the report is completely downloaded
						Loop
						{
							if (screenRes == 1366)
								PixelGetColor, pixCol, 832, 430
							else if (screenRes == 1364)
								PixelGetColor, pixCol, 832, 429
								
							if (pixCol = "0xF3F3F3")
							{
								Sleep 1000
							}
							else if (pixCol = "0x4D88FF")
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
		logStatus("C", "ReportAutoDownload", "")
	}
	else
	{
		logStatus("E", "ReportAutoDownload", "Radian6 Dashbord not found")
		return
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

; ;550, 473
; ;PixelGetColor, OutputVar, X, Y [, Alt|Slow|RGB] 
; ;-------------------------------------------------------------------------
; ^!m::
; PixelGetColor, xxyyzz, 832, 430
; PixelGetColor, xxyyzz2, 832, 429
; Msgbox, Color is "%xxyyzz%" at 832, 430
; Msgbox, Color is "%xxyyzz2%" at 832, 429