@ECHO OFF
:chk
cls
echo.
echo  OmniTools For DOS Full installation requires Setup Disk 3
echo  Please change the disk in the drive
echo.
PAUSE
if not exist hw.exe goto chk
CLS
ECHO.
ECHO  Setup is copying files from Disk 3...
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
hw c:\otfdos\pm -o >NUL
pv c:\otfdos\pv -o >NUL
hd c:\otfdos\hd -o >nul
C:
cd c:\
cd c:\otfdos
cls
echo.
ECHO  Installation completed!
echo  Please type OT to run OmniTools For DOS
echo.
pause
