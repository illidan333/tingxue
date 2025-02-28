#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         LeoYitianLiu

 Script Function:
	automate the process to redirect guild requests.

to-do: determine vip lvl

#ce ----------------------------------------------------------------------------`

#include <sgslib.au3>

$msg1 = "感谢申请我会 请进先听海 分流q裙1·53425097"
$msg2 = "感谢申请我会 请进先听梦 分流q裙15·3425097"

$msg = $msg2

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
		ToolTip("wait til loaded",0,0)
		waitTil(676, 979, 0x74492E, 40000)
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

	Next
EndFunc

;#cs
sendRecruitMessage(5, 674, 682)
sendRecruitMessage(1, 677, 686)
sendRecruitMessage(3, 678, 697)
sendRecruitMessage(1, 678, 697)
sendRecruitMessage(5, 682, 710)
sendRecruitMessage(4, 680, 720)
sendRecruitMessage(4, 682, 665)
sendRecruitMessage(4, 682, 674)
sendRecruitMessage(4, 682, 683)
sendRecruitMessage(1, 682, 683)
sendRecruitMessage(4, 680, 698)
sendRecruitMessage(3, 681, 706)
sendRecruitMessage(5, 681, 710)
#ce
sendRecruitMessage(5, 681, 710);at least 4

If isColor(911, 856, 0x93836C) Then
	sendRecruitMessage(1, 683, 699, True)
	sendRecruitMessage(1, 682, 761, True)
	sendRecruitMessage(1, 683, 827, True)
	Exit
EndIf