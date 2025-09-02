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

While True
	For $i = 0 To 3
		inviteToGuild($initX, $initY + $i * $inc)
	Next
		bottomInviteToGuild($initX, $initY + 4 * $inc)
	clickOn(1870, 441)
WEnd
	
Func inviteToGuild($x, $y)
	if Not isColor($x - 473, $y+5, 0x60564E) Then
		ToolTip("1",0,0)
		clickOn($x, $y)
		ToolTip("2", 0, 0)
		clickOn($x + 48, $y + 233)
	EndIf
EndFunc

Func bottomInviteToGuild($x, $y)
	if Not isColor($x - 473, $y, 0x60564E) Then
		ToolTip("1",0,0)
		clickOn($x, $y)
		ToolTip("2", 0, 0)
		clickOn($x + 48, $y - 100)
	EndIf
EndFunc
