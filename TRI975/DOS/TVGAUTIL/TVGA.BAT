
echo off
cls
%1:
cd \tvgautil

:PROMPT
cls
echo.
echo.
echo.
echo      ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo      บ                                                                   บ
type disk2
echo      บ                                                                   บ
echo      ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo      บ                                                                   บ
echo      บ     A. Contents                                                   บ
echo      บ                                                                   บ
echo      บ     B. TVGA Utilities                                             บ
echo      บ                                                                   บ
echo      บ     C. Display Drivers                                            บ
echo      บ                                                                   บ
echo      ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo      บ                                                                   บ
echo      บ     Select a letter to continue:          (  ESC to Exit )        บ
echo      บ                                                                   บ
echo      ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo.
:menu1
%1:
cd \tvgautil
KEYIN
IF ERRORLEVEL 65 IF NOT ERRORLEVEL 66 GOTO content
IF ERRORLEVEL 97 IF NOT ERRORLEVEL 98 GOTO content
IF ERRORLEVEL 66 IF NOT ERRORLEVEL 67 GOTO utilities
IF ERRORLEVEL 98 IF NOT ERRORLEVEL 99 GOTO utilities
IF ERRORLEVEL 67 IF NOT ERRORLEVEL 68 GOTO drivers
IF ERRORLEVEL 99 IF NOT ERRORLEVEL 100 GOTO drivers
IF ERRORLEVEL 27 IF NOT ERRORLEVEL 28 GOTO EXIT
goto menu1

:content
cls
type %1:\tvgautil\content\content1.1
PAUSE
cls
type %1:\tvgautil\content\content1.2
pause

GOTO PROMPT

:utilities
cls
echo -
echo -
echo -    This file tells how to install your video configuration
echo -    utilities.  To select a utility, type the letter corresponding to
echo -    the name (for example, press C for instructions for TVDISP).
echo -    To return to the main menu, press ENTER.
echo -
echo -    TVGA Utilities List
echo -    ===================
echo -
echo -      A. SVM         -  Set All TVGA Modes
echo -      B. SMONITOR    -  Select Monitor Group and Type(Color/Mono)
echo -      C. TVDISP      -  TV Display Utility
echo -      
echo -
echo -    Select a utility
echo -    or
echo -    press ENTER to return to the main menu.

%1:
cd \tvgautil
KEYIN
IF ERRORLEVEL 65 IF NOT ERRORLEVEL 66 GOTO svm
IF ERRORLEVEL 97 IF NOT ERRORLEVEL 98 GOTO svm
IF ERRORLEVEL 66 IF NOT ERRORLEVEL 67 GOTO smonitor
IF ERRORLEVEL 98 IF NOT ERRORLEVEL 99 GOTO smonitor
IF ERRORLEVEL 67 IF NOT ERRORLEVEL 68 GOTO tv
IF ERRORLEVEL 99 IF NOT ERRORLEVEL 100 GOTO tv
IF ERRORLEVEL 27 IF NOT ERRORLEVEL 28 GOTO PROMPT
GOTO PROMPT

:drivers
cls
echo -
echo -    This file tells how to install high-resolution drivers
echo -    for DOS applications.  To select an application, type the letter
echo -    corresponding to the name (for example, press C for instructions 
echo -    for Symphony).  To return to the main menu, press Enter.
echo -
echo -    TVGA Display Drivers List
echo -    =========================
echo -        A.  AutoCAD/386 Rel 10, 11, 12, 13
echo -
echo -    Select an application
echo -    or
echo -    Press ENTER to return to the main menu.

%1:
cd \tvgautil
KEYIN
IF ERRORLEVEL 65 IF NOT ERRORLEVEL 66 GOTO acad
IF ERRORLEVEL 97 IF NOT ERRORLEVEL 98 GOTO acad

IF ERRORLEVEL 27 IF NOT ERRORLEVEL 28 GOTO PROMPT
goto PROMPT

