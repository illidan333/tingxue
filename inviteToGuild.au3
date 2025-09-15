#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         LeoYitianLiu

 Script Function:
	automate the process to invete people to guild.

to-do: scroll down

#ce ----------------------------------------------------------------------------`

#include <sgslib.au3>
Sleep(2222)

$initX = 1838
$initY = 546
$inc = 128
$delay = 5

While True
	For $i = 0 To 3
		inviteToGuild($initX, $initY + $i * $inc, $delay)
	Next
	;bottomInviteToGuild($initX, $initY + 4 * $inc, $delay)
	clickOn(1870, 441)
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

Func inviteToGuild($x, $y, $delay = 5)
	;ToolTip(($x - 473) & ", " & ($y+12),0,0)
	;Sleep(11111)
	If Not belowV5($x - 473, $y+12) Then
		ToolTip("1",0,0)
		clickOn($x, $y, $delay)
		ToolTip("2", 0, 0)
		clickOn($x + 48, $y + 233, $delay)
	EndIf
EndFunc

Func bottomInviteToGuild($x, $y, $delay = 5)
	If Not belowV5($x - 473, $y+12) Then
		ToolTip("1",0,0)
		clickOn($x, $y, $delay)
		ToolTip("2", 0, 0)
		clickOn($x + 48, $y - 70, $delay);no tu
		;clickOn($x + 48, $y - 90, $delay);you tu
	EndIf
EndFunc
 