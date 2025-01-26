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

	MouseMove(587, 684)
	MouseWheel("down",3)

While True
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
	sleep(100)
	MouseMove(587, 684)
	MouseWheel("down",3)
WEnd