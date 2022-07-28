@echo off





echo echo.                                                                                                                          >> Step1.2_Admin_Offline.bat
echo echo.                                                                                                                          >> Step1.2_Admin_Offline.bat
echo echo.                                                                                                                          >> Step1.2_Admin_Offline.bat
echo echo.                                                                                                                          >> Step1.2_Admin_Offline.bat



echo @echo off                                                                                                         >> Step1.2_Admin_Offline.bat
echo color 0C                                                                                                          >> Step1.2_Admin_Offline.bat
echo.                                                                                                                  >> Step1.2_Admin_Offline.bat
echo cls                                                                                                               >> Step1.2_Admin_Offline.bat
echo.                                                                                                                  >> Step1.2_Admin_Offline.bat
echo.                                                                                                                  >> Step1.2_Admin_Offline.bat
echo echo Uninstall Bloatware with PowerShell...                                                                       >> Step1.2_Admin_Offline.bat
echo PowerShell.exe set-executionPolicy -Scope CurrentUser Unrestricted                                                >> Step1.2_Admin_Offline.bat
echo PowerShell.exe -File "%cd%\Win10\scripts\DelBloatware.ps1"  -ExecutionPolicy UnRestricted              >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\pstools\sleep.exe" 20                                                                                 >> Step1.2_Admin_Offline.bat
echo.                                                                                                                  >> Step1.2_Admin_Offline.bat
echo PowerShell.exe set-executionPolicy -Scope CurrentUser Unrestricted                                                >> Step1.2_Admin_Offline.bat
echo powershell.exe -File "%cd%\Win10\scripts\uninstall_Bloatware.ps1" -ExecutionPolicy UnRestricted        >> Step1.2_Admin_Offline.bat
echo PowerShell.exe set-executionPolicy -Scope CurrentUser Unrestricted                                                >> Step1.2_Admin_Offline.bat
echo.                                                                                                                  >> Step1.2_Admin_Offline.bat
echo set /p pause="Uninstall Bloatware complete?. Press enter to continue to Phase 2... "                              >> Step1.2_Admin_Offline.bat
echo "Done writing bloatware section. Proceeding to user acct creation and software installation section...."



echo echo.                                                                                                             >> Step1.2_Admin_Offline.bat
echo echo.                                                                                                             >> Step1.2_Admin_Offline.bat
echo echo.                                                                                                             >> Step1.2_Admin_Offline.bat
echo echo.                                                                                                             >> Step1.2_Admin_Offline.bat


