@if (@CodeSection == @Batch) @then
@echo off

title AutoTyper
:main
cls
echo ========================================================
echo Creator: https://github.com/fyannz
echo ========================================================
echo.
set /p text=Type something you want to type automatically: 
set /p delay=Set the delay (example: 1): 
echo.
echo AutoTyper will start in 5 seconds... navigate to your application
timeout /t 5 >nul

set SendKeys=CScript //nologo //E:JScript "%~F0"

:auto
timeout /t %delay% >nul
%SendKeys% "%text%"

goto auto

@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
