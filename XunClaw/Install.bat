@echo off
echo 正在安装中...
echo [=========================%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%]
echo.
echo 下载主程序...
curl "https://xcsyweb.pages.dev/XunClaw/XunClaw1.0/XunClaw.exe" -o C:\XunClaw\XunClawInstall.exe
cls
echo [==================================================%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%]
echo.
echo 下载MP4...
curl "https://xcsyweb.pages.dev/UserGuide.mp4" -o C:\XunClaw\User_Guide.mp4
cls
echo [===========================================================================%%%%%%%%%%%%%%%%%%%%%%%%%]
echo.
echo 创建快捷方式...
mklink C:\Users\%username%\Desktop\XunClaw C:\XunClaw\XunClaw.exe >nul
cls
echo [====================================================================================================]
echo.
echo 下载卸载程序...
curl "https://xcsyweb.pages.dev/XunClaw/XunClaw1.0/Uninstall.bat" -o C:\main.bat
mklink C:\Users\%username%\Desktop\卸载XunClaw C:\screen.exe >nul
cls
