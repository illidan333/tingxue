#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

;this function provides the ability to pause the script
Global $g_bPaused = False
HotKeySet("{ESC}", "TogglePause")
Func TogglePause()
    $g_bPaused = Not $g_bPaused
    While $g_bPaused
        Sleep(100)
        ToolTip('Script is "Paused"', 900, 0)
    WEnd
    ToolTip("",0,0)
EndFunc   ;==>TogglePause