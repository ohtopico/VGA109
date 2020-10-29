Voodoo2 Based 3D Accelerators Driver Kit

Glide Driver Version: 2.51
Voodoo2 D3D Driver Build Number: 4.10.01.0094-2.16
Voodoo2 Control Panel Applet: 4.10.01.0061

Platform: Windows 95/98 and DOS

Copyright ( 1997-98 3Dfx Interactive, Inc. )
All Rights Reserved

3Dfx Interactive, Inc.
Website: http://www.3dfx.com
News Server: news://news.3dfx.com

=======================================================================
What's in the distribution?
=======================================================================
This distribution contains Glide, Direct3D drivers for Voodoo2
Based 3D Accelerators and the Voodoo2 Control Panel Applet.

This distribution should be used by all OEM's shipping boards for
the Windows 95/98 platform.  It is suggested that the files in this kit
be placed on a driver CD in uncompressed (unzipped) format.

The following Voodoo2 boards will function with these drivers:

- 3Dfx Interactive Voodoo2 reference boards


Included Files
--------------
3DFXV2.DRV   - DirectDraw Driver
3DFX16V2.DLL - DirectDraw 16 Bit DLL
3DFX32V2.DLL - DirectDraw 32 Bit DLL
3DFXV2PS.DLL - Control Panel Applet
3DFXV2PS.HLP - Control Panel Help File
VOODOO2.BMP  - Voodoo2 Desktop Wallpaper
FXMEMMAP.VXD - Voodoo VXD for Mapping Memory
RICHED20.DLL - Microsoft Redistributable File *
CSH.DLL      - Control Panel Help Control File * 
MSVCRT.DLL   - Microsoft Redistributable File
GLIDE2X.DLL  - Win95/98 Glide for Voodoo2 (Supports Glide 2.31+)
FXOEM2X.DLL  - Win95/98 Glide OEM Extension DLL
GLIDE2X.OVL  - DOS Glide for Voodoo2 (Supports Glide 2.31+)
VOODOO2.INF  - INF File for installing Drivers
LICENSE.TXT  - 3Dfx License Agreement
README.TXT   - This File

* File used for Control Panel Applet.  If a newer version of the named
file exists a dialog box will appear asking to keep the existing file.
It is suggested that you keep any existing newer files.

=======================================================================
Installation 
=======================================================================

Requirements
------------

- Windows 95 or Windows 98
- PC with a Pentium II, Pentium Pro, Pentium or similar processor
- One free PCI slot (or two free PCI slots for SLI)
- 16MB of RAM or more Suggested


Installation
------------
The installation below can vary depending on which version of Windows
is installed.  To determine the Windows 95 version click Start, 
Settings, Control Panel. Double-click on the system icon. If the 
Windows version is 4.00.950b, Windows 95 OEM SR2 is running.


Existing Drivers Installed or PCI Multimedia Device shown in Device Mgr
-----------------------------------------------------------------------
1) Start Windows and extract the drivers to a temporary directory.

2) Open Device Manager (Start, Settings, Control Panel, System)

3) Locate the existing reference to the card it will be listed as:

       Reference Card: Other Devices / PCI Multimedia Device or
		       Sound, Video, Game Controllers / Voodoo2

   NOTE: In an SLI configiration (2 Voodoo2 cards) you only need to
   select one card to update.

4) Double Click on the card, then click the driver Tab

     Windows 95 Standard Release users: Click "Change Driver" and choose
                                        "Have Disk"
              Windows 95 OEM SR2 users: Click "Update Driver" then click
                                        the Next Button.  Click "Other
                                        Locations" 
                      Windows 98 users: Click "Update Driver" then click
                                        the Next Button twice on the
                                        Detection Dialog Box. Ensure that
                                        "Specify a Location" is checked and
                                        "Microsoft Windows Update" is not
                                        checked. Click Browse to continue.

5) Point the driver location to where the files are extracted to and click
   OK.  

     Windows Standard Release 95 users: Select "Voodoo2 3D Accelerator" 
                                        from the List and click OK.
                                        Click OK again to save changes in
                                        Device Manager.
              Windows 95 OEM SR2 Users: Click on Finish to continue.
                      Windows 98 users: Click on Next to continue.

6) You MAY then be prompted to insert the "Voodoo2 Drivers for Windows 9X"
   Disk.  Again, point to the path you extracted the files to and press OK.

7) Windows will copy the drivers. Reboot the system when prompted

8) Install DirectX 5.0 or higher.  (If not already installed)



No Current Drivers Installed (Single Board and SLI)
---------------------------------------------------

Single Board
============

1) Start Windows and extract the drivers to a temporary directory.

2) Shutdown Windows, Power off the system and install your Voodoo2
   3D board into a PCI slot. 

3) Restart Windows after hardware installation.

4) Windows will detect a "PCI Multimedia Device", you need to:

     Windows 95 Standard Release users: Select "Use Driver from Mfr"
                                        and click OK
              Windows 95 OEM SR2 users: Click the Next Button on the
                                        Detection Dialog Box. Then click
                                        "Other Locations"
                      Windows 98 users: Click the Next Button twice on the
                                        Detection Dialog Box. Ensure that
                                        "Specify a Location" is checked and
                                        "Microsoft Windows Update" is not
                                        checked. Click Browse to continue.

5) Point the driver location to where the files are extracted to and click
   OK.  (Windows 98: You will need to click on Next to continue)

6) You MAY then be prompted to insert the "Voodoo2 Drivers for Windows 9X"
   Disk.  Enter the path the drivers are extracted to and press OK.

7) Windows will copy the drivers. Reboot the system when prompted

8) Install DirectX 5.0 or higher.  (If not already installed)


SLI (Two Voodoo2 Boards with SLI cable)
=======================================

1) Start Windows and extract the drivers to a temporary directory.

2) Shutdown Windows, Power off the system and install your Voodoo2
   3D boards into PCI slots next to each other

3) Connect the SLI cable to both boards.

4) Restart the system and Windows after hardware installation.

5) Windows will detect a "PCI Multimedia Device", you need to:

     Windows 95 Standard Release users: Select "Use Driver from Mfr"
                                        and click OK
              Windows 95 OEM SR2 users: Click the Next Button on the
                                        Detection Dialog Box. Then click
                                        "Other Locations"
                      Windows 98 users: Click the Next Button twice on the
                                        Detection Dialog Box. Ensure that
                                        "Specify a Location" is checked and
                                        "Microsoft Windows Update" is not
                                        checked. Click Browse to continue.

6) Point the driver location to where the files are extracted to and click
   OK.  (Windows 98: You will need to click on Next to continue)

7) You MAY then be prompted to insert the "Voodoo2 Drivers for Windows 9X"
   Disk.  Enter the path the drivers are extracted to and press OK.

8) Windows will copy the drivers. When prompted to reboot the system, 
   click No. You may be asked to reboot several more times. Manually 
   restart the system by clicking Start, Shutdown and Restart.

9) Install DirectX 5.0 or higher.  (If not already installed)



Troubleshooting
---------------

####

Problem: After installing this driver, the Control panel applet I had
for a Voodoo Graphics card is gone.

Resolution: The Voodoo2 drivers will uninstall *ANY* Voodoo Graphics 
drivers.  This is to ensure only Voodoo2 drivers are on the system.

####

Please see the Voodoo2 Release Notes and OEM Software Support Guide 
for additional information.
