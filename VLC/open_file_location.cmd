@echo open VLC config location in Windows
@echo off

set dir=%AppData%\vlc
set name=vlcrc
set file=%dir%\%name%

if exist "%file%" start /max explorer /select, "%file%" & goto :eof
if exist "%dir%" start /max explorer "%dir%" & goto :eof

echo Folder "%dir%" can't be found.
choice /m "Create it"
if %ErrorLevel% == 1 (
	mkdir "%dir%"
	if ErrorLevel 1 (
		echo Can't create folder "%dir%".
		pause & goto :eof
	)
	start /max explorer "%dir%"
)
