#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force


$!r::
KeyWait, Alt
Send , m
Toggle := !Toggle
if !Toggle
SoundPlay , C:\Users\Hosein\Documents\Sounds\juju Off.mpeg
else
SoundPlay , C:\Users\Hosein\Documents\Sounds\juju.mpeg
Return

$w::
if toggle
Send !w
else
Send w
Return


Return