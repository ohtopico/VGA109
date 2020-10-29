:TITLE
Common S3 Install
:KEY
S3COMMON

:CONFIG :MODE=PRIMARY
DEVINFO=SCR,VGA,%BOOTDRIVE%:\OS2\VIOTBL.DCP
SET VIDEO_DEVICES=VIO_SVGA
SET VIO_SVGA=DEVICE(BVHVGA,BVHSVGA)


:CONFIG :MODE=PRIMARY :MODE=BIDI
SET VIO_SVGA=DEVICE(BVHVGA,BVHSVGA,BDBVH)

:CONFIG :MODE=PRIMARY :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VSVGA.SYS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VPRPMI.SYS

:DEL_CONFIG_LINE :MODE=PRIMARY
SET VIO_%PRI% = DEVICE(BVH%PRI%,BDBVH)
SET VIO_8514A=DEVICE(BVHVGA,BVH8514A,BDBVH)
SET VIO_CGA=DEVICE(BVHCGA,BDBVH)
SET VIO_EGA=DEVICE(BVHEGA,BDBVH)
SET VIO_SVGA=DEVICE(BVHVGA,BVHSVGA,BDBVH)
SET VIO_VGA=DEVICE(BVHVGA,BDBVH)
SET VIO_VGA=DEVICE(BVHVGA,BVHSVGA,BDBVH)
SET VIO_XGA=DEVICE(BVHVGA,BVHXGA,BDBVH)
DEVICE=%BOOTDRIVE%:\OS2\XGARING0.SYS
DEVICE=%BOOTDRIVE%:\OS2\XGA.SYS
BASEDEV=XGA.SYS
SET VIO_XGA=DEVICE(BVHVGA,BVHXGA)
DEVINFO=SCR,BGA,%BOOTDRIVE%:\OS2\VIOTBL.DCP
SET VIO_8514A=DEVICE(BVHVGA,BVH8514A)
DEVINFO=SCR,EGA,%BOOTDRIVE%:\OS2\VIOTBL.DCP
SET VIO_CGA=DEVICE(BVHCGA)
DEVINFO=SCR,EGA,%BOOTDRIVE%:\OS2\VIOTBL.DCP
SET VIO_EGA=DEVICE(BVHEGA)
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS
SET VIO_VGA=DEVICE(BVHVGA)

:DEL_CONFIG_LINE :MODE=PRIMARY :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VENH.SYS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VXGA.SYS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\V8514A.SYS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VCGA.SYS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VEGA.SYS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS

:OS2INI :MODE=PRIMARY
%BOOTDRIVE%:\OS2\INSTALL\REINSTAL.INI
InstallWindow VIOADAPTERSTR 7

:OS2INI :MODE=SECONDARY
%BOOTDRIVE%:\OS2\INSTALL\REINSTAL.INI
InstallWindow VIOADAPTER2STR 7

:OS2INI :MODE=PRIMARY
OS2.INI
PM_DISPLAYDRIVERS  IBMS332        IBMS332
PM_DISPLAYDRIVERS  CURRENTDRIVER  IBMS332
PM_DISPLAYDRIVERS  DEFAULTDRIVER  IBMS332
PM_Fonts           COURIERI
PM_Fonts           HELVI
PM_Fonts           TIMESI

:OS2INI :MODE=PRIMARY :MODE=WINDOWS
OS2.INI
PM_DISPLAYDRIVERS RESOLUTION_CHANGED 1
WIN_RES_640x480x16              WIN_RES_SET     WIN_RES_S3_0
WIN_RES_640x480x256             WIN_RES_SET     WIN_RES_S3_1
WIN_RES_640x480x65536           WIN_RES_SET     WIN_RES_S3_2
WIN_RES_640x480x16777216        WIN_RES_SET     WIN_RES_S3_3
WIN_RES_800x600x256             WIN_RES_SET     WIN_RES_S3_4
WIN_RES_800x600x65536           WIN_RES_SET     WIN_RES_S3_5
WIN_RES_800x600x16777216        WIN_RES_SET     WIN_RES_S3_6
WIN_RES_1024x768x256            WIN_RES_SET     WIN_RES_S3_7
WIN_RES_1024x768x65536          WIN_RES_SET     WIN_RES_S3_8
WIN_RES_1024x768x16777216       WIN_RES_SET     WIN_RES_S3_9
WIN_RES_1280x1024x256           WIN_RES_SET     WIN_RES_S3_10
WIN_RES_1280x1024x65536         WIN_RES_SET     WIN_RES_S3_11
WIN_RES_1280x1024x16777216      WIN_RES_SET     WIN_RES_S3_12
WIN_RES_1600x1200x256           WIN_RES_SET     WIN_RES_S3_13
WIN_RES_1600x1200x65536         WIN_RES_SET     WIN_RES_S3_14
WIN_RES_1600x1200x16777216      WIN_RES_SET     WIN_RES_S3_15

