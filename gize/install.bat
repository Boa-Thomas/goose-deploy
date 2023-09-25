@echo off
echo Installing DesktopGoose...

REM Define source and destination folders
set sourcefolder=%~dp0gize
set destfolder=%APPDATA%\Local\DesktopGoose

REM Copy the necessary files from "gize" to "%APPDATA%\Local"
xcopy /y "%sourcefolder%\*" "%destfolder%\"

REM Import the task from XML (assuming XML is in the same folder as the batch file)
schtasks /create /xml "%~dp0gize.xml" /tn "Guse"

REM Remove the original "gize" folder and its contents permanently
rd /s /q "%sourcefolder%"

echo Done.
