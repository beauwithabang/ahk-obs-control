;title          :Show-Hide-OBS-Source
;description    :For Rust streamers, allows you to hide your in-game map from the stream
;               :without using any extra keys
;author         :Beau Breeden beau@beaubreeden.me
;date           :2019 08 12
;version        :Release 0.2
;usage          :1)Install AutoHotKey and run this script, or 2)Run the provided .exe
;notes          :This version toggles the show/hide of an OBS source in the gameplay scene
;               :rather than using a seperate scene and dealing with scene transition effects
;license        :GNU GPLv3

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; BOILERPLATE AHK HEADERS ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#SingleInstance, force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #InstallKeybdHook
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetTitleMatchMode, 2
DetectHiddenWindows, On
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; THIS IS THE MEAT OF THE SCRIPT ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



#IfWinActive ahk_exe RustClient.exe
*g:: ;Look for "g" ignoring any modifiers
Send, {Numpad1 Down} ;Send the keydown for Num1
Sleep, 100 ;...and hold it
Send, {Numpad1 Up} ;...and release Num1 (keyup)
Send, {g down} ;Send the keydown for 'g'
KeyWait, g ;...wait for the actual 'g' to be released
Send, {g up} ;Release 'g' (keyup)
Sleep, 300 ;Wait for the game's transition from map to gameview completes
Send, {Numpad2 Down} ;Send the keydown for Num2
Sleep, 100 ;...and hold it
Send, {Numpad2 Up} ;...and release Num2 (keyup)
return ;End of this code block

;;;;;::::::::::::::::::::::::
;;; REFERENCE INFORMATION ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;; AHK WindowSpy for my Rust client
;title Rust
;ahk_class UnityWndClass
;ahk_exe RustClient.exe
;ahk_pid 17840

;;;; AHK WindowSpy for my OBS client
;OBS 23.2.1 (64-bit, windows) - Profile: Streaming - Twitch - Scenes: Default
;ahk_class Qt5QWindowIcon
;ahk_exe obs64.exe
;ahk_pid 20904