:acad
cls
echo -
echo -
echo -
echo - AutoCAD TurboDLD Classic Driver by Panacea for Trident
echo - ====================================================== 
echo -
echo -  TurboDLD Classic Driver by Panacea is a combined display 
echo -  interface and rendering driver. It supports DOS versions 
echo -  of AutoCAD 10/386, 11/386 and 12. It offers the follwing
echo -  resolutions for the drawing editor:
echo -
echo -      640x480   - 16  colors   
echo -      800x600   - 16  colors   
echo -      1024x768  - 16  colors   
echo -      1280x1024 - 16  colors   
echo -      640x480   - 256 colors   
echo -      800x600   - 256 colors    
echo -      1024x768  - 256 colors    (1MB Video RAM required)
echo -      1280x1024 - 256 colors    (2MB Video RAM required)
echo -      512x480   - 32K colors    (1MB Video RAM required)
echo -      640x480   - 32K colors    (1MB Video RAM required)
echo -      800x600   - 32K colors    (1MB Video RAM required)
echo -      512x480   - 65K colors    (1MB Video RAM required)
echo -      640x480   - 65K colors    (1MB Video RAM required)
echo -      800x600   - 65K colors    (1MB Video RAM required)
echo -
pause
cls
echo -
echo -
echo -  and for rendering:
echo -
echo -      640x480   - 256 colors   
echo -      800x600   - 256 colors    
echo -      1024x768  - 256 colors    (1MB Video RAM required)
echo -      1280x1024 - 256 colors    (2MB Video RAM required)
echo -      512x480   - 32K colors    (1MB Video RAM required)
echo -      640x480   - 32K colors    (1MB Video RAM required)
echo -      800x600   - 32K colors    (1MB Video RAM required)
echo -      512x480   - 65K colors    (1MB Video RAM required)
echo -      640x480   - 65K colors    (1MB Video RAM required)
echo -      800x600   - 65K colors    (1MB Video RAM required)
echo -
echo -
pause
cls
echo -  To install the display drivers for AutoCAD 10/386, 11/386 or
echo -  12, you need this Driver/Utility Disk and the proper AutoCAD 
echo -  386 Release.
echo -
echo -  IMPORTANT:  Make sure you have installed AutoCAD  with the
echo -  IBM Standard VGA driver and you can bring up the AutoCAD
echo -  Drawing editor screen.
echo -
echo - AutoCAD/386 Rel 10/11
echo - ---------------------
echo -
echo -  1. Change the directory to \TVGAUTIL\ACAD on your hard drive, for 
echo -     example, C:,  type:
echo -          install
echo -     follow the installation steps, The TurboDLD Classic Driver 
echo -     and the other files will be copied to the proper ACAD working 
echo -     subdirectory. 
echo -
pause
cls
echo -  2. Run DLD386's FASTCAD.BAT, or copy the commands in this file to 
echo -     AUTOEXEC.bat file in your system before you run the AutoCAD.
echo -     FASTCAD.BAT sets the environment variables including DLDCFG,
echo -     DSPADI, RDPADI and RCPADI. 
echo -
echo -  3. Start AutoCAD/386. Select Configure AutoCAD from the Main
echo -     Menu.
echo -
echo -  4. Select, in order, Configure Video Display.
echo -
echo -  5. Choose ADI P386 v4.0/4.1 display, it will bring out TurboDLD's
echo -     configuration menu, follow the configue menu to select 
echo -     proper graphics board, resolution.
echo -
echo -  6. A number of prompts follow.  They allow you to select the
echo -     graphics  area background color, text color (for the menu
echo -     status line and command prompt areas of the screen),
echo -     text background color,  border color,  and  dialog box/
echo -     button outline color.  To select the default colors, press
echo -     [Return] at each prompt.  To select a different color,
echo -     enter the desired color number at the given prompt.
echo -
pause
cls
echo -
echo - AutoCAD/386 Rel 12/13
echo - ------------------
echo -
echo -  Display Driver Installation Procedures
echo -
echo -
echo -  1. Change the directory to \TVGAUTIL\ACAD on your hard drive, for 
echo -     example, C:,  type:
echo -          install
echo -     follow the installation steps, The TurboDLD Classic Driver 
echo -     and the other files will be copied to the proper ACAD working 
echo -     subdirectory. 
echo -
echo -  2. Install the display driver for the drawing editor and
echo -     for rendering, as described following.
pause
cls
echo -
echo -  Drawing Editor Installation Procedures
echo -
echo -    1. Bring up your AutoCAD Drawing Editor screen.
echo -    2. Select CONFIGURE in the File pull-down menu. AutoCAD
echo -       then switches to a text screen.
echo -    3. Select 3 to configure the video display.  AutoCAD then
echo -       shows your current video display.
echo -    4. Answer Y to select a different driver.
echo -    5. Select "TRIDENT MICROSYSTEMS (C) Panacea Inc". It will bring
echo -       out the TurboDLD's configuration menu, follow the menu to
echo -       select your resolution preference.  (Make sure you have
echo -       enough video memory for the resolution.)
echo -    6. Save your selection and exit from TurboDLD's configuration.
echo -    8. Enter 0 to return to the Drawing Editor screen.
echo -    9. Answer Y to save configuration changes.
echo -
echo -
echo -
pause
cls
echo -
echo -
echo -
echo -  Rendering Installation Procedures
echo -
echo -
echo -    1. Make sure you have installed Rendering for AutoCAD Rel 12.
echo -    2. In the Drawing Editor screen, select Preferences in the
echo -       Render pull-down menu.
echo -    3. If you have previously configured Preferences for rendering,
echo -       select Reconfigure in the Rendering Preferences dialog
echo -       box.  Otherwise, it switches directly to a text screen.
echo -    4. Select 2 to configure rendering driver.
echo -    5. Select "AutoCAD's configured P386 ADI combined display/
echo -       rendering driver."
echo -    6. Select your resolution preference for rendering.
echo -    7. Select your rendering view preference.
echo -    8. Enter 0 to return to the Drawing Editor screen.
echo -    9. Answer Y to save configuration changes.
echo -   10. Click OK to close the Rendering Preferences dialog box.
echo -
echo -
echo -
PAUSE
goto drivers



