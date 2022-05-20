#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsperHotkey 10
#SingleInstance force
$!w::
KeyWait, Alt	
Toggle := !Toggle
if !Toggle
SoundPlay , C:\Users\Hosein\Documents\Sounds\Piston Off.mpeg
else
SoundPlay , C:\Users\Hosein\Documents\Sounds\Piston.mpeg

while Toggle
{
Send w
Sleep 3380
}
Return
