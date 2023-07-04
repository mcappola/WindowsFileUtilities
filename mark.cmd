
@echo off
set "directory=c:\work\tools\windowstools\cdfiles"

if not exist "%directory%" (
    mkdir "%directory%"
    echo %cd% > "%directory%"\%1.txt
) else (
    echo %cd% > "%directory%"\%1.txt
)