:svm
cls
echo -
echo -
echo -                  SET VIDEO MODE (SVM)
echo -                  ====================
echo -
echo -   SVM lets you select display modes and resolutions for
echo -   programs that do not run in standard VGA modes.  It offers
echo -   both extended-resolution modes and backward-compatible modes.
echo -   The program is totally self-explanatory.
echo -
echo -   You may leave SVM in the \TVGAUTIL\UTILITY subdirectory or
echo -   you may wish to copy it to a more accessible directory.
echo -
echo -   To run the utility, just type SVM at the prompt of the directory
echo -   where SVM.EXE is located.
echo -
PAUSE
GOTO utilities

:crtc
cls
echo -          Monitor Select and Screen adjusting Program
echo -          ===========================================
echo -
echo -    TMONITOR is designed to select the monitors, select refresh 
echo -    rate and adjust CRTC parameters so that the image on the CRT
echo -    is optimally sized and centered on the screen.
echo -    Adjustable parameters include horizontal position and size,
echo -    vertical position and size (the vertical size can only be
echo -    adjusted a little because most monitors control vertical
echo -    size), and refresh rate.
echo -
echo -    1.  Because TMONITOR creates new monitor configuration files,
echo -        we recommend that you create a directory named \CRTC on
echo -        your hard drive by typing  MD TMONITOR at the root directory.
echo -
echo -    2.  Then copy the files you need from the UTILITY subdirectory
echo -        to your new directory.  Type
echo -
echo -          COPY  %2:\TVGAUTIL\UTILITY\TMONITOR.*  C:\TMONITOR
echo -
echo -    3.  To run the utility, type TMONITOR from the newly created
echo -        directory C:\TMONITOR on your hard drive.  The program is
echo -        self-explanatory.
pause
GOTO utilities

