@echo off
cd /d "%~dp0"
title IKEMEN Verify and Repair
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0IKEMEN-Updater.ps1" -VerifyAll -NoLaunch
if errorlevel 1 (
    echo.
    echo Operation failed. Keep the game closed and retry.
) else (
    echo.
    echo Operation completed successfully.
)
pause
