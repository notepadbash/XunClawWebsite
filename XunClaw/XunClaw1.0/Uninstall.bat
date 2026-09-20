@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
   goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
   echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
   echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
   "%temp%\getadmin.vbs"
   exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs"
pushd "%CD%"
CD /D "%~dp0"
echo 是否开始卸载程序？
choice /c YN /m "请选择 [Y=卸载 N=退出]"
if errorlevel 2 (
    cls
    echo 已取消卸载
    pause
    exit /b
)
cls
rd C:\XunClaw\  /s /q
del %USERPROFILE%\Desktop\UninstallXunClaw /s /f /q
del %USERPROFILE%\Desktop\XunClaw /s /f /q
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\XunClaw" /f
echo 卸载完毕
pause
rd C:\X\ /s /q
