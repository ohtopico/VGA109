:TITLE

OEM DSP
:KEY
ET6000

:FILES :MODE=PRIMARY
ET6000          %BOOTDRIVE%:\OS2\DLL
BVHSVGA         %BOOTDRIVE%:\OS2\DLL
TSENGPMI        %BOOTDRIVE%:\OS2\DLL

:FILES :MODE=PRIMARY :MODE=DOS
VVIDEO          %BOOTDRIVE%:\OS2\MDOS
VMODE           %BOOTDRIVE%:\OS2

:FILES :MODE=PRIMARY :MODE=WINDOWS
WINDRVRS        %WINPATH%\SYSTEM
8514SYS.FON     %WINPATH%\SYSTEM
SSERIFF.FON     %WINPATH%\SYSTEM
COURF.FON       %WINPATH%\SYSTEM
SERIFF.FON      %WINPATH%\SYSTEM
SYMBOLF.FON     %WINPATH%\SYSTEM
SMALLF.FON      %WINPATH%\SYSTEM

***********************************************************

:CONFIG :MODE=PRIMARY
DEVINFO=SCR,VGA,%BOOTDRIVE%:\OS2\BOOT\VIOTBL.DCP
SET VIDEO_DEVICES=VIO_SVGA
SET VIO_SVGA=DEVICE(BVHVGA,BVHSVGA)

:CONFIG :MODE=PRIMARY :MODE=BIDI
SET VIO_VGA=DEVICE(BVHVGA,BDBVH)

:CONFIG :MODE=PRIMARY :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VSVGA.SYS

***********************************************************

:DEL_CONFIG_LINE :MODE=PRIMARY

*:DELETING XGA LINES FOR PROTECT MODE
DEVICE=%BOOTDRIVE%:\OS2\XGARING0.SYS
DEVICE=%BOOTDRIVE%:\OS2\XGA.SYS
DEVICE=%BOOTDRIVE%:\OS2\BOOT\XGARING0.SYS
DEVICE=%BOOTDRIVE%:\OS2\BOOT\XGA.SYS
BASEDEV=XGA.SYS
SET VIO_XGA=DEVICE(BVHVGA,BVHXGA)

*:DELETING BGA LINES FOR PROTECT MODE
DEVINFO=SCR,BGA,%BOOTDRIVE%:\OS2\VIOTBL.DCP
DEVINFO=SCR,BGA,%BOOTDRIVE%:\OS2\BOOT\VIOTBL.DCP
SET VIO_8514A=DEVICE(BVHVGA,BVH8514A)

*:DELETING CGA LINES FOR PROTECT MODE
DEVINFO=SCR,EGA,%BOOTDRIVE%:\OS2\VIOTBL.DCP
DEVINFO=SCR,EGA,%BOOTDRIVE%:\OS2\BOOT\VIOTBL.DCP
SET VIO_CGA=DEVICE(BVHCGA)

*:DELETING EGA LINES FOR PROTECT MODE
DEVINFO=SCR,EGA,%BOOTDRIVE%:\OS2\VIOTBL.DCP
DEVINFO=SCR,EGA,%BOOTDRIVE%:\OS2\BOOT\VIOTBL.DCP
SET VIO_EGA=DEVICE(BVHEGA)

*:DELETING VGA LINES FOR PROTECT MODE
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VSVGA.SYS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS
SET VIO_VGA=DEVICE(BVHVGA)

***********************************************************

:DEL_CONFIG_LINE :MODE=PRIMARY :MODE=DOS

*:DELETING S3 CORPS. DRIVERS STATEMENT FOR REAL MODE
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VENH.SYS

*:DELETING XGA LINES FOR REAL MODE
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VXGA.SYS

*:DELETING BGA LINES FOR REAL MODE
DEVICE=%BOOTDRIVE%:\OS2\MDOS\V8514A.SYS

*:DELETING CGA LINES FOR REAL MODE
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VCGA.SYS

*:DELETING EGA LINES FOR REAL MODE
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VEGA.SYS

*:DELETING VGA LINES FOR REAL MODE
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS

***********************************************************

:OS2INI :MODE=PRIMARY
%BOOTDRIVE%:\OS2\INSTALL\REINSTAL.INI
InstallWindow VIOADAPTERSTR 3

:OS2INI :MODE=SECONDARY
%BOOTDRIVE%:\OS2\INSTALL\REINSTAL.INI
InstallWindow VIOADAPTER2STR 3

