:: Runs R.exe in the terminal.
:: Assumes that R was installed to default location.
:: Should work for any version of R that is installed.

@echo off

:: Save current location.
set "curdir=%cd%"

:: Go to where R.exe is stored. Note the wildcard.
cd C:\Program Files\R\R-*\bin

:: Save full path to R.exe.
set "rdir=%cd%"

:: Return to original location.
cd %curdir%

:: Call R.exe.
"%rdir%\R.exe"
