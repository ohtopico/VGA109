* Alliance Semiconductor ProMotion
* For OS/2 2.1, 2.11, 3.0
:TITLE
ALSC BASEVID (DISP1) DSP

:KEY
ALSC211

* FOR WOW
:FILES :MODE=PRIMARY :MODE=WINDOWS
WINALSC.pak   %WINPATH%\SYSTEM
*WINXFNTS     %WINPATH%\SYSTEM
*WINFFNTS     %WINPATH%\SYSTEM

:FILES :MODE=PRIMARY
ALSCPM.pak  %BOOTDRIVE%:\os2\dll
ALSC_V.pak  %BOOTDRIVE%:\os2\mdos
ALSC_PMI.pak %BOOTDRIVE%:\os2
os2211.pak  %BOOTDRIVE%:

:CONFIG :MODE=PRIMARY
DEVINFO=SCR,VGA,%BOOTDRIVE%:\OS2\VIOTBL.DCP
SET VIDEO_DEVICES=VIO_SVGA
SET VIO_SVGA=DEVICE(BVHVGA,BVHSVGA)

:CONFIG :MODE=PRIMARY :MODE=BIDI
SET VIO_SVGA=DEVICE(BVHVGA,BVHSVGA,BDBVH)

:CONFIG :MODE=PRIMARY :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VPRPMI.SYS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VSVGA.SYS

:CONFIG :MODE=PRIMARY :MODE=WINDOWS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VWIN.SYS

:DEL_CONFIG_LINE :MODE=PRIMARY
SET VIO_%PRI% = DEVICE(BVH%PRI%,BDBVH)
SET VIO_8514A=DEVICE(BVHVGA,BVH8514A,BDBVH)
SET VIO_CGA=DEVICE(BVHCGA,BDBVH)
SET VIO_EGA=DEVICE(BVHEGA,BDBVH)
SET VIO_SVGA=DEVICE(BVHVGA,BVHSVGA,BDBVH)
SET VIO_VGA=DEVICE(BVHVGA,BDBVH)
SET VIO_VGA=DEVICE(BVHVGA,BVHSVGA,BDBVH)
SET VIO_XGA=DEVICE(BVHVGA,BVHXGA,BDBVH)

*:DELETING VGA LINES FOR PROTECT MODE
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS
SET VIO_VGA=DEVICE(BVHVGA)
DEVINFO=SCR,VGA,%BOOTDRIVE%:\OS2\VIOTBL.DCP
DEVINFO=SCR,VGA,%BOOTDRIVE%:\OS2\BOOT\VIOTBL.DCP

*:DELETING SVGA LINES FOR PROTECT MODE
*DEVICE=%BOOTDRIVE%:\OS2\MDOS\VSVGA.SYS
*SET VIO_SVGA=DEVICE(BVHVGA)

*:DELETING XGA LINES FOR PROTECT MODE
DEVICE=%BOOTDRIVE%:\OS2\XGARING0.SYS
DEVICE=%BOOTDRIVE%:\OS2\BOOT\XGARING0.SYS
DEVICE=%BOOTDRIVE%:\OS2\XGA.SYS
DEVICE=%BOOTDRIVE%:\OS2\BOOT\XGA.SYS
BASEDEV=XGA.SYS
SET VIO_XGA=DEVICE(BVHVGA,BVHXGA)

*:DELETING BGA LINES FOR PROTECT MODE
SET VIO_8514A=DEVICE(BVHVGA,BVH8514A)

*:DELETING CGA LINES FOR PROTECT MODE
SET VIO_CGA=DEVICE(BVHCGA)

*:DELETING EGA LINES FOR PROTECT MODE
SET VIO_EGA=DEVICE(BVHEGA)

:DEL_CONFIG_LINE :MODE=PRIMARY :MODE=DOS

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

:OS2INI :MODE=PRIMARY
%BOOTDRIVE%:\OS2\INSTALL\REINSTAL.INI
InstallWindow VIOADAPTERSTR 7
InstallWindow SVGA_RESOLUTION HIRES

:OS2INI :MODE=SECONDARY
%BOOTDRIVE%:\OS2\INSTALL\REINSTAL.INI
InstallWindow VIOADAPTER2STR 7
InstallWindow SVGA_RESOLUTION HIRES

:OS2INI :MODE=PRIMARY
OS2.INI
PM_DISPLAYDRIVERS  ALSCPM           ALSCPM
PM_DISPLAYDRIVERS  CURRENTDRIVER    ALSCPM
PM_DISPLAYDRIVERS  DEFAULTDRIVER    IBMVGA32
PM_Fonts           COURIERI
PM_Fonts           HELVI
PM_Fonts           TIMESI