:OS2INI :MODE=PRIMARY
OS2.INI
PM_DISPLAYDRIVERS  ET6000         ET6000
PM_DISPLAYDRIVERS  CURRENTDRIVER  ET6000
PM_Fonts           COURIERI
PM_Fonts           HELVI
PM_Fonts           TIMESI

* Note: win.ini font statements are missing. Should be included if
* font support for 1024x768 and 1280x768 is the same as XGA's.
:OS2INI :MODE=PRIMARY :MODE=WINDOWS
OS2.INI
PM_DISPLAYDRIVERS RESOLUTION_CHANGED 1
WIN_RES_640x480x16         WIN_RES_SET    WIN_RES_OEM_0
WIN_RES_640x480x256        WIN_RES_SET    WIN_RES_OEM_1
WIN_RES_640x480x65536      WIN_RES_SET    WIN_RES_OEM_2
WIN_RES_640x480x16777216   WIN_RES_SET    WIN_RES_OEM_3
WIN_RES_800x600x256        WIN_RES_SET    WIN_RES_OEM_4
WIN_RES_800x600x65536      WIN_RES_SET    WIN_RES_OEM_5
WIN_RES_800x600x16777216   WIN_RES_SET    WIN_RES_OEM_6
WIN_RES_1024x768x256       WIN_RES_SET    WIN_RES_OEM_7
WIN_RES_1024x768x65536     WIN_RES_SET    WIN_RES_OEM_8
WIN_RES_1024x768x16777216  WIN_RES_SET    WIN_RES_OEM_9
WIN_RES_1280x1024x256      WIN_RES_SET    WIN_RES_OEM_10
WIN_RES_1280x1024x65536    WIN_RES_SET    WIN_RES_OEM_11
WIN_RES_1280x1024x16777216 WIN_RES_SET    WIN_RES_OEM_12

WIN_RES_OEM_0   1  "system.ini boot             sdisplay.drv  vga.drv"
WIN_RES_OEM_0   2  "system.ini boot             display.drv   vga.drv"
WIN_RES_OEM_0   3  "system.ini boot             fonts.fon     vgasys.fon"
WIN_RES_OEM_0   4  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_OEM_0   5  "win.ini    fonts            \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_OEM_0   6  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_OEM_0   7  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_OEM_0   8  "win.ini    fonts            \"Small Fonts (VGA res)\"                     smalle.fon"

WIN_RES_OEM_1   1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_1   2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_1   3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_1   4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_1   5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_1   6  "system.ini Tseng            resolution     \"640x480\""
WIN_RES_OEM_1   7  "system.ini Tseng            colordepth     \"8\""
WIN_RES_OEM_1   8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_1   9  "system.ini Tseng            fontsize       \"small\""
WIN_RES_OEM_1  10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_1  11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_1  12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_1  13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_1  14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_OEM_1  15  "win.ini    fonts            \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_OEM_1  16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_OEM_1  17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_OEM_1  18  "win.ini    fonts            \"Small Fonts (VGA res)\"                     smalle.fon"

WIN_RES_OEM_2   1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_2   2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_2   3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_2   4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_2   5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_2   6  "system.ini Tseng            resolution     \"640x480\""
WIN_RES_OEM_2   7  "system.ini Tseng            colordepth     \"16\""
WIN_RES_OEM_2   8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_2   9  "system.ini Tseng            fontsize       \"small\""
WIN_RES_OEM_2  10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_2  11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_2  12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_2  13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_2  14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_OEM_2  15  "win.ini    fonts            \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_OEM_2  16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_OEM_2  17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_OEM_2  18  "win.ini    fonts            \"Small Fonts (VGA res)\"                     smalle.fon"

WIN_RES_OEM_3   1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_3   2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_3   3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_3   4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_3   5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_3   6  "system.ini Tseng            resolution     \"640x480\""
WIN_RES_OEM_3   7  "system.ini Tseng            colordepth     \"24\""
WIN_RES_OEM_3   8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_3   9  "system.ini Tseng            fontsize       \"small\""
WIN_RES_OEM_3  10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_3  11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_3  12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_3  13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_3  14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_OEM_3  15  "win.ini    fonts            \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_OEM_3  16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_OEM_3  17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_OEM_3  18  "win.ini    fonts            \"Small Fonts (VGA res)\"                     smalle.fon"

