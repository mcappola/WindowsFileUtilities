:: MARK
:: Quick directory navigation tool.
:: Saves directory path for use with go.cmd.

:: Default location for go files is c:\cdfiles
:: Mark will make that directory if it does not exist.

:: Example
::    mark foobar             -Saves path to foobar.txt
::    go foobar               -CDs to path in foobar.txt

:: Michael Cappola (mcappola@udel.edu)
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

@echo off
set "directory=c:\cdfiles"

if "%1"=="" goto :HELP

if not exist "%directory%" (
    mkdir "%directory%"
    echo %cd% > "%directory%"\%1.txt
) else (
    echo %cd% > "%directory%"\%1.txt
)

goto END

:HELP
echo(
echo MARK and GO
echo    Quick directory navigation from the terminal.
echo(
echo EXAMPLE
echo    mark foobar             -Saves current path to foobar.txt
echo    go foobar               -CDs to the path in foobar.txt
echo(
echo CURRENT GO FILES
echo(
for %%f in (%directory%\*.txt) do echo %%f
echo(

:END
