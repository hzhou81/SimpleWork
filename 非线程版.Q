[General]
SyntaxVersion=2
BeginHotkey=13
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=50c23f69-4cee-499d-86fc-151143c6b9e0
Description=简化动作动作(FindPic)
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Dim cyX
Dim cyY
For i=1 To 10
    FindPic 800,450,1600,900,"D:\孙汇洲的文件\按键精灵\确定.bmp",0.8,intX,intY
	If intX > 0 And intY > 0 Then 
		TracePrint "找到确定按钮"
		MoveTo intX + 10, intY + 2
		LeftClick 1
		Goto 剩余代码
	End If
	Delay 1000
Next

Do
	FindPic 800,450,1600,900,"D:\孙汇洲的文件\按键精灵\确定.bmp",0.8,intX,intY
	If intX > 0 And intY > 0 Then 
		TracePrint "找到确定按钮"
		MoveTo intX + 10, intY + 2
		LeftClick 1
		Exit Do
	Else
		FindPic 0, 0, 800, 450, "D:\孙汇洲的文件\按键精灵\未查验.bmp", 0.95, cyX, cyY
		If cyX > 0 And cyY > 0 Then 
			TracePrint "未查验"
			Goto 收尾工作
		End If
		TracePrint "没有找到未查验按钮"
	End If
	Delay 100
Loop
TracePrint "剩余代码"
Rem 剩余代码
Do
	FindPic 0,0,1600,900,"D:\孙汇洲的文件\按键精灵\确定1.bmp",0.9,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX + 10, intY + 2
		LeftClick 1
		Exit Do
	End If
	Delay 250
Loop
		
nDate = Now()
h = Hour(nDate)
If h >= 16 Then 
	Do
		FindPic 0,0,1600,900,"D:\孙汇洲的文件\按键精灵\被盗抢.bmp",0.8,intX,intY
		If intX > 0 And intY > 0 Then 
			MoveTo intX+10 , intY+2
			LeftClick 1
			Delay 300
			KeyPress "Space", 1
		End If
		MoveTo intX-10 , intY-2
		FindPic 0,0,1600,450,"D:\孙汇洲的文件\按键精灵\没有相关被盗抢信息.bmp",0.9,intX,intY
		If intX > 0 And intY > 0 Then 
			Exit Do
		End If
	Loop
	
	FindPic 800,0,1600,450,"D:\孙汇洲的文件\按键精灵\关闭.bmp",0.8,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX + 10, intY + 2
		LeftClick 1
	End If
End If

Delay 250
rem 收尾工作
FindPic 0,0,1000,450,"D:\孙汇洲的文件\按键精灵\流水号.bmp",0.8,findX,findY
If findX > 0 And findY > 0 Then 
	MoveTo findX + 70, findY + 4
	LeftClick 1
End If
cyX = 0
cyY = 0



