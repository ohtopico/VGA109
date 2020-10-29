		

		    Trident OS/2  Display Drivers

			     October 1997


  
This Trident OS/2 Display  Drivers utility supports the following  color 
monitor resolutions with OS/2.  The required memory is shown in parentheses. 

		640x480x256   
		800x600x256
		1024x768x256
		1280x1024x256  (2M)
		1600x1200x256  (4M)
		640x480x65K
		800x600x65K
		1024x768x65K   (2M)
		1280x1024x65K  (4M)
		640x480x16.7M               
		800x600x16.7M  (2M)
		1024x768x16.7M (4M)

   
This utility includes Trident OS/2 Display Drivers installation
and Trident OS/2 Display Drivers setting.

    A.  Installation Procedure from command prompt

1.  Insert the Trident OS/2 Display Driver diskette in CD-ROM drive C: 

2.  Open an OS/2 full-screen or OS/2 Windows session under "Command Prompt" of the System folder.

3.  Switch the current drive to the CD-ROM driver where the Trident OS/2  Display Driver CD-ROM was inserted.

4.  At the drive prompt, Type the command: "Install".

   
    B.  Installation procedure  from the OS/2 Desktop:

1.  Insert the Trident OS/2 Display Driver in CD-ROM 
 

2.  Open the OS/2 System folder, double-click on the Drives object,
    and then double-click on drive C. 

3.  When the drive C opens, double-click on INSTALL.EXE. 

4.  You can also click on the CD-ROM drive object from Launch Pad, and 
    then double-click on INSTALL.EXE.


    C.  Available Trident Display Driver Setting pages
    
    The first page of the Trident Display Drivers Setting window is 
    labeled Screen Resolution selection page. 
  
   . Select the resolution and color depth.
   . Enable/Disable virtual screen

    The second page is Monitor Model selection page. 
   
   . Click on Monitor tab to go to this page.
   . Point to and click on the down arrow button to show a list of
     monitor models.
   . Select the monitor model. If you cannot find your monitor's
     model, select "Default".

    The third page is Refresh Rate selection page.

   . Click on Refresh tab to go to this page.
   . The refresh rates displayed are those supported at each resolution 
     by the monitor specified in the Monitor Model selection page.
   . You can change the refresh rates by clicking on down arrow button 
     and then clicking on the desired refreshrate.

    After the selections, click on the "SET" button to complete
      the installation.

    Reboot OS/2 to have this installation take effect.



    D.  Display Drivers Setting Procedure


    I. Double-click on the Trident folder, and then double-click
       Display Setting object.

    II. To change resolution and/or color depth

     . Click Screen tab.
     . Select the resolution and color depth.
     . Click Set button.

    III. To change refresh rate
     
     . Click Refresh tab.
     . Point to and click down arrow button.
     . Select the refresh rate.
     . Click Set button to take effect.
     . If you don't want the selected refresh rate, click Undo
       button or press 'U' key to return to previous refresh rate.



Setting up the 3D-Image 975 card with your television on OS/2 Warp Operating 
 System

This current version of Trident OS/2 Display Driver for 3D-Image 975 does not 
have an software utility that allows switching between CRT color monitor and 
television display.  

Setting up the 3D-Image 975 card to display to a NTSC or PAL television maybe 
possible by following these steps: 

1.  Have your 3D-Image 975 card connected to a CRT color monitor and 
    follow steps A through D above.

2.  Your color monitor will be the default display device if only the 15-pin 
    VGA connector of the monitor is connected to the VGA output connector of 
    the 3D-Image 975 adapter card or if both the TV-output connector and 
    the 15-pin VGA connector of the monitor are connected to the 3D-Image 
    975 adapter card.

3.  On NTSC televisions, only 640x480x256 and 720x480x256 modes are supported 
    by this version.  
    On PAL televisions, only 640x480x256 and 800x600x256 modes are supported 
    by this version.  
    Special features such as overscan, interlaced, flicker 
    reduction, screen shifts are not supported in this version. A supported 
    mode must be selected before 3D-Image 975 card can display to a NTSC or 
    PAL television.

4.  Make sure that appropriate jumpers are set on your 3D-Image 975 card  
    (in open position) so that your television will be the default display 
    device if a S-Video TV-Output connector or a Composite (RCA) TV-output 
    connector is connected to your television.  Do not connect the 15-pin 
    VGA connector if display to a NTSC or PAL television is desired.

5.  Turn on your computer and your television.

   Note:

   If you decide to change your hardware system configuration, such
   as upgrading video memory or system memory, you should

   . Change resolution to 640x480x16(VGA).
   . Change hardware configuration.
   . Reinstall Trident OS/2 Display Drivers.

   You can add or delete monitor models by modifying TMONITOR.INF
   file in this utility CD.

   The format of each line in this file is:

   . The monitor model and company name inside two double quote marks.
   . Four recommended refresh rates data for 640x480, 800x600,
     1024x768, 1280x1024, and 1600x1200 resolutions.
   . Four maximum supported refresh rates data for 640x480, 800x600,
     1024x768, 1280x1024, and 1600x1200 resolutions. If some resolutions 
     are not supported, put "0" in it.



   Copyright Trident Microsystems, 1995-1997, all rights reserved.
