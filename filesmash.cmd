:: FILESMASH 
:: Appends file contents to a single file based on user input

:: ARGUMENTS
:: [Required] 		:First argument is the file extension type

:: [Optional]		:Passing "-r" as the second argument 
::                      allows for recursion through the 
::                      subdirectories from where the script 
::                      is called

:: Running the command with no arguments opens a help menu

:: OUTPUT
:: Results are stored in "filesmash.txt"

:: EXAMPLE
::  filesmash txt	    :Appends all text files in a directory
::                          to a single text file.

::  filesmash txt -r    :Appends all text files in a directory
::                          (with subdirectory recursion) to a
::                          single text file. 

:: Michael Cappola (mcappola@udel.edu)
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

@echo off

if "%1"=="" goto :HELP 

set test=FALSE
if exist "filesmash.txt" set test=TRUE

if "%TEST%"=="TRUE" (
	SET /P DELETE=FILESMASH.TXT ALREADY EXISTS. OVERWRITE? (Y/[N])
	if /I "%DELETE%" == "Y" del filesmash.txt 2>NUL
	if /I "%DELETE%" == "N" goto END
)

if "%2"=="-r" goto RECURSIVE

for %%f in (*.%1) do (
    (echo "%%f" | find /I "filesmash.txt" 1>NUL) || (
        type %%f >> filesmash.txt
    )
)

if "%2" NEQ "-r" goto END

:RECURSIVE

set "a=%cd%"
for /R %a%\ %%f in (*.%1) do (
    (echo "%%f" | find /I "filesmash.txt" 1>NUL) || (
        type %%f >> filesmash.txt
    )
)

goto END

:HELP 

echo(
echo FILESMASH 
echo     Appends file contents to a single output file based on user input.
echo(
echo ARGUMENTS
echo     First argument is the file extension type.
echo     Second [optional] argument is "-r" for recursion through the subdirectories
echo(
echo OUTPUT
echo     "filesmash.txt" contains all file contents
echo(
echo EXAMPLE
echo     filesmash txt        Appends content of all text files in the directory		
echo     filesmash txt -r     Recursively appends content of all text files in a directory tree
echo(

goto END

:END

