@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=PROCEEDING WILL GZIP ALL CONTENTS IN CURRENT DIRECTORY AND SUBDIRECTORIES. ARE YOU SURE (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END 
@echo on

set "a=%cd%"
for /R %a%\ %%G in (*.*) do gzip "%%G"

:END
@echo off
endlocal