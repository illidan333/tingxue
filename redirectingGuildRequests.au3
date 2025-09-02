#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         LeoYitianLiu

 Script Function:
	automate the process to redirect guild requests.

to-do: determine vip lvl

#ce ----------------------------------------------------------------------------`

#include <sgslib.au3>

;change to english
clickOn(490, 788)
$windowTitle = "三国杀官方正版_三国杀一将成名全新起航_星火燎原重燃三国！"
Local $WM_INPUTLANGCHANGEREQUEST = 0x50
Local $ret = DllCall("user32.dll", "long", "LoadKeyboardLayout", "str", "00000409", "int", 0)
DllCall("user32.dll", "ptr", "SendMessage", "hwnd", WinGetHandle($windowTitle), _
"int", $WM_INPUTLANGCHANGEREQUEST, _
"int", 1, _
"int", $ret[0])

$msg = "感谢申请 请先进夜阑听梦审核 加分流q裙15·3425097"

Func inviteToGuild()
	clickOn(99, 845)
	ToolTip("clk on name",0,0)
	clickOn(141, 902)
	ToolTip("cpy name",0,0)
	clickOn(1487, 536);with bookmark
	;clickOn(1481, 520);without bookmark
	ToolTip("rightWindow friend search",0,0)
	Send("{CTRLDOWN}v{CTRLUP}")
	clickOn(1695, 536);with bookmark
	;clickOn(1693, 522);without bookmark
	ToolTip("search",0,0)
	clickOn(2296, 615);with bookmark
	;clickOn(2296, 599);without bookmark
	ToolTip("bar",0,0)
	clickOn(2332, 766);with bookmark
	;clickOn(2327, 756);without bookmark
	ToolTip("invite",0,0)
	screenshot("C:\Users\hippo\OneDrive\Desktop\sgs\")
	clickOn(490, 788)
	ToolTip("clear msg",0,0)
EndFunc

Global $totalCount = 0

Func sendRecruitMessage($count, $hambergBarX, $hambergBarY, $wrapUp = False)
	$personalInfoX = $hambergBarX + 16
	$personalInfoY = $hambergBarY + 21	

	For $i = $count To 1 Step -1
		If Not $wrapUp And isColor(911, 856, 0x93836C) Then
			return
		EndIf

		$totalCount = $totalCount + 1

		ToolTip("clk on hamberg bar",0,0)
		clickOn($hambergBarX, $hambergBarY)
		ToolTip("clk on personal info",0,0)
		clickOn($personalInfoX, $personalInfoY)
		clickOn(490, 788)
		ToolTip("clear msg",0,0)
		ToolTip("wait til loaded " & $totalCount,0,0)
		waitTil(676, 979, 0x74492E)
		Sleep(1000)
		ToolTip("clk on private msg",0,0)
		clickOn(676, 979)
		ToolTip("clk on private msg 1",0,0)
		MouseClick("left", 246, 1096)
		ToolTip("clk on private msg 2",0,0)
		MouseClick("left", 246, 1096)
		ToolTip("clk on private msg 3",0,0)
		MouseClick("left", 246, 1096)
		Send("{DEL}")
		Send( $msg )
		Send("{ENTER}")
		ToolTip("clk on private msg 4",0,0)

		Sleep(1000)
		If isColor(28, 822, 0xDD317F, 15) Then
			inviteToGuild()
		EndIf
		
		clickOn(1140, 526)
		sleep(100)
		MouseMove(587, 684)
		MouseWheel("down",3)
		sleep(500)

	Next
EndFunc

;#cs
;sendRecruitMessage(5, 674, 682);5
;sendRecruitMessage(1, 677, 686);6
;sendRecruitMessage(3, 678, 697);9
;sendRecruitMessage(1, 678, 697);10
;sendRecruitMessage(5, 682, 710);15
;sendRecruitMessage(1, 680, 720);16
sendRecruitMessage(3, 681, 717);19
sendRecruitMessage(4, 682, 665);23
sendRecruitMessage(4, 682, 674);27
sendRecruitMessage(4, 682, 683);31
sendRecruitMessage(1, 682, 683);32
sendRecruitMessage(4, 680, 698);36
sendRecruitMessage(3, 681, 706);39
sendRecruitMessage(5, 681, 710);44
#ce
sendRecruitMessage(5, 681, 710);at least 4

If isColor(911, 856, 0x93836C) Then
	sendRecruitMessage(1, 683, 699, True)
	sendRecruitMessage(1, 682, 761, True)
	sendRecruitMessage(1, 683, 827, True)
	Exit
EndIf