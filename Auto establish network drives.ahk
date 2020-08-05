#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Progress, zh0 fs18, Säkerställer anslutning till nätverksmappar.,,Information
DriveGet, DrivesList, list, NETWORK
for k, v in StrSplit(DrivesList)
{
	Run, %v%:\
	SetTitleMatchMode, 2
	WinWaitActive, (%v%:)
	WinClose, (%v%:)
}
