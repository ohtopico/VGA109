**********************************************************************
*                  Intel740(tm) graphics accelerator                 *
*     Windows* 98 And Windows* 95 Software Driver Release PV1.0a     *
*                           April 6, 1998                            *
*                                                                    *
**********************************************************************

PLEASE READ THE INFORMATION CONTAINED IN THIS 
README BEFORE USING THE INTEL740(tm) DRIVERS


**********************************************************************
**********************************************************************

Information in this document is provided in connection with Intel 
products. No license, express or implied, by estoppel or otherwise, to 
any intellectual property rights is granted by this document.  Except 
as provided in Intel's Terms and Conditions of Sale for such products, 
Intel assumes no liability whatsoever, and Intel disclaims any express 
or implied warranty, relating to sale and/or use of Intel products 
including liability or warranties relating to fitness for a particular 
purpose, merchantability, or infringement of any patent, copyright or 
other intellectual property right. Intel products are not intended for 
use in medical, life saving, or life sustaining applications. Intel 
may make changes to specifications and product descriptions at any 
time, without notice.


The hardware vendor remains solely responsible for the design, sale 
and functionality of its product, including any liability arising from 
product infringement or product warranty.

Copyright (c) Intel Corporation 1998. 

*Third-party brands and names are the property of their respective 
owners.


**********************************************************************
**********************************************************************


README Contents: 

1.0  Introduction
2.0  Release Notes
3.0  Intel740 Graphic Accelerator Driver Installation Procedure
4.0  Contacting Intel Technical Support
5.0  Web Site Location and Access



**********************************************************************
1.0 Introduction  
**********************************************************************


This README file contains the installation procedure and usage 
information for the production Intel740(tm) graphics accelerator 
software, and latest version of DirectX*. The software and hardware 
requirements for this release are as follows:

## Software Drivers Release (SDR) Version:  PV 1.0a
## Windows* 95 Version:                     OSR2.1 or 2.5**
## Windows* 98 Version:                     Beta 2 (1650.8)
## DirectX* 5.0 Version:                    RC2-Gold (4.05.01.1650)
## Video BIOS version:                      212 or later
## Intel740 graphics accelerator stepping   A2

**When loading the Intel740 drivers and OSR2.1 or OSR 2.5for the first 
time, the software should be loaded in the following order:
     (1) Load OSR2.0 or OSR 2.5
     (2) Load The "USB Supplement" (brings it up to OSR2.1 level or 
         OSR2.5)
     (3) Load The Intel740(tm) drivers.
     Note: If this is not done in this order, then the standard 
     Microsoft VGA drivers will be automatically loaded.

Also included are release notes describing any problems or issues that 
were known at the time of shipment.



**********************************************************************
2.0 Release Notes
**********************************************************************

---------------------
 Product Version 1.0 
---------------------
     (1)Supports all 2D and Direct3D operations
     (2)Supports software and hardware DVD(glueless interface daughter 
	card solutions- Zoran* and C-Cube Mircrosystems*).
     (3)Issue: When running Winbench98* quality tests, a page fault 
        error may occur when the user selects "All Tests" or "All Quality 
        Tests". Intel plans to fix this issue in the next production 
        release of the drivers.
     
---------------------
 Product Version 1.0a 
---------------------
     (1)Same as PV1.0, except issue #3 (above) has been fixed.

----------------------------------
 Features currently not supported
----------------------------------
     (1) TV-Out capabilities**
     (2) TV-Tuner**
     (3) VFW-video capture**
     (4) Intercast**
     (5) OpenGL**

      ** Intel plans to support this in a future release.

Please see the Intel740 Graphics Accelerator Specification Update 
documents for the most up-to-date information concerning Intel740(tm) 
graphics accelerator hardware and driver issues and errata.


**********************************************************************
3.0  Intel740 Graphics Accelerator Driver Installation Procedure
**********************************************************************

----------------------------
 General Installation Notes
----------------------------
** The operating system and DirectX* must be installed on the system 
prior to installation (note: DirectX* is provided on the CD along with 
the Intel740 drivers). To update or install DirectX, simply go to the 
DirectX directory on the CD and click on "Setup.exe".

** This installation procedure is specific only to the version of 
driver and installation file included in this release. 

