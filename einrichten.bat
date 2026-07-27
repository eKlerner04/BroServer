@echo off
REM BroServer - Bau-Wettbewerb : Einrichtung per Doppelklick (Windows)
REM Startet das PowerShell-Skript, das das Datapack auf Nitrado hochlaedt.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0einrichten.ps1"
echo.
pause
