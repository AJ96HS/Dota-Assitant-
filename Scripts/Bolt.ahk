#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsperHotkey 10
#SingleInstance force

!w::
KeyWait, Alt	
Toggle2 := !Toggle2
if !Toggle2
SoundPlay , C:\Users\Hosein\Documents\Sounds\cam.mpeg
else
SoundPlay , C:\Users\Hosein\Documents\Sounds\lvl.mpeg
Return

$e::
KeyWait, e	
Toggle := !Toggle
if !Toggle
SoundPlay , C:\Users\Hosein\Documents\Sounds\Spell.mpeg
else
SoundPlay , C:\Users\Hosein\Documents\Sounds\Spell Target.mpeg
Return


$w::
if Toggle
{
 While GetKeyState("w","P")
  {
    Send, w
    Sleep, 100
  }
 KeyWait , w
 if Toggle2
 Sleep 5500
 else
 Sleep 9500
 SoundPlay , C:\Users\Hosein\Documents\Sounds\Bolt.mpeg

}
else
 While GetKeyState("w","P")
  {
    Send, w
    Sleep, 100
  }
Return
