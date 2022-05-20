#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.w


#SingleInstance force


!e::
Toggle := !Toggle
if Toggle
SoundPlay , C:\Users\Hosein\Documents\Sounds\Power.mpeg
else
SoundPlay , C:\Users\Hosein\Documents\Sounds\whoops.mpeg
Return

$e::
Send q
Sleep, 2000
Send q

Return


