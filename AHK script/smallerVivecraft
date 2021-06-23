Process, Exist, "Minecraft Launcher"
if ErrorLevel
Run %comspec% /c "C:\Program Files (x86)\Minecraft Launcher\MinecraftLauncher.exe"
Run, C:\Program Files (x86)\Minecraft Launcher\MinecraftLauncher.exe
sleep, 10000
if WinExist("Minecraft Launcher")
    WinActivate ; Use the window found by WinExist.
MouseGetPos, xpos, ypos 
Click 594, 498
sleep, 2000
MouseMove, xpos, ypos
Exit
