@echo off
SETLOCAL ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
chcp 65001 1>nul 2>nul

set "FILE_TAR=%~sdp0\bin\tar.exe"
::set "PATH=%~sdp0;%PATH%"

pushd %~sdp1

call "%FILE_TAR%" "--force-local" "--extract" "--verbose" "--file=%~1"
set "EXIT_CODE=%ErrorLevel%"
popd
exit %EXIT_CODE%
ENDLOCAL
