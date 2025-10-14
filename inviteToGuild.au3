#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         LeoYitianLiu

 Script Function:
	automate the process to invete people to guild.

to-do: scroll down

#ce ----------------------------------------------------------------------------`

#include <sgslib.au3>
Sleep(2222)

;default resolution
;$initX = 1838
;$initY = 546
;$inc = 128
$vlvlxD = -473
$vlvlyD = +12
$refreshX = 1870
$refreshY = 441
$inviteXd = 48
$inviteYd = 23

;2880 1800 resolution
$initX = 1073
$initY = 335
$inc = 83
$refreshX = 1087
$refreshY = 276
$vlvlxD = -395
$vlvlyD = +9
$inviteXd = 30
$inviteYd = 148

$delay = 5

While True
	For $i = 0 To 3
		SLeep(2222)
		inviteToGuild($initX, $initY + $i * $inc, $delay, $vlvlxD, $vlvlyD, $inviteXd, $inviteYd)
	Next
	clickOn($refreshX, $refreshY)
WEnd

Func belowV5($x, $y)
	$v0 = 0x60574C
	$v1 = 0x5D6A51
	$v2 = 0x567966
	$v3 = 0x667581
	$v4 = 0x5C5F85
	$var = 55
	If isColor($x, $y, $v0, $var) Or isColor($x, $y, $v1, $var) Or isColor($x, $y, $v2, $var) Or isColor($x, $y, $v3, $var) Or isColor($x, $y, $v4, $var) Then
		return True
	EndIf
	return False
EndFunc

Func inviteToGuild($x, $y, $delay, $vlvlxD, $vlvlyD, $inviteXd, $inviteYd)
	;If Not belowV5($x + $vlvlxD, $y + $vlvlyD) Then
		ToolTip("1",0,0)
		clickOn($x, $y, $delay)
		ToolTip("2", 0, 0)
		;MouseMove($x + $inviteXd, $y + $inviteYd)
		;Sleep(1111)
		;clickOn($x + $inviteXd+145, $y + $inviteYd, $delay)
		clickOn($x + $inviteXd, $y + $inviteYd, $delay)
	;EndIf
EndFunc