echo color 0A                                                                                                                       >> Step1.2_Admin_Offline.bat
echo cls                                                                                                                            >> Step1.2_Admin_Offline.bat
echo rem echo Mapping Rhino to be able to load stages...                                                                            >> Step1.2_Admin_Offline.bat
echo rem net use * \\rhino\sw01                                                                                                     >> Step1.2_Admin_Offline.bat
echo echo Switching off UAC settings...                                                                                             >> Step1.2_Admin_Offline.bat
echo regedit /s %cd%\Win10\UAC_off.reg                                                                                              >> Step1.2_Admin_Offline.bat
echo rem echo Uninstall Bloatware with PowerShell...                                                                                >> Step1.2_Admin_Offline.bat
echo rem PowerShell.exe set-executionPolicy -Scope CurrentUser Unrestricted                                                         >> Step1.2_Admin_Offline.bat
echo rem PowerShell.exe -File "\\rhino\SW01\Software\OEM\Win10\scripts\DelBloatware.ps1"  -ExecutionPolicy UnRestricted  >> Step1.2_Admin_Offline.bat
echo rem \\rhino\SW01\Software\oem\pstools\sleep.exe 20                                                                             >> Step1.2_Admin_Offline.bat
echo Echo Config Time Sync...                                                                                                       >> Step1.2_Admin_Offline.bat
echo tzutil /s "South Africa Standard Time"                                                                                         >> Step1.2_Admin_Offline.bat
echo sc config w32time start= auto                                                                                                  >> Step1.2_Admin_Offline.bat
echo net start w32time                                                                                                              >> Step1.2_Admin_Offline.bat
echo w32tm /config /manualpeerlist:"ntp.ru.ac.za" /syncfromflags:manual /update /reliable:yes                                       >> Step1.2_Admin_Offline.bat
echo w32tm /resync /nowait                                                                                                          >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\pstools\sleep.exe" 5                                                                                               >> Step1.2_Admin_Offline.bat
echo echo Setting Regional Settings with PowerShell...                                                                              >> Step1.2_Admin_Offline.bat
echo PowerShell.exe set-executionPolicy -Scope CurrentUser Unrestricted                                                             >> Step1.2_Admin_Offline.bat
echo PowerShell.exe -File "%cd%\Win10\scripts\Default_Regional.ps1"  -ExecutionPolicy UnRestricted                       >> Step1.2_Admin_Offline.bat
echo echo Installing FULL Office 2016 setup with office adminfile, including Outlook 2016                                           >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\scripts\Office2016\setup.exe"                                                                           >> Step1.2_Admin_Offline.bat
echo echo Activating office 2016                                                                                                    >> Step1.2_Admin_Offline.bat
echo cscript "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" /sethst:vlmcs.ru.ac.za                                     >> Step1.2_Admin_Offline.bat
echo cscript "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" /act                                                       >> Step1.2_Admin_Offline.bat
echo echo Starting F-Secure Installation, please wait...                                                                            >> Step1.2_Admin_Offline.bat
echo msiexec /q /i "%cd%\Win10\applications\AntiVirus\F-Secure\RU_Labs-fscs-14.22-FULL.msi" /passive /norestart                                  >> Step1.2_Admin_Offline.bat
echo echo Installing Firefox                                                                                                        >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\applications\Mozilla\Firefox Setup 65.0.2.exe" -ms                                                                 >> Step1.2_Admin_Offline.bat
echo echo Installing Google Chrome, please wait....                                                                                 >> Step1.2_Admin_Offline.bat
echo msiexec /q /i "%cd%\Win10\applications\Google\GoogleChromeStandaloneEnterprise64.msi" /passive /norestart                      >> Step1.2_Admin_Offline.bat
echo echo Copy Layout Modification file                                                                                             >> Step1.2_Admin_Offline.bat
echo copy %cd%\Win10\LayoutModification.xml C:\Users\Default\AppData\Local\Microsoft\Windows\Shell                                  >> Step1.2_Admin_Offline.bat
echo rename C:\Users\Default\AppData\Local\TileDataLayer TileDataLayer.Old                                                          >> Step1.2_Admin_Offline.bat
echo echo Installing Adobe Flash Players for Firefox and Chrome, please wait...                                                     >> Step1.2_Admin_Offline.bat
echo msiexec /q /i "%cd%\Win10\applications\Full Shockwave Player\install_flash_player_29_plugin.msi" /passive /norestart           >> Step1.2_Admin_Offline.bat
echo msiexec /q /i "%cd%\Win10\applications\Full Shockwave Player\install_flash_player_29_ppapi.msi" /passive /norestart            >> Step1.2_Admin_Offline.bat
echo echo Installing Adobe Shockwave Player, please wait...                                                                         >> Step1.2_Admin_Offline.bat
echo msiexec /q /i "%cd%\Win10\applications\Full Shockwave Player\sw_lic_full_installer.msi" /passive /norestart                    >> Step1.2_Admin_Offline.bat
echo echo Installing VLC Media player                                                                                               >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\applications\vlc-3.0.4-win64.exe" /L=1033 /S                                                                       >> Step1.2_Admin_Offline.bat
echo echo Installing Satsuki Decoder                                                                                                >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\applications\codecs\Satsuki.Decoder.Pack.5.1.0.1" /S                                                               >> Step1.2_Admin_Offline.bat
echo echo Please wait for Satsuki to finish Installing                                                                              >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\pstools\sleep.exe" 10                                                                                              >> Step1.2_Admin_Offline.bat
echo echo Setting Default Associations                                                                                              >> Step1.2_Admin_Offline.bat
echo xcopy /y "%cd%\Win10\OEMDefaultAssociations.xml" "C:\Windows\System32"                                                         >> Step1.2_Admin_Offline.bat
echo echo Restoring PowerShell restrictions...                                                                                      >> Step1.2_Admin_Offline.bat
echo PowerShell.exe set-executionPolicy restricted                                                                                  >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\pstools\sleep.exe" 10                                                                                              >> Step1.2_Admin_Offline.bat
echo echo Installing Adobe Acrobat DC Reader, please wait...                                                                        >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\applications\Adobe Acrobat for Windows\DC Reader\setup.exe"                                                             >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\pstools\sleep.exe" 120                                                                                             >> Step1.2_Admin_Offline.bat
echo echo Switching ON UAC settings...                                                                                              >> Step1.2_Admin_Offline.bat
echo regedit /s %cd%\Win10\UAC_on.reg                                                                                               >> Step1.2_Admin_Offline.bat
echo "%cd%\Win10\pstools\sleep.exe" 10                                                                                              >> Step1.2_Admin_Offline.bat
echo set /p pause="Phase 2 complete. "                                                                                              >> Step1.2_Admin_Offline.bat





