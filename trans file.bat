@ECHO OFF
Title Trans/Mov/Cpy File
REM source folder location
set Source_Folder=C:\Users\binAnuarFari\Desktop\E Dictionary\*.txt
REM destination folder location
set Dest_Folder=C:\Users\binAnuarFari\Desktop\testfolder
REM Ask file name from user
set /p FileName= Enter File Name 
REM if destination folder not available, create
mkdir %Dest_Folder%
REM copy the files
copy %Source_Folder%\*%FileName%* %Dest_Folder%\.
:pause