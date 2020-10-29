
            MS Windows 3.1 TRIDENT SGUI975/9397 Drivers
	    ==========================================
                          (1.00.xx May 15,1997)

  
This diskette contains the following high-resolution drivers for Windows 3.x:  
  
All SGI*.DR_ drivers run with the Trident 3D Image 975/Cyber 9397 chip only.  
  
  
A. Using Windows Utility TINSTALL  
---------------------------------  

INSTALLATION PROCEDURE  
=======================  

The graphic installation program (TINSTALL) supports a simple six-step installation procedure for the display driver setup program, the power management program and the UNinstall program.

To use TINSTALL, follow the 6 steps below: 

1. Ensure that MS Windows 3.1 is up and running properly, using the standard 
   VGA driver.  
  
2. Select the MAIN group in Program Manager.  
  
3. Click on FILE or press ALT + F. 

4. Press R to get to the command line.

5. Type in "A:TINSTALL" (if the display driver disk is in the B drive then TYPE in "B:TINSTALL") and then press ENTER.
     
6. A menu will appear, presenting a choice of Express or Custom Installation.
   
    Express Installation is quick and decision free. Display drivers will be 
    copied into the TRIDENT.XGI directory and Utility files will be copied into 
    the TRIDENT.UTL directory. Once all files are copied, a program group 
    called DISPLAY DRIVER AND UTILITY will be created.  
  
Custom installation allows control over file storage and in what program group the icons are placed. The first dialog box that appears shows the default directory to which the display drivers will be copied. To change the directory name select the default name, delete it and then enter the desired directory name.
    
 Once the desired directory name is selected, continue the installation procedure by selecting CONTINUE, or by pressing ENTER. The next dialog box displays a summary of where files are stored. Select CONTINUE to copy the drivers and utilities files. When all files are copied, the program will present a choice of program groups where the icons will be created. Create a new group to place the utility icons or select from pre-existing groups (e.g. main, applications, accessories etc.).
  
When all necessary files are copied and a group name is selected, the Tinstall program will   create three icons :  
  
	a. Screen Control       (Used to configure display drivers)  
	b. UNinstall            (Used to delete the installed TRIDENT drivers)  
	c. DPMS                 (Used for power management configurations)  
    
  
a. SCREEN CONTROL  
=================  
  
The screen control program supports the following options :  
  
i)      Select a Display Driver.  
ii)     Select resolution, color depth, and font size.  
iii)    Select refresh rate.  
iv)     Enable and customize virtual screen (advanced).
v)      Detect DDC monitor and display the information about that DDC monitor.
  
  
To select a Display Driver, run the Screen Control program by double-clicking 
on the Screen Control icon with the mouse, or high light the icon and press 
ENTER. A Display Driver Setup window will appear on the screen. This 
window displays a list of available Display Drivers, and if in current use . Select the desired Display Driver and then click on SELECT. The next window that appears  is used to configure display  resolution, refresh rate, color depth and  font size. Selection of these parameters are made by clicking on the respective values. Select the button labeled "OK" to implement the selection. 

The Video Display Control Panel in the Screen Control program enables or disables Display Control Interface (DCI) driver or VESA Advanced Feature Connector (VAFC) driver.   Video playback can be achieved with the installation of most software MPEG  decoder or with Microsoft Video for Windows 1.1e Runtime or later; however, better display quality and playback performance can be achieved by activating the Trident DCI driver since this driver utilizes the Accelerated Video Engine of the video/graphic chip.   Trident DCI driver currently supports video data format of YUV2, YUV9 and  IF09; it also provide off-screen surface support, color-space conversion, video overlay, scaling, interpolation, and minify functions.   

Microsoft's Video for Windows 1.1e Runtime or third-party software MPEG decoder need to be installed to take advantage of Trident's DCI driver.  Installation procedures as well as installation software for Microsoft Video for Windows 1.1e can be found in the Microsoft Video for Windows 1.1e software package which may be purchased separately.  Installation procedures for third-party software MPEG decoder is usually found in the README.TXT file of the perspective software MPEG decoder diskette.

Trident's VESA Advanced Feature Connector (VAFC) driver allows data from an external device into video overlay surface over  the VESA Advanced Feature Connector (VAFC).

Screen Control program also detects DDC monitor information if a DDC monitor is  connected.  Select the button "DDC Monitor" on the advanced setup screen to list information such as resolutions and refresh rates supported by the DDC monitor.
  
