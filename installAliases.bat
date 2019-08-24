@ECHO OFF
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

:: variables
SET me=%~n0
SET parent=%~dp0
SET aliasfile=%parent%aliases.doskey

reg add "HKCU\Software\Microsoft\Command Processor" /v Autorun /d "doskey /macrofile=\"%aliasfile%\"" /f

reg query "HKCU\Software\Microsoft\Command Processor" /v Autorun

:END
ENDLOCAL
ECHO ON
@EXIT /B 0
