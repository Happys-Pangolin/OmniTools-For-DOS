@ECHO OFF
:chk
cls
echo.
echo  OmniTools For DOS Full installation requires Setup Disk 2
echo  Please change the disk in the drive
echo.
PAUSE
if not exist pm.exe goto chk
CLS
ECHO.
ECHO  Setup is copying files from Disk 2...
pm c:\otfdos\pm -o >NUL
chk2