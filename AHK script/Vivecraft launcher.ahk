IfNotExist, location.txt
{
	FileSelectFile, SelectedFile, 3, 1, Select the Minecraft launcher, Applications (*.exe; *.jar)
	if SelectedFile =
		MsgBox, You didn't select anything, try again.
	else
		FileAppend, %SelectedFile%, location.txt
		MsgBox, The Minecraft launcher location is set to:`n%SelectedFile%
}
Else
{
IfExist, location.txt
	FileRead, OutputVar, location.txt
	Process, Exist, "Minecraft Launcher"
	if ErrorLevel
	Run %comspec% /c "%OutputVar%"
	Run, %OutputVar%
	WinWait, ahk_class CefBrowserWindow
	sleep, 4000
	CoordMode Window
	IfWinActive ahk_class CefBrowserWindow
		WinGetActiveStats, Title, Width, Height, X, Y
		Width := Width / 2
		Height := Height - 64
		Click, %Width%, %Height%
	IfWinNotActive
		WinActivate ahk_class CefBrowserWindow
		WinGetActiveStats, Title, Width, Height, X, Y
		Width := Width / 2
		Height := Height - 64
		Click, %Width%, %Height%
}