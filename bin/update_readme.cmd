::@echo off
chcp 65001 1>nul 2>nul

pushd "%~sdp0"

for %%e in (*.exe) do ( 
  call "%%e" --help   1>"readme_%%e.nfo" 2>&1
) 

call "lzma.exe" -h   1>"readme_lzma.exe.nfo" 2>&1

popd
pause
exit /b 0