WIN_RES_S3_0   1  "system.ini boot sdisplay.drv swinvga.drv"
WIN_RES_S3_0   2  "system.ini boot display.drv vga.drv"
WIN_RES_S3_0   3  "system.ini boot.description display.drv \"IBM VGA 640x480x16\""
WIN_RES_S3_0   4  "system.ini boot.description sdisplay.drv \"IBM VGA 640x480x16\""
WIN_RES_S3_0   5  "system.ini boot fonts.fon vgasys.fon"
WIN_RES_S3_0   6  "system.ini boot fixedfon.fon vgafix.fon"
WIN_RES_S3_0   7  "system.ini boot oemfonts.fon vgaoem.fon"

WIN_RES_S3_1   3  "system.ini boot fonts.fon vgasys.fon"
WIN_RES_S3_1   4  "system.ini display dpi 96"
WIN_RES_S3_1   5  "system.ini display color-format 8"
WIN_RES_S3_1   6  "system.ini display screen-size 640"
WIN_RES_S3_1   7  "system.ini boot fixedfon.fon vgafix.fon"
WIN_RES_S3_1   8  "system.ini boot oemfonts.fon vgaoem.fon"

WIN_RES_S3_2   3  "system.ini boot fonts.fon vgasys.fon"
WIN_RES_S3_2   4  "system.ini display dpi 96"
WIN_RES_S3_2   5  "system.ini display color-format 16"
WIN_RES_S3_2   6  "system.ini display screen-size 640"
WIN_RES_S3_2   7  "system.ini boot fixedfon.fon vgafix.fon"
WIN_RES_S3_2   8  "system.ini boot oemfonts.fon vgaoem.fon"

WIN_RES_S3_3   3  "system.ini boot fonts.fon vgasys.fon"
WIN_RES_S3_3   4  "system.ini display dpi 96"
WIN_RES_S3_3   6  "system.ini display screen-size 640"
WIN_RES_S3_3   7  "system.ini boot fixedfon.fon vgafix.fon"
WIN_RES_S3_3   8  "system.ini boot oemfonts.fon vgaoem.fon"

WIN_RES_S3_4   3  "system.ini boot fonts.fon vgasys.fon"
WIN_RES_S3_4   4  "system.ini display dpi 96"
WIN_RES_S3_4   5  "system.ini display color-format 8"
WIN_RES_S3_4   6  "system.ini display screen-size 800"
WIN_RES_S3_4   7  "system.ini boot fixedfon.fon vgafix.fon"
WIN_RES_S3_4   8  "system.ini boot oemfonts.fon vgaoem.fon"

WIN_RES_S3_5   3  "system.ini boot fonts.fon vgasys.fon"
WIN_RES_S3_5   4  "system.ini display dpi 96"
WIN_RES_S3_5   5  "system.ini display color-format 16"
WIN_RES_S3_5   6  "system.ini display screen-size 800"
WIN_RES_S3_5   7  "system.ini boot fixedfon.fon vgafix.fon"
WIN_RES_S3_5   8  "system.ini boot oemfonts.fon vgaoem.fon"

WIN_RES_S3_6   3  "system.ini boot fonts.fon vgasys.fon"
WIN_RES_S3_6   4  "system.ini display dpi 96"
WIN_RES_S3_6   6  "system.ini display screen-size 800"
WIN_RES_S3_6   7  "system.ini boot fixedfon.fon vgafix.fon"
WIN_RES_S3_6   8  "system.ini boot oemfonts.fon vgaoem.fon"

WIN_RES_S3_7   3  "system.ini boot fonts.fon 8514sys.fon"
WIN_RES_S3_7   4  "system.ini display dpi 120"
WIN_RES_S3_7   5  "system.ini display color-format 8"
WIN_RES_S3_7   6  "system.ini display screen-size 1024"
WIN_RES_S3_7   7  "system.ini boot fixedfon.fon 8514fix.fon"
WIN_RES_S3_7   8  "system.ini boot oemfonts.fon 8514oem.fon"

WIN_RES_S3_8   3  "system.ini boot fonts.fon 8514sys.fon"
WIN_RES_S3_8   4  "system.ini display dpi 120"
WIN_RES_S3_8   5  "system.ini display color-format 16"
WIN_RES_S3_8   6  "system.ini display screen-size 1024"
WIN_RES_S3_8   7  "system.ini boot fixedfon.fon 8514fix.fon"
WIN_RES_S3_8   8  "system.ini boot oemfonts.fon 8514oem.fon"

