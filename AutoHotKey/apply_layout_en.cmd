@echo add AHK_script_with_en_default_layout shortcut to user autorun and apply now
@echo off

set dir=%AppData%\Microsoft\Windows\Start Menu\Programs\Startup
set name=main_en.ahk
set file=%dir%\%name%.lnk

cscript ..\utils\make_shortcut.vbs "%file%" "%cd%\files\%name%" >NUL
start "" "%file%"
pause
