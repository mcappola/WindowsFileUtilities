:: FILESMASH 
:: Appends file contents to a single file based on user 
:: input.

:: Arguments
:: [Required] 		:First argument is the file 
::			extension.

:: [Optional]		:Passing "-r" as the second 
::			argument allows for recursion
::			through the subdirectories from
::			where the script is called.

:: Example
:: -- "filesmash txt"	:Appends all text files in a 
::			directory
:: -- "filesmash txt -r :Appends all text files directory 
::			subdirectories from where the 
::			script is called.

:: Michael Cappola (mcappola@udel.edu)
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

@echo off

if "%1"=="" goto :HELP 

set test=FALSE
if exist "output.txt" set test=TRUE

if "%TEST%"=="TRUE" (
	SET /P DELETE=OUTPUT.TXT ALREADY EXISTS. OVERWRITE? (Y/[N])
	if /I "%DELETE%" == "Y" del output.txt 2>NUL
	if /I "%DELETE%" == "N" goto END
)

if "%2"=="-r" goto RECURSIVE

for %%f in (*.%1) do (
    (echo "%%f" | find /I "output.txt" 1>NUL) || (
        type %%f >> output.txt
    )
)

if "%2" NEQ "-r" goto END

:RECURSIVE

set "a=%cd%"
for /R %a%\ %%f in (*.%1) do (
    (echo "%%f" | find /I "output.txt" 1>NUL) || (
        type %%f >> output.txt
    )
)

goto END

:HELP 

echo(
echo FILESMASH 
echo     Appends file contents to a single output file based on user input.
echo(
echo Arguments
echo     -First argument is the file extension type.
echo     -Second [optional] argument is "-r" if recursion through the subdirectories from
echo     where the script is called from is desired.
echo(
echo Output
echo     "output.txt" which contains all file contents.
echo(
echo Example
echo     filesmash txt        Appends content of all text files in the directory		
echo     filesmash txt -r     Recursively appends content of all text files in a directory tree
echo(

goto END

:END

