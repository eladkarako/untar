@echo off
SETLOCAL ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
chcp 65001 1>nul 2>nul

set "FILE_TAR=%~sdp0\bin\tar.exe"
set "FILE_COMPRESS_PROGRAM=%~sdp0\bin\zstd.exe"
set "FILE_COMPRESS_PROGRAM=%FILE_COMPRESS_PROGRAM:\=/%"
::set "PATH=%~sdp0;%PATH%"

pushd %~sdp1

call "%FILE_TAR%" "--force-local" "--use-compress-program=%FILE_COMPRESS_PROGRAM% -d" "--extract" "--verbose" "--file=%~1"
set "EXIT_CODE=%ErrorLevel%"
popd
exit %EXIT_CODE%
ENDLOCAL
