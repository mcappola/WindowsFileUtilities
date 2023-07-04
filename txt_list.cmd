@echo off
set "a=%cd%"
for /R %a%\ %%G in (*.txt) do echo "%%G"