:: FILELIST
:: Generates a file list of directory contents for a queried
:: file extension type.

:: ARGUMENTS
:: [Required] 		:First argument is the file extension type

:: [Optional]		:Passing "-r" as the second argument 
::                      allows for recursion through the 
::                      subdirectories

:: Running the command with no arguments opens a help menu

:: OUTPUT
:: "filelist.txt" contains the file list. If the recusive 
::		option is used, the file list contents will keep the 
::		whole file path.

:: EXAMPLE
::  filelist txt	    :Generates a list of all text files 
::							in the directory

::  filelist txt -r     :Recursively generates a list of all 
::							text files in the directory tree

:: Michael Cappola (mcappola@udel.edu)
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

@echo off

if "%1"=="" goto :HELP 

set test=FALSE
if exist "filelist.txt" set test=TRUE

if "%TEST%"=="TRUE" (
	SET /P DELETE=FILELIST.TXT ALREADY EXISTS. OVERWRITE? (Y/[N])
	if /I "%DELETE%" == "Y" del filelist.txt 2>NUL
	if /I "%DELETE%" == "N" goto END
)

if "%2"=="-r" goto RECURSIVE

for %%f in (*.%1) do echo %%f >> filelist.txt

if "%2" NEQ "-r" goto END

:RECURSIVE

set "a=%cd%"
for /R %a%\ %%G in (*.%1) do echo %%G >> filelist.txt

goto END

:HELP 

echo(
echo FILELIST 
echo     Generates a file list of directory contents for a queried file extension type
echo(
echo ARGUMENTS
echo     First argument is the file extension type
echo     Second [optional] argument is "-r" for recursion through the subdirectories 
echo(
echo OUTPUT
echo     "filelist.txt" contains the filelist. If the recusive option is used, the filelist contents will keep the whole file path.
echo(
echo EXAMPLE
echo     filelist txt        Generates a list of all text files in the directory		
echo     filelist txt -r     Recursively generates a list of all text files in the directory tree
echo(

goto END

:END