:OS2INI :MODE=PRIMARY :MODE=WINDOWS
OS2.INI
PM_DISPLAYDRIVERS RESOLUTION_CHANGED 1

WIN_RES_640x480x256         WIN_RES_SET WIN_RES_ALSC_1
WIN_RES_640x480x65536       WIN_RES_SET WIN_RES_ALSC_2
WIN_RES_640x480x16777216    WIN_RES_SET WIN_RES_ALSC_3
WIN_RES_800x600x256         WIN_RES_SET WIN_RES_ALSC_4
WIN_RES_800x600x65536       WIN_RES_SET WIN_RES_ALSC_5
WIN_RES_800x600x16777216    WIN_RES_SET WIN_RES_ALSC_6
WIN_RES_1024x768x256        WIN_RES_SET WIN_RES_ALSC_7
WIN_RES_1024x768x65536      WIN_RES_SET WIN_RES_ALSC_8
WIN_RES_1280x1024x256       WIN_RES_SET WIN_RES_ALSC_9
WIN_RES_1600x1200x256       WIN_RES_SET WIN_RES_ALSC_A

WIN_RES_ALSC_1   1  "system.ini boot display.drv promtn8.drv"
WIN_RES_ALSC_1   2  "system.ini boot fdisplay.drv promtn8.drv"
WIN_RES_ALSC_1   3  "system.ini boot sdisplay.drv promts8.drv"
WIN_RES_ALSC_1   5  "system.ini boot.description display.drv \"ProMotion 640x480 256 Colors (Small fonts)\""
WIN_RES_ALSC_1   6  "system.ini boot.description fdisplay.drv \"ProMotion 640x480 256 Colors (Small fonts)\""
WIN_RES_ALSC_1   7  "system.ini boot.description sdisplay.drv \"ProMotion 640x480 256 Colors (Small fonts)\""
WIN_RES_ALSC_1   9  "win.ini fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_ALSC_1  10  "win.ini fonts \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_ALSC_1  11  "win.ini fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_ALSC_1  12  "win.ini fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_ALSC_1  13  "win.ini fonts \"Small Fonts (VGA res)\" smalle.fon"
WIN_RES_ALSC_1  14  "system.ini ProMotion Resolution 640x480"
*WIN_RES_ALSC_1  15  "system.ini boot fixedfon.fon vgafix.fon"
*WIN_RES_ALSC_1  16  "system.ini boot oemfonts.fon vgaoem.fon"
*WIN_RES_ALSC_1   4  "system.ini boot fonts.fon vgasys.fon"
*WIN_RES_ALSC_1   8  "system.ini boot.description aspect 100,96,96"

WIN_RES_ALSC_2  1   "system.ini boot display.drv promtn16.drv"
WIN_RES_ALSC_2  2   "system.ini boot fdisplay.drv promtn16.drv"
WIN_RES_ALSC_2  3   "system.ini boot sdisplay.drv promts16.drv"
WIN_RES_ALSC_2  5   "system.ini boot.description display.drv \"ProMotion 640x480 64K Colors (Small fonts)\""
WIN_RES_ALSC_2  6   "system.ini boot.description fdisplay.drv \"ProMotion 640x480 64K Colors (Small fonts)\""
WIN_RES_ALSC_2  7   "system.ini boot.description sdisplay.drv \"ProMotion 640x480 64K Colors (Small fonts)\""
WIN_RES_ALSC_2  9   "win.ini fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_ALSC_2 10   "win.ini fonts \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_ALSC_2 11   "win.ini fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_ALSC_2 12   "win.ini fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_ALSC_2 13   "win.ini fonts \"Small Fonts (VGA res)\" smalle.fon"
WIN_RES_ALSC_2 14  "system.ini ProMotion Resolution 640x480"
*WIN_RES_ALSC_2  15  "system.ini boot fixedfon.fon vgafix.fon"
*WIN_RES_ALSC_2  16  "system.ini boot oemfonts.fon vgaoem.fon"
*WIN_RES_ALSC_2  4   "system.ini boot fonts.fon vgasys.fon"
*WIN_RES_ALSC_2  8   "system.ini boot.description aspect 100,96,96"

