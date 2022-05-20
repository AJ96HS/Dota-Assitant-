#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#MaxThreadsperHotkey 2

!i::
  KeyWait , Alt
  Toggle := !Toggle
if Toggle
SoundPlay , C:\Users\Hosein\Documents\Sounds\Double Beep.mpeg
else
SoundPlay , C:\Users\Hosein\Documents\Sounds\Cancelled.mpeg
  While Toggle
  {
    Send {enter}
    Sleep, 1000
  }
Return













