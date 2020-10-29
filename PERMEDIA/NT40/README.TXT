                   3DLABS GLINT DRIVER
                   ===================
                 Display Driver Ver 2.7
                 OpenGL Driver Ver 1.1.15

This Readme describes how to download and install the above driver
release. It also lists the bug fixes and enhancements in this release.

0) Contents
1) Installation
2) New Display Driver Features
3) Display Driver Bugs Fixed
4) New OpenGL Driver Features
5) OpenGL Driver Bugs Fixed
6) OpenGL known Anomalies


1) Installation
===============
1.1 Download INTLnnRm.ZIP (for Intel), or ALPHnnRm.ZIP (for DEC Alpha) 
    where nn is the display driver version and 
    m is the last digit of the OpenGL driver version,
    into an appropriate scratch directory (e.g. C:\3dlabs).
1.2 Change into the scratch directory.
    > c:
    > cd \3dlabs
1.3 Use pkUnzip to uncompress the .ZIP file, USING THE -d OPTION to 
    preserve the directory structure...
    > pkUnzip -d XXXXnnRm.ZIP
1.4 This will produce a .DOC file in Microsoft Word 6.0 format, which
    contains the release notes for the Display Driver and OpenGL driver
    respectively, and a subdirectory named after the machine architecture
    containing the driver files. If you do not have Word 6.0 and wish to
    read or print the release notes then download WordViewer 6.0 from this
    site (file Wordvu.exe see Wordvu.txt for licensing details).
1.5 Install the new driver using the control panel display applet in the 
    normal way. When asked for a disk containing the drivers select 'Browse..'
    and move to the directory where you unzipped the drivers, where there 
    should be a DISPOEM.INF file visible. Full instructions can be found in 
    the .DOC file.
1.6 You can now delete the download scratch directory and its contents.


2) New Display Driver Features
==============================

Release 2.7
-----------
• Support for Dual-TX boards on Intel platforms.
 Display resolutions requiring more than 4MB are now supported on enhanced
  mode TX boards.
• Full support for Permedia-based boards.
 1600x1200 resolution is now supported on Permedia-based boards.
 1280x1024 True Color is now supported on Permedia-based boards.

Release 2.3
-----------
• Release for NT 4 final Build 1381.

Release 2.2
-----------
• Beta Support for the 3Dlabs Permedia reference boards with and without delta.
• Dual-headed support for GLINT 500TX including dual-headed texturing.
• First release for NT 4. Currently, build 1314 or later is supported.

Release 2.1
-----------
• Support for the GLINT 500TX for both 3Dlabs Racer and Montserrat boards.
• Support for hardware overlays on 3Dlabs Racer boards.

Release 2.0
-----------
• Dual-headed support on multi PCI bus machines.
• Hardware full screen double buffering added for Racer boards.

Release 1.9
-----------
• Support for the 3Dlabs Racer board incorporating the GLINTdelta.
• Support for multi-headed displays across multiple boards.
• Support for the TI TVP3026 RAMDAC.

Release 1.8
-----------
• Support for RGB528 RAMDAC.
• Support for resolutions up to 1600x1200.
• 4 bits per pixel image download added
• Faster screen to screen copy implemented for 16 bits per pixel at
  800x600 resolution.
• Value for the GLINT FBModeSel can now be specified with a registry
  variable. 
• Only double buffered modes are now exported, unless a registry variable
  is set to enable use of single buffered modes as well. This is to avoid
  confusion where double buffered 3D applications can run only in software
  if too high a resolution is chosen.
• Performance monitoring is now available for the PowerPC and DEC Alpha
  platforms.

Release 1.7
-----------
• None.

Release 1.6
-----------
• DEC Alpha and PowerPC platforms are now supported
• Values for the GLINT VTGSerialClk, LBMemoryCtl and FBMemoryCtl
  registers can now be specified with registry variables. 

Release 1.5
-----------
• None.

Release 1.4
-----------
• This release fully supports rev 2 of the GLINT 300SX. This includes
  faster screen-to-screen copies; removal of the software workaround
  necessary for block fills for rectangular fills; and use of block
  fills for solid polygon fills. With rev 2 it is no longer necessary
  to sync with the chip in order to move the hardware cursor.
• The driver now supports software cursors up to 32x32 in size. This
  has been combined with the 3D double buffering capability of the
  driver so that the software cursor is not removed when a 3D
  application is drawing to the non-displayed buffer. This gives up to a
  50% performance improvement for double buffered 3D applications which
  use a software cursor.
