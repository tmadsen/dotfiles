; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

#z::Run www.autohotkey.com

^!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

AppsKey & f1::Send {Media_Play_Pause}
AppsKey & f2::Send {Volume_Mute}
AppsKey & f3::Send {Volume_Down}
AppsKey & f4::Send {Volume_Up}

Capslock::Esc

:c?*:aae,::�
:c?*:ae,::�

:c?*:ooe,::�
:c?*:oe,::�

:c?*:aaa,::�
:c?*:aa,::�

:c?*:ee,::�
:c?*:EE,::�

#+s::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)

!t::
	WinExist("ahk_class Shell_TrayWnd")

	t := !t

	If (t = "1") {
		WinHide, ahk_class Shell_TrayWnd
		WinHide, Start ahk_class Button
	} Else {
		WinShow, ahk_class Shell_TrayWnd
		WinShow, Start ahk_class Button
	}
return