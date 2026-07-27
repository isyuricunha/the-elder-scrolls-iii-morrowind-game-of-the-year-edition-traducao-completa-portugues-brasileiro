@echo off
setlocal
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0instalar-questionario-classes.ps1"
set "EXIT_CODE=%ERRORLEVEL%"
echo.
if not "%EXIT_CODE%"=="0" echo A instalacao falhou. Leia a mensagem acima.
pause
exit /b %EXIT_CODE%
