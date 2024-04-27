@ECHO OFF
echo Loading...
if "%1"=="/n" otnogui.bat
if "%1"=="/N" OTNOGUI.BAT
if not exist LOGO.COM GOTO OTDRV
if not exist OTLOGO.BIN GOTO OTDRV
LOGO
ctmouse.exe

:System
set goba=System
suscr.exe /D " OmniTools For DOS " /M "Happy's Pangolin" /F Omni++
call w.bat box @endia.ini:w_System
goto %wbat%

:Disk
set goba=Disk
suscr.exe /D " OmniTools For DOS " /M "Happy's Pangolin" /F Omni++
call w.bat box @endia.ini:w_Disk
goto %wbat%

:File
set goba=File
suscr.exe /D " OmniTools For DOS " /M "Happy's Pangolin" /F Omni++
call w.bat box @endia.ini:w_File
goto %wbat%

:Image
set goba=Image
suscr.exe /D " OmniTools For DOS " /M "Happy's Pangolin" /F Omni++
call w.bat box @endia.ini:w_Image
goto %wbat%

:Readme
set goba=Readme
suscr.exe /D " OmniTools For DOS " /M "Happy's Pangolin" /F Omni++
call w.bat box @endia.ini:w_Readme
goto %wbat%

:HWiNFO
CD HW
HWiNFO.EXE
CD..
CLS
GOTO %goba%

:HWiNFO16
CD HW
HWiNFO16.exe
CD..
CLS
GOTO %goba%

:Power
power.com
CLS
goto %goba%

:Disk-Manager
CD DM
dm.com
CD..
CLS
GOTO %goba%

:Norton
CD PM
pqmagic.exe
CD..
CLS
GOTO %goba%

:Picture
CD PV
PICTVIEW.EXE
CD..
CLS
GOTO %goba%

:DOS94
CD DOS94
START.EXE
CD..
CLS
GOTO %goba%

:OTDRV
PV\PICTVIEW.EXE OTDRV\SOUND.DRV
PV\PICTVIEW.EXE OTDRV\ATAPA.DRV
PV\PICTVIEW.EXE OTDRV\COLOR.DRV
PV\PICTVIEW.EXE OTDRV\TKSUB.DRV
PV\PICTVIEW.EXE OTDRV\REHDD.DRV
CLS
ECHO Colorful Egg!
ECHO Please Re-install OmniTools For DOS!
GOTO QUIT

:Exit
cls
echo Thank you use OmniTools For DOS!

:QUIT
