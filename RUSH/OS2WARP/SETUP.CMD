@echo off
if not exist setup.cmd a:
if NOT %1. == . GOTO check
:explain
echo Usage:
echo *            SETUP  bootdrive
echo *
echo *    Where "bootdrive" is your OS/2 boot drive.  Example:
echo *
echo *           SETUP C                 Installs to C:
echo *           SETUP D                 Installs to D:
echo *             etc.
goto end
:check
if %1. == A. goto baddrive
if %1. == B. goto baddrive
if %1. == c. goto okdrive
if %1. == d. goto okdrive
if %1. == C. goto okdrive
if %1. == D. goto okdrive
if %1. == E. goto okdrive
if %1. == F. goto okdrive
if %1. == G. goto okdrive
if %1. == H. goto okdrive
if %1. == I. goto okdrive
if %1. == J. goto okdrive
if %1. == K. goto okdrive
if %1. == L. goto okdrive
if %1. == M. goto okdrive
if %1. == N. goto okdrive
if %1. == O. goto okdrive
if %1. == P. goto okdrive
if %1. == Q. goto okdrive
if %1. == R. goto okdrive
if %1. == S. goto okdrive
if %1. == T. goto okdrive
if %1. == U. goto okdrive
if %1. == V. goto okdrive
if %1. == W. goto okdrive
if %1. == X. goto okdrive
if %1. == Y. goto okdrive
if %1. == Z. goto okdrive
if %1. == a. goto baddrive
if %1. == b. goto baddrive
if %1. == e. goto okdrive
if %1. == f. goto okdrive
if %1. == g. goto okdrive
if %1. == h. goto okdrive
if %1. == i. goto okdrive
if %1. == j. goto okdrive
if %1. == k. goto okdrive
if %1. == l. goto okdrive
if %1. == m. goto okdrive
if %1. == n. goto okdrive
if %1. == o. goto okdrive
if %1. == p. goto okdrive
if %1. == q. goto okdrive
if %1. == r. goto okdrive
if %1. == s. goto okdrive
if %1. == t. goto okdrive
if %1. == u. goto okdrive
if %1. == v. goto okdrive
if %1. == w. goto okdrive
if %1. == x. goto okdrive
if %1. == y. goto okdrive
if %1. == z. goto okdrive
goto explain
:okdrive
REM put the action here
if not exist %1:\os2 goto baddrive
if exist %1:\os2\boot goto v3
copy alsc2.dsc %1:\os2\install > nul
goto continst
:v3
copy alsc.dsc %1:\os2\install\alsc.dsc > nul
REM copy svga.exe %1:\os2 > nul
:continst
attrib %1:\psfonts\*.pfb -r > nul
attrib %1:\psfonts\*.pfb +a > nul
if exist %1:\os2\*.pmi del %1:\os2\*.pmi >nul
%1:
cd \os2
REM  start "svga" /fs /c svga.exe on init
dspinstl
REM if not exist %1:\os2\svgadata.pmi goto fail
echo updating system ....
if exist %1:\os2\boot goto warp
REM if os2\boot is not present then it is os2 2.11
a:vcfginst

:warp
echo ***Installation Complete
echo .
echo .
echo .
goto end
:baddrive
echo ERROR -- Cannot install to drive %1:
goto end
:fail
echo !!!  Installation was unsuccessful
echo .
echo .
echo .
:end