WIN_RES_OEM_4   1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_4   2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_4   3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_4   4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_4   5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_4   6  "system.ini Tseng            resolution     \"800x600\""
WIN_RES_OEM_4   7  "system.ini Tseng            colordepth     \"8\""
WIN_RES_OEM_4   8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_4   9  "system.ini Tseng            fontsize       \"small\""
WIN_RES_OEM_4  10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_4  11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_4  12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_4  13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_4  14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_OEM_4  15  "win.ini    fonts            \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_OEM_4  16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_OEM_4  17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_OEM_4  18  "win.ini    fonts            \"Small Fonts (VGA res)\"                     smalle.fon"

WIN_RES_OEM_5   1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_5   2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_5   3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_5   4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_5   5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_5   6  "system.ini Tseng            resolution     \"800x600\""
WIN_RES_OEM_5   7  "system.ini Tseng            colordepth     \"16\""
WIN_RES_OEM_5   8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_5   9  "system.ini Tseng            fontsize       \"small\""
WIN_RES_OEM_5  10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_5  11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_5  12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_5  13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_5  14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_OEM_5  15  "win.ini    fonts            \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_OEM_5  16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_OEM_5  17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_OEM_5  18  "win.ini    fonts            \"Small Fonts (VGA res)\"                     smalle.fon"

WIN_RES_OEM_6   1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_6   2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_6   3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_6   4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_6   5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_6   6  "system.ini Tseng            resolution     \"800x600\""
WIN_RES_OEM_6   7  "system.ini Tseng            colordepth     \"24\""
WIN_RES_OEM_6   8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_6   9  "system.ini Tseng            fontsize       \"small\""
WIN_RES_OEM_6  10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_6  11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_6  12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_6  13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_6  14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_OEM_6  15  "win.ini    fonts            \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_OEM_6  16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_OEM_6  17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_OEM_6  18  "win.ini    fonts            \"Small Fonts (VGA res)\"                     smalle.fon"

WIN_RES_OEM_7   1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_7   2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_7   3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_7   4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_7   5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_7   6  "system.ini Tseng            resolution     \"1024x768\""
WIN_RES_OEM_7   7  "system.ini Tseng            colordepth     \"8\""
WIN_RES_OEM_7   8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_7   9  "system.ini Tseng            fontsize       \"large\""
WIN_RES_OEM_7  10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_7  11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_7  12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_7  13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_7  14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\"  sseriff.fon"
WIN_RES_OEM_7  15  "win.ini    fonts            \"Courier 10,12,15 (8514/a res)\"                courf.fon"
WIN_RES_OEM_7  16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (8514/a res)\"       seriff.fon"
WIN_RES_OEM_7  17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (8514/a res)\"         symbolf.fon"
WIN_RES_OEM_7  18  "win.ini    fonts            \"Small Fonts (8514/a res)\"                     smallf.fon"

WIN_RES_OEM_8   1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_8   2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_8   3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_8   4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_8   5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_8   6  "system.ini Tseng            resolution     \"1024x768\""
WIN_RES_OEM_8   7  "system.ini Tseng            colordepth     \"16\""
WIN_RES_OEM_8   8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_8   9  "system.ini Tseng            fontsize       \"large\""
WIN_RES_OEM_8  10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_8  11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_8  12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_8  13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_8  14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\"  sseriff.fon"
WIN_RES_OEM_8  15  "win.ini    fonts            \"Courier 10,12,15 (8514/a res)\"                courf.fon"
WIN_RES_OEM_8  16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (8514/a res)\"       seriff.fon"
WIN_RES_OEM_8  17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (8514/a res)\"         symbolf.fon"
WIN_RES_OEM_8  18  "win.ini    fonts            \"Small Fonts (8514/a res)\"                     smallf.fon"

WIN_RES_OEM_9   1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_9   2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_9   3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_9   4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_9   5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_9   6  "system.ini Tseng            resolution     \"1024x768\""
WIN_RES_OEM_9   7  "system.ini Tseng            colordepth     \"24\""
WIN_RES_OEM_9   8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_9   9  "system.ini Tseng            fontsize       \"large\""
WIN_RES_OEM_9  10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_9  11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_9  12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_9  13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_9  14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\"  sseriff.fon"
WIN_RES_OEM_9  15  "win.ini    fonts            \"Courier 10,12,15 (8514/a res)\"                courf.fon"
WIN_RES_OEM_9  16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (8514/a res)\"       seriff.fon"
WIN_RES_OEM_9  17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (8514/a res)\"         symbolf.fon"
WIN_RES_OEM_9  18  "win.ini    fonts            \"Small Fonts (8514/a res)\"                     smallf.fon"

