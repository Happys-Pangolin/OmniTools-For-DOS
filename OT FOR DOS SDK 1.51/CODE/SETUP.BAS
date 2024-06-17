SCREEN 12
10
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
IF A = 3 GOTO 30
IF A = 4 GOTO 30
IF A = 5 GOTO 30
IF D < 0 GOTO 30
IF E < 0 GOTO 30
IF F < 0 GOTO 30
IF G < 0 GOTO 30
IF H < 0 GOTO 30
IF I < 0 GOTO 30
IF J < 0 GOTO 30
IF (D + E + F + G + H + I + J) MOD 7 > 0 GOTO 30
IF (D + E + F + G + H + I + J) = 0 GOTO 30

20
PRINT "Your's CD-KEY is allowed,Set-Up will continue"
SLEEP 3
CLS
PRINT "Setup is copying files from Disk1..."
SHELL "deltemp c:\otfdos >nul"
SHELL "mkdir c:\otfdos >nul"
SHELL "mkdir c:\otfdos\hw >nul"
SHELL "mkdir c:\otfdos\pv >nul"
SHELL "mkdir c:\otfdos\pm >nul"
SHELL "mkdir c:\otfdos\dm >nul"
SHELL "hw c:\otfdos\hw -o >nul"
SHELL "dm c:\otfdos\dm -o >nul"
SHELL "main c:\otfdos -o >nul"
SHELL "CHK.BAT"
END

30
PRINT "The CD-KEY is fake!Please reinput."
SLEEP 2
GOTO 10

