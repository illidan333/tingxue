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