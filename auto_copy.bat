@echo off
REM `@echo off` will not display command which is in this batch file resulting a clean look in the terminal.
title Auto Copy
echo Copying Files....
echo -----------------

xcopy "D:\source\*.cfg" "D:\destination1" /Y /I /Q
xcopy "D:\source\*.cfg" "D:\destination2" /Y /I /Q
xcopy "D:\source\*.docx" "D:\destination3" /Y /I /Q

REM SYNTAX: xcopy "SOURCE_FOLDER\*.cfg" "DESTINATION_FOLDER" /Y /I/ /Q
REM You can also add /EXCLUDE:_exclude_list.txt        // But you need to make a file called `_exclude_list.txt` and write `.txt` and `.exe` inside it if you want to exclude all *.txt & *.exe files. Even if any file/folder which contains `.txt` & `.exe` in its name will also be excluded if it exists in SOURCE_FOLDER.
REM /Y = Will not prompt to replace already existing file at DESTINATION_FOLDER.
REM /I = If specified DESTINATION_FOLDER doesn't exist then it will create with the name specified in this script.
REM /Q = Suppresses the display of xcopy messages.
REM /S = Copies directories and subdirectories, unless they are empty. If you omit /s, xcopy works within a single directory.
REM /E = Copies all subdirectories, even if they are empty. Use /e with the /s and /t command-line options.
REM /T = Copies the subdirectory structure (that is, the tree) only, not files. To copy empty directories, you must include the /e command-line option.
REM /H = Copies files with hidden and system file attributes. By default, xcopy does not copy hidden or system files.
REM /K = Copies files and retains the read-only attribute on Destination files if present on the Source files. By default, xcopy removes the read-only attribute.
REM xcopy DOCUMENTATION:- https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/xcopy

echo -----------------
echo Files Copied Successfully. 
echo Press ENTER to exit...
set /p input=