WIN_RES_OEM_10  1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_10  2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_10  3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_10  4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_10  5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_10  6  "system.ini Tseng            resolution     \"1280x1024\""
WIN_RES_OEM_10  7  "system.ini Tseng            colordepth     \"8\""
WIN_RES_OEM_10  8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_10  9  "system.ini Tseng            fontsize       \"large\""
WIN_RES_OEM_10 10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_10 11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_10 12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_10 13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_10 14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\"  sseriff.fon"
WIN_RES_OEM_10 15  "win.ini    fonts            \"Courier 10,12,15 (8514/a res)\"                courf.fon"
WIN_RES_OEM_10 16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (8514/a res)\"       seriff.fon"
WIN_RES_OEM_10 17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (8514/a res)\"         symbolf.fon"
WIN_RES_OEM_10 18  "win.ini    fonts            \"Small Fonts (8514/a res)\"                     smallf.fon"

WIN_RES_OEM_11  1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_11  2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_11  3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_11  4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_11  5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_11  6  "system.ini Tseng            resolution     \"1280x1024\""
WIN_RES_OEM_11  7  "system.ini Tseng            colordepth     \"8\""
WIN_RES_OEM_11  8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_11  9  "system.ini Tseng            fontsize       \"large\""
WIN_RES_OEM_11 10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_11 11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_11 12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_11 13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_11 14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\"  sseriff.fon"
WIN_RES_OEM_11 15  "win.ini    fonts            \"Courier 10,12,15 (8514/a res)\"                courf.fon"
WIN_RES_OEM_11 16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (8514/a res)\"       seriff.fon"
WIN_RES_OEM_11 17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (8514/a res)\"         symbolf.fon"
WIN_RES_OEM_11 18  "win.ini    fonts            \"Small Fonts (8514/a res)\"                     smallf.fon"

WIN_RES_OEM_12  1  "system.ini boot             sdisplay.drv ET6KSL.DRV"
WIN_RES_OEM_12  2  "system.ini boot             display.drv ET6K.DRV"
WIN_RES_OEM_12  3  "system.ini boot             fonts.fon vgasys.fon"
WIN_RES_OEM_12  4  "system.ini boot.description display.drv    \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_12  5  "system.ini boot.description sdisplay.drv   \"Tseng Labs ET6000 Display Driver\""
WIN_RES_OEM_12  6  "system.ini Tseng            resolution     \"1280x1024\""
WIN_RES_OEM_12  7  "system.ini Tseng            colordepth     \"8\""
WIN_RES_OEM_12  8  "system.ini Tseng            color16format  \"2\""
WIN_RES_OEM_12  9  "system.ini Tseng            fontsize       \"large\""
WIN_RES_OEM_12 10  "system.ini Tseng            vflatd         \"0\""
WIN_RES_OEM_12 11  "system.ini Tseng            linearaddr     \"64\""
WIN_RES_OEM_12 12  "system.ini Tseng            hardwarecursor \"1\""
WIN_RES_OEM_12 13  "system.ini Tseng            frequency      \"2\""
WIN_RES_OEM_12 14  "win.ini    fonts            \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\"  sseriff.fon"
WIN_RES_OEM_12 15  "win.ini    fonts            \"Courier 10,12,15 (8514/a res)\"                courf.fon"
WIN_RES_OEM_12 16  "win.ini    fonts            \"MS Serif 8,10,12,14,18,24 (8514/a res)\"       seriff.fon"
WIN_RES_OEM_12 17  "win.ini    fonts            \"Symbol 8,10,12,14,18,24 (8514/a res)\"         symbolf.fon"
WIN_RES_OEM_12 18  "win.ini    fonts            \"Small Fonts (8514/a res)\"                     smallf.fon"

* customize icon spacing below
:WININI :MODE=PRIMARY :MODE=WINDOWS
WIN.INI
Desktop IconSpacing 100

* system.ini entries below will be overwritten by graphics engine after reboot.
* if graphic engine fails to update system.ini for some reason
* the entries below are the default.

:WININI :MODE=PRIMARY :MODE=WINDOWS
SYSTEM.INI
boot sdisplay.drv ET6KSL.DRV
boot display.drv  ET6K.DRV
boot fonts.fon 8514sys.fon
boot.description display.drv    "Tseng Labs ET6000 Display Driver"
boot.description sdisplay.drv   "Tseng Labs ET6000 Display Driver"
boot   useos2shield 1
boot   os2shield    winsheld.exe

:APPEND

