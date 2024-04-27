@ECHO OFF
BREAK OFF
SUSCR.EXE /D " OmniTools For DOS Setup Program " /M "Loading..." /F Setup
set sd=C
set ins_dir=OTFDOS

:welcome
set back=welcome
SUSCR.EXE /M "Welcome"
call wbat box @SETUP.INF:w_welcome

:insdir
set back=insdir
SUSCR.EXE /M "Set Inatall Path"
call wbat box @SETUP.INF:w_insdir
if %sd%#==# goto %back%
if %ins_dir%#==# goto %back%
deltemp %sd%:\%ins_dir%
MKDIR %sd%:\%ins_dir%
MKDIR %sd%:\%ins_dir%\DM
MKDIR %sd%:\%ins_dir%\PM
MKDIR %sd%:\%ins_dir%\HW
MKDIR %sd%:\%ins_dir%\PV
MKDIR %sd%:\%ins_dir%\DOS94
MKDIR %sd%:\%ins_dir%\OTDRV

:copy
set dn=2
SUSCR.EXE /M "Copying Files..."
MESSAGES C
PKUNZIP MAIN.PAK %sd%:\%ins_dir%\ /O >nul
MESSAGES 12
PKUNZIP DM.PAK %sd%:\%ins_dir%\DM /O >nul
MESSAGES 25 12
PKUNZIP PM1.PAK %sd%:\%ins_dir%\PM /O >NUL
MESSAGES 37 25
set back=copy2
goto cdisk

:copy2
SUSCR.EXE /M "Change Setup Disk"
if NOT exist PM2.PAK goto cdisk
SUSCR.EXE /M "Copying Files..."
PKUNZIP PM2.PAK %sd%:\%ins_dir%\PM /O >NUL
MESSAGES 50 37
PKUNZIP PV.PAK %sd%:\%ins_dir%\PV /O >NUL
MESSAGES 62 50
PKUNZIP DOS94.PAK %sd%:\%ins_dir%\DOS94 /O >NUL
MESSAGES 75 62
PKUNZIP OTDRV.PAK %sd%:\%ins_dir%\OTDRV /O >NUL
MESSAGES 87 75
set dn=3

:copy3
SET back=copy3
SUSCR.EXE /M "Change Setup Disk"
if NOT exist hw.PAK goto cdisk
SUSCR.EXE /M "Copying Files..."
PKUNZIP HW.PAK %sd%:\%ins_dir%\HW /O >NUL >NUL
MESSAGES 100 87
GOTO success

:cdisk
call wbat box @SETUP.INF:w_changedisk
goto %back%

:success
call wbat box @SETUP.INF:w_success
goto end

:quit
call wbat box @SETUP.INF:w_quit #2,8
if errorlevel 2 goto %back%
cls
echo.
echo  OmniTools For DOS Setup Program
echo =================================
echo.
echo You have chosen to quit from 
echo OmniTools For DOS Setup Program.
echo Please install it next time.
echo.
echo (C)Copyright OmniSoftWare Corp 2024.
goto finish

:end
cls
C:
cd %sd%:\%ins_dir%
echo Type "OT" to run OmniTools For DOS.
echo Type "OT /N" to run OmniTools For DOS in No GUI mode.

:finish