WIN_RES_ALSC_3   1  "system.ini boot display.drv promtn32.drv"
WIN_RES_ALSC_3   2  "system.ini boot fdisplay.drv promtn32.drv"
WIN_RES_ALSC_3   3  "system.ini boot sdisplay.drv promts32.drv"
WIN_RES_ALSC_3   5  "system.ini boot.description display.drv \"ProMotion 640x480 1677216 col. (Small fonts)\""
WIN_RES_ALSC_3   6  "system.ini boot.description fdisplay.drv \"ProMotion 640x480 1677216 col. (Small fonts)\""
WIN_RES_ALSC_3   7  "system.ini boot.description sdisplay.drv \"ProMotion 640x480 1677216 col. (Small fonts)\""
WIN_RES_ALSC_3   9  "win.ini fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_ALSC_3  10  "win.ini fonts \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_ALSC_3  11  "win.ini fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_ALSC_3  12  "win.ini fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_ALSC_3  13  "win.ini fonts \"Small Fonts (VGA res)\" smalle.fon"
WIN_RES_ALSC_3 14  "system.ini ProMotion Resolution 640x480"
*WIN_RES_ALSC_3  15  "system.ini boot fixedfon.fon vgafix.fon"
*WIN_RES_ALSC_3  16  "system.ini boot oemfonts.fon vgaoem.fon"
*WIN_RES_ALSC_3   4  "system.ini boot fonts.fon vgasys.fon"
*WIN_RES_ALSC_3   8  "system.ini boot.description aspect 100,96,96"

WIN_RES_ALSC_4   1  "system.ini boot display.drv promtn8.drv"
WIN_RES_ALSC_4   2  "system.ini boot fdisplay.drv promtn8.drv"
WIN_RES_ALSC_4   3  "system.ini boot sdisplay.drv promts8.drv"
WIN_RES_ALSC_4   5  "system.ini boot.description display.drv \"ProMotion 800x600 256 Colors (Small fonts)\""
WIN_RES_ALSC_4   6  "system.ini boot.description fdisplay.drv \"ProMotion 800x600 256 Colors (Small fonts)\""
WIN_RES_ALSC_4   7  "system.ini boot.description sdisplay.drv \"ProMotion 800x600 256 Colors (Small fonts)\""
WIN_RES_ALSC_4   9  "win.ini fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_ALSC_4  10  "win.ini fonts \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_ALSC_4  11  "win.ini fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_ALSC_4  12  "win.ini fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_ALSC_4  13  "win.ini fonts \"Small Fonts (VGA res)\" smalle.fon"
WIN_RES_ALSC_4  14  "system.ini ProMotion Resolution 800x600"
*WIN_RES_ALSC_4  15  "system.ini boot fixedfon.fon vgafix.fon"
*WIN_RES_ALSC_4  16  "system.ini boot oemfonts.fon vgaoem.fon"
*WIN_RES_ALSC_4   4  "system.ini boot fonts.fon vgasys.fon"
*WIN_RES_ALSC_4   8  "system.ini boot.description aspect 100,96,96"

WIN_RES_ALSC_5   1  "system.ini boot display.drv promtn16.drv"
WIN_RES_ALSC_5   2  "system.ini boot fdisplay.drv promtn16.drv"
WIN_RES_ALSC_5   3  "system.ini boot sdisplay.drv promts16.drv"
WIN_RES_ALSC_5   5  "system.ini boot.description display.drv \"ProMotion 800x600 64K Colors (Small fonts)\""
WIN_RES_ALSC_5   6  "system.ini boot.description fdisplay.drv \"ProMotion 800x600 64K Colors (Small fonts)\""
WIN_RES_ALSC_5   7  "system.ini boot.description sdisplay.drv \"ProMotion 800x600 64K Colors (Small fonts)\""
WIN_RES_ALSC_5   9  "win.ini fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_ALSC_5  10  "win.ini fonts \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_ALSC_5  11  "win.ini fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_ALSC_5  12  "win.ini fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_ALSC_5  13  "win.ini fonts \"Small Fonts (VGA res)\" smalle.fon"
WIN_RES_ALSC_5  14  "system.ini ProMotion Resolution 800x600"
*WIN_RES_ALSC_5  15  "system.ini boot fixedfon.fon vgafix.fon"
*WIN_RES_ALSC_5  16  "system.ini boot oemfonts.fon vgaoem.fon"
*WIN_RES_ALSC_5   4  "system.ini boot fonts.fon vgasys.fon"
*WIN_RES_ALSC_5   8  "system.ini boot.description aspect 100,96,96"

