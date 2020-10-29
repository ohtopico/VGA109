
RELEASE NOTES FOR PROMOTION(tm) Windows NT 4.0 Display Driver VERSION 1.4.10

RELEASE DATE: 10/14/96.

(c) COPYRIGHT 1993-1996 ALLIANCE SEMICONDUCTOR ALL RIGHTS RESERVED.
-------------------------------------------------------------------------------

OVERVIEW:
---------
Windows NT 4.0 Display Driver

The following files are included in this release:
 PROMTN.SYS 	-- VDD Miniport driver
 PROMTN.DLL	-- Display driver
 OEMSETUP.INF	-- Installation Script
 README.TXT	-- This File


BUG FIXES AND FUNCTIONALITY CHANGES:

Version 1.4.10
++++++++++++++
Changes made to pass HCT.

***  This is a BETA driver only!! It has not been Qualified by Alliance QA  ***

Version 1.4.9
++++++++++++++
Revert to Software cursor at high vclk
Updated ddraw for release version of NT 4.0

Version 1.4.8
++++++++++++++
Fixed bugs 1222,1223,1226
        1222:   Blank screen in some modes.
        1223:   System lock up when TESTing 1600x1200x8x65 .
        1226:   HCT test does not pass 800x600x32.
Fixed bug:  corrupted cursor.
Bug 1225 believed to be limitation of test suite


Version 1.4.7
++++++++++++++
Fixed to work on Beta2 of NT 4.0
Added directdraw support

Version 1.4.6
++++++++++++++
Passed HCT at 8bpp
Stretchblt implemented

Version 1.4.5
++++++++++++++
Fontcaching implemented
FillPath accelerated

Version 1.4.4
++++++++++++++
Bitblt operations accelerated

Version 1.4.3
++++++++++++++
Addition of 100,120hz refresh rates

Version 1.4.2
++++++++++++++
Removed 800x600x32bpp 85Hz
Changed 1600x1200 70hz to be 65hz

Version 1.0.1
++++++++++++++
Created


OUTSTANDING / OPEN ISSUES:
--------------------------
None.


MISCELLANEOUS NOTES:
--------------------
None.



*
