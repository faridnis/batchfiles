@ECHO off
cls
:start
ECHO.
ECHO 1. Print Hello
ECHO 2. Print Bye
ECHO 3. Print Test
ECHO 4. Move files
set /p choice=What you want to do: 
rem if not '%choice%'=='' set choice=%choice:~0;1% ( don`t use this command, because it takes only first digit in the case you type more digits. After that for example choice 23455666 is choice 2 and you get "bye"
if '%choice%'=='' ECHO "%choice%" is not valid please try again
if '%choice%'=='1' goto hello
if '%choice%'=='2' goto bye
if '%choice%'=='3' goto test
if '%choice%'=='4' goto move
goto start
:hello
ECHO HELLO
goto end
:bye
ECHO BYE
goto end
:test
ECHO TEST
goto end
:end
ECHO MOVE
goto move
move "C:\Users\binAnuarFari\Desktop\E Dictionary\lists2.txt" "C:\Users\binAnuarFari\Desktop\testfolder"
pause
exit