echo echo.                                                                                                                          >> Step1.2_Admin_Offline.bat
echo echo.                                                                                                                          >> Step1.2_Admin_Offline.bat
echo echo.                                                                                                                          >> Step1.2_Admin_Offline.bat
echo echo.                                                                                                                          >> Step1.2_Admin_Offline.bat





echo @echo off                                                                                                                                                                                                                                                                                                                                                                                       >> Step1.3_Admin_Offline_parallel.bat
echo color 0E                                                                                                                                                                                                                                                                                                                                                                                        >> Step1.3_Admin_Offline_parallel.bat
echo cls                                                                                                                                                                                                                                                                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo rem echo Mapping Rhino to be able to load stages...                                                                                                                                                                                                                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo rem net use * \\rhino\sw01                                                                                                                                                                                                                                                                                                                                                                      >> Step1.3_Admin_Offline_parallel.bat
echo echo Starting F-Secure Installation, please wait...                                                                                                                                                                                                                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo msiexec /q /i "%cd%\Win10\applications\AntiVirus\F-Secure\RU_Labs-fscs-14.22-FULL.msi" /passive /norestart                                                                                                                                                                                                                                                                                                   >> Step1.3_Admin_Offline_parallel.bat
echo echo updating antivirus....                                                                                                                                                                                                                                                                                                                                                                     >> Step1.3_Admin_Offline_parallel.bat
echo IF exist "%SYSTEMDRIVE%\Program Files (x86)\F-Secure" ( echo updating f-secure.... && curl -O https://download.f-secure.com/latest/fsdbupdate9.exe && .\fsdbupdate9.exe ) ELSE ( echo updating Windows Defender antivirus..... && "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -removedefinitions -dynamicsignatures && "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate)      >> Step1.3_Admin_Offline_parallel.bat
echo echo Cuurrently Checking for updates, download available updates and install them...                                                                                                                                                                                                                                                                                                            >> Step1.3_Admin_Offline_parallel.bat
echo UsoClient.exe ScanInstallWait                                                                                                                                                                                                                                                                                                                                                                   >> Step1.3_Admin_Offline_parallel.bat
echo set /p pause="updating F-Secure complete?. Press enter to continue to Phase 2... "                                                                                                                                                                                                                                                                                                              >> Step1.3_Admin_Offline_parallel.bat





echo echo.                                                                                                                          >> Step1.3_Admin_Offline_parallel.bat
echo echo.                                                                                                                          >> Step1.3_Admin_Offline_parallel.bat
echo echo.                                                                                                                          >> Step1.3_Admin_Offline_parallel.bat
echo echo.                                                                                                                          >> Step1.3_Admin_Offline_parallel.bat






@echo off

color 0D

cls


echo creating a script with full paths....
echo @echo off                                                                                                                                    >> Step1.3_Admin_Offline_parallel.bat
echo color 0E                                                                                                                                     >> Step1.3_Admin_Offline_parallel.bat
echo cls                                                                                                                                          >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo echo currently installing files ....                                                                                                         >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo echo Installing Lanshare                                                                                                                     >> Step1.3_Admin_Offline_parallel.bat
echo "%cd%\Win10\Software\LANShare_1.2.1_setup-win64.exe" /VERYSILENT /NORESTART                                                                  >> Step1.3_Admin_Offline_parallel.bat
echo mklink "%SYSTEMDRIVE%\Users\%username%\Desktop\Lanshare"  "%SYSTEMDRIVE%\Program Files (x86)\LANShare\LANShare.exe"                          >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo echo Installing TeamViewer                                                                                                                   >> Step1.3_Admin_Offline_parallel.bat
echo "%cd%\Win10\Software\TeamViewer_Setup_x64.exe" /S                                                                                            >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo echo Installing video pad                                                                                                                    >> Step1.3_Admin_Offline_parallel.bat
echo "%cd%\Win10\Software\vppsetup.exe" -LQUIET                                                                                                   >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo echo Installing zoom                                                                                                                         >> Step1.3_Admin_Offline_parallel.bat
echo "%cd%\Win10\Software\ZoomInstaller.exe" /s /I                                                                                                >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo echo Installing audacity                                                                                                                     >> Step1.3_Admin_Offline_parallel.bat
echo "%cd%\Win10\Software\audacity-win-3.0.2.exe" /VERYSILENT /NORESTART                                                                          >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo echo Installing mousetr                                                                                                                      >> Step1.3_Admin_Offline_parallel.bat
echo robocopy "%cd%\Win10\Software\Rekenwonder Software" "%SYSTEMDRIVE%\Users\%username%\Downloads" /Z /FFT /S                                    >> Step1.3_Admin_Offline_parallel.bat
echo mklink "%SYSTEMDRIVE%\Users\%username%\Desktop\Mouse Trainer"  "%SYSTEMDRIVE%\Users\%username%\Downloads\Mouse Trainer\MouseTrainer.exe"     >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo echo Installing openshot                                                                                                                     >> Step1.3_Admin_Offline_parallel.bat
echo "%cd%\Win10\Software\OpenShot-v2.5.1-x86_64.exe" /VERYSILENT /NORESTART                                                                      >> Step1.3_Admin_Offline_parallel.bat
echo >copy "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\OpenShot Video Editor.lnk" "%SYSTEMDRIVE%\Users\%username%\Desktop\"  >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo echo Installing RapidTyping                                                                                                                  >> Step1.3_Admin_Offline_parallel.bat
echo "%cd%\Win10\Software\RapidTyping_Setup_5.3.exe" /S                                                                                           >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo rem echo Installing readrdc                                                                                                                  >> Step1.3_Admin_Offline_parallel.bat
echo rem "%cd%\Win10\Software\readerdc_en_xa_cra_install.exe" /sAll                                                                               >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo echo Installing windows_movie_maker                                                                                                          >> Step1.3_Admin_Offline_parallel.bat
echo "%cd%\Win10\Software\windows-movie-maker-new-multi.exe" /q                                                                                   >> Step1.3_Admin_Offline_parallel.bat
echo.                                                                                                                                             >> Step1.3_Admin_Offline_parallel.bat
echo set /p pause="Finished installing, Press enter to exit... "                                                                                  >> Step1.3_Admin_Offline_parallel.bat
set /p pause="Finished Creating, Press enter to exit... "




