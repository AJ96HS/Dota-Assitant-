#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.w


#SingleInstance force


!w::
Toggle := !Toggle
if Toggle
SoundPlay , C:\Users\Hosein\Documents\Sounds\Power.mpeg
else
SoundPlay , C:\Users\Hosein\Documents\Sounds\whoops.mpeg
Return

$w::
Send w
KeyWait , w
StartTime := A_TickCount
if (!Toggle)
{
	While (A_TickCount - StartTime < 3200)
	{
   	GetKeyState, State, w, P
   	if State = D
   	 {
   	 Send , w
   	 Return
	 }
	}
SoundPlay , C:\Users\Hosein\Documents\Sounds\Done.mpeg
}

While (A_TickCount - StartTime < 5000)
{
   GetKeyState, State, w, P
   if State = D
   {
   Send , w
   Return
   }
} 
SoundPlay , C:\Users\Hosein\Documents\Sounds\Done.mpeg

Return


