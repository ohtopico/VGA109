/**/
'@echo off'
call rxfuncadd sysloadfuncs, rexxutil, sysloadfuncs
call sysloadfuncs
/* CID ERROR CODES */
error = 65024
ERR_USAGE       = 5632
ERR_CHIP        = 5636
ERR_OS2VER      = 5636
ERR_UNPACK      = 5636
ERR_COMPAT      = 5636
env = 'OS2ENVIRONMENT'
src = ''
trg = ''
parse upper arg args
cid = parsearg('U')
call getsrc
if args <> '' then signal usage
call gettrg
/* space-seperated S3 chip list -- must match with svgadefs.h */
chips = '801/805 928 911 864 964 868 968 Trio32 Trio64 Trio64V+'
chips = chips 'Aurora64V+ ViRGE ViRGE/vX Trio64UV+ Trio64V+Compatible Trio64V2'
chips = chips 'Yosemite ViRGE/DX-GX ViRGE+COMPATBLE'
pipenull = ' 1>nul 2>&1'
w = 70
log = trg'\os2\install\display.log'
x = linein(src||'BUILD.LVL')
rc = lineout( src||'BUILD.LVL' )
rc = lineout(log, copies('=',w))
rc = lineout(log, x)
call SysCls
say ''
say copies('*',w)
say center('S3 Vision864/964/868/968/Trio32/64/64V+/64V2',w)
say center('display driver installation',w)
say center('Version 3.03.01',w)
say ''
say center('Please read README.TXT first', w)
say center('before installing this package', w)
say ''
call usage1
say ''
say center('Source Path 'src,w)
say center('Target Drive 'trg '['word(trginfo,4)']',w)
if cid <> '' then do
        say ''
        say 'User Options:'
        call saylog '   Unattended Installation'
end
say copies('*',w)
say ''
u2spec = SysSearchPath('PATH', 'UNPACK2.EXE')
if (u2spec = '') then do
        call lineout log, 'adding unpack2 capability to system'
        'unpack' src'unpack.pk2' trg pipenull
end
call unpack 'prereq.pk2' trg||'\os2\dll\portio.dll'
call unpack 'prereq.pk2' trg||'\os2\install\s3chipid.exe'
''trg||'\os2\install\s3chipid 2 0'
chipid = rc
rc = SysFileDelete( trg||'\os2\install\s3chipid.exe' )
rc = SysFileDelete( trg||'\os2\dll\portio.dll' )
if chipid = 0 then do
        error = ERR_CHIP
        call saylog 'Error: Unknown (probably non-S3) video hardware'
        signal readme
end
else if chipid < -1 then do
        error = ERR_COMPAT
        call saylog 'Error: BIOS indicates chip is not compatibile'
        signal readme
end
else if chipid <> -1 then do
        chiptext = 'S3 ' || word( chips, chipid )
        tempid = chipid
end
else do
        chiptext = 'IBM Mach 868'
        tempid = 6
end
call saylog 'The target video hardware is ['tempid'] ' || chiptext
say ''
if chipid <> -1 then x = wordpos(chipid, '4 5 6 7 8 9 10 15 16')
else x = 1
Select
When x=0 then do
        error = ERR_CHIP
        call saylog 'Error: Hardware not supported by this driver package'
        say 'please download a package matching the detected hardware.'
        signal readme
end
When x<3 then
        flat=1
Otherwise
        flat=0
end
os2ver = SysOS2Ver() /* returns 2.30 for Warp */
if (os2ver > 2.4) then do
        call saylog 'Warning: New version of OS/2'
        SAY ''
        SAY 'This S3 display driver package was designed'
        SAY 'for OS/2 Warp version 4.00 and earlier'
        SAY 'There is a possbility these drivers may not'
        SAY 'function with this new version of OS/2'
        SAY 'You may continue with installation or'
        SAY 'quit and download a new, updated version of'
        SAY 'this package.'
        call prompt
end
if (os2ver < 2.10) then do
        error = ERR_OS2VER
        call saylog 'Error: Unsupported older OS/2 version'
        signal readme
end
currentdriver = sysini(, 'PM_DISPLAYDRIVERS', 'CURRENTDRIVER')
If \pos('IBMVGA32',currentdriver) then do
        call saylog 'Warning: Not running IBM VGA at install time'
        say "Your system is not currently running IBM's VGA drivers."
        say 'In order to install any new hi-res display driver package'
        say 'safely, the system should be reset to VGA mode.'
        say 'please refer to your IBM OS/2 Warp documentation or'
        say 'readme.txt on this installation diskette for more'
        say 'information.'
        call prompt
end
if cid = '' then do
        say "Press any key to continue, or 'q' to cancel"
        key = SysGetKey('NOECHO')
        parse upper var key key
        if key = 'Q' then signal readme
