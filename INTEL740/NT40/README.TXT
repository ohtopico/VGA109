**********************************************************************
*                  Intel740(tm) graphics accelerator                 *
*       Windows* NT 4.0 Software Driver Release (SDR - PC 1.0)       *
*                           March 20, 1997                           *
*                                                                    *
**********************************************************************


PLEASE READ THE INFORMATION CONTAINED IN THIS README BEFORE USING THE 
INTEL740 DRIVERS


**********************************************************************

Information in this document is provided in connection with Intel 
products. No  license, express or implied, by estoppel or otherwise, 
to any intellectual property rights is granted by this document. 
Except as provided in Intel's Terms and Conditions of Sale for such 
products, Intel assumes no liability whatsoever, and Intel disclaims 
any express or implied warranty, relating to sale and/or use  of Intel 
products including liability or warranties relating to fitness for a 
particular purpose, merchantability, or infringement of any patent, 
copyright or other intellectual property right. Intel products are not 
intended for use in medical, life saving, or life sustaining 
applications. Intel may make changes to specifications and product 
descriptions at any time, without notice.

The hardware vendor remains solely responsible for the design, sale 
and functionality of its product, including any liability arising from 
product infringement or product warranty.

Copyright (c) Intel Corporation 1997, 1998. 

*Third-party brands and names are the property of their respective 
owners.

**********************************************************************
**********************************************************************

README Contents:

1.0  Introduction
2.0  Release Notes
3.0  Intel740 Driver Installation Procedure
4.0  Contacting Intel Technical Support
5.0  Web Site Location and Access


**********************************************************************
1.0 Introduction  
**********************************************************************

This README file contains the installation procedure and usage 
information for the Intel740 graphics accelerator Windows* NT 4.0 
production software. The software and hardware requirements for this 
release are as follows:

   ** Software Drivers Release (SDR) Version:      PC 1.0
   ** Windows* NT 4.0 Version:                     Service Pack 3.0
   ** Video BIOS version:                          212 or later
   ** Intel740 graphics accelerator stepping       A2

Also included are release notes describing any problems or issues that 
were known at the time of shipment.

**********************************************************************
2.0 Release Notes
**********************************************************************

----------------
 Version PC 1.0
----------------
     (1) Supports all 2D and 3D (OpenGL*) operations.

----------------------------------
 Features currently not supported
----------------------------------
     (1) Video**

      **Intel plans to support this feature in a future release

Please see the Intel740(tm) Graphics Accelerator Specification Update 
documents for the most up-to-date information concerning Intel740 
graphics accelerator hardware and driver issues and errata.



**********************************************************************
3.0  Intel740 Driver Installation Procedure  
**********************************************************************

----------------------------
 General Installation Notes
----------------------------
** The operating system must be installed on the system prior to 
installation.

** This installation procedure is specific only to the version of 
driver and installation file included in this release.

** The ".INF" file is the installation file and includes all of the 
driver and Graphics Properties page files associated with this 
release.

** This procedure assumes that all of the software associated with  
this release is located in the same directory.

------------------------
 Installing the Drivers
------------------------
(1) Before installing the Intel740 graphics accelerator drivers, first 
make sure that the Windows NT default VGA graphics adapter drivers are 
currently installed. To do this, click on "My Computer" and then 
"Control Panel". In the "Control Panel" window, click on "Display". In 
the "Display Properties" window, click on the "Settings tab. Click the 
"Display Type" button and if the VGA graphics adapter is the current 
graphics adapter, go to step 2 below, otherwise click "Change".

In the "Change Display" window, highlight the "Standard Display Types" 
under the Manufacturers column and then highlight the "VGA Compatible 
Display Adapter" under the Display column. Click "OK". After the 
drivers have been successfully installed, click "OK" in the 
"Installing Driver" Window. Click the close button in the "Display 
Type" window and then again click "Close" in the "Display Properties" 
window. Restart the computer when the prompted to do so.

After rebooting, the "Invalid Display Settings" window will appear. 
Press "OK" and change the resolution settings, if desired. If you 
choose to change the resolution and/or color depth settings, follow 
the instructions on the screen.

(2) After Windows NT 4.0 has loaded, click on "My Computer" icon, 
"Control Panel" icon, and then the "Display" icon.

(3) You should now be in the "Display Properties" window. Select the 
"Settings" tab, and click on the "Display Type" button.

(4)"Display Type" window, click the "Change..." button.

(5) From the new window, click on the "Have Disk" button.

(6) You should now be in the "Install From Disk" window. In the "Copy 
manufactures files from:" box, place the CD-ROM in the proper drive 
and click the "Browse..." button.  The drivers are located in the 
"\WinNT" directory of the CD-ROM.  When the correct directory is 
chosen, click "OK" to continue the installation.

(7) A window should pop up stating that the " Intel740 Video 
Accelerator" drivers are about to be installed. Click the "OK" button 
to accept the display driver change, and then click the "Yes" button 
in the "Third Party Drivers" window as well as the "OK" button in the 
"Installing Driver" window. Click "Close" on the "Display Properties" 
window to complete the installation. Restart the computer when 
prompted to do so.

After rebooting, the "Invalid Display Settings" window will appear. 
Press "OK" and change the resolution settings, if desired. If you 
choose to change the resolution and/or color depth settings, follow 
the instructions on the screen.

(8) The drivers should now be loaded.  To determine if the drivers 
have been loaded correctly, refer to the "Verifying Installation" 
section, below.

-------------------------------
 Verifying Driver Installation
-------------------------------
From the Windows NT desktop, click on "My Computer" then "Control 
Panel" then "Devices".  In the "Devices" window, under the "Device" 
column the driver associated with the display adapter should read: 
"gfx40" and the "Status" column next to the driver should read 
"Started".  If this is not the case, the drivers will need to be re-
installed. 

**********************************************************************
4.0  Contacting Intel Technical Support 
**********************************************************************

For technical support, please call 
United States: 1-800-628-8686.

Argentina:001 800 200 1111
Brazil:0008010
Chile:  800800311
Colombia:980110010
Mexico:958004624240

Belgium:027 143158 
France: 01.41.91.85.58
Germany:069 95096116
Italy: 02-69633262
Sweden: 08-58771104
United Kingdom:0990 168700


**********************************************************************
5.0  Web Site location and access 
**********************************************************************

A Web Site has been provided for access to the latest drivers and 
driver related information, including software and hardware issues. 
The Web site is located at: 
http://developer.intel.com/design/graphics/740.htm.


*Third-party brands and names are the property of their respective 
owners.
