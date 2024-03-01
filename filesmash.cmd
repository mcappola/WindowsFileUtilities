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
if exist "output.txt" del output.txt

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

:END

