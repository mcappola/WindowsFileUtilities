@echo off 
del filelist.txt
for %%f in (*.%1) do echo %%f >> filelist.txt