WIN_RES_ALSC_6   1  "system.ini boot display.drv promtn32.drv"
WIN_RES_ALSC_6   2  "system.ini boot fdisplay.drv promtn32.drv"
WIN_RES_ALSC_6   3  "system.ini boot sdisplay.drv promts32.drv"
WIN_RES_ALSC_6   5  "system.ini boot.description display.drv \"ProMotion 800x600 16777216 col. (Small fonts)\""
WIN_RES_ALSC_6   6  "system.ini boot.description fdisplay.drv \"ProMotion 800x600 16777216 col. (Small fonts)\""
WIN_RES_ALSC_6   7  "system.ini boot.description sdisplay.drv \"ProMotion 800x600 16777216 col. (Small fonts)\""
WIN_RES_ALSC_6   9  "win.ini fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\"  sserife.fon"
WIN_RES_ALSC_6  10  "win.ini fonts \"Courier 10,12,15 (VGA res)\"                coure.fon"
WIN_RES_ALSC_6  11  "win.ini fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"       serife.fon"
WIN_RES_ALSC_6  12  "win.ini fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"         symbole.fon"
WIN_RES_ALSC_6  13  "win.ini fonts \"Small Fonts (VGA res)\" smalle.fon"
WIN_RES_ALSC_6  14  "system.ini ProMotion Resolution 800x600"
*WIN_RES_ALSC_6  15  "system.ini boot fixedfon.fon vgafix.fon"
*WIN_RES_ALSC_6  16  "system.ini boot oemfonts.fon vgaoem.fon"
*WIN_RES_ALSC_6   4  "system.ini boot fonts.fon vgasys.fon"
*WIN_RES_ALSC_6   8  "system.ini boot.description aspect 100,96,96"

WIN_RES_ALSC_7   1  "system.ini boot display.drv promtn8.drv"
WIN_RES_ALSC_7   2  "system.ini boot fdisplay.drv promtn8.drv"
WIN_RES_ALSC_7   3  "system.ini boot sdisplay.drv promts8.drv"
WIN_RES_ALSC_7   5  "system.ini boot.description display.drv \"ProMotion 1024x768 256 Colors (Large fonts)\""
WIN_RES_ALSC_7   6  "system.ini boot.description fdisplay.drv \"ProMotion 1024x768 256 Colors (Large fonts)\""
WIN_RES_ALSC_7   7  "system.ini boot.description sdisplay.drv \"ProMotion 1024x768 256 Colors (Large fonts)\""
WIN_RES_ALSC_7   9  "win.ini fonts \"MS Sans Serif 8,10,12,14,18,24 (XGA res)\"  sseriff.fon"
WIN_RES_ALSC_7  10  "win.ini fonts \"Courier 10,12,15 (XGA res)\"                courf.fon"
WIN_RES_ALSC_7  11  "win.ini fonts \"MS Serif 8,10,12,14,18,24 (XGA res)\"       seriff.fon"
WIN_RES_ALSC_7  12  "win.ini fonts \"Symbol 8,10,12,14,18,24 (XGA res)\"         symbolf.fon"
WIN_RES_ALSC_7  13  "win.ini fonts \"Small Fonts (XGA res)\" smallf.fon"
WIN_RES_ALSC_7  14  "system.ini ProMotion Resolution 1024x768"
*WIN_RES_ALSC_7  15  "system.ini boot fixedfon.fon xgafix.fon"
*WIN_RES_ALSC_7  16  "system.ini boot oemfonts.fon xgaoem.fon"
*WIN_RES_ALSC_7   4  "system.ini boot fonts.fon xgasys.fon"
*WIN_RES_ALSC_7   8  "system.ini boot.description aspect 100,120,120"

WIN_RES_ALSC_8  1   "system.ini boot display.drv promtn16.drv"
WIN_RES_ALSC_8  2   "system.ini boot fdisplay.drv promtn16.drv"
WIN_RES_ALSC_8  3   "system.ini boot sdisplay.drv promts16.drv"
WIN_RES_ALSC_8  5   "system.ini boot.description display.drv \"ProMotion 1024x768 64K Colors (Large fonts)\""
WIN_RES_ALSC_8  6   "system.ini boot.description fdisplay.drv \"ProMotion 1024x768 64K Colors (Large fonts)\""
WIN_RES_ALSC_8  7   "system.ini boot.description sdisplay.drv \"ProMotion 1024x768 64K Colors (Large fonts)\""
WIN_RES_ALSC_8  9   "win.ini fonts \"MS Sans Serif 8,10,12,14,18,24 (XGA res)\"  sseriff.fon"
WIN_RES_ALSC_8 10   "win.ini fonts \"Courier 10,12,15 (XGA res)\"                courf.fon"
WIN_RES_ALSC_8 11   "win.ini fonts \"MS Serif 8,10,12,14,18,24 (XGA res)\"       seriff.fon"
WIN_RES_ALSC_8 12   "win.ini fonts \"Symbol 8,10,12,14,18,24 (XGA res)\"         symbolf.fon"
WIN_RES_ALSC_8 13   "win.ini fonts \"Small Fonts (XGA res)\" smallf.fon"
WIN_RES_ALSC_8  14  "system.ini ProMotion Resolution 1024x768"
*WIN_RES_ALSC_8  15  "system.ini boot fixedfon.fon xgafix.fon"
*WIN_RES_ALSC_8  16  "system.ini boot oemfonts.fon xgaoem.fon"
*WIN_RES_ALSC_8  4   "system.ini boot fonts.fon xgasys.fon"
*WIN_RES_ALSC_8  8   "system.ini boot.description aspect 100,120,120"

