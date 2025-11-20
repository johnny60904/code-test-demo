@echo off
setlocal enabledelayedexpansion

cd /d "%~dp0"

set "swchTrg=%~dp0..\.."

pushd "%swchTrg%"
set "rtt=%cd%"
popd

set "flee=demo.ps1"
set "fldd=%rtt%\demo"
set "trgg=%fldd%\%flee%"

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
    "Start-Process pwsh.exe -ArgumentList '-NoProfile', '-ExecutionPolicy Bypass', '-Command \"pwsh \"%trgg%\"\"'"

pause
endlocal
exit /b