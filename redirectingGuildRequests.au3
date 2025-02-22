#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         LeoYitianLiu

 Script Function:
	automate the process to redirect guild requests.

to-do: determine vip lvl

#ce ----------------------------------------------------------------------------`

#include <sgslib.au3>

$msg = "[emo:24][emo:49]感谢申请我会请先进q裙153·425097"
$msgToInviteToQ = "[emo:24][emo:49]欢迎加入我会请先移步纳新q裙审核153·425097"

Func inviteToGuild()
	clickOn(99, 845)
	ToolTip("clk on name",0,0)
	clickOn(141, 902)
	ToolTip("cpy name",0,0)
	clickOn(1487, 536)
	ToolTip("rightWindow friend search",0,0)
	Send("{CTRLDOWN}v{CTRLUP}")
	clickOn(1695, 536)
	ToolTip("search",0,0)
	clickOn(2296, 615)
	ToolTip("bar",0,0)
	clickOn(2332, 766)
	ToolTip("invite",0,0)
	clickOn(490, 788)
	ToolTip("clear msg",0,0)
EndFunc

Func sendRecruitMessage($count, $hambergBarX, $hambergBarY)
	$personalInfoX = $hambergBarX + 16
	$personalInfoY = $hambergBarY + 21

	If isColor(28, 822, 0xDD317F, 15) Then
		inviteToGuild()
	EndIf

	For $i = $count To 1 Step -1
		ToolTip("counting " + $i,0,0)
		if isColor(911, 856, 0x93836C) Then
			Exit
		EndIf
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
		
		if isColor(911, 856, 0x93836C) Then
			return
		EndIf

	Next
EndFunc

sendRecruitMessage(5, 674, 682)
sendRecruitMessage(1, 677, 686)
sendRecruitMessage(3, 678, 697)
sendRecruitMessage(1, 678, 697)
sendRecruitMessage(5, 682, 710)
sendRecruitMessage(4, 680, 720)
sendRecruitMessage(4, 682, 665)
sendRecruitMessage(4, 682, 674)
sendRecruitMessage(4, 682, 683)
sendRecruitMessage(4, 682, 683)
sendRecruitMessage(4, 680, 698)
sendRecruitMessage(3, 681, 706)

If isColor(911, 856, 0x93836C) Then
	sendRecruitMessage(1, 682, 702)
	sendRecruitMessage(1, 682, 763)
	sendRecruitMessage(1, 679, 829)
	Exit
EndIf