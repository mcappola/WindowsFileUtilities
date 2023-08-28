@echo off 
set "a=%cd%"
for /R %a%\ %%G in (*.%1) do echo "%%G" >> filelist.txt