The advanced features provide functions to customize the virtual screen:  
  
1. Virtual Screen Control  

The advanced features of the program is accessed by pressing ALT + D or by clicking the box marked Advanced.
This action opens up an extension of the Main Panel that presents the following features:

a       "Hot Key" selection. Enabling this function allows setting up pre-defined key strokes achieve specific virtual screen related actions.
b       "Turn On" virtual screen. This function allows the use of the pre-defined virtual screen sizes. The pre-defined virtual screen sizes are selected by clicking next to available options. The size of the available pre-defined virtual screen is dependent on the selected color depth and resolution.
c       "Customize" Virtual screen area. Selecting this feature opens up a new screen titled Virtual Screen Advanced Settings.
  
2. Freeze Screen  

      The Freeze Screen option is used to disable the panning feature  giving the illusion of a frozen screen but keeping other virtual screen  functions available.  Hot key functions are available for this feature.  
  
  
3. Linear Frame Buffer Address  

The Linear Addressing driver will automatically detect the system's memory size and set the frame buffer to an unused area above the system memory (VL bus card only). The Linear Frame Buffer Address setting is useful in avoiding conflicts with Windows applications which  use the same linear frame buffer address as the Display Driver. Addresses between 18 and 63 MB can be selected. If there is no conflict, the default setting is highly recommended.  
  

4. Border Space  
       
The Border Space option is used to set up a border (thickness measured in pixels) within the Displayable Area, which is used as a marker for panning the screen. i.e. when the cursor hits against this border, screen panning occurs.  
 
5. Pan Set Hot Key  
 
Hot keys can be set up to pan the virtual screen left, right, up and down. The feature has to be enabled first by clicking on the ENABLE box, before hot keys can be selected.  
  
b. UNinstall  
============  
  
The UNinstall program enables the user to safely delete specific drivers or an entire
driver set. To run the UNinstall program, simply double click on the icon or 
high light the icon and press  ENTER. The first screen will show a list of the 
available display driver sets. To remove the entire Display Driver set, select the Display Driver Set that is to be removed (the set to be deleted should be high-lighted), then select the "Delete" button or press ENTER. To remove an individual driver from a Display Driver Set, select the Display Driver Set that contains this individual driver, then click on ENTER. A list of available display drivers will appear.  Select the display driver to be deleted by using the mouse or up/down arrow keys to scroll through the list.  Click  on the DELETE button or press ALT + D to delete the selected display driver.

 

c. DPMS  
=======  
  
The POWER MANAGEMENT program, in the DISPLAY DRIVER & UTILITIES program group,  
is designed for energy-saving monitors that conform to the VESA Display Power  
Management Signaling (DPMS) standard.   
  
THE USE OF THIS PROGRAM IS NOT RECOMMENDED FOR MONITORS THAT DO NOT SUPPORT THE VESA DPMS STANDARD.  
  
The program offers three power-down modes:  
  
    1.  Stand by        (minimum power savings)  
    2.  Suspend         (substantial power savings)  
    3.  Off state       (maximum power savings)  
  
The program monitors for mouse and/or keyboard activity.  When activity is not 
detected for a specified delay period, the program signals the display chip-set to enter the selected power-down modes.  
  
The Display Power Management program offers several option to customize the 
DPMS operation :  
  
1. DELAY TIME  
     
The delay time to enter each mode can be set by entering the value (in minutes ) in the Delay Time parameters.  Values can be entered by either clicking on the count-up or count-down button, or by clicking on the number, deleting it, and typing in the desired time in minutes. 
  
2. ACTIVITY SELECT  
 
 The Activity Select  option select which activity the program senses in order to restore the display to the monitor.  For example, if both mouse and keyboard are selected, then either activity will re-establish the powered down signal.  
  
3. PASSWORD OPTION  

     The Password Option sets up a password to get back onto the screen.   
  
4. CLOCK  

     Turning on the clock enables the digital count down display. If the Alarm 
     option is enabled, then the last 5 seconds of countdown to Stand by mode 
     is synchronized with beeps from the PC speaker.  
  
5. STARTUP ON/OFF   

     This option installs the Display Power Management program onto the 
     Windows Startup file, so that DPMS is active upon entering Windows.  
  
6. SAVE  

     This feature is used to save all the current settings.  
   

**********************************************************************

Please contact Trident's BBS and website for updated driver.

Website address: http://www.trid.com

BBS number: 415-691-1016

