set "a=%cd%"
for /R %a%\ %%G in (*.gz) do gzip -d "%%G"