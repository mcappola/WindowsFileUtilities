:: Recursively Appends All Text Files from Current Directory  
:: and Saves OUTPUT.TXT to Current Directory.

:: Michael Cappola (mcappola@udel.edu)
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

@echo off
set "a=%cd%"
for /R %a%\ %%G in (*.txt) do type "%%G" >> output.txt
