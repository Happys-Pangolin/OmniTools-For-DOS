@ECHO OFF
echo Loading...
ctmouse.exe

:main
suscr.exe /D " OmniTools For DOS " /M "Happy's Pangolin" /F Omni++
call w.bat box @dialog.inf:w_page1
GOTO %WBAT%

:page2
call w.bat box @dialog.inf:w_page2
goto main

:DG
DISKGEN.EXE
CLS
GOTO MAIN

:Ghost
Ghost.exe
CLS
GOTO MAIN

:Power
power.com
CLS
goto main

:Disk
dm.com
CLS
GOTO MAIN

:Norton
pqmagic.exe
CLS
GOTO MAIN

:Exit
cls
echo Thank you use OmniTools For DOS!
Exit