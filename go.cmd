@echo off
set "directory=c:\cdfiles"

set /p godir=<"%directory%"\%1.txt
cd %godir%
