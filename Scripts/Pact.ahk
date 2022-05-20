#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsperHotkey 10
#SingleInstance force
$e::
{
Send c
Send c
Sleep 250
Send q
Sleep 500
Send c
Send c
Sleep 2500
Send c
Send c
}
Return

$!e::
KeyWait , Alt
Toggle := !Toggle
if !Toggle
SoundPlay , C:\Users\Hosein\Documents\Sounds\Leash end.mpeg
else
SoundPlay , C:\Users\Hosein\Documents\Sounds\Leash.mpeg
while Toggle
{
Send c
Send c
Sleep 500
Send q
Sleep 500
Send c
Send c
Sleep 2500
Send c
Send c
Sleep 2600
}
Return