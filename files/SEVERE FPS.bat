��
@echo off
mode 120,30
title SEVERE FPS [1.0] 
:Admin
    

    net session >nul 2>&1
    if %errorLevel% == 0 (
        goto menu
    ) else (
       cls
       echo [91mFailure:[0m Open the file with administrator permissions. [95mError 314[0m
       timeout 2 >NUL
       echo [91mIf you have a problem: [0m[96mdiscord.gg/MKtBtrjkyn[0m
       timeout 9 >NUL
       goto Admin
    )
:menu
cls
echo.
echo [91m"                          _____ ________      ________ _____  ______    ______ _____   _____ [0m      
echo [91m"                         / ____|  ____\ \    / /  ____|  __ \|  ____|  |  ____|  __ \ / ____|    [0m    
echo [91m"                        | (___ | |__   \ \  / /| |__  | |__) | |__     | |__  | |__) | (___    [0m         
echo [91m"                         \___ \|  __|   \ \/ / |  __| |  _  /|  __|    |  __| |  ___/ \___ \       [0m     
echo [91m"                         ____) | |____   \  /  | |____| | \ \| |____   | |    | |     ____) |     [0m    
echo [91m"                        |_____/|______|   \/   |______|_|  \_\______|  |_|    |_|    |_____/     [0m                                                                                   
echo                                                       [90mVersion: BETA[0m
echo [90m                        ______________________________________________________________________[0m
echo.
echo                                                 Logged in as [91m%USERNAME%[0m
echo.
echo                          [90m[[0m [91m1[0m [90m][0m FPS Tweaks                                    [90m[[0m [91m2[0m [90m][0m Remove Tweaks
echo.
echo                          [90m[[0m [91m3[0m [90m][0m Internet Tweaks                               [90m[[0m [91m4[0m [90m][0m Updates
set /p choose="[91m>[0m "
if /i "%choose%"=="1" goto tweaks
if /i "%choose%"=="2" goto deltweaks
if /i "%choose%"=="3" goto internet
if /i "%choose%"=="4" goto updates
if /i "%choose%"=="x" goto x
goto error


:cleaner
cls
echo [91mCleaning temporary files...[0m
timeout 3 >nul
del /s /f /q %SYSTEMDRIVE%\windows\temp\*.* 
rd /s /q %SYSTEMDRIVE%\windows\temp 
md c:\windows\temp
del /s /f /q %SYSTEMDRIVE%\WINDOWS\Prefetch 
del /s /f /q %temp%\*.* 
rd /s /q %temp%
cls
echo [91mSuccesfull deleted temporary files![0m
timeout 1 >nul
cls
timeout 3 >nul
echo [91mCleaning logs...[0m
md %temp%
del /q /f /s %SYSTEMDRIVE%\Temp\*.* 
del /q /f /s %WINDIR%\Prefetch\*.* 
del /q /f /s %SYSTEMDRIVE%\*.log 
del /q /f /s %SYSTEMDRIVE%\*.bak 
del /q /f /s %SYSTEMDRIVE%\*.gid 
cls
echo [91mSuccesfull cleaned logs![0m
echo.
timeout 2 >nul
echo [91mReturning to menu...[0m
timeout 3 >nul
goto menu

:x
color 0c
cls
echo Bye Bye...
timeout 1 >nul
exit

:error
cls
echo [91mFailure:[0m Enter valid number option. [95mError 214[0m
timeout 3 >NUL
echo [91mIf you have a problem: [0m[96mdiscord.gg/MKtBtrjkyn[0m
timeout 2 >nul
echo [91mPress enter to return to menu.[0m
pause>nul
goto menu

:internet
cls
echo.
echo [91m"                          _____ ________      ________ _____  ______    ______ _____   _____ [0m      
echo [91m"                         / ____|  ____\ \    / /  ____|  __ \|  ____|  |  ____|  __ \ / ____|    [0m    
echo [91m"                        | (___ | |__   \ \  / /| |__  | |__) | |__     | |__  | |__) | (___    [0m         
echo [91m"                         \___ \|  __|   \ \/ / |  __| |  _  /|  __|    |  __| |  ___/ \___ \       [0m     
echo [91m"                         ____) | |____   \  /  | |____| | \ \| |____   | |    | |     ____) |     [0m    
echo [91m"                        |_____/|______|   \/   |______|_|  \_\______|  |_|    |_|    |_____/     [0m                                                                                   
echo                                                       [90mVersion: BETA[0m
echo [90m                        ______________________________________________________________________[0m
echo.
echo                                                 Logged in as [91m%USERNAME%[0m
echo.
echo                          [90m[[0m [91m1[0m [90m][0m Comming Soon!                                    [90m[[0m [91m2[0m [90m][0m About
cls
ipconfig /flushdns
ipconfig /registerdns
ipconfig /release
ipconfig /renew
netsh winsock reset
goto menu

:about
cls
echo.
echo [91m"                          _____ ________      ________ _____  ______    ______ _____   _____ [0m      
echo [91m"                         / ____|  ____\ \    / /  ____|  __ \|  ____|  |  ____|  __ \ / ____|    [0m    
echo [91m"                        | (___ | |__   \ \  / /| |__  | |__) | |__     | |__  | |__) | (___    [0m         
echo [91m"                         \___ \|  __|   \ \/ / |  __| |  _  /|  __|    |  __| |  ___/ \___ \       [0m     
echo [91m"                         ____) | |____   \  /  | |____| | \ \| |____   | |    | |     ____) |     [0m    
echo [91m"                        |_____/|______|   \/   |______|_|  \_\______|  |_|    |_|    |_____/     [0m                                                                                   
echo                                                       [90mVersion: BETA[0m
echo [90m                        ______________________________________________________________________[0m
echo.
echo                                                 Logged in as [91m%USERNAME%[0m
echo.
echo                                       [90m[[0m [91mDeveloper: itz_cxrd#0001[0m [90m][0m
echo.
echo                                       [90m[[0m [91mDiscord Server: soon...[0m [90m][0m
echo.
set /p choose="[91m>[0m "
if /i "%choose%"=="x" goto options

:tweaks
cls
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
taskkill /f /im explorer.exe
start explorer.exe
goto menu

              
                                                                          