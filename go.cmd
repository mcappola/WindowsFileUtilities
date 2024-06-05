@echo off
set "directory=c:\cdfiles"

if "%1"=="" goto HELP 

set /p godir=<"%directory%"\%1.txt
cd %godir%
goto END

:HELP
echo(
echo GO
echo    Moves to saved directory for quick movement in the terminal.
echo    Drive locations are saved with mark.cmd
echo(
echo Example
echo    mark foobar		-Saves current path to foobar.txt
echo    go foobar		-CDs to the path in foobar.txt
echo(
echo CURRENT GO FILES
echo(
for %%f in (%directory%\*.txt) do echo %%f 
echo(

:END