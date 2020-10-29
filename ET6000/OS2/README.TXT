Tseng Laboratories ET6000 PM Display Driver Installation

ALPHA VERSION - Accelerated Driver.
June 28, 1996


NOTE: This driver is for WARP only! It will NOT work with other
      versions of OS/2.



SETTING VGA MODE
----------------

    Your system must be in "VGA" mode prior to installation.

    To restore to VGA mode:

    1. Turn on the computer. If the computer is already on, press
       Ctrl+Alt+Del to restart it.

    2. When a small white box appears in the upper left-hand corner
       of your screen, press Alt+F1.

    3. When the Recovery Choices screen appears, press V



INSTALLING THE ET6000 PM DRIVER
-------------------------------

    When the desktop appears:

    1. Open the 'OS/2 System' folder.

    2. Open the 'Command Prompts' folder.

    3. Open a 'OS/2 Full Screen' or 'OS/2 Window' session.

    4. Insert the driver diskette into the 'A' drive.

    5. Change to the 'A' drive.

    6. Type "setup [source path:] [target drive:]"

       where "source path" is the location of the SETUP.CMD file and
       "target drive" is the driver letter of the drive that contains
       OS/2.

       Examples:
               "setup a: c:" (If OS/2 is installed on the "C" drive).

               "setup a: d:" (If OS/2 is installed on the "D" drive).


    7. The setup program will copy a few files to your hard drive, display
       a message and ask you to reboot your machine.

    8. Exit from the 'OS/2 Window' or 'OS/2 Full Screen' session.

    9. Remove the diskette from the 'A' drive.

   10. Close the 'Command Prompts' folder.

   11. Close the 'OS/2 System' folder.

   12. Perform a 'Shut down' of your machine.


After the reboot:

    1. Click the right mouse button on the desktop to display the 
       desktop menu.

    2. Click on 'System setup' to open the 'System Setup' folder.

    3. Double click on 'Display Driver Install' icon to begin the second 
       phase of the display driver installation.  (You may have to scroll
       the folder to locate the icon.)


    4. Choose 'Primary Display' from the 'Display Driver Install' screen 
       and click OK.

    5. Select 'Tseng Laboratories ET6000' from the list of supported adapters
       and click OK.

    6. At the Monitor Configuration/Selection Utility screen select

          *Install Using Display Adaptor Utility Program

    7. Click OK

    8. At the 'Monitor Configuration/Selection Utility Location' screen
       backspace over the "A:\" and type:

            [drive:]\os2\svga.exe on monitor

            Where [drive:] is the drive that contains OS/2

       Examples:
         "c:\os2\svga.exe on monitor" (If OS/2 is installed on the "C" drive).

         "d:\os2\svga.exe on monitor" (If OS/2 is installed on the "D" drive).

    9. Click OK

   10. At the 'SVGA Modes and Refresh rates supported' screen type "AUTO"
       and press ENTER

   11. At the 'Source Directory' screen, Insert the driver diskette into 
       the "A" drive.

   12. Click 'Install'.

   13. At the 'Display Driver Install' screen Click OK

   14. Close the 'System Setup' folder.

   15. Remove the driver disk.

   16. Shut down and reboot your system.

TO CHANGE SCREEN RESOLUTIONS and REFRESH RATES

    1. Click the right mouse button on the desktop to display the 
       desktop menu.

    2. Click on 'System setup' to open the 'System Setup' folder.

    3. Double click on 'System' icon.

    4. Choose the 'Screen resolution' and 'Screen Refresh rate' you desire.

    5. Reboot the machine to initiate the new settings.


REGENERATING SVGADATA.PMI
-------------------------

    You may have to regenerate you SVGADATA.PMI file after the
    install is complete.  To do this, either boot to real DOS
    or start a DOS full-screen session.  Go to the OS2
    directory of your OS/2 boot partition and type:

    "SVGA ON DOS"

    The screen will go black for several seconds while the
    utility gathers information about the modes support by your
    adapter.  After it is done, you DOS session will reappear.
    At this point, rename the file SVGADATA.DOS to SVGADATA.PMI
    and reboot you machine.

