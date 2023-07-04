@echo off
set "a=%cd%"
for /R %a%\ %%G in (*.gz) do echo "%%G"