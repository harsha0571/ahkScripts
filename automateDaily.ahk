;XButton2::
;Send {Ctrl down}
;KeyWait XButton2
;Send {Ctrl up}
;return


!F11::
Send, !{WheelUp}
Sleep, 100
Send {alt up}
return

!F12::
Send, !{WheelDown}
Sleep, 100
Send {alt up}
return


!F7:: 
Send {LWin down}{PrintScreen}{LWin up}
Sleep, 100
Send {alt up}
return


#IfWinActive

!F8::
IfWinNotExist, ahk_class GHOST_WindowClass
   Run, "C:\Program Files\Blender Foundation\Blender 2.83\blender.exe"
else
   WinActivate ahk_class GHOST_WindowClass
Sleep, 100
Send {alt up}
return


!F13::
IfWinNotExist, ahk_class wxWindowClassNR
   Run, "C:\Program Files (x86)\CodeBlocks\codeblocks.exe"
else
   WinActivate ahk_class wxWindowClassNR
Sleep, 100
Send {alt up}
return

!F9::
IfWinNotExist, ahk_class CabinetWClass
   Run, explorer.exe
Groupadd, hexplorers, ahk_class CabinetWClass
if WinActive("ahk_exe explorer.exe")
   GroupActivate, hexplorers, r
if WinActive("ahk_exe explorer.exe")  
Send ^{tab}
else
   WinActivate ahk_class CabinetWClass
Sleep, 100
send {alt up}
return

!F10::
IfWinNotExist, ahk_class MozillaWindowClass
   Run, firefox.exe
if WinActive("ahk_class MozillaWindowClass")
   Send ^{pgup}
else
   WinActivate ahk_class MozillaWindowClass
Sleep, 150
Send {alt up}
return

F24::
IfWinNotExist, ahk_class Photoshop
   Run, photoshop.exe
if WinActive("ahk_class Photoshop")
   Send ^{tab}
else
   WinActivate ahk_class Photoshop
Sleep, 100
Send {alt up}
return

F23::

IfWinNotExist, ahk_class OpusApp
   Run, WINWORD.EXE
Groupadd, woord, ahk_class OpusApp
if WinActive("ahk_class OpusApp")
   GroupActivate, woord, r
else
   WinActivate ahk_class OpusApp
Sleep, 100
Send {alt up}
return





