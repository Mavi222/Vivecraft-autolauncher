Process, Exist, "Minecraft Launcher"
if ErrorLevel
Run %comspec% /c "%Appdata%\.minecraft\launcher.jar"
Run, %Appdata%\.minecraft\launcher.jar
WinWait, ahk_class SunAwtFrame
sleep, 3000
IfWinActive ahk_class SunAwtFrame
  Click 450, 542
Else
IfWinNotActive
  WinActivate ahk_class SunAwtFrame
  Click 450, 542
sleep, 3000
IfWinExist, ahk_class LWJGL
    WinClose, ahk_class SunAwtFrame
