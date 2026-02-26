@echo off
echo Lancio The Rebuilder Arcade...

:: 1. Prova Chrome
start msedge "%~dp0index.html" 2>nul
if %errorlevel% equ 0 exit

:: 2. Se fallisce, prova Edge (che è installato di default su tutti i Windows 10/11)
start msedge "%~dp0index.html" 2>nul
if %errorlevel% equ 0 exit

:: 3. Se fallisce, prova Firefox
start firefox "%~dp0index.html" 2>nul
if %errorlevel% equ 0 exit

:: 4. Se proprio non trova nulla, prova il comando generico di sistema
start "" "%~dp0index.html"
exit
