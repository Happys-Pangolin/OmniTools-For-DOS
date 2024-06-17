CLS
SCREEN 0
COLOR 15, 1
SHELL "LOGO.COM"

menu:
CLS
SHELL "bg.bat"
LOCATE 2, 2
PRINT "OmniTools For DOS"
LOCATE 3, 2
PRINT "================="
LOCATE 5, 5
PRINT "[1] System Tools"
LOCATE 6, 5
PRINT "[2] Disk Tools"
LOCATE 7, 5
PRINT "[3] Image Tools"
LOCATE 8, 5
PRINT "[4] Readme"
LOCATE 9, 5
PRINT "[5] Power Control"
LOCATE 10, 5
PRINT "[6] Exit to DOS"
LOCATE 12, 1
INPUT "Select:", sel
IF sel = 1 GOTO sys
IF sel = 2 GOTO disk
IF sel = 3 GOTO image
IF sel = 4 GOTO readme
IF sel = 5 GOTO power
IF sel = 6 GOTO quit
IF sel = 0 GOTO menu
IF sel > 6 GOTO menu

sys:
CLS
SHELL "bg.bat"
LOCATE 2, 2
PRINT "OmniTools For DOS"
LOCATE 3, 2
PRINT "================="
LOCATE 5, 5
PRINT "[1] HWiNFO v2.3"
LOCATE 6, 5
PRINT "[2] Back"
LOCATE 8, 1
INPUT "Select:", sel
IF sel = 1 GOTO hw
IF sel = 2 GOTO menu
IF sel = 0 GOTO sys
IF sel > 2 GOTO sys

disk:
CLS
SHELL "bg.bat"
LOCATE 2, 2
PRINT "OmniTools For DOS"
LOCATE 3, 2
PRINT "================="
LOCATE 5, 5
PRINT "[1] Disk Manager"
LOCATE 6, 5
PRINT "[2] Norton PM"
LOCATE 7, 5
PRINT "[3] Back"
LOCATE 9, 1
INPUT "Select:", sel
IF sel = 1 GOTO dm
IF sel = 2 GOTO pm
IF sel = 3 GOTO menu
IF sel = 0 GOTO disk
IF sel > 3 GOTO disk

image:
CLS
SHELL "bg.bat"
LOCATE 2, 2
PRINT "OmniTools For DOS"
LOCATE 3, 2
PRINT "================="
LOCATE 5, 5
PRINT "[1] Picture Viewer"
LOCATE 6, 5
PRINT "[2] Back"
LOCATE 8, 1
INPUT "Select:", sel
IF sel = 1 GOTO pv
IF sel = 2 GOTO menu
IF sel = 0 GOTO image
IF sel > 2 GOTO image

readme:
CLS
LOCATE 2, 3
PRINT "OmniTools:"
LOCATE 3, 5
PRINT "A lightweight toolbox for quick"
LOCATE 4, 5
PRINT "access to practical features"
LOCATE 5, 5
PRINT "OmniTools is a toolbox developed by"
LOCATE 6, 5
PRINT "Omni++ and Happy's Pangolin for DOS."
LOCATE 7, 5
PRINT "At present, OmniTools is a"
LOCATE 8, 5
PRINT "formal version, so its functionality may not"
LOCATE 9, 5
PRINT "be complete (it may have very few features)."
LOCATE 10, 5
PRINT "We will continue to improve the toolbox"
LOCATE 11, 5
PRINT "(by adding more features)."
LOCATE 13, 1
PRINT "Please press any key to back."
SLEEP 30
GOTO menu

power:
SHELL "C:\OTFDOS\POWER.COM"
GOTO menu

hw:
SHELL "C:\OTFDOS\HW\HWiNFO16.EXE"
GOTO sys

pm:
SHELL "C:\OTFDOS\PM\pqmagic.exe"
GOTO disk

dm:
SHELL "C:\OTFDOS\DM\DM.COM"
GOTO disk

pv:
SHELL "C:\OTFDOS\PV\PICTVIEW.EXE"
GOTO image

quit:
CLS
SCREEN 11
PRINT "Thank you use OmniTools For DOS!"
SHELL "PAUSE"
END

