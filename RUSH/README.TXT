Voodoo Rush + Alliance AT25 Drivers 
for DirectX 5.0 and Glide 2.43

Glide Runtime Drivers - Version 2.43
2D Display Drivers    - Version 4.10.01.2063
DirectDraw/Direct3D   - Version 4.10.01.2063

Copyright ( 1996/1997 3Dfx Interactive, Inc. )
Copyright ( 1997 Alliance Semiconductor )
All Rights Reserved

3Dfx Interactive, Inc.
4435 Fortran Drive
San Jose, CA 95134
Phone: 408.935.4400

=======================================================================
What's in the distribution?
=======================================================================
This distribution contains DirectDraw drivers for Voodoo Rush when 
running with Alliance AT25 (AT3D). The DirectDraw portion of the 
drivers supports Direct3D when using DirectX 5.0

NOTE: DirectX 5.0 redistributable files should be used with these 
drivers!

=======================================================================
Installation 
=======================================================================

Requirements
------------

- Windows 95
- PC with a Pentium or Pentium Pro Processor and a free PCI slot
- 16MB of RAM

Upgrade Existing AT25/Voodoo Rush Drivers
-----------------------------------------

1) Start Windows 95
2) Extract the files for the AT25/Voodoo Rush driver to a directory.
3) Click Start, Contol Panel.  Double-click on Display.
4) Click the settings tab
5) Click Change Display Type
6) Under Adapter Type, Click Change
7) Click Have Disk
8) You will be prompted as follows:

     Windows 95 Standard Release users: Enter the path to the extracted drivers

              Windows 95 OEM SR2 users: Click the Next Button, no updated
					drivers will be found.   Click on
					"Other Location" then enter the path
					to the extracted drivers.

9) When asked to choose a device, select "Alliance 3D + Voodoo Rush"
10) You may then be prompted to insert the Windows 95 Alliance 3D + Voodoo
    Rush Driver Disk.  Enter the path to the drivers again.
11) Windows will copy the drivers.   Reboot the system when prompted
12) Install DirectX 5.0





Fresh Installation 
------------------

NOTE: It is suggested that the extracted drivers be copied to a
floppy when executing a fresh installation.

1) Before removing your existing 2D card switch the video driver to 
   Standard VGA
2) If you have an exisiting 3Dfx Voodoo based card also remove the 
   following key:
    HKEY_LOCAL_MACHINE\Hardware\CurrentControlSet\DirectDrawDrivers
3) Power off system and remove your existing 2D card and any Voodoo 
   based cards
4) Install the AT25 and Voodoo Rush Combo Card in a free PCI Slot
5) Power on the system and verify that video appears during post
6) Start Windows 95

  (Once Windows 95 starts you may be notified that no video device
   exists, click Cancel if this message appears)

7) Windows 95 will detect a new VGA Compatible Display, you need to:
     Windows 95 Standard Release users: Select "Use Driver from Mfr"
                                        and click OK
              Windows 95 OEM SR2 users: Click the Next Button on the
                                        Detection Dialog Box

8) Insert this floppy in the A: drive and point the driver location to
   A:\
9) You may then be prompted to insert the Windows 95 Alliance 3D+ Voodoo
   Rush Driver Disk.  Again, enter A:\ and press OK.
10) Windows will copy the drivers from the Floppy, Reboot the system 
    when prompted
11) After reboot, verify that Windows 95 runs.  If Windows 95 hangs, 
    power the system off and verify that the Voodoo Rush Daughterboard
    is installed correctly and is functioning.
12) Install DirectX 5.0.


Limitations
-----------

Running 640x480,16 Color will run SUPERVGA.DRV or VGA.DRV.  No Voodoo 
Rush features will be used.  Switch to a different resolution or color depth.


Troubleshooting
---------------

####

Problem: After installing the card, the system still detects my old 
card even though it is no longer in the system.
Resolution: See Step 1 of the installation instructions

     