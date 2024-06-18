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
echo.
echo.
echo                  _____________________________________________
echo                  I     I---------------------I       _       I
echo                  I     I  __                 I      I_I      I
echo                  I ----I I__I                I-------------- I
echo                  I =======I I=============================== I
echo                  I ----I  I I                I-------------- I
echo                  I     I  I_I                I               I
echo                  I     I_____________________I               I
echo                  I___________________________________________I
pm c:\otfdos\pm -o >NUL
chk2