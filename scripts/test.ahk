#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;First dev change


;Press Ctrl+r to start script
^r::
count := 0
missionButton := 0
MsgBox missionButton = %missionButton%

while (missionButton < 1 and count < 6)
{
CoordMode Pixel Relative  ; Interprets the coordinates below as relative to the screen rather than the active window.
ImageSearch, FoundX, FoundY, 1014, 697, 1070, 735, C:\AHK\Future Fight\images\mission_start.PNG
if ErrorLevel = 2
	{
    MsgBox Could not conduct the search.
	}
else if ErrorLevel = 1
	{
	Sleep 1000
    ;MsgBox Icon could not be found on the screen.
	count := count + 1
	}
else
	{
    ;MsgBox The icon was found at %FoundX%x%FoundY%.
	count := count + 1
	missionButton := 1
	}
}
;MsgBox missionButton = %missionButton%

if count > 5
{
	Run, C:\AHK\Future Fight\scripts\error.ahk, %count%
}
MsgBox Checked for Mission Button %count% time(s). Found at %FoundX%x%FoundY%.
Return