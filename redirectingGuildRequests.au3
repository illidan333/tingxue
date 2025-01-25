#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         LeoYitianLiu

 Script Function:
	automate the process to redirect guild requests.

#ce ----------------------------------------------------------------------------`

#include-once
;#include <color.au3>
Func isColor($positionX, $positionY, $color, $variation = 5)
   $range = 1;was 5
   $cords = PixelSearch($positionX - $range, $positionY - $range, $positionX + $range, $positionY + $range, $color, $variation);when a certain color shows up
   If Not @error Then
	  return True
   EndIf
   return False
EndFunc
#include <pauseScript.au3>
;#include <clickWithAxis.au3>
Func tryToClick($x, $y, $color)
   If isColor($x, $y, $color) Then
	  clickOn($x, $y)
	  MouseMove($x+50, $y+50)
	  If isColor($x, $y, $color) Then
		 clickOn($x, $y)
		 MouseMove($x+100, $y+100)
		 If isColor($x, $y, $color) Then
			clickOn($x, $y)
		 EndIf
		 Return True
	  Else
		 Return True
	  EndIf
   EndIf
   Return False
EndFunc

;this function clicks on a pixel and the wait for 1 sec
Func clickOn($x, $y)
   MouseClick("left", $x, $y)
   Sleep ( 1000 );wait 1 sec to load the UI
EndFunc

Func clk($x,$y,$msg="",$clr=0)
   ToolTip($msg,0,0)
   If $clr == 0 Then
	  clickOn($x, $y)
   Else
	  return tryToClick($x, $y, $clr)
   EndIf
   ToolTip("",0,0)
EndFunc
;#include <wait.au3>
Func waitTil($x, $y, $color, $timeout = 99999, $variation = 10)
   $init = TimerInit()
   While True
	  If TimerDiff($init) > $timeout Then ExitLoop
	  If isColor($x, $y, $color, $variation) Then
		 return True
	  EndIf
   WEnd
   return False
EndFunc

;open chromes
;MouseMove(1403, 1417)
;Sleep(1000)
;clickOn(1363, 1336)

;hit enter game
;clickOn(830, 849)
;clickOn(2045, 842)

;wait til the accelarate button to show up
;waitTil()
;clickOn(571, 867)
;waitTil()
;clickOn(1778, 874)

$msgUnderV5 = "感谢申请我们夜阑听雪 请先升到V5 然后去分会夜阑听海审核"
$msgForV5AndUp = "感谢申请我们夜阑听雪 请先去分会夜阑听海进行审核"
$msgToInviteToQ = "欢迎来到夜阑听雪 请移步q裙进行下一步审核 裙号在公告里"

ToolTip("open guild",0,0)
clickOn(926, 1084)
ToolTip("wait for 3 sec",0,0)
Sleep(3000)

ToolTip("click on check new members",0,0)
clickOn(512, 538)
ToolTip("wait for 2 sec",0,0)
Sleep(2000)

ToolTip("click on recruit new members",0,0)
clickOn(1070, 1008)
ToolTip("wait for 3 sec",0,0)
Sleep(3000)

If isColor(618,610, 0x6C6791, 10) Then
	$msg = $msgUnderV5
Else
	$msg = $msgForV5AndUp
EndIf

If isColor(672,678, 0x856645) Then
	ToolTip("clk on hamberg bar",0,0)
	clickOn(674, 682)
	ToolTip("clk on personal info",0,0)
	clickOn(693, 703)
	ToolTip("wait til loaded",0,0)
	waitTil(676, 979, 0x74492E, 40000)
	ToolTip("clk on private msg",0,0)
	clickOn(676, 979)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	Send("{DEL}")
	Send( $msg )
	Send("{ENTER}")
	clickOn(1140, 526)
	clickOn(515, 789)
EndIf