end
prefix = 'WIN_RES_S3_'
count  = 20
Do i = 0 to 20
        appkey = prefix||i
        result = sysini(, appkey, 'DELETE:')
End
rc=sysini( , 'PM_DISPLAYDRIVERS', 'RESOURCESIZE', 'DELETE:' )
/*
** turn off readonly attributes -- fails dspinstl
*/
rc = SysFileTree(trg||'\os2\*.*',stem,'S','***+*','***-*')
/* Files required by dspinstl.exe */
say ''
call saylog 'Installing files required by dspinstl.exe...'
call unpack 'prereq.pk2' trg||'\os2\install\dspinstl.exe'
call unpack 'prereq.pk2' trg||'\os2\install\dspinstl.hlp'
call unpack 'prereq.pk2' trg||'\os2\install\dspinstl.ico'
call unpack 'prereq.pk2' trg||'\os2\install\product.exe'
call unpack 'prereq.pk2' trg||'\os2\dll\svga.dll'
call unpack 'prereq.pk2' trg||'\os2\dll\inscfg32.dll'
'copy ' || src || 'install1.dsp ' || trg || '\' pipenull
'copy ' || src || 'install2.dsp ' || trg || '\' pipenull
'copy ' || src || 's3common.dsp ' || trg || '\' pipenull
mmbase = value('MMBASE',,env)
if mmbase <> '' then do
        if right(mmbase,1) = ';' then mmbase = left(mmbase, length(mmbase)-1)
        if right(mmbase,1) = '\' then mmbase = left(mmbase, length(mmbase)-1)
        if ( os2ver < 2.4 ) & ( os2ver > 2.11 )then do
                call unpack 'prereq.pk2' mmbase'\dll\dive.dll'
                call unpack 'prereq.pk2' mmbase'\dll\svsh.dll'
                call unpack 'prereq.pk2' mmbase'\r565lut8.lut'
                call unpack 'prereq.pk2' mmbase'\y644lut8.lut'
                call unpack 'prereq.pk2' mmbase'\yuv_lut8.lut'
        end
end
rc=SysFileDelete( trg || '\os2\install\s3virge.dsc' )
rc=SysFileDelete( trg || '\os2\install\s3triov.dsc' )
rc=SysFileDelete( trg || '\os2\install\triov.dsc' )
rc=SysFileDelete( trg || '\os2\install\triov1.dsc' )
rc=SysFileDelete( trg || '\os2\install\pss3.dsc' )
rc=SysFileDelete( trg || '\os2\install\s3.dsc' )
rc=SysFileDelete( trg || '\os2\install\00s3.dsc' )
rc=SysFileDelete( trg || '\os2\private.dif' )
rc=SysFileDelete( trg || '\os2\video.cfg' )
refreshtable = value('REFRESH_TABLE',,env)
if refreshtable <> '' then rc=SysFileDelete( refreshtable )
if flat = 0 then do
        call unpack 'prereq.pk2' trg||'\os2\install\TRIOV2.dsc'
        'rename ' || trg || '\os2\install\TRIOV2.dsc 00S3.DSC'
end
else do
        call unpack 'prereq.pk2' trg||'\os2\install\LINX64.dsc'
        'rename ' || trg || '\os2\install\LINX64.dsc 00S3.DSC'
