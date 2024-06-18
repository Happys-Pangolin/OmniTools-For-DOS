SCREEN 12
main:
CLS
LOCATE 1, 26
PRINT "OmniTools For DOS Set-Up"
LOCATE 5, 1
PRINT "For Example:ABC-DEFGHIJ"
LOCATE 7, 1

INPUT "Please input A:", A
INPUT "Please input B:", B
INPUT "Please input C:", C
INPUT "Please input D:", D
INPUT "Please input E:", E
INPUT "Please input F:", F
INPUT "Please input G:", G
INPUT "Please input H:", H
INPUT "Please input I:", I
INPUT "Please input J:", J
PRINT "Your's CD-KEY:"; A; B; C; " - "; D; E; F; G; H; I; J
IF A = 3 GOTO fake
IF A = 4 GOTO fake
IF A = 5 GOTO fake
IF D < 0 GOTO fake
IF E < 0 GOTO fake
IF F < 0 GOTO fake
IF G < 0 GOTO fake
IF H < 0 GOTO fake
IF I < 0 GOTO fake
IF J < 0 GOTO fake
IF (D + E + F + G + H + I + J) MOD 7 > 0 GOTO fake
IF (D + E + F + G + H + I + J) = 0 GOTO fake

right:
PRINT "Your's CD-KEY is allowed,Set-Up will continue"
SHELL "pause"
CLS
LOCATE 2, 2
PRINT "Setup is copying files from Disk1..."
LOCATE 4, 18
PRINT "_____________________________________________"
LOCATE 5, 18
PRINT "|     |---------------------|       _       |"
LOCATE 6, 18
PRINT "|     |  __                 |      |_|      |"
LOCATE 7, 18
PRINT "| ----| |__|                |-------------- |"
LOCATE 8, 18
PRINT "| =======| |=============================== |"
LOCATE 9, 18
PRINT "| ----|  | |                |-------------- |"
LOCATE 10, 18
PRINT "|     |  |_|                |               |"
LOCATE 11, 18
PRINT "|     |_____________________|               |"
LOCATE 12, 18
PRINT "|___________________________________________|"
SHELL "deltemp c:\otfdos >nul"
SHELL "mkdir c:\otfdos >nul"
SHELL "mkdir c:\otfdos\hw >nul"
SHELL "mkdir c:\otfdos\pv >nul"
SHELL "mkdir c:\otfdos\pm >nul"
SHELL "mkdir c:\otfdos\dm >nul"
SHELL "mkdir c:\otfdos\hd >nul"
SHELL "hw c:\otfdos\hw -o >nul"
SHELL "dm c:\otfdos\dm -o >nul"
SHELL "main c:\otfdos -o >nul"
SHELL "CHK.BAT"
END

fake:
PRINT "The CD-KEY is fake!Please reinput."
SHELL "pause"
GOTO main