• Interrupt driven DMA is now supported. If the hardware supports
  interrupts then the DMA buffers for 3D applications are loaded under
  interrupt control. This provides better performance since an
  application no longer has to wait for previous DMA to complete. The
  next buffer is simply queued and the application can continue. At 12
  bits per pixel (4096 colors) swapping of buffers is now handled by a
  VBlank interrupt. This provides improved performance for 3D
  applications. If interrupt driven DMA is not possible then a system
  event is logged which can be viewed with the Event Viewer.
• In interrupt driven DMA mode, the DMA buffer used by a 3D application
  can be split into a number of sub-buffers. This is to allow a queue of
  buffers to be constructed, which will be drained by the interrupt
  handler. A registry variable is supplied to specify the number of
  sub-buffers used.
• Some performance monitoring capabilities have been added for Pentium
  platforms. Performance monitoring is available via the NT Perfmon tool
  and allows the user to see, among other things, the percentage of
  time that GLINT is busy. This is described in more detail below.
• The release runs with build 1024 or later of NT 3.51 on 486 and
  Pentium processors.
• The system is automatically probed to determine whether DMA buffers
  should be mapped as cached or uncached. On some machines without a
  cache-coherent PCI bus the buffers must be mapped as uncached. In
  general better performance results from using cached DMA buffers.
  Release 1.4 will use cached buffers where possible. If the PCI bus is
  not cache coherent then a system event is logged which can be viewed
  with the Event Viewer.
• The chip revision can now be determined using the Display Applet.
  Start the Display Applet Control Panel in the Main Window Group.
  Click the (Change Display Type ...) button. In the Chip Type section
  of the (Display Type Window) the full name and rev of the chip will
  be seen. For example, (3Dlabs GLINT 300SX-R02).
• The default clock speed configured for the board now depends on the
  chip revision. By default rev 2 chips are assumed to run at 50MHz;
  rev 1 chips run at 40MHz. A registry variable is supplied which will
  allow a specific clock speed to be selected.
• Since GLINT does not support 565 mode for 3D processing, this option
  has been removed. At 16 bits per pixel only 555 mode is now supported.
  The full list of pixel depths supported in this release are 8, 12, 15
  and 24.
• At 16 bits per pixel (555 mode) the 3D double buffer blt code has
  been optimized to almost double the speed.

Release 1.3M.
-------------
• The DMA buffers are now cached. This improves OpenGL performance.


3) Display Driver Bugs Fixed
============================

Release 2.7
-----------
• HCT conformance tests now pass on Permedia-based boards.
 2MB Permedia boards now run OpenGL accelerated at 800x600 256 colors.

Release 2.2
-----------
• Bug fix for invalid readbacks requested by OpenGL.
• Fix for sporadic problem where sometimes DMA was not used causing a drop
  in OpenGL performance.

Release 2.1
-----------
• None.

Release 2.0
-----------
• Bug fix for interrupt driven DMA on dual-processor machines.
• Bug fixes for 3D readbacks on windows crossing multiple boards.
• Block fill problem fixed in second 4MB of Racer boards.
• Display resolutions requiring greater than 4MB VRAM removed on Racer
  boards since they are not supported.

Release 1.8
-----------
• A bug has been fixed in the polygon rendering code where certain
  polygons caused a divide by zero error.
• Interrupt-driven DMA now works properly on the PowerPC.
• Due to a bug in the HAL code for some Alpha 21164 machines, booting
  onto these machines crashed the system. This has now been fixed but
  DMA is not available on these machines.

Release 1.7
-----------
• Interrupt-driven DMA now works properly on multi-processor machines.

Release 1.6
-----------
• None.

Release 1.5:
------------
• A bug which caused block fill clears to draw artefacts on the screen
  has been fixed.
• A bug which meant that fully obscured texture mapped OpenGL
  applications were not clipped has been fixed.
• A bug which prevented the driver being loaded at boot on some systems
  which supported interrupts has been fixed.

Release 1.4:
------------
• An alignment bug has been fixed in the color pattern filling code when
  drawing to off-screen bitmaps.
• Release 1.3 had an image download bug which showed up with 300SX rev 2
  chips. On download some pixel data was lost resulting, most
  noticeably, in corrupted icons and wallpaper background. This has
  been fixed in this release.

Release 1.3M:
-------------
• The DMA buffer allocation scheme now works correctly on the NEC/MIPS
  R94A platform - specifically the buffer is now always allocated
  contiguously in memory.
• DMA no longer loses data.
• The driver now makes no 64bit PCIbus accesses on the MIPS platform.
• The desktop wallpaper redraw at 8bpp now works correctly on the MIPS
  platform.
• ICON download at 4096 colors now works correctly on the MIPS platform.
• Image upload now works correctly on the MIPS platform.


4) New OpenGL Driver Features
=============================
Release 1.1.15
-------------
• Support for version 1.1 API calls (texture object and vertex arrays)
• Texture memory cache management.
• Performance improvement work for the accumulation buffer.
• Line stippling support available on Permedia