** The ".INF" file is the installation file and includes all of the 
driver and Graphics properties page files associated with this 
release.

** This procedure assumes that all of the software associated with 
this release is located in the same directory.

------------------------------------------------------
 Installing the Drivers from floppy disk or hard disk
------------------------------------------------------

(1) After Windows has loaded, click on "My Computer" icon, "Control 
Panel" icon, and then the "Display" icon.

(2) You should now be in the "Display Properties" window.  Select the 
"Settings" tab, and click on the "Advanced Properties" button. 

(3) In the "Advanced Display Properties" window, select the "Adapter" 
tab, and click the "Change..." button.

For Windows 95 installation, continue to Step 4.  In Windows 98, the 
following window appears:

(A) The "Update Device Driver Wizard" window appears.  If you are 
installing the Intel740 graphics accelerator card and drivers for the 
first time, this window may denote Intel740(tm) graphics accelerator as a 
"Standard PCI VGA Graphics Adapter."  Click on the "Next" button to 
continue.

(B) A new window appears, prompting for weather to have Windows  
search for a device driver or to manually select one.  Click the 
option for "Display a list of all the drivers in  a specific location, 
so you can select the driver you   want." After this, click on the 
"Next" button, and continue to Step 4.

Continue with both Windows 95 and Windows 98 installation from this 
point.

(4) From the new window, click on the "Have Disk" button.

(5) You should now be in the "Install From Disk" window. In the "Copy 
manufactures files from:" box, enter the location of the Intel740(tm) 
graphics accelerator drivers and press the "OK" button.

(6) A window should pop up stating that the " Intel740-854 Win9x 
PC1.0a 3.1.1526-980326" drivers are about to be installed.  Click the 
"OK" button to accept the display driver change, and then click the 
"Close" button in the "Advanced Display Properties" window as well as 
the "Display Properties" window to complete the installation.  Restart
the computer when prompted to do so.

(7) The drivers should now be loaded. To determine if the drivers have 
been loaded correctly, Refer to the "Verifying Installation" section, 
below.
-------------------------------------------------
 Installing the Drivers from CD (auto installer)
-------------------------------------------------

(1)  Insert the Intel740(tm) graphics accelerator driver CD

(2)  "Display Adapter Software Setup" window will open.  If the window 
does not open, run setup from the CD.

(3)  Click on Install Drivers button.  

(4)  Follow instructions on screen.  Note: do not click on any buttons 
while installing.

(5)  After installation is complete, it will ask you do you want to 
restart system.  Remove the CD then click yes.

**** Verifying Driver Installation

(1) From the Windows 9x desktop, click on "My Computer", then "Control 
Panel", and then, finally, "System".

(2) You should be in the "System Properties" window.  Click on the 
"Device Manager" tab.  From here, go down to "Display Adapter" and 
click. The drivers associated with the display adapter should read: 
"Intel740-854 Win9x PC1.0a 3.1.1526-980326". If this is not the case, 
the drivers will need to be re-installed.


**** Un-installing the Drivers and Graphics Configuration Manager.

(1) From the Windows 9x desktop, click on "My Computer" and then 
"Add/Remove Programs".

(2) Click on "Intel740 Graphics Accelerator" and then Add/Remove".

(3) Follow the instructions by clicking on "yes" as indicated.

(4) The drivers and Graphics Properties page should now be un-
installed. After this, another revision of the drivers may be loaded 
by following the above installation instructions.



**********************************************************************
4.0  Contacting Intel Technical Support 
**********************************************************************


For technical support, please call 
United States:1-800-628-8686.

Argentina:001 800 200 1111
Brazil:0008010
Chile:800800311
Colombia:980110010
Mexico:958004624240

Belgium:027 143158 
England 44-1793-404-900
France: 01.41.91.85.58
Germany:069 95096116
Italy: 02-69633262
Sweden: 08-58771104
Netherlands: 0602 24939
United Kingdom:0990 168700



**********************************************************************
5.0  Web Site location and access 
**********************************************************************

A Web Site has been provided for access to the latest drivers and 
driver related information, including software and hardware issues.  
The Web site is http://developer.intel.com/design/graphics/740.htm.


*Third-party brands and names are the property of their respective 
owners.
