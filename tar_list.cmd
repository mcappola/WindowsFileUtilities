@echo off
set "a=%cd%"
for /R %a%\ %%G in (*.tar) do echo "%%G"