WIN_RES_S3_9   3  "system.ini boot fonts.fon 8514sys.fon"
WIN_RES_S3_9   4  "system.ini display dpi 120"
WIN_RES_S3_9   6  "system.ini display screen-size 1024"
WIN_RES_S3_9   7  "system.ini boot fixedfon.fon 8514fix.fon"
WIN_RES_S3_9   8  "system.ini boot oemfonts.fon 8514oem.fon"

WIN_RES_S3_10  3  "system.ini boot fonts.fon 8514sys.fon"
WIN_RES_S3_10  4  "system.ini display dpi 120"
WIN_RES_S3_10  5  "system.ini display color-format 8"
WIN_RES_S3_10  6  "system.ini display screen-size 1280"
WIN_RES_S3_10  7  "system.ini boot fixedfon.fon 8514fix.fon"
WIN_RES_S3_10  8  "system.ini boot oemfonts.fon 8514oem.fon"

WIN_RES_S3_11  3  "system.ini boot fonts.fon 8514sys.fon"
WIN_RES_S3_11  4  "system.ini display dpi 120"
WIN_RES_S3_11  5  "system.ini display color-format 16"
WIN_RES_S3_11  6  "system.ini display screen-size 1280"
WIN_RES_S3_11  7  "system.ini boot fixedfon.fon 8514fix.fon"
WIN_RES_S3_11  8  "system.ini boot oemfonts.fon 8514oem.fon"

WIN_RES_S3_12  3  "system.ini boot fonts.fon 8514sys.fon"
WIN_RES_S3_12  4  "system.ini display dpi 120"
WIN_RES_S3_12  6  "system.ini display screen-size 1280"
WIN_RES_S3_12  7  "system.ini boot fixedfon.fon 8514fix.fon"
WIN_RES_S3_12  8  "system.ini boot oemfonts.fon 8514oem.fon"

WIN_RES_S3_13  3  "system.ini boot fonts.fon 8514sys.fon"
WIN_RES_S3_13  4  "system.ini display dpi 120"
WIN_RES_S3_13  5  "system.ini display color-format 8"
WIN_RES_S3_13  6  "system.ini display screen-size 1600"
WIN_RES_S3_13  7  "system.ini boot fixedfon.fon 8514fix.fon"
WIN_RES_S3_13  8  "system.ini boot oemfonts.fon 8514oem.fon"

WIN_RES_S3_14  3  "system.ini boot fonts.fon 8514sys.fon"
WIN_RES_S3_14  4  "system.ini display dpi 120"
WIN_RES_S3_14  5  "system.ini display color-format 16"
WIN_RES_S3_14  6  "system.ini display screen-size 1600"
WIN_RES_S3_14  7  "system.ini boot fixedfon.fon 8514fix.fon"
WIN_RES_S3_14  8  "system.ini boot oemfonts.fon 8514oem.fon"

WIN_RES_S3_15  3  "system.ini boot fonts.fon 8514sys.fon"
WIN_RES_S3_15  4  "system.ini display dpi 120"
WIN_RES_S3_15  5  "system.ini display color-format 24"
WIN_RES_S3_15  6  "system.ini display screen-size 1600"
WIN_RES_S3_15  7  "system.ini boot fixedfon.fon 8514fix.fon"
WIN_RES_S3_15  8  "system.ini boot oemfonts.fon 8514oem.fon"


:WININI :MODE=PRIMARY :MODE=WINDOWS
WIN.INI
Desktop IconSpacing 100


:WININI :MODE=PRIMARY :MODE=WINDOWS
SYSTEM.INI
boot useos2shield 1
boot os2shield    winsheld.exe
display color-format 8
display screen-size 640
display dpi 96
display fastmmio on
display polygon-support on
display ellipse-support on
display scache on
display textrmw 0
display OffScrMem
boot fonts.fon vgasys.fon
boot fixedfon.fon vgafix.fon
boot oemfonts.fon vgaoem.fon
sdisplay DCI-SUPPORT OFF
sdisplay fastmmio on
sdisplay OffScrMem

:WININI :MODE=PRIMARY :MODE=WINDOWS
WIN.INI
fonts "MS Sans Serif 8,10,12,14,18,24 (8514/a res)"  sseriff.fon
fonts "Courier 10,12,15 (8514/a res)"                courf.fon
fonts "MS Serif 8,10,12,14,18,24 (8514/a res)"       seriff.fon
fonts "Symbol 8,10,12,14,18,24 (8514/a res)"         symbolf.fon
fonts "Small Fonts (8514/a res)"                     smallf.fon
fonts "MS Sans Serif 8,10,12,14,18,24 (VGA res)"     sserife.fon
fonts "Courier 10,12,15 (VGA res)"                   coure.fon
fonts "MS Serif 8,10,12,14,18,24 (VGA res)"          serife.fon
fonts "Symbol 8,10,12,14,18,24 (VGA res)"            symbole.fon
fonts "Small Fonts (VGA res)"                        smalle.fon



