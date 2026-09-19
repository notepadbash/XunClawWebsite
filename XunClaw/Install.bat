@echo off
chcp 936 >nul
echo Installing...
echo.
echo Download main program...
if not exist "C:\XunClaw" mkdir "C:\XunClaw"
curl "https://xcsyweb.pages.dev/XunClaw/XunClaw1.0/XunClaw.exe" -o C:\XunClaw\XunClaw.exe
echo.
echo Download MP4...
curl "https://xcsyweb.pages.dev/UserGuide.mp4" -o C:\XunClaw\User_Guide.mp4
echo.
echo Create shortcut...
mklink "C:\Users\%username%\Desktop\XunClaw" "C:\XunClaw\XunClaw.exe" >nul
echo.
echo Download uninstall program...
curl "https://xcsyweb.pages.dev/XunClaw/XunClaw1.0/Uninstall.bat" -o C:\XunClaw\main.bat
mklink "C:\Users\%username%\Desktop\UninstallXunClaw" "C:\XunClaw\screen.exe" >nul
echo del C:\main.bat && copy C:\XunClaw\main.bat C:\main.bat >> C:\XunClaw\temp.bat
echo del C:\XunClaw\main.bat >> C:\XunClaw\temp.bat
start C:\XunClaw\temp.bat
taskkill /f /im screen.exe
exit
