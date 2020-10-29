/* */
call RxFuncAdd 'SysLoadFuncs', 'RexxUtil', 'SysLoadFuncs'
call SysLoadFuncs
commandstr = "@echo off"
commandstr

/* Check arguments */
parse arg  source destination
if source="" then do
  call USAGE
  exit
end
if destination="" then do
   call USAGE
   exit
end

/* Copy files */
copy source'\et6000\svga.exe 'destination'\os2 >nul'
copy source'\et6000\et6000.dsc 'destination'\os2\install >nul'
attrib.exe '-r -s 'destination'\os2\screen01.sys >nul'
copy source'\et6000\screen01.sys 'destination'\os2 >nul'
copy source'\et6000\dspinstl.ico 'destination'\os2\install >nul'

/* Create icon for dspinstl.exe in the System Setup folder. */
rc = SysDestroyObject( '<DSP_INSTALL>' );
rc = SysCreateObject( 'WPProgram', 'Display Driver Install', '<WP_CONFIG>', ,
              'EXENAME=\os2\install\dspinstl.exe;' || ,
              'PROGTYPE=PM;' || ,
              'ICON=\os2\install\dspinstl.ico;' || ,
              'OBJECTID=<DSP_INSTALL>' );
if rc = 0 then do
  say
  say 'Failure!'
  exit
end
else do
  say
  say 'Success!'
end
say
say "Initial setup is now complete.  You must now reboot the system"
say "and run 'Display Driver Install' from the 'System Setup' Folder"
say "to complete installation of the ET6000 display driver."
say
exit

/* Display the usage string */
USAGE:
say
say  "Usage: SETUP [SOURCE_PATH:] [BOOTDRIVE:]"
say
return

