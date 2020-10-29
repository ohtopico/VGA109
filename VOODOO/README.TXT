Direct3D Drivers for Voodoo Graphics Based 3D Accelerators
Version 2.14

Copyright ( 1997 3Dfx Interactive, Inc. )
All Rights Reserved

3Dfx Interactive, Inc.
website: www.3Dfx.com
news server: news.3dfx.com


=======================================================================
What's in the distribution?
=======================================================================
This distribution contains DirectX 5.0 Direct3D drivers (V2.13) for 
Voodoo Graphics Based 3D Accelerators.  

The following Voodoo Graphics boards will function with these drivers:

- 3Dfx Interactive reference boards
- A-TREND Technology HELIOS 3D
- Diamond Monster 3D
- Orchid Righteous 3D
- Deltron Realvision Flash 3D
- Skywell Technology Magic 3D
- Guillemot MaxiGamer
- Canopus Pure 3D
- Miro HiScore

NOTE:  End-users are recommended to use drivers provided by their
board manufacturer to ensure that they can obtain full support.


Included Files
--------------

DD3DFX.DRV   - Direct Draw Driver
DD3DFX16.DLL - DirectDraw 16 Bit DLL
DD3DFX32.DLL - DirectDraw 32 Bit DLL
FXMEMMAP.VXD - Voodoo VXD for Mapping Memory
MSVCRT.DLL   - Microsoft Redistributable File
VOODOO.INF   - INF File for installing Drivers
README.TXT   - This File

=======================================================================
Installation 
=======================================================================

Requirements
------------

- Windows 95
- PC with a Pentium or Pentium Pro Processor and a free PCI slot
- 16MB of RAM or more Suggested
- DirectX 5.0

Installation
------------

Existing Drivers Installed or PCI Multimedia Device shown in Device Mgr
-----------------------------------------------------------------------
1) Start Windows 95 and open Device Manager (Control Panel, System)

2) Locate the existing reference to the card it will be listed as:

	Obsidian Card: Other Devices / PCI Multimedia Device or
		       Multimedia / Voodoo Based 3D Accelerator
	   Monster 3D: Multimedia / Monster 3D
	 Righteous 3D: Sound, Video and Game Contrl / Righteous 3D

3) Double Click on the card, then click the driver Tab

4) Click Change Driver and choose Have Disk.

5) Point to the location you extracted the Voodoo Graphics Direct3D 
   drivers to and click OK.

6) Select Voodoo Graphics Accelerator from the List and click OK.  
   Click OK again to save changes in Device Manager.

7) You MAY then be prompted to insert the "DirectX Drivers for Voodoo
   Based 3D Accelerator" Disk.  Again, point to the path you extracted
   the files to and press OK.

8) Windows will copy the drivers from the Floppy. Reboot the system 
   when prompted

9) Install DirectX 5.0.  (If not already installed)



No Current Drivers Installed
----------------------------

1) Start Windows 95

2) Copy the Voodoo Graphics Direct3D drivers you extracted to a floppy.
   (This will make installation easier for a new device.)

3) Power off System and install your Voodoo Graphics 3D Based 
   Accelerator into a PCI slot. (Users with PCI to PCI bridges, should
   install on a primary PCI Slot)

4) Restart Windows 95 after hardware installation.

5) Windows 95 will detect a "PCI Multimedia Device", you need to:

     Windows 95 Standard Release users: Select "Use Driver from Mfr"
                                        and click OK
              Windows 95 OEM SR2 users: Click the Next Button on the
                                        Detection Dialog Box

6) Insert the installation floppy you created in step 2 in the A: drive
   and point the driver location to A:\  then click OK
   (OEM SR2 users, just click Next)

7) You MAY then be prompted to insert the "DirectX Drivers for Voodoo
   Based 3D Accelerator" Disk.  Enter A:\ and press OK.

8) Windows will copy the drivers from the Floppy. Reboot the system 
   when prompted

9) Install DirectX 5.0.



Troubleshooting
---------------

####

Problem: After installing this driver, the Control panel applet I had
for the Monster 3D or Righteous 3D is now gone

Resolution: As noted earlier, such applets and extensions are removed.
Please download and install drivers from your card manufacturer, drivers
may be obtained from:

- Diamond supported drivers can be obtained from www.diamondmm.com
- Orchid supported drivers can be obtained from www.orchid.com



####

Problem: How I change the refresh rate and Gamma?

Resolution: Using Registry Editor, edit:

	HKLM\Software\3Dfx Interactive\Voodoo Graphics

	WARNING: Using Registry editor incorrectly can cause unexpected
	results.  Only those comfortable with altering the registry 
	should make changes.

	Add the following Entries as DWORD Value types:

	Value Name      	Value Description
	----------		-----------------
	REFRESH_512x384		Refresh Rate for 512x384
	REFRESH_640x400		Refresh Rate for 640x400
	REFRESH_640x480		Refresh Rate for 640x480
	REFRESH_800x600		Refresh Rate for 800x600
	(Supported refresh rate decimal values: 60, 75, 85, 120)

	SST_GAMMAB		Blue Gamma Setting
	SST_GAMMAG		Green Gamma Setting
	SST_GAMMAR		Red Gamma Setting
	(Hex default for Gamma: 0x3FF73333)
####