Release 1.0.13
-------------
• Support for version 3.51 of Micrososft's SoftImage application.
• Optional texture compression during download.
• Sharing of texture objects between render contexts now supported.
• Optimisations to read/draw pixels and lighting code.
• Improvements to Permedia texturing quality with high repeat factors.
• All pixel formats now include accumulation buffers which are only allocated
  when first used.

Release 1.0.12
-------------
• Support for dual-head TX systems.
• Support for GL_EXT_texture_object extension (GLINT 500TX/Permedia Only)
• Support for GL_EXT_palette_texture extension (GLINT 500TX/Permedia Only)
• Support for GL_EXT_bgra extension
• Support for GL_3DLabs_Driver_State extension
• Some general performance optimisation work, in particular for Racer Boards.

Release 1.0.11
-------------
• Support for overlays on 3Dlabs Racer boards.
• Support for Micrososft's SoftImage application.
• Support for GLINT 500TX for both 3Dlabs Racer and Montserrat boards.

Release 1.0.9
-------------
• Optimisations have been made which improve the performance
  of lighting calculations.
• wglShareLists is now partially supported.  Display lists
  containing texturing commands are shared correctly.
• Installable Client Driver is now binary compatible across
  Windows 95 and NT.

Release 1.0.8
-------------
• Support for the GLINT DELTA chip has been added.  This chip 
  accelerates triangle and line setup resulting in considerable
  improvements in the performance of these primitives under OpenGL.
  The DELTA chip is automatically detected and utilised by the driver. 
• The quality of the integer based texturing has been improved.

Release 1.0.6
-------------
• Some performance improvements have been made for small triangles.

Release 1.0.5
-------------
• Support for the popular vertex array extension has been added.
• A GLINT control panel Applet has been added to simplify setting some  
  of the boot-time and run time variables.  The glint.cpl applet is
  automatically copied into the system32 directory at install time and
  can be used to configure OpenGL more easily than setting environment 
  variables or editing the registry.
• OpenGL will now configure the format of the localbuffer as defined by 
  the PIXELFORMAT information and local buffer width.  For example if
  a pixelformat containing a 16 bit Z buffer is exported, this will be
  handled correctly.  Note that OpenGL will attempt to use any spare
  local buffer bits for fast Z clear purposes.
• Some performance improvements have been made in the following areas:
  • line drawing (this includes anti-aliased lines).
  • fogging.
  • matrix operations within a display list.
  • 2D transformations.
  • Blitting between front and back buffers.

Release 1.0.3
-------------
• Support for the DEC Alpha and PowerPC platforms

Release 1.0.2
-------------
The following areas of OpenGL now benefit from improved performance:
• Polygon rendering performance for all OpenGL primitives.
• Line drawing.
• Lighting.
• Anti-aliased lines.
• Display-list creation.
• Drawpixels, Readpixels, Copypixels and Image Zoom.
• Buffer Clears.
• Double-Buffered blitting.
• State management.


5) OpenGL Driver Bugs Fixed
===========================
Release 1.1.15
--------------
• A bug causing a system crash when mipmapping in Multigen/GameGen
  has been fixed.
• A bug causing a system crash on GLINT 500 TX when switching
  between certain mipmapping filtering modes has been fixed.
• The following bugs in ProEngineer have been fixed:
  User-plane not clipping all vertices
  Incorrectly colored polylines when window clipped
  User scissor area bug
• Co-ordinate axes and labels not depth tested bug
  (with delta enabled) in CADAS fixed.
• Incorrect material lighting bug in Soft/FX fixed.
• WglShareLists mipmapped textures in display lists not available
  on SX/TX bug fixed.
• NT4 screen savers not accelerated at 32k colours due to
  Microsoft limitation now fixed.
• Different OGL binary on MIPS platform for NT3.51 which needed
  the MSVCRT.DLL now fixed.
• Hoops point rendering bug at high resolutions fixed.
• Pixel zooming bug in OGLBENCH now fixed.
• Accumulation buffer allocation bug fixed.
• Inventor Apple incorrect rendering bug fixed.
• AVS viewer exiting when point light source enabled bug fixed.
• GLINT Control panel does not open if insufficient privileges
  to write to registry bug fixed.

Release 1.0.13
--------------
• A bug causing a system crash when ProEngineer is used on
  Permedia has been fixed.
• A texture download bug causing problems on the GVS submarine
  demo has been fixed.
• A bug causing incorrect menu restores on the Solid Edge
  application has now been
  fixed.