:smonitor
cls
echo -                 Set Monitor (SMONITOR) Program
echo -                 ==============================
echo -
echo -    SMONITOR is designed to set the monitor group and the monitor type.
echo -
echo -    1. Set Monitor Group:
echo -
echo -    The graphics extended mode set by the graphics card's BIOS is 
echo -    sorted as 8 groups by the monitor's refresh rate. The higher the 
echo -    refresh rate of the monitor, the higher the group is used. Usually, 
echo -    the higher group covers  the modes in the lower group. The group
echo -    setting as below:
echo -    
echo -    GROUP TYPE 640X400 640X480 800X600 1024X768 1280X1024  1600X1200
echo -      0   31k     70      60     XX       XX      XX         XX 
echo -      1   35k     70      72     60       87i     XX         XX 
echo -      2   48k     70      75     75       60      87i        XX 
echo -      3   57k     70      85     85       70      87i        XX 
echo -      4   65k     70      85     85       75      60         96i
echo -      5   72k     70      85     85       85      60         96i
echo -      6   82k     70      85     85       90      75         96i
echo -      7   100k    70      85     85       95      75         96i
echo -
echo -    The default group number is 0
pause
cls
echo -
echo -    If you want set the monitor group, type:
echo -
echo -          SMONITOR GROUP
echo -
echo -    where GROUP is one of the group number listed above.
echo -
echo -
echo -    2. Set monitor Color
echo -
echo -    You can use SMONITOR program to set the monitor as color or 
echo -    monochrome display format. for set color monitor, type:
echo -
echo -          SMONITOR C
echo -
echo -    or type:
echo -
echo -          SMONITOR M
echo -
echo -    to set monochrome monitor.
echo -
pause
cls
GOTO utilities

:tpatch
cls
%1:
cd \tvgautil\utility
tpatch
cd ..
GOTO utilities

:tv
cls
echo -
echo -                 Set TV Display Utility
echo -                 ==============================
echo -    Summary:
echo -
echo -    Tvdisp program is used to adjust TV screen position, width, height,
echo -    over scan/under scan, etc. It is a TSR program designed for
echo -    Trident 9685 chip. After you load it, you can set modes which are
echo -    supported by TV (see notice below). Then you can use hotkey to
echo -    adjust TV screen to you need. When you are satisfied with the
echo -    screen, use hotkey to save your settings. Now these settings will be
echo -    kept as long as Tvdisp program is running.
echo -    You may run "\tvgautil\utility\tvdisp.exe /?" for online help.
echo - 
echo -
pause
cls
echo -
echo -    Keyboard Control Command:    
echo -    When you use keyboard, please use the Ctrl and Shift keys on the left. 
echo -    For the other keys except function keys, please use the keys on the right 
echo -    small keyboard.
echo -
echo -    Ctrl+Shift+F1 :  Under/Overscan
echo -    Ctrl+Shift+F2 :  Interlace/None
echo -    Ctrl+Shift+F3 :  Flicker Level
echo -    Ctrl+Shift+F4 :  TV / CRT
echo -    Ctrl+Shift+F5 :  NTSC / PAL
echo -    Ctrl+Shift+F6 :  Save settings
echo -    Ctrl+Shift+F7 :  Restore User Settings
echo -    Ctrl+Shift+ESC:  Switch between default and user settings
echo -    Tvdisp -r     :  Unload
echo -    Tvdisp -?     :  Show help
echo -
pause
cls
echo -
echo -    Ctrl+Shift+UP    :  Screen Up
echo -    Ctrl+Shift+DOWN  :  Screen Down
echo -    Ctrl+Shift+RIGHT :  Screen Right
echo -    Ctrl+Shift+LEFT  :  Screen Left
echo -    Ctrl+Shift+PgUp  :  Expand Y-Dir
echo -    Ctrl+Shift+PgDn  :  Contract Y-dir
echo -    Ctrl+Shift+Ins   :  Expand X-Dir
echo -    Ctrl+Shift+Del   :  Contract X-dir
echo -     *note:(1) TV/CRT switch is not supported in Mode 5B.
echo -           (2) Expand/Contact screen only supported in Mode 5d, 74h, 75h
echo -               in NTSC.
echo -
pause
cls
GOTO utilities

:EXIT


