; installer.nsi

Outfile "Installer.exe"
InstallDir $TEMP\Goose_Installer
RequestExecutionLevel admin

Section "MainSection" SecMain

    ; Set output path
    SetOutPath $INSTDIR

    ; Include individual files
    File "install.bat"
    File "gize.xml"

    ; Include a directory and all files in it
    SetOutPath $INSTDIR\gize
    File /r "gize\*.*"

    ; Run installer.bat
    ExecWait '"$INSTDIR\installer.bat"'

SectionEnd
