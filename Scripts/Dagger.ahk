#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsperHotkey 10
#SingleInstance force
!o::
Suspend, Permit
Suspend, Toggle
if A_IsSuspended = 0
SoundPlay *-1
if A_IsSuspended = 1
SoundPlay *16
Return

$z::
  While GetKeyState("z","P")
  {
    Send, z
    Sleep, 50
  }
Return