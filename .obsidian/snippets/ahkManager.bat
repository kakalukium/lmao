@echo off
REM === Folder containing your AHK scripts ===
set "AHK_FOLDER=D:\manager\ahkfiles"

REM === Path to AutoHotkeyUX.exe ===
set "AHK_EXE=C:\Program Files\AutoHotkey\UX\AutoHotkeyUX.exe"

REM === Loop through all .ahk files in the folder and run them ===
for %%F in ("%AHK_FOLDER%\*.ahk") do (
    echo Starting %%F
    start "" "%AHK_EXE%" "%%F"
)

exit
