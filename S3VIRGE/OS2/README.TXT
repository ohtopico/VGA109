 	      OS/2 Video Device Driver for the S3 ViRGE,ViRGE/VX,ViRGE/DX,ViRGE/GX
                      Driver Version 1.02.03

  This package contains an OS/2 graphics-accelerator device driver
  supporting the ViRGE and ViRGE/VX/DX/GX chip sets from S3 Incorporated.



  Important:

  o  "S3 DRV1" must be the label on the installation diskette in this
     package.  This label can be applied using the DOS or OS/2 LABEL
     command.  The installation will fail without this step.

  o  Read this entire document before beginning the device driver
     installation.


  1.0  Supported Features
  _______________________

  This ViRGE,ViRGE/VX,ViRGE/DX,ViRGE/GX, graphics-accelerator device driver
  provides seamless support for accelerated display graphics and advanced
  color resolutions when used with the minimum required video memory.  It
  conforms to the OS/2 32-bit, flat memory model and is designed to function
  as a 32-bit Presentation Manager graphics-display device driver under the
  OS/2 32-bit graphics engine.	This device driver supports setting
  the refresh rate using the System - Settings notebook (page 2 of
  the Screen tab) in the OS/2 System Setup folder, and monitor
  detection using Display Data Channel (DDC) protocols.


  1.1  Supported Resolutions

      |==================================================|
      | Mode |  Resolution | Memory  |  Virge  |Virge    |
      |      |             | Required| Family  |Family   |
      |      |             |         | Virge   |Virge/DX |
      |      |             |         |Virge/VX |Virge/GX |
      |------|-------------|---------|---------|---------|
      |  101 | 640x480x8   |   2 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |  103 | 800x600x8   |   2 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |  105 | 1024x768x8  |   2 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |  107 | 1280x1024x8 |   2 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |  111 | 640x480x16  |   2 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |  114 | 800x600x16  |   2 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |  116 | 1024x768x16 |   2 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |  11A | 1280x1024x16|   4 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |------|-------------|---------|---------|---------|
      |  112 | 640x480x24  |   2 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |  115 | 800x800x24  |   2 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |  118 | 1024x768x24 |   4 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |  11B | 1280x1024x24|   4 MB  |    Y    |   N     |
      |------|-------------|---------|---------|---------|
      |  120 | 1600x1200x8 |   2 MB  |    Y    |   Y     |
      |------|-------------|---------|---------|---------|
      |========================================|=========|

     NOTES:

     o Y = Supported; N/S = Not Supported.

     o 1280x1024x24bpp is supported with the ViRGE/vX chip only.

     o 1 MB only - 640x480x24 is supported for 1 MB memory
       configuration only; for 2 MB and above, 24 bits per pixel (bpp)
       is supported.

     o S3 BIOS supports 800x600x16 with 1 MB; S3 OS/2 device driver
       needs 2 MB of memory.

     The 32 bpp device driver might need a large swap space on the
     hard disk, for example, 15 MB.


  2.0  Compatibility
  __________________

  This graphics-accelerator device driver is compatible with OS/2
  2.11, and OS/2 Warp 3.0, and OS/2 Warp 4.0

  3.0  DDC Monitor Support
  _______________________________________

  VESA Display Data Channel (DDC) 1 and 2B protocols are supported,
  allowing similarly enabled computers and operating system software
  to identify the monitor and its capabilities.  This device driver
  automatically detects DDC monitor capabilities and sets the display
  to the maximum refresh rate supported by the monitor.  If, after
  installing this device driver, you switch from a non-DDC monitor to
  a DDC monitor or switch to a different DDC monitor, you must run the
  DDC Display Setup program in the System Setup folder.

  Use the following procedures when installing a DDC monitor.

    1. Reset the display to the lowest refresh rate available.	This
       will prevent the system from attempting to display at a refresh
       rate higher than that supported by the new monitor.

    2. Shut down your system and install the new monitor.

    3. Restart your system.

    4. Select the "DDC Display Setup" icon in the OS/2 System Folder.

    5. When you are instructed to do so, shut down your system and
       restart it.


  4.0  Preliminary Steps
  ______________________

  The following steps must be performed before you install the
  ViRGE,ViRGE/VX,ViRGE/DX,ViRGE/GX, graphics-accelerator device driver:

  1.  You must have OS/2 DOS Support installed.
  2.  If you previously installed SVGA support, you must reset the
      resolution to VGA mode, using the procedures in "Setting Your
      Display to VGA Mode" (section 5.0 in this README).
  3.  The device driver diskette must be labeled "S3 DRV1."
  4.  After driver installation, the OS/2 SYSLEVEL command may be used to
      confirm the new driver version level.  It may also be used prior to
      installation to verify the current driver version, however, some
      previous device drivers did not provide this information.  Following
      execution of the SYSLEVEL command look for the following information:

      C:\OS2\INSTALLATION\SYSLEVEL.VID
					ViRGE,ViRGE/VX,ViRGE/DX,ViRGE/GX
      Version 2.81     Component ID 562107701
      Current CSD level: S328103
      Prior   CSD level: S328018

      In this case the current version level is S3 2.81.03.
  5.  In some situations, installing this driver over 2.80.xx and 2.81.xx
      versions of the driver can result in duplicated icons.  To prevent
      this problem, you should delete the "S3 Windows Font Size" and
      "DDC Display Setup" icons from the System Setup Folder prior to
      installing this driver.


  5.0  Setting Your Display to VGA Mode
  _____________________________________

  Use the following procedures to reset to VGA mode.

  NOTE: If your display is out of sync, start OS/2 using the OS/2
	Installation Diskette.	Insert Diskette 1 when prompted, press
	F3 to display a command prompt, and then use the following
	instructions to reset your display mode.

  o   If you are installing this driver on OS/2 2.11 or OS/2 for
      Windows, and you installed from diskettes, do the following:

      1.  Under OS/2 2.1/2.11, before running RSPDSPI, delete the following
	  file:

	   [OS2 DRIVE]:\OS2\INSTALL\00S3.DSC

      2.  Be sure RSPDSPI.EXE is in the \OS2\INSTALL directory.  If it
	  is, go to step 3.  If it is not, insert Diskette 8 into
	  drive A and unpack RSPDSPI.EXE with the following command:

	    C:\OS2\UNPACK A:\INSTAID C: /N:RSPDSPI.EXE

	  where A: is the drive containing Diskette 8, and C: is the
	  drive where OS/2 is installed.

      3.  Type C: and then press Enter.

      4.  Type CD C:\OS2\INSTALL and then press Enter.

      5.  Type the following:

	    RSPDSPI /PK:VGA /SK:NONE /S:A:\ /T:C:

	  In /T:C:, C: is the target drive where OS/2 is installed.  In /S:A:,
	  A: is the source diskette drive for installing the device driver.

	  Then press Enter.

      6.  Perform a shutdown and restart your computer.

  o   If you are installing this driver on OS/2 2.11 or OS/2 for
      Windows, and you installed from CD-ROM or a LAN, do the
      following:

      1.  Under OS/2 2.1/2.11, before running RSPDSPI, delete the following file:

	    [OS2 DRIVE]:\OS2\INSTALL\00S3.DSC

      2.  Be sure RSPDSPI.EXE is in the \OS2\INSTALL directory.  If it
	  is, go to step 3.  If it is not, unpack RSPDSPI.EXE with the
	  following command:

	     C:\OS2\UNPACK E:\DISK_8\INSTAID C: /N:RSPDSPI.EXE

	  where C: is the drive where OS/2 is installed, and E: is
	  the CD-ROM or LAN drive.

      3.  Type C: and then press Enter.

      4.  Type CD C:\OS2\INSTALL and then press Enter.

      5.  Type the following:

	    RSPDSPI /PK:VGA /SK:NONE /S:E:\OS2SE21\ /T:C:

	  In /T:C:, C: is the target drive where OS/2 is installed.  In /S:E:,
	  E: is the source CD-ROM or LAN drive.

	  Then press Enter.

      6.  Perform a shutdown and restart your computer.

  o   If you are installing this driver on OS/2 Warp 3.0, do the following:

      1.  Restart your computer.

      2.  Simultaneously press Alt and F1 key immediately when a square
          block appears in the top left hand corner.

      3.  Press 'v' key for VGA.

  o   If you are installing this driver on OS/2 Warp (Merlin) 4.0,
      do the following:

      1.  Restart your computer.

      2.  Simultaneously press Alt and F1 key immediately when a square
          block appears in the top left hand corner.

      3.  Press F3 key for VGA.


  6.0  Installing from Diskette
  _______________________________

  To install the ViRGE,ViRGE/VX,ViRGE/DX,ViRGE/GX device driver from diskette, do the
  following:

  1.  If system is not in VGA mode, select VGA mode.

  2.  Insert the ViRGE,ViRGE/VX,ViRGE/DX,ViRGE/GX diskette into drive A (or any other
      diskette drive).

      Note: "S3 DRV1" must be the volume label of this diskette.
      To verify the label, use "Label A:".

  3.  Open an OS/2 full-screen or OS/2 window session.

  4.  At the OS/2 command prompt, type the following command to copy
      all necessary files to the OS/2 drive:

	A:SETUP

      where A: is the diskette drive.

      Then press Enter.

      Setup will then identify your chipset.  When prompted to do so, press
      Enter to continue.

  5.  When the Monitor Configuration/Selection Utility window appears,
      the "Install Using Defaults for Monitor Type" choice is
      preselected.  Select OK. Do not select "Install Using Display Adapter
      Utility Program" since this method of setting refresh rates is not
      supported anymore.

      NOTE:  DSPINSTL determines the hardware configuration by
	     creating the \OS2\SVGADATA.PMI file.  If the
	     \OS2\SVGADATA.PMI file has not been created, the adapter
	     will not be supported.  This process can take several
	     seconds and will black-out the screen.


  6. When the installation is complete, shut down your system, remove
      the diskette, and restart your computer.

  7. When the system has restarted:
      a.  Open the OS/2 System folder.
      b.  Open the System Setup folder.
      c.  Open the System object.
      d.  When the Settings notebook appears, select the Screen tab.
	  If your monitor has been detected as Plug and-Play (DDC)
          compatible, go to step 9.

  8. On Screen page 2, select your display from the display list. If
      your display does not appear in the list, select Default.

      It might be necessary to restart your computer to have all
      refresh rate options available.

  9. When the system has restarted:
      a. Open the System object and select Screen page 1, as in step
         7.
      b. Select a screen resolution and a screen refresh rate.
      c. Close the Settings notebook.
      d. Perform a shutdown and restart your computer.

  NOTES:

   o If the selected vertical refresh rate is not supported by your
     monitor, delete \OS2\VIDEO.CFG file and reboot. This will set
     the refresh rate to the default value. A new refresh rate can
     now be selected using the procedure described above.

   o During the installation of this driver, DISPLAY.LOG and
     DSPINSTL.LOG files are created in the OS/2\INSTALL directory.
     These files identify the OS/2 system files that were updated and
     indicate whether the installation was successful.	The contents
     of these files might be useful if you need to report an
     installation problem to IBM.

   o If the video memory size is changed after the device driver is
     installed, the device driver must be reinstalled in order for
     the system to recognize the change.  Not reinstalling the driver
     might result in serious system problems.

   o When starting a WIN-OS/2 session it is recommended that the user launch
     the session via one of the WIN-OS/2 icons located in the "Command
     Prompts" folder within the "OS/2 System" icon.  For additional information
     see section 10.0 Limitations.


  7.0  Installing in a CID Environment
  ______________________________________

  NOTES:

   o The server must contain a directory named S3_DRVS on the same
     drive where the OS/2 diskettes reside.  The S3_DRVS directory
     must contain all of the files from the ViRGE,ViRGE/VX,ViRGE/DX,ViRGE/GX device driver
     diskette.
   o OS/2 must have been successfully installed on the client using
     the CID (Configuration Installation Distribution) method.

  To install the ViRGE,ViRGE/VX,ViRGE/DX,ViRGE/GX graphics-accelerator device driver
  using CID, use the following information to modify your LCU command
  file.

  NOTE:  The following information is meant as a guide.
	 Your LCU command file might be different.

    /*****************************************************/
    /*		 LCU PRODUCT DATA SECTION		 */
    /*****************************************************/

			  .
			  .
			  .

    x.s3video = 15
    x.15.name='S3 Video'
    x.15.statevar = 'CAS_' || x.15.name
    x.15.instprog = 'x:\img\s3_drvs\SETUP.CMD',
		    ' /u /res:640x480x256'
    x.15.rspdir   = ''
    x.15.default  = ''

    /*---------------------------------------------------*/
    /*	       NUMBER OF PROGRAMS SET UP IN THE 	 */
    /*		     PRODUCT DATA SECTION		 */
    /*---------------------------------------------------*/

    NUM_INSTALL_PROGS = 15

    /*****************************************************/
    /*			INSTALLATION SECTION		 */
    /*****************************************************/
			  .
			  .
			  .

	when OVERALL_STATE = 2 then do
	  if RunInstall(x.s3video) == BAD_RC then exit
	  Call RebootAndGotoState(3)
	end
	when OVERALL_STATE = 3 then do
	  if RunInstall(x.s3dspinstl) == BAD_RC then exit
	  Call CheckBoot
	end
			  .
			  .
			  .

    /******************************************************/
    /*		      ROUTINE SECTION			  */
    /*	The following information should already exist in */
    /*	the LCU command file.				  */
    /******************************************************/
			 .
			 .
			 .
    RebootAndGotoState:
      parse arg new_state, other

      rc2 = SetState(new_state, 'RebootAndGotoState', 1)    /* Set the state */
							    /*	to go to in  */
							    /* OVERALL_STATE */

      Call SaveStates				/* Save the environment vars */

      Call Reboot				/* Reboot the machine */

      return

			  .
			  .
			  .


    /*****************************************************/
		END OF LCU INFORMATION TO BE ADDED
    /*****************************************************/

  Following is an explanation of the line that is
  executed in the LCU command file:

    C:\OS2\INSTALL\DSPINSTL /pd:c:\os2\install\00S3.dsc
    /S:X:\img\s3_drvs /T:C: /res:640x480x256 /u

       /pd:c:\os2\install\00S3.dsc
	is the dsc laid down during setup phase.

       /S:X:\img\s3_drvs
	where X:\img\s3_drvs is the redirected source path.

       /T:C:
	where C: is the drive where OS/2 is installed.

       /res:640x480x256
	is a resolution/color depth from the list of "Supported
	Resolutions" that appears earlier in this README.

       /u
	means Unattended installation.

  NOTES:

   o  Be sure you have the stated video memory required, as listed
      in "Supported Resolutions" earlier in this README.  A safe
      choice is 640x480x256.  Any of the listed resolutions can be
      selected, but your display might be damaged if you select a
      resolution that your display does not support.

   o  To select a refresh rate, SVGA.EXE can be executed again separately
      after DSPINSTL. Example, SVGA ON INIT 1024 75
      This will create another \OS2\VIDEO.CFG file with 75Hz as the default
      at 1024x768 resolution. The prior \OS2\VIDEO.CFG file should be
      deleted first.

   o  After the ViRGE,ViRGE/VX,ViRGE/DX,ViRGE/GX device driver has been successfully
      installed on the client machine using the CID method and the
      client machine is restarted, the resolution will be as specified
      by command line argument.

   o  After the CID installation, refer the end user to section 6.0
      "Installation from Diskette," step 12.

  8.0  Selecting Small or Large Fonts for Windows
  _______________________________________

  The default font sizes for Windows sessions are listed below.

    Resolution	    Default Font Size
    ----------	    ---------------------------
    640x480		Small
    800x600		Small
    1024x768		Large
    1280x1024		Large
    1600x1200		Large

    NOTE: Large fonts are not available for 640x480 resolution.

  Use the following procedures to select small or large fonts
  for Windows sessions.

    1. Select the "S3 Windows Font Size" object in the OS/2 System
       Setup Folder.

    2. Click on the radio button next to the font size you wish to
       select.

    3. Click on the OK button.

    4. A message will display saying that the new settings will take
       effect the next time you restart your Windows session.
       Currently open sessions will not be affected by the new
       settings.

    5. Click on the OK button.

    6. Start any WIN-OS/2 window or full-screen session.

  The setting you select will remain in effect until you explicitly
  change it, you change your display resolution, or you install a new
  display driver.

  9.0  Features and Fixes Included in this Driver
  _____________________________________________

  - "System - Settings" notebook support for setting refresh rate
  - DDC monitor detection support
  - Windows "Large font" and "Small font" support in high resolutions
  - WIN-OS/2 based on latest S3 Windows 3.1 drivers
  - One-diskette package

  10.0 Limitations
  _______________________

  1. CID install pauses due to SVGA.EXE loading in the background.
     Workaround: In the CID install script, do not initiate any other
     processes until DISPINSTL completes execution.  Ensure that no
     other processes are running during CID install.  This can be
     accomplished by adding the following line to the CONFIGSYSLINE
     keyword of the CID response file:

     SET RESTARTOBJECTS=STARTUPFOLDERSONLY

  2. During CID install of IBM AntiVirus when using NetView DM/2,
     the OS/2 full screen is displayed as a black screen.
     Workaround: Perform CID install under VGA.

  3. DISPINSTL does not allow CID selection of monitor and refresh
     rate.  The workaround is as follows:

	Requirements:
	* A system with the same graphics card and monitor configured with the
	  S3 driver version 2.81.05, the correct display type,
	  the desired resolution, and the desired refresh rate.

	Step 1: Copy Configured Video/Display Data Files
	* copy the video and display data files containing information about
	  the display type, resolution and refresh rate to the CID server
	  (\img\svgadata).

	  > copy \os2\svgadata.pmi x:\img\svgadata
	  > copy \os2\video.cfg x:\img\svgadata

	Step 2: Create CID Command File
	* create a command file to copy svgadata.pmi and video.cfg to the
	  client system's \os2 directory via CID.
	* reboot the client system.
	* the client system will be configured with the correct driver,
	  display type, resolution and refresh rate.

  4. In all modes, video corruption or out-of-sync screen is
     displayed when using  Alt+Esc to switch between WIN-OS/2,
     OS/2, and DOS window and full-screen sessions started from the
     Startup folder. To avoid this situation, do not start sessions
     from the Startup folder or press Alt+Esc several times to
     restore.

  5. Some programs, such as WINBENCH95, WINBENCH96, and After
     Dark 3.0, were written specifically for the Windows environment.
     In the Windows environment, these programs prevent any keystrokes
     from interfering with their proper execution.  However, in the
     OS/2 environment, it is possible to switch context away from the
     Windows session without notifying these programs.	General
     Protection Faults (GPFs) may result.  Therefore, context
     switching during the execution of WINBENCH95 and WINBENCH96 tests
     is not recommended.  Also, context switching during the execution
     of the After Dark 3.0 demo is not recommended.

  6. When attempting to start a WIN-OS/2 session from an OS/2 Full Screen
     session by typing "WIN" or "WINOS2" at the command prompt, it will not
     execute with the settings needed to support WIN-OS/2, and will result
     in video corruption and/or a system lockup.  It is recommended that the
     user launch all Windows sessions via one of the WIN-OS/2 icons located
     in the "Command Prompts" folder within the "OS/2 System" icon.

  7. When attempting to start a WIN-OS/2 session from a DOS Full screen or
     DOS Window by typing the "WIN" or WINOS2" command, the user must first
     be sure that the video settings of the session are changed to enable
     this feature.  These settings can be changed using the following
     procedure:
      a) Place mouse pointer over the DOS Full Screen icon (or any DOS
	 session icon you want to alter).  Press mouse button 2 (MB2), the
	 right button, to bring up a context sensitive menu.
      b) Place mouse pointer over "Setting" and press MB1.  Next, place
	 mouse pointer over the tab labeled "Session" and press MB1 again.
      c) Use MB1 to chose the "DOS Setting" button.
      d) Use MB1 to chose the "DOS video settings" option, and then click OK.
      e) From the list of settings which appear ensure that
	 "VIDEO_8514A_XGA_IOTRAP" is switched OFF, AND
	 "VIDEO_SWITCH_NOTIFICATION" is switched to ON,
	 then "save" these settings using MB1.


				(End of Document)





