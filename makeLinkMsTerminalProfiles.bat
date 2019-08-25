@ECHO OFF
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

REM variables
SET me=%~n0
SET parent=%~dp0
SET name=profiles.json
SET targetdir=%parent%\MicrosoftTerminal\
SET linkdir=%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState\

mklink /H %linkdir%\%name% %targetdir%\%name%

:END
ENDLOCAL
ECHO ON
@EXIT /B 0
