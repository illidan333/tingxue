#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

Func isColor($positionX, $positionY, $color, $variation = 5)
   $range = 1;was 5
   $cords = PixelSearch($positionX - $range, $positionY - $range, $positionX + $range, $positionY + $range, $color, $variation);when a certain color shows up
   If Not @error Then
	  return True
   EndIf
   return False
EndFunc