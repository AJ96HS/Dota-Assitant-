﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsperHotkey 10
#SingleInstance force

!q::
KeyWait , Alt
Toggle := !Toggle
if Toggle
SoundPlay , C:\Users\Hosein\Documents\Sounds\Deploying.mpeg
else
SoundPlay , C:\Users\Hosein\Documents\Sounds\Repositioning.mpeg
Return

$q:: 
{
Send q
Sleep 200
if Toggle
 { 
 Send +z
 Toggle := !Toggle
 }
}
Return