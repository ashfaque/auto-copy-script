@echo off    & REM `@echo off` will not display command which is in this batch file resulting a clean look in the terminal.
title Auto Copy
echo Copying Files....
echo -----------------

:: IMPORTANT:- `exclude_list.txt` should be in the same directory where your auto_copy.bat file is.
xcopy "D:\source\*.cfg" "D:\destination1" /Y /I /Q /EXCLUDE:exclude_list.txt
xcopy "D:\source\*.cfg" "D:\destination2" /Y /I /Q
xcopy "D:\source\*.docx" "D:\destination3" /Y /I /Q

:: Using `for` loop to copy multiple file types from same source without writing separate lines of codes.
for %%e in (docx pdf wri txt pptx xlsx cfg) do (
xcopy "C:\source\*.%%e" "D:\_Destination" /Y /I /Q /EXCLUDE:exclude_list.txt
xcopy "C:\source\*.%%e" "E:\destination" /Y /I /Q /EXCLUDE:exclude_list.txt > D:\database\List_of_files_copied.txt
)

:: SYNTAX: xcopy "SOURCE_FOLDER\*.cfg" "DESTINATION_FOLDER" /Y /I/ /Q
:: You can also add /EXCLUDE:_exclude_list.txt        // But you need to make a file called `_exclude_list.txt` and write `.txt` and `.exe` inside it if you want to exclude all *.txt & *.exe files. Even if any file/folder which contains `.txt` & `.exe` in its name will also be excluded if it exists in SOURCE_FOLDER.
:: /Y = Will not prompt to replace already existing file at DESTINATION_FOLDER.
:: /I = If specified DESTINATION_FOLDER doesn't exist then it will create with the name specified in this script.
:: /Q = Suppresses the display of xcopy messages.
:: /S = Copies directories and subdirectories, unless they are empty. If you omit /s, xcopy works within a single directory.
:: /E = Copies all subdirectories, even if they are empty. Use /e with the /s and /t command-line options.
:: /T = Copies the subdirectory structure (that is, the tree) only, not files. To copy empty directories, you must include the /e command-line option.
:: /H = Copies files with hidden and system file attributes. By default, xcopy does not copy hidden or system files.
:: /K = Copies files and retains the read-only attribute on Destination files if present on the Source files. By default, xcopy removes the read-only attribute.
:: xcopy DOCUMENTATION:- https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/xcopy
:: For loop DOCUMENTATION:- https://ss64.com/nt/for.html

echo -----------------
echo Files Copied Successfully.
echo Press ENTER to exit...
set /p input=
:: `set /p input=` will wait for user input in the end after execution of the batch file. And thats how we can hold the screen after execution of our batch file.