Release 1.0.12
--------------
• A bug when switching between mip-map and non mip-map texture filtering on GLINT 500 TX has been fixed.
• A bug where textured rendering occured before a valid current
texture has been defined has been fixed.
• Point rendering in some cases could snap to incorrect pixels, this was shown 
  by a HOOPS driver and is now fixed.
• A matrix/lighting bug has been fixed which resulted in incorrect lighting for
  particular matrix values.
• A bug with stipple patterns that are stored in display lists has been fixed.  
  Prior to this display list stipple patterns were not being loaded into the 
  chip.
• A bug that caused OpenGL to crash if a set of quads with trailing vertices (ie
  not a multiple of 4 between a glBegin and glEnd) has been fixed.
• 1280 by 1024 at 16 bit now works correctly with OpenGL.
• A display driver bug has been fixed that caused a system crash in the Multigen
  application as windows were deleted and created.
• A polygon clipping bug when polymode functionality was being used has been
  fixed.
• A problem with polygon selection that allowed polygons to be selected outside 
  of their boundaries has been fixed.
• A problem with selected polygons returning incorrect Z values has been fixed.


Release	1.0.11:
--------------
• A bug when rendering flat-shaded, textured primitives with GLINT 300SX
  has been fixed.
• A bug when using the GL_SPHERE_MAP texture coordinate generation function
  has been fixed.

Release	1.0.9:
--------------
• A bug causing random artefacts when rendering very thick aliased lines
  has been fixed.
• A problem which could cause polymode quad primitives to be incorrectly 
  rendered has been fixed.
• A problem with two-sided lighting when a DELTA is present has been
  corrected.


Release	1.0.8:
--------------
• A bug which caused some lines to be discarded when user clip planes 
  are in use has been fixed.
• A bug which caused thick anti-aliased lines to be incorrectly clipped
  on the viewport bottom has been fixed.
• A problem which was causing glColorMaterial() to work incorrectly when
  colors with a zero red component are used has been fixed.
• An occasional problem with rendering directly after changing the draw
  buffer has been rectified.

Release	1.0.6:
--------------
• A bug has been fixed which now means that the operation of glColorMaterial()
  will be correct.  This was noticable for clipped polygons and large meshes.
• glReadPixels now works correctly when either of the start x,y coordinates is
  negative.
• A bug which allowed logicops to operate in RGB mode has been fixed.

Release 1.0.5:
--------------
• A display list memory allocation bug has been fixed which would
  typically show up when large images were being stored in display lists.
• An accumulation buffer bug has been fixed that caused a conformance 
  test failure. 
• glGet (GL_CURRENT_COLOR) now returns the correct result, previously it 
  would return all 1.0's
• A problem which caused incorrect colors to be used when two OpenGL
  applications were running (particularly on a multi-processor machine)
  has been fixed.
• A Fast-Depth_Clear planes bug has been fixed that would manifest itself
  in the case where a window that created the OpenGL context was not the 
  same one that used it.
• A PowerPC issue has been fixed that would cause traingle drop-outs in
  polygons.  The fix was needed to work around the compiler bug.  In 
  addition, the PPC library works correctly with the OPENGL32.DLL PPC
  library in the Windows NT Service Pack 2.
• Lines drawn when the shademodel was smooth used to be coloured wrongly.
• There was a clipping problem with line loops, occasionally the line 
  connecting The last to the first vertex would not render.

Release 1.0.4:
--------------
• A bug which somtimes caused the covgl OpenGL conformance test to fail
  has been fixed.

Release 1.0.3:
--------------
• A lighting bug has been fixed which manifested itself for local and
  spot lights.
• Fogged anti-aliased lines  would sometimes be drawn in an incorrect
  color.
• An accumulation buffer allocation bug has been fixed.
• Single buffered, clipped windows now render textured polygons
  correctly.

Release 1.0.2:
--------------
• Wide Anti-Aliased lines now render at the correct width when almost
  horizontal.  
• Stippled Anti-Aliased lines now work correctly.
• Large display-lists are generated more efficiently.
• MicroStation can now be used with Fast Clear Planes enabled.


6) OpenGL Driver Known Anomalies
================================
• On a GLINT racer board, the OpenGL flying objects screen saver can 
  cause corruption of the desktop, this requires a re-boot to fix the
  problem.
• The later pipes screen saver that uses multiple pipe trails will not
  work correctly when fast clear planes are enabled (SX and TX) only.
  There is a control panel switch to disable fast clear planes at the 
  cost of losing some Z buffer clear performance.
• The GLINT control panel fails to load under NT 3.50
• Texture memory caching management is automatically disabled for
  a dual head setup.
• Microsoft NT4 maze screen saver is never hardware accelerated
  due to a bug in the screen saver library code. An alternative
  customised 3Dlabs version is provided.


