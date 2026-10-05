@echo off
cd /d "%~dp0"
title IKEMEN Updater

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0IKEMEN-Updater.ps1"

if errorlevel 1 (
    echo.
    echo The updater encountered an error.
    echo Press any key to close.
    pause >nul
)
