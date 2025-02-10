#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         LeoYitianLiu

 Script Function:
	automate the process to redirect guild requests.

to-do: determine vip lvl

#ce ----------------------------------------------------------------------------`

#include <sgslib.au3>

$msg = "感谢申请我们夜阑听雪 请先去分会夜阑听海进行审核"
$msgToInviteToQ = "欢迎来到夜阑听雪 请移步q裙进行下一步审核 裙号在公告里"

Func sendRecruitMessage($count, $hambergBarX, $hambergBarY)
	$personalInfoX = $hambergBarX + 16
	$personalInfoY = $hambergBarY + 21

	For $i = $count To 1 Step -1
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
		clickOn(1140, 526)
		sleep(100)
		MouseMove(587, 684)
		MouseWheel("down",3)
	Next
EndFunc

#comments-start
ToolTip("open chromes",0,0)
MouseMove(1403, 1417)
Sleep(1000)
clickOn(1363, 1336)

ToolTip("hit enter game",0,0)
clickOn(830, 849)
clickOn(2045, 842)

ToolTip("wait til the accelarate button to show up",0,0)
waitTil()
clickOn(571, 867)
waitTil()
clickOn(1778, 874)


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

#comments-end

#comments-start
if isColor(911, 856, 0x93836C) Then
	Exit
EndIf

For $i = 5 To 1 Step -1
	if isColor(911, 856, 0x93836C) Then
		Exit
	EndIf
	ToolTip("clk on hamberg bar",0,0)
	clickOn(674, 682)
	ToolTip("clk on personal info",0,0)
	clickOn(693, 703)
	ToolTip("wait til loaded",0,0)
	waitTil(676, 979, 0x74492E, 40000)
	Sleep(1000)
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
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next

$hambergBarX = 677
$hambergBarY = 686
$personalInfoX = 701
$personalInfoY = 714

For $i = 3 To 1 Step -1
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
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	Send("{DEL}")
	Send( $msg )
	Send("{ENTER}")
	clickOn(1140, 526)
	clickOn(515, 789)
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next

$hambergBarX = 678
$hambergBarY = 697
$personalInfoX = 700
$personalInfoY = 720

For $i = 3 To 1 Step -1
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
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	Send("{DEL}")
	Send( $msg )
	Send("{ENTER}")
	clickOn(1140, 526)
	clickOn(515, 789)
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next



$hambergBarX = 678
$hambergBarY = 697
$personalInfoX = 705
$personalInfoY = 732

For $i = 1 To 1 Step -1
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
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	Send("{DEL}")
	Send( $msg )
	Send("{ENTER}")
	clickOn(1140, 526)
	clickOn(515, 789)
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next

$hambergBarX = 682
$hambergBarY = 710
$personalInfoX = 703
$personalInfoY = 733

For $i = 5 To 1 Step -1
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
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	Send("{DEL}")
	Send( $msg )
	Send("{ENTER}")
	clickOn(1140, 526)
	clickOn(515, 789)
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next

$hambergBarX = 680
$hambergBarY = 720
$personalInfoX = 701
$personalInfoY = 744

For $i = 4 To 1 Step -1
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
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	Send("{DEL}")
	Send( $msg )
	Send("{ENTER}")
	clickOn(1140, 526)
	clickOn(515, 789)
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next

$hambergBarX = 682
$hambergBarY = 665
$personalInfoX = 701
$personalInfoY = 687

For $i = 4 To 1 Step -1
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
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	Send("{DEL}")
	Send( $msg )
	Send("{ENTER}")
	clickOn(1140, 526)
	clickOn(515, 789)
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next

$hambergBarX = 682
$hambergBarY = 674
$personalInfoX = 698
$personalInfoY = 695

For $i = 4 To 1 Step -1
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
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	Send("{DEL}")
	Send( $msg )
	Send("{ENTER}")
	clickOn(1140, 526)
	clickOn(515, 789)
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next


$hambergBarX = 682
$hambergBarY = 683
$personalInfoX = $hambergBarX + 16
$personalInfoY = $hambergBarY + 21

For $i = 4 To 1 Step -1
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
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	Send("{DEL}")
	Send( $msg )
	Send("{ENTER}")
	clickOn(1140, 526)
	clickOn(515, 789)
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next

$hambergBarY = 683

$hambergBarX = 682
$hambergBarY = $hambergBarY + 15
$personalInfoX = $hambergBarX + 16
$personalInfoY = $hambergBarY + 21

For $i = 4 To 1 Step -1
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
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	MouseClick("left", 246, 1096)
	Send("{DEL}")
	Send( $msg )
	Send("{ENTER}")
	clickOn(1140, 526)
	clickOn(515, 789)
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next

$hambergBarX = 680
$hambergBarY = 698
$personalInfoX = $hambergBarX + 16
$personalInfoY = $hambergBarY + 21

For $i = 4 To 1 Step -1
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
	clickOn(1140, 526)
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
Next

#comments-end
sendRecruitMessage(5, 674, 682)
sendRecruitMessage(3, 677, 686)
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

if isColor(911, 856, 0x93836C) Then
	Exit
EndIf