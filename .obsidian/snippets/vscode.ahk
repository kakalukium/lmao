; VS Code Session Manager
; Hotkey: NumpadAdd with Alt key

!NumpadAdd::
    ; Check if VS Code is already running
    IfWinExist, ahk_exe Code.exe
    {
        ; If minimized, restore it
        IfWinNotActive, ahk_exe Code.exe
        {
            WinRestore, ahk_exe Code.exe
            WinActivate, ahk_exe Code.exe
        }
        ; If already active, just bring to front
        else
        {
            WinActivate, ahk_exe Code.exe
        }
    }
    else
    {
        ; Launch VS Code - it will automatically open previous session
        Run, "D:\apps\Microsoft VS Code\Code.exe" --reuse-window
        WinWait, ahk_exe Code.exe,, 10
        if ErrorLevel
        {
            MsgBox, VS Code failed to launch
            return
        }
        WinActivate, ahk_exe Code.exe
    }
return

; Optional: Add a secondary hotkey for just NumpadAdd if desired
; NumpadAdd::
;     Send, {NumpadAdd}
; return

; Keep script running
#Persistent