; ========================================
; Borderlessv2 - General AutoHotkey Script
; ========================================
; 
; Description: Makes games run in borderless windowed mode
; Author: Your Name
; Version: 2.0
; Date: October 2025
;
; Usage: Run this script before launching your game
; Press Ctrl+Alt+B to toggle borderless mode for the active window
;
; ========================================

#NoEnv
#SingleInstance Force
#Persistent
SendMode Input
SetWorkingDir %A_ScriptDir%

; Global variables
BorderlessHotkey := "^!b"  ; Ctrl+Alt+B

; Set up the hotkey
Hotkey, %BorderlessHotkey%, ToggleBorderless

; Function to toggle borderless mode
ToggleBorderless:
    WinGet, CurrentWindow, ID, A
    if (CurrentWindow) {
        ; Get current window style
        WinGet, Style, Style, ahk_id %CurrentWindow%
        
        ; Check if window has borders (WS_CAPTION | WS_THICKFRAME)
        if (Style & 0xC00000) {
            ; Remove borders to make borderless
            WinSet, Style, -0xC00000, ahk_id %CurrentWindow%
            ; Maximize the window
            WinMaximize, ahk_id %CurrentWindow%
            TrayTip, Borderlessv2, Window made borderless, 2
        } else {
            ; Restore borders
            WinSet, Style, +0xC00000, ahk_id %CurrentWindow%
            WinRestore, ahk_id %CurrentWindow%
            TrayTip, Borderlessv2, Window borders restored, 2
        }
    }
return

; Function to make specific game borderless (example)
MakeGameBorderless(WindowTitle) {
    WinWait, %WindowTitle%
    Sleep, 1000
    WinGet, GameWindow, ID, %WindowTitle%
    if (GameWindow) {
        WinSet, Style, -0xC00000, ahk_id %GameWindow%
        WinMaximize, ahk_id %GameWindow%
        TrayTip, Borderlessv2, %WindowTitle% made borderless, 3
    }
}

; Example usage for specific games
; Uncomment and modify for your games
; #IfWinActive, Your Game Title Here
; F11::MakeGameBorderless("Your Game Title Here")
; #IfWinActive

; Exit hotkey
^!x::ExitApp

; Show help
^!h::
    Msgbox, 64, Borderlessv2 Help, 
    (
Borderlessv2 Hotkeys:

Ctrl+Alt+B - Toggle borderless mode for active window
Ctrl+Alt+H - Show this help
Ctrl+Alt+X - Exit script

Instructions:
1. Run this script
2. Launch your game
3. Press Ctrl+Alt+B to make it borderless
4. Press Ctrl+Alt+B again to restore borders
    )
return