WIN_RES_ALSC_9   1  "system.ini boot display.drv promtn8.drv"
WIN_RES_ALSC_9   2  "system.ini boot fdisplay.drv promtn8.drv"
WIN_RES_ALSC_9   3  "system.ini boot sdisplay.drv promts8.drv"
WIN_RES_ALSC_9   5  "system.ini boot.description display.drv \"ProMotion 1280x1024 256 Colors (Large fonts)\""
WIN_RES_ALSC_9   6  "system.ini boot.description fdisplay.drv \"ProMotion 1280x1024 256 Colors (Large fonts)\""
WIN_RES_ALSC_9   7  "system.ini boot.description sdisplay.drv \"ProMotion 1280x1024 256 Colors (Large fonts)\""
WIN_RES_ALSC_9   9  "win.ini fonts \"MS Sans Serif 8,10,12,14,18,24 (XGA res)\"  sseriff.fon"
WIN_RES_ALSC_9  10  "win.ini fonts \"Courier 10,12,15 (XGA res)\"                courf.fon"
WIN_RES_ALSC_9  11  "win.ini fonts \"MS Serif 8,10,12,14,18,24 (XGA res)\"       seriff.fon"
WIN_RES_ALSC_9  12  "win.ini fonts \"Symbol 8,10,12,14,18,24 (XGA res)\"         symbolf.fon"
WIN_RES_ALSC_9  13  "win.ini fonts \"Small Fonts (XGA res)\" smallf.fon"
WIN_RES_ALSC_9  14  "system.ini ProMotion Resolution 1280x1024"
*WIN_RES_ALSC_9  15  "system.ini boot fixedfon.fon xgafix.fon"
*WIN_RES_ALSC_9  16  "system.ini boot oemfonts.fon xgaoem.fon"
*WIN_RES_ALSC_9   4  "system.ini boot fonts.fon xgasys.fon"
*WIN_RES_ALSC_9   8  "system.ini boot.description aspect 100,120,120"

WIN_RES_ALSC_A   1  "system.ini boot display.drv promtn8.drv"
WIN_RES_ALSC_A   2  "system.ini boot fdisplay.drv promtn8.drv"
WIN_RES_ALSC_A   3  "system.ini boot sdisplay.drv promts8.drv"
WIN_RES_ALSC_A   5  "system.ini boot.description display.drv \"ProMotion 1600x1200 256 Colors (Large fonts)\""
WIN_RES_ALSC_A   6  "system.ini boot.description fdisplay.drv \"ProMotion 1600x1200 256 Colors (Large fonts)\""
WIN_RES_ALSC_A   7  "system.ini boot.description sdisplay.drv \"ProMotion 1600x1200 256 Colors (Large fonts)\""
WIN_RES_ALSC_A   9  "win.ini fonts \"MS Sans Serif 8,10,12,14,18,24 (XGA res)\"  sseriff.fon"
WIN_RES_ALSC_A  10  "win.ini fonts \"Courier 10,12,15 (XGA res)\"                courf.fon"
WIN_RES_ALSC_A  11  "win.ini fonts \"MS Serif 8,10,12,14,18,24 (XGA res)\"       seriff.fon"
WIN_RES_ALSC_A  12  "win.ini fonts \"Symbol 8,10,12,14,18,24 (XGA res)\"         symbolf.fon"
WIN_RES_ALSC_A  13  "win.ini fonts \"Small Fonts (XGA res)\" smallf.fon"
WIN_RES_ALSC_A  14  "system.ini ProMotion Resolution 1600x1200"
*WIN_RES_ALSC_A  15  "system.ini boot fixedfon.fon xgafix.fon"
*WIN_RES_ALSC_A  16  "system.ini boot oemfonts.fon xgaoem.fon"
*WIN_RES_ALSC_A   4  "system.ini boot fonts.fon xgasys.fon"
*WIN_RES_ALSC_A   8  "system.ini boot.description aspect 100,120,120"

:WININI :MODE=PRIMARY :MODE=WINDOWS
SYSTEM.INI
boot  useos2shield 1
boot  os2shield winsheld.exe

