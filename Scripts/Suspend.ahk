#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
WM_COMMAND := 0x111
CMD_RELOAD := 65400
CMD_EDIT := 65401
CMD_PAUSE := 65403
CMD_SUSPEND := 65404

DetectHiddenWindows, On

Process, Exist
this_pid := ErrorLevel
control_id := WinExist("ahk_class AutoHotkey ahk_pid " this_pid)

; Press Home to toggle Pause & Suspend state for all scripts.
!o::
Toggle := !Toggle
if !Toggle
SoundPlay , C:\Users\Hosein\Documents\Sounds\Double Beep.mpeg
else
SoundPlay , C:\Users\Hosein\Documents\Sounds\Cancelled.mpeg

WinGet, id, list, ahk_class AutoHotkey
Loop, %id%
{
	this_id := id%A_Index%
	If (this_id <> control_id)
	{
		If (ScriptStatus(this_id, "Paused") = !Toggle)
			PostMessage, WM_COMMAND, CMD_PAUSE,,, ahk_id %this_id%
		If (ScriptStatus(this_id, "Suspended") = !Toggle)
			PostMessage, WM_COMMAND, CMD_SUSPEND,,, ahk_id %this_id%
	}
}
return

ScriptStatus(script_id, cmd)
{
	SendMessage, 0x211,,,, ahk_id %script_id%  ; WM_ENTERMENULOOP
	SendMessage, 0x212,,,, ahk_id %script_id%  ; WM_EXITMENULOOP

	mainMenu := DllCall("GetMenu", "uint", script_id)
	fileMenu := DllCall("GetSubMenu", "uint", mainMenu, "int", 0)
	isPaused := DllCall("GetMenuState", "uint", fileMenu, "uint", 4, "uint", 0x400) >> 3 & 1
	isSuspended := DllCall("GetMenuState", "uint", fileMenu, "uint", 5, "uint", 0x400) >> 3 & 1
	DllCall("CloseHandle", "uint", fileMenu)
	DllCall("CloseHandle", "uint", mainMenu)
	If (cmd = "Paused")
		return isPaused
	If (cmd = "Suspended")
		return isSuspended
}