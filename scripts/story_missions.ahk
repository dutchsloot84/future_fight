#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Press Ctrl+r to start script
^r::
count := 0
missionButton := 0
repeatButton :=0

Loop, 10
{
	pressMissionButton()
	;Sleep 1:45 minutes
	Sleep 105000
	pressRepeatButton()
	
}


Return

pressMissionButton()
{
	MsgBox missionButton = %missionButton%
	while (missionButton < 1 and count < 16)
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
				Send {r}
			}
	}
	if (count > 15)
		{
			MsgBox Mission button not found after %count% tries.
			dismissPrompts()
		}
	count := 0
}

pressRepeatButton()
{
MsgBox repeatButton = %repeatButton%
	while (repeatButton < 1 and count < 16)
	{
		CoordMode Pixel Relative  ; Interprets the coordinates below as relative to the screen rather than the active window.
		ImageSearch, FoundX, FoundY, 888, 663, 1075, 736, C:\AHK\Future Fight\images\repeat_mission.PNG
		if ErrorLevel = 2
			{
				MsgBox Could not conduct the search.
			}
		else if ErrorLevel = 1
			{
				Sleep 1000
				MsgBox Repeat button not found.
				count := count + 1
			}
		else
			{
				;MsgBox The icon was found at %FoundX%x%FoundY%.
				count := count + 1
				repeatButton := 1
				Send {r}
			}
	}
	if (count > 15)
		{
			MsgBox Repeat button not found after %count% tries.
			dismissPrompts()
		}
	count := 0
}

dismissPrompts()
{
	;Dismisses Shield lvl prompt
	Send {Esc}
	;Dismisses ???
	Send {u}
	;Dismisses Character lvl prompt
	Send {y}
}