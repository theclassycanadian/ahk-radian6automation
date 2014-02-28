Escape::
	Reload
	Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
	MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
	IfMsgBox, Yes, Edit
	return
	
;-------------------------------------------------------------------------
^!n::
IfWinExist Radian6 Dashboard
{
	WinActivate, Radian6 Dashboard
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
		; Wait until the report is completed loading
		Loop
		{
			PixelGetColor, pixCol, 557, 416
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
			PixelGetColor, pixCol, 832, 430
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
	
	; This is for other downloads afterwards
	Loop
	{
		; Check if button color is disabled or enabled
		WinActivate, Radian6 Dashboard
		PixelGetColor, buttonCol, 598, 453
		if (buttonCol = "0x727272")
		{
			Loop
			{
				Send {Click 606, 460}	; Click "Download Items" button
				Sleep 500
				
				; Wait until the report is completed loading
				Loop
				{
					PixelGetColor, pixCol, 557, 416
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
					PixelGetColor, pixCol, 832, 430
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
	MsgBox, Report Download Automation has completed!
}
return

;-------------------------------------------------------------------------
; The following CTRL + ALT + LeftClick returns the cursor position
^!LButton::
	MouseGetPos, xpos, ypos 
	PixelGetColor, buttonColor, xpos, ypos 
	Msgbox, The cursor is at X:%xpos% Y:%ypos% Color:%buttonColor%. 
return

;550, 473
;PixelGetColor, OutputVar, X, Y [, Alt|Slow|RGB] 
;-------------------------------------------------------------------------
^!m::
PixelGetColor, xxyyzz, 557, 416
if (xxyyzz = "0xFFFFFF")
	Msgbox, Color is white
else if (xxyyzz = "0x252525")
	Msgbox, Color is black
else 
	Msgbox, Color is "%xxyyzz%"
return
;-------------------------------------------------------------------------
^!c::
;MouseMove, 767, 545, 50;;;
PixelGetColor, xxyyzz, 557, 416
Msgbox, Color is "%xxyyzz%"
return
;-------------------------------------------------------------------------
^!x::
return