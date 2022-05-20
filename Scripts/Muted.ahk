#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
0::
KeyWait, 0	
Send {enter}
Sleep , 200
Send , I have muted you because I lose focus easily
Send {enter}
Sleep , 200
Send {enter}
Sleep , 200
Send , I won't receive your pings/chat/chatwheels/Voicechat
Send {enter}
Sleep , 200
Send {enter}
Sleep , 200
Send , Let's do our best and win this match
Send {enter}
Sleep , 200
Send {enter}
Sleep , 200
Send , /t
Send {enter}
Sleep , 200
Send {enter}

Return


