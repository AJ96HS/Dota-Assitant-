#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, On
WinGet, List, List, ahk_class AutoHotkey
Loop %List% 
  If ( List%A_Index% <> WinExist( A_ScriptFullPath " ahk_class AutoHotkey") )
     PostMessage,0x111,65405,0,,% "ahk_id" List%A_Index%

