@echo off

:main
cls
echo.
echo Omnitools For DOS
echo =================
echo.
echo  [1] System Tools
echo  [2] Disk Tools
echo  [3] File Tools
echo  [4] Image Tools
echo  [5] Readme
echo  [6] Power Control
echo  [7] Exit to DOS
echo.
choice /n /c:1234567 Select:
if errorlevel 7 goto exit
if errorlevel 6 goto power
if errorlevel 5 goto readme
if errorlevel 4 goto image
if errorlevel 3 goto file
if errorlevel 2 goto disk
if errorlevel 1 goto system

:system
cls
echo.
echo Omnitools For DOS
echo =================
echo.
echo  [1] HWiNFO
echo  [2] HWiNFO16
echo  [3] Back
echo.
choice /n /c:123 Select:
if errorlevel 3 goto main
if errorlevel 2 goto HW16
if errorlevel 1 goto HW

:disk
cls
echo.
echo Omnitools For DOS
echo =================
echo.
echo  [1] Disk Manager
echo  [2] Norton PM
echo  [3] Back
echo.
choice /n /c:123 Select:
if errorlevel 3 goto main
if errorlevel 2 goto PM
if errorlevel 1 goto DM

:file
cls
echo.
echo Omnitools For DOS
echo =================
echo.
echo  [1] DOS94
echo  [2] Back
echo.
choice /n /c:12 Select:
if errorlevel 2 goto main
if errorlevel 1 goto DOS94

:image
cls
echo.
echo Omnitools For DOS
echo =================
echo.
echo  [1] Picture Viewer
echo  [2] Back
echo.
choice /n /c:12 Select:
if errorlevel 2 goto main
if errorlevel 1 goto PV

:readme
cls
echo.
echo  OmniTools:
echo    A lightweight toolbox for quick 
echo    access to practical features
echo    OmniTools is a toolbox developed by 
echo    Omni++ and Happy's Pangolin for DOS.
echo    At present, OmniTools is a 
echo    formal version, so its functionality may not
echo    be complete (it may have very few features). 
echo    We will continue to improve the toolbox 
echo    (by adding more features).
echo.
pause
goto main

:power
power.com
goto main

:HW16
CD HW
HWiNFO16.EXE
CD..
CLS 
GOTO system

:HW 
cd HW
HWiNFO.EXE
CD..
CLS
GOTO system

:PM
CD PM
pqmagic.exe
cd..
cls 
goto disk

:DM
cd dm
dm.com
cd..
cls
goto disk

:DOS94
CD DOS94
START.EXE
CD..
CLS
GOTO file

:PV
CD PV
PICTVIEW.EXE
CD..
CLS
GOTO image

:exit
cls
echo Thank you use OmniTools For DOS!