end
call unpack 'prereq.pk2' trg||'\os2\svga.exe'
call saylog "Starting OS/2's display install program..."
say ''
/* set up parameters for dspinstl.exe */
call stream log, 'c', 'close'
dspinstl = trg||'\os2\install\dspinstl.exe'
dspsrc = right( src, 1 )
if (dspsrc <> '\') & (dspsrc <> '/') then
        dspsrc = src
else
        dspsrc = left(src, length(src)-1) /* dspinstl: no trailing slash */
dspopt = '/pk:other /sk:none /s:'dspsrc' /t:'trg
if flat = 0 then
        dspdsc = '/pd:'src'PTRIOV2.DSC'
else
        dspdsc = '/pd:'src'PLINX64.DSC'
dcmd = dspinstl dspopt dspdsc cid
rc = lineout(log, dcmd)
/* Dspinstl renames files on replace so delete files first. */
result = sysini(, 'PM_INSTALL', 'WINOS2_LOCATION')
winpath = ''
if (result <> '') & (pos('ERROR',result) = 0) then do
        winpath = space(left(result,length(result)-1),0)
        rc = SysFileTree(winpath||'\*.*',stem,,'***+*','***-*')
        rc = SysFileDelete( winpath || '\os2fs.exe' )
end
rc = SysFileDelete( trg || '\OS2\DDC.CMD' )
''dcmd
call saylog "...OS/2 display install program has completed."
say ''
if winpath <> '' then do
        setup='EXENAME='||winpath||'\os2fs.exe;NORENAME=YES'
        rc = SysCreateObject("WPProgram", "S3 Windows Font Size", "<WP_CONFIG>",setup,'update')
        If (rc <> 0)
                Then call lineout log,'Font Size Object Created'
                Else call lineout log,'Font Size Object Creation Failed in 'winpath' rc='rc
end
setup = 'EXENAME=' || trg || '\OS2\DDC.CMD;'
setup = setup || 'ICONFILE=' || trg || '\OS2\DDC.ICO;'
setup = setup || 'NOAUTOCLOSE=YES;MAXIMIZED=YES;NORENAME=YES'
rc = SysCreateObject("WPProgram", "DDC Display Setup", "<WP_CONFIG>",setup,'update')
If (rc <> 0)
        Then call lineout log, 'DDC setup object created'
        Else call lineout log, 'DDC setup object creation failed rc='rc
setting = 'WIN_BACKGROUND_INIT=1;'
len = length(setting)
x = SysIni(, 'WINOS2', 'PM_GlobalWindows31Settings')
If (left(x, len) <> setting)then do
        x = setting||x
        SysIni(, 'WINOS2', 'PM_GlobalWindows31Settings', x)
end
if ((os2ver = 2.10) | (os2ver = 2.11)) then do
        '' || trg || '\os2\install\vcfginst.exe'
        rc = SysFileDelete( trg || '\os2\install\vcfginst.exe' )
end
'' || trg || '\os2\install\create.exe ' || trg || '\os2\install\syslevel.vid 3030 S330301 562107701 Vision864/964/868/968/Trio32/64/64V+/64V2'
rc = SysFileDelete( trg || '\os2\install\create.exe' )
dspdsc = '/pd:' || trg || '\os2\install\00S3.DSC'
dspopt = '/pk:other /sk:none /s:'trg' /t:'trg
dcmd = dspinstl dspopt dspdsc '/u'
''dcmd
rc = SysFileDelete( trg || '\install1.dsp' )
rc = SysFileDelete( trg || '\install2.dsp' )
rc = SysFileDelete( trg || '\s3common.dsp' )
'start ' || trg || '\os2\install\product.exe ' || trg cid
signal done
getsrc:
if cid = '' then do
        parse source src
        src = word(src,3)
end
else do
        src = parsearg('S')
        if src = '' then signal usage
        src = right(src,length(src)-3)
        temp = right(src, 1)
        if (temp <> '\') & (temp <> '/') then src=src||'\'
end
src = FileSpec('DRIVE', src) || FileSpec('PATH', src)
return
gettrg:
trg = SysSearchPath('PATH', 'PMSHELL.EXE')
trg = FileSpec('drive',trg)
trginfo = SysDriveInfo(trg)
return
parsearg:
parse upper arg switch
result = ''
x = pos(switch, args)
if x <> 0 then do
        y = pos(' ', args, x)
        if y = 0 then y = length(args)
        result = space(substr(args, x-1, y-x+2),0)
        args = delstr(args, x-1, y-x+2)
end
return result
usage:
call usage1
error = ERR_USAGE
signal readme
saylog:
parse arg msg
        say msg
        rc = lineout(log, msg)
return
prompt:
if cid = '' then do
        say ''
        SAY 'Do you wish to continue installation? (y or n)'
        key = SysGetKey('NOECHO')
        say ''
        parse upper var key key
        if key <> 'Y' then signal readme
end
return
unpack:
parse arg pack file
pack = src||pack
if file = '' then
        'unpack2' pack trg pipenull
else do
        call SysFileTree file,stem,,'***+*','***-*'
        filename = filespec("name", file)
        filedrive = filespec("drive", file)
        filepath = filedrive||filespec("path", file)
        if filepath='' then filepath=trg
        'unpack2 'pack filepath' /n:'filename pipenull
end
if (rc <> 0) then do
        error = err_unpack
        call saylog 'Error: unpacking 'file' from 'pack', rc = 'rc
        signal readme
end
else rc = lineout(log, 'UNPACK:' file 'successful')
return
readme:
say ''
say 'The installation has ended without modification to your'
say 'system.  Please reference README.TXT on the installation'
say 'diskette for more information.'
say ''
rc = lineout( log )
exit error
done:
rc = lineout( log )
if cid = '' then 'exit'
exit error
usage1:
say 'SETUP.CMD: S3 Display Driver Installation'
say ''
say 'Usage: setup {/U /S:SRCPATH}'
say ''
say 'Use the optional /U parameter for unattended (CID) installation'
return


