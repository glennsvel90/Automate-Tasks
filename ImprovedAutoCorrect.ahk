#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^+w:: return

^w:: return

!LEFT::SEND {HOME}

!RIGHT::SEND {END}
!BACKSPACE::
send {home}
send {shift down}{end}{shift up}{delete}{end}

return

SetTitleMatchMode, 2

#IfWinActive, 	Word   ; Only make hotkeys for specified window

~$5::
if 5_pfesses > 0
{
	5_pfesses += 1
	SetTimer, Key5, 300
	return
}
5_pfesses = 1
SetTimer, Key5, 300
return

Key5:
SetTimer, Key5, off
if 5_pfesses = 1
{
	
}
else
if 5_pfesses = 2
{
	send 5{Backspace}
}
else
if 5_pfesses > 2 
{
	
	send {Backspace}{Backspace}{Backspace}
	Click 35, 58
	sleep 200
	Click 73, 997 
	sleep 200              
	Click 246, 287
	sleep 500
	Click 518, 136
}
5_pfesses = 0
return


#IfWinActive



#IfWinActive, 	ahk_exe PDFXEdit.exe 

~g & h:: send ^{right}
~h & g:: send ^{left}



return
#ifwinactive


#IfWinActive ahk_exe vlc.exe

d::^h
^!s::^!s
:R*?:ddd::ddd
~$f::f
~$j::j
^!r::^!r
^+x::^+x
:r0:````````:::r0:````````
^!w::^!w

^!s:: 
SoundBeep, 950, 500
MsgBox, , Alert!, Reload, 0.5
reload 

return


#IfWinActive


:R*?:ddd::
FormatTime, CurrentDateTime,, MMM dd-ddd
SendInput %CurrentDateTime% .
return


:R*?:aaa::ANSWERS



:R*?:ssss::
(
Sincerely,
First_Name Last_Name
)

