@echo off
set "directory=c:\work\tools\windowstools\cdfiles"

set /p godir=<"%directory%"\%1.txt
cd %godir%