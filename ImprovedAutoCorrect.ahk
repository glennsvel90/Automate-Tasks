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


~$+^!p::
if WheelLeft_pfesses > 0
{
	WheelLeft_pfesses += 1
	SetTimer, KeyWheelLeft, 500
	return
}
WheelLeft_pfesses = 1
SetTimer, KeyWheelLeft, 500
return

KeyWheelLeft:
SetTimer, KeyWheelLeft, off
if WheelLeft_pfesses = 1
{
	send !{tab}
}
else
if WheelLeft_pfesses = 2
{
	send {alt down}
	send {tab}
	send {tab}
	send {alt up}
	send {enter}
}

WheelLeft_pfesses = 0
return




#ifwinactive, ahk_exe ONENOTE.EXE
;onenote new line
~$j::
if j_pfesses > 0
{
	j_pfesses += 1
	SetTimer, Keyj, 300
	return
}
j_pfesses = 1
SetTimer, Keyj, 300
return

Keyj:
SetTimer, Keyj, off
if j_pfesses = 1
{
	
}
else
if j_pfesses = 2
{
	send j{Backspace}
}
else
if j_pfesses > 2 
{
	
	send {Backspace}{Backspace}{Backspace}
	send ^z
	send ^z
}
j_pfesses = 0
return
#ifwinactive

#ifwinactive, ahk_exe WINWORD.EXE
;onenote new line
~$j::
if j_pfesse > 0
{
	j_pfesse += 1
	SetTimer, Keyjj, 300
	return
}
j_pfesse = 1
SetTimer, Keyjj, 300
return

Keyjj:
SetTimer, Keyjj, off
if j_pfesse = 1
{
	
}
else
if j_pfesse = 2
{
	send j{Backspace}
}
else
if j_pfesse > 2 
{
	
	send {Backspace}{Backspace}{Backspace}
}
j_pfesse = 0
return
#ifwinactive
