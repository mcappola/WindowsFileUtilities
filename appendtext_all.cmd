:: Appends All Text Files from Current Directory and 
:: Saves OUTPUT.TXT to Current Directory.

:: Michael Cappola (mcappola@udel.edu)
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

@echo off
for %%f in (*.txt) do type %%f >> output.txt