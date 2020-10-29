(Word Version, Identical to README.TXT)






Running a Voodoo Based card with 
an S3 968/868 2D Card
December 4, 1996

Attachments: DETECT.EXE,  FXREMAP.EXE, DOS4GW.EXE, PASS.EXE
Rev 1.0


Overview
Users that have a S3 968/868 based 2D video card may experience system lock ups or 
erratic behavior once DirectX is installed on their system. The S3 968 and 868 have
a chipset flaw which prior to DirectX shipping wasn't noticeable. DirectX uses a
mapped memory driver for S3 based cards, whereas the Windows 95 default drivers for
S3 cards do not use Mapped Memory.

When your system powers on, the first device that gets resources normally is the
Video Card.  Lets say that the S3 card gets F0000000 - F1FFFFFF and then the Voodoo
card gets F2000000-F2FFFFFF.  In theory this is fine, however the S3 968 and 868
chips report they need 32 Mbytes of memory, in reality they actually decode 64MB of
physical memory.  So it really takes F0000000 - F2FFFFFF and the system and BIOS
have no way to know this.   Since the original S3 drivers for Windows 95 did not
use mapped memory, any data the Voodoo card used in this region was intact.   
However, since the DirectX driver uses mapped memory, the Voodoo card will write to
it's own memory region, not knowing that the memory region is being used by the S3
968/868 card, this is why the system locks when any D3D or Voodoo title is run in 
Windows 95.  Voodoo titles run under DOS will work fine since no mapped memory driver
is being used by the S3 968/868 card in DOS.


Workaround
Currently, there are several methods to workaround the S3 968/868 Problem.

Method 1 is the most ideal and will provide a quick way to get the system up and
running, however it may not work with all BIOS's.  Method 2 will work with most
systems, but does require FXREMAP.EXE to be run at boot.  Method 3 will allow the 
Voodoo card to work, however the S3 driver will have no DirectDraw capabilities -
that is, DirectDraw 2D titles will run but graphics performance will suffer on the
S3 card.


Method 1 - Memory Address reassignment in Windows 95 Device Manager
	
This Method uses Device Manager to adjust the Memory range provided to the Voodoo 
Card.  This method requires a BIOS that supports Device Manager as a PCI resource 
control.  Presently, most AMI and Phoenix BIOS systems support this.  Method 2 should 
be used by those who have an Award BIOS.

1)  Install the Voodoo Based Card
2)  Install the drivers provided with the card (3Dfx Drivers and DirectX Drivers)
3)  Restart Windows 95 if any programs have been run since boot.
4)  Copy the attached four files (DETECT.EXE, FXREMAP.EXE...etc...) to your \WINDOWS directory.
5)  Open Device Manager (Click Start on Taskbar, Choose Settings, Control Panel, Double-click on System and click on the Device Manager Tab.)
6)  Open the tree that the Voodoo card resides in: Normally Multimedia or Other Devices.
7)  Once listed on the screen, Double Click on the Voodoo based Card.
8)  Click on the Resources Tab.
9)  Remove the Automatic Setting Checkbox.
10)  Double Click on the Memory Range Selection, write down this address.
11)  Move the Memory Range to a higher area not used by other devices, you may wish to try 12000000 since it is free on most systems.   Also write down this new address.
12)  Click OK to choose the new setting.
13)  Click OK to close the Voodoo Card Properties
14)  Click OK to close Device manager.
15)  Reboot the system when prompted.
16)  After Windows 95 Restarts, using Explorer, switch to your \WINDOWS directory.
17)  Double Click on DETECT (.EXE) (copied from step 3) and verify that the 3Dfx Card is at that range, e.g.: If you set the card to 12000000 it will be listed as 0x12000008

If the memory range listed in DETECT.EXE is the old memory range, this method is not supported by your BIOS, try Method 2.

If the listed range is correct, then try to run a Direct3D application.  If the system still hangs or erratic video appears, repeat the steps above, however try a different memory range or use Method 2.



Method 2 - Memory Address reassignment using FXREMAP.EXE
	
This Method sets the registers on the Voodoo card to use a specific Memory Range. 
The changes made to the card are reset each time the system is booted, so it is advisable 
to put FXREMAP.EXE into your AUTOEXEC.BAT file

1)  Install the Voodoo Based Card
2)  Install the drivers provided with the card (3Dfx Drivers and DirectX Drivers)
3)  Restart Windows 95 if any programs have been run since boot, especially DirectX Programs!
4)  Copy the attached four files (DETECT.EXE, FXREMAP.EXE...etc...) to your \WINDOWS directory.
5)  Using Notepad, Open your AUTOEXEC.BAT file and add the following to the beginning of the file:

			C:
			CD\WINDOWS
			FXREMAP

6)  Save the AUTOEXEC.BAT file and restart your system

The memory range for the 3Dfx card should not conflict with the S3 968/868 chipset. 
If the 3Dfx Memory Range shown in DETECT.EXE is not correct, then verify that steps
11 through 26 were completed correctly.


Method 3 - Use Default Windows 95 S3 968/868 Driver
	
This method replaces the DirectX S3 Driver with the driver Windows 95 used prior to 
DirectX being installed.  These steps must be run each time DirectX Setup is run from a 
newly installed DirectX application.

1)  Install the Voodoo Based Card
2)  Install the drivers provided with the card (3Dfx Drivers and DirectX Drivers)
3)  Close all applications.
4)  Right Click on the Desktop, and choose Properties.
5)  Click on the Settings tab.
6)  Click Change Display Type
7)  In the "Change Display Type" dialog box, under Adapter Type, click Change.
8)  From the Select Device list, choose S3 968 and click OK.
9)  Follow any on screen instructions, when the driver is replaced you will be returned to the Display Properties Screen, click OK
10)  Restart the System when prompted and run any Direct3D or Voodoo title.


Additional Files

PASS.EXE - This Windows 95 program will switch the display from the pass through to your
2D card.  You may wish to put a shortcut to PASS.EXE on the start button and name the
shortcut with a letter not on the Start menu, ie: Zpass.  Then if you need to revert from
the Voodoo card to your 2D card you can press the Windows key (or Ctrl ESC) and Z.


