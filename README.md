# WindowsCMDTools
Useful batch scripts for working with files from the Windows terminal. 
Last Update: 20230808
Michael Cappola (mcappola@udel.edu)

Notes:  Scripts have only been tested using the command prompt on Windows 10.  
        Gzip does not ship with a standard Windows OS and must be downloaded. Using any of the gzip scripts will require the gzip utility to be in a pathed directory. I recommend downloading it via cygwin.

---------------------------------------------------------------------------------------------------------
Script Descriptions:

addtopath.cmd                : Adds current directory to your path.

appendtext_all.cmd           : Appends all text documents in a directory to a single file.

appendtext_all_r.cmd         : Recursively appends all text documents in a directory tree to a single file. This operation starts from where the script is called. Output is saved where the script is called.

filelist.cmd                 : Lists all files that match the extention used as the first argument. Saves output to a single text file.

filelist_r.cmd               : Recursively lists all files in a directory tree that match the extention used as the first argument. Saves output to a single text file.

go.cmd                       : Use in conjunction with mark.cmd. Quickly changes directory to a location that was previously saved with mark.cmd. Re-implementation of code written by Andreas Thurnherr for Windows.

gunzip_all.cmd               : Unzips all files that were compressed with the gzip utility in a directory.

gunzip_all_r.cmd             : Recursively unzips all files that were compressed with the gzip utility in a directory. This operation starts from where the script is called.

gzip_all.cmd                 : Compresses all files with the gzip utility in a directory.

gzip_all_r.cmd               : Recursively compresses all files with the gzip utility in a directory tree. This operation starts from where the script is called.

mark.cmd                     : Use in conjunction with go.cmd. Saves your current terminal location with a custom tag that can quickly be navigated to using go.cmd.  Re-implementation of code written by Andreas Thurnherr for Windows.

untar_all.cmd                : Unzips all files that were compressed with the tar utility in a directory.

---------------------------------------------------------------------------------------------------------
Mark and Go Demo:

c:\foo\bar\mark customtag          -- This saves the path c:\foo\bar to a file named customtag.txt.

c:\some\where\else\go customtag    -- This will CD back to c:\foo\bar. 



