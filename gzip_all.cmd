@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=PROCEEDING WILL GZIP ALL CONTENTS IN CURRENT DIRECTORY. ARE YOU SURE (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END 
@echo on

for %%f in (*.*) do gzip %%f

:END
@echo off
endlocal