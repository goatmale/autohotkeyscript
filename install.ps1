$TargetFile = "$env:USERPROFILE\autohotkey.ahk"
copy-item autohotkey.ahk -destination $TargetFile
$ShortcutFile = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\autohotkey.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()