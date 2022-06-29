@echo off
chcp 65001 1>nul 2>nul

push "%~sdp0"

echo %~1 | findstr /I /C:".tar.br" 2>nul 1>nul
if ["%ErrorLevel%"] EQU ["0"] ( goto TAR_BR ) 

echo %~1 | findstr /I /C:".tar.bz2" 2>nul 1>nul
if ["%ErrorLevel%"] EQU ["0"] ( goto TAR_BZ2 ) 

echo %~1 | findstr /I /C:".tar.gz" 2>nul 1>nul
if ["%ErrorLevel%"] EQU ["0"] ( goto TAR_GZ ) 

echo %~1 | findstr /I /C:".tar.lz4" 2>nul 1>nul
if ["%ErrorLevel%"] EQU ["0"] ( goto TAR_LZ4 ) 

echo %~1 | findstr /I /C:".tar.lzma" 2>nul 1>nul
if ["%ErrorLevel%"] EQU ["0"] ( goto TAR_LZMA ) 

echo %~1 | findstr /I /C:".tar.lzop" 2>nul 1>nul
if ["%ErrorLevel%"] EQU ["0"] ( goto TAR_LZOP ) 

echo %~1 | findstr /I /C:".tar.xz" 2>nul 1>nul
if ["%ErrorLevel%"] EQU ["0"] ( goto TAR_XZ ) 

echo %~1 | findstr /I /C:".tar.zst" 2>nul 1>nul
if ["%ErrorLevel%"] EQU ["0"] ( goto TAR_ZST ) 

::--------------------------------------------------- must be after .tar.zst
echo %~1 | findstr /I /C:".tar.z" 2>nul 1>nul
if ["%ErrorLevel%"] EQU ["0"] ( goto TAR_Z ) 

::--------------------------------------------------- must be last
echo %~1 | findstr /I /C:".tar" 2>nul 1>nul
if ["%ErrorLevel%"] EQU ["0"] ( goto TAR ) 
::----------------------------------------------------------------


goto ERROR_NO_MATCH


:TAR_BR
  echo [INFO] found 'tar.br' (Brotli - https://en.wikipedia.org/wiki/Brotli).   1>&2
  call "%~sdp0\un_tar_br.cmd" %*
  set "EXIT_CODE=%ErrorLevel%"
  goto END

:TAR_BR
  echo [INFO] found 'tar.bz2' (BZIP2 https://en.wikipedia.org/wiki/Bzip2).   1>&2
  call "%~sdp0\un_tar_bz2.cmd" %*
  set "EXIT_CODE=%ErrorLevel%"
  goto END

:TAR_GZ
  echo [INFO] found 'tar.gz' (GZIP - https://en.wikipedia.org/wiki/Gzip).   1>&2
  call "%~sdp0\un_tar_gz.cmd" %*
  set "EXIT_CODE=%ErrorLevel%"
  goto END

:TAR_LZ4
  echo [INFO] found 'tar.lz4' (LZ4 - https://en.wikipedia.org/wiki/LZ4_(compression_algorithm)).   1>&2
  call "%~sdp0\un_tar_lz4.cmd" %*
  set "EXIT_CODE=%ErrorLevel%"
  goto END

:TAR_LZMA
  echo [INFO] found 'tar.lz4' (LZMA - https://en.wikipedia.org/wiki/LZMA).   1>&2
  call "%~sdp0\un_tar_lzma.cmd" %*
  set "EXIT_CODE=%ErrorLevel%"
  goto END

:TAR_LZOP
  echo [INFO] found 'tar.lzo' (LZOP - https://en.wikipedia.org/wiki/Lzop).   1>&2
  call "%~sdp0\un_tar_lzop.cmd" %*
  set "EXIT_CODE=%ErrorLevel%"
  goto END

:TAR_XZ
  echo [INFO] found 'tar.xz' (XZ Utils - LZMA2 - https://en.wikipedia.org/wiki/XZ_Utils).   1>&2
  call "%~sdp0\un_tar_xz.cmd" %*
  set "EXIT_CODE=%ErrorLevel%"
  goto END

:TAR_ZST
  echo [INFO] found 'tar.zst' (Zstandard - https://en.wikipedia.org/wiki/Zstandard).   1>&2
  call "%~sdp0\un_tar_zst.cmd" %*
  set "EXIT_CODE=%ErrorLevel%"
  goto END

:TAR_Z
  echo [INFO] found 'tar.z' (Compress - https://en.wikipedia.org/wiki/Compress https://github.com/andrew-aladev/lzws).   1>&2
  call "%~sdp0\un_tar_z.cmd" %*
  set "EXIT_CODE=%ErrorLevel%"
  goto END

:TAR
  call "%~sdp0\un_tar.cmd" %*
  set "EXIT_CODE=%ErrorLevel%"
  goto END


:ERROR_NO_MATCH
  set "EXIT_CODE=111"
  echo [ERROR] not match 'tar.br', 'tar.gz', 'tar.xz', 'tar.lz4', 'tar.lzma' , or '.tar' . 1>&2
  goto END

:END
  echo EXIT_CODE: %EXIT_CODE%   1>&2
  pause 1>&2
  popd
  exit %EXIT_CODE%
