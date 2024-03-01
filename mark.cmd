@echo off
set "directory=c:\cdfiles"

if not exist "%directory%" (
    mkdir "%directory%"
    echo %cd% > "%directory%"\%1.txt
) else (
    echo %cd% > "%directory%"\%1.txt
)
