#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsperHotkey 10
!r::
Suspend, Permit
Suspend, Toggle
if A_IsSuspended = 0
SoundPlay *-1
if A_IsSuspended = 1
SoundPlay *16
Return

$r::
{
Send n
Send b
Send n
Send r
Sleep 3000
Send n
}
Return