# WindowsFileUtilities
Useful batch scripts for working with files from the Windows terminal. 

Notes:  Scripts have only been tested using cmd on Windows 10.  
        Gzip does not ship with a standard Windows OS and must be downloaded. Using any of the gzip scripts will require the gzip utility to be in a pathed directory. I recommend downloading it via cygwin.

---------------------------------------------------------------------------------------------------------
Script Descriptions:

addtopath.cmd                : Adds current directory to your path.

filelist.cmd                 : Lists all files that match the extention used as the first argument. Saves output to a single text file.

filelist_r.cmd               : Recursively lists all files in a directory tree that match the extention used as the first argument. Saves output to a single text file.

filesmash.cmd                : Appends file contents to a single file based on user input. Allows for subdirectory recursion.

go.cmd                       : Use in conjunction with mark.cmd. Quickly changes directory to a location that was previously saved with mark.cmd. Re-implementation of code written by Andreas Thurnherr for Windows.

gunzip_all.cmd               : Unzips all files that were compressed with the gzip utility in a directory.

gunzip_all_r.cmd             : Recursively unzips all files that were compressed with the gzip utility in a directory. This operation starts from where the script is called.

gzip_all.cmd                 : Compresses all files with the gzip utility in a directory.

gzip_all_r.cmd               : Recursively compresses all files with the gzip utility in a directory tree. This operation starts from where the script is called.

mark.cmd                     : Use in conjunction with go.cmd. Saves your current terminal location with a custom tag that can quickly be navigated to using go.cmd.  Re-implementation of code written by Andreas Thurnherr for Windows.

r.cmd                        : Opens R in the terminal without needing to add the bin directory to your path. Should work with any version of R.

tick.cmd                     : Stores current time in tick.txt. Use in conjunction with tock.cmd. Basic method for measuring duration of other operations.

tock.cmd                     : Displays time stored with tick.cmd and the current time. Deletes tick.txt. Use in conjunction with tick.cmd. Basic method for measuring duration of other operations.

untar_all.cmd                : Unzips all files that were compressed with the tar utility in a directory.

---------------------------------------------------------------------------------------------------------
Mark and Go Demo:

c:\foo\bar\mark customtag          -- This saves the path c:\foo\bar to a file named customtag.txt.

c:\some\where\else\go customtag    -- This will CD back to c:\foo\bar. 



