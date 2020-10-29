echo off
cls

:PROMPT
cls
echo.
echo.
echo.
echo.
echo.
echo      ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo      บ                                                                   บ
type disk2
echo      บ                                                                   บ
echo      ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo      บ                                                                   บ
echo      บ   At least 2MB of hard disk space is required for installation.   บ
echo      บ                                                                   บ
echo      บ     1. Drive C:,         2. Drive D:,         3. Drive E:         บ
echo      บ                                                                   บ
echo      ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
echo      บ                                                                   บ
echo      บ     Select a number ( 1, 2, 3 ) to continue:   (  ESC to Exit )   บ
echo      บ                                                                   บ
echo      ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
:menu1
KEYIN
IF ERRORLEVEL  49 IF NOT ERRORLEVEL  50 GOTO ins_C
IF ERRORLEVEL  67 IF NOT ERRORLEVEL  68 GOTO ins_C
IF ERRORLEVEL  99 IF NOT ERRORLEVEL 100 GOTO ins_C
IF ERRORLEVEL  50 IF NOT ERRORLEVEL  51 GOTO ins_D
IF ERRORLEVEL  68 IF NOT ERRORLEVEL  69 GOTO ins_D
IF ERRORLEVEL 100 IF NOT ERRORLEVEL 101 GOTO ins_D
IF ERRORLEVEL  51 IF NOT ERRORLEVEL  52 GOTO ins_E
IF ERRORLEVEL  69 IF NOT ERRORLEVEL  70 GOTO ins_E
IF ERRORLEVEL 101 IF NOT ERRORLEVEL 102 GOTO ins_E
IF ERRORLEVEL 27 IF NOT ERRORLEVEL 28 GOTO EXIT
goto menu1

:ins_C
if exist c:\tvgautil goto insc
md c:\tvgautil
:insc
cls
:logo
echo TVGA Driver/Utility Disk, Version US6.X
echo.
echo Installing files to drive C ....
echo.
echo.

md c:\tvgautil
xcopy tvgautil\*.* c:\tvgautil\*.* /s
copy disk2 c:\tvgautil
c:
cd \tvgautil
copy insc readme.bat
goto readme

:ins_D
if exist d:\tvgautil goto insd
md d:\tvgautil
:insd
cls
:logo
echo TVGA Driver/Utility Disk, Version US6.X
echo.
echo Installing files to drive D ....
echo.
echo.
md d:\tvgautil
xcopy tvgautil\*.* d:\tvgautil\*.* /s
copy disk2 d:\tvgautil
d:
cd \tvgautil
copy insd readme.bat
goto readme

:ins_E
if exist e:\tvgautil goto inse
md e:\tvgautil
:inse
cls
:logo
echo TVGA Driver/Utility Disk, Version US6.X
echo.
echo Installing files to drive E ....
echo.
echo.
md e:\tvgautil
xcopy tvgautil\*.* e:\tvgautil\*.* /s
copy disk2 e:\tvgautil
e:
cd \tvgautil
copy inse readme.bat

:readme

readme
goto EXIT

:EXIT

