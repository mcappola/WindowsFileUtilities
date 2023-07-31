@echo off 
del filelist.txt
set "a=%cd%"
for /R %a%\ %%G in (*.%1) do echo "%%G" >> filelist.txt