#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include-once
#include "color.au3"

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