Process, Exist, "Minecraft Launcher"
if ErrorLevel
Run %comspec% /c "%Appdata%\.minecraft\launcher.jar"
Run, %Appdata%\.minecraft\launcher.jar
WinWait, Minecraft ahk_class SunAwtFrame
sleep, 3000
WinActivate Minecraft Launcher
Click 450, 542