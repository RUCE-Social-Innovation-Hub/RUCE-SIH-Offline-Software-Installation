@echo off

color 0A

:A
cls

echo Connect the Wi-Fi to Eduroam Before Continuing 

set /p pause="Press enter to continue... "

echo Mapping Rhino to be able to load stages...
net use * \\rhino\sw01

echo Switching off UAC settings...
regedit /s \\rhino\SW01\Software\oem\win10\uac_off.reg

echo Uninstall Bloatware with PowerShell...
PowerShell.exe set-executionPolicy -Scope CurrentUser Unrestricted
PowerShell.exe -File "\\rhino\SW01\Software\OEM\Win10\CSD Laptop Project\DelBloatware.ps1"  -ExecutionPolicy UnRestricted
\\rhino\SW01\Software\oem\pstools\sleep.exe 20

Echo Config Time Sync...
tzutil /s "South Africa Standard Time"
sc config w32time start= auto
net start w32time
w32tm /config /manualpeerlist:"ntp.ru.ac.za" /syncfromflags:manual /update /reliable:yes
w32tm /resync /nowait
"\\rhino\SW01\Software\oem\pstools\sleep.exe" 5

echo Setting Regional Settings with PowerShell...
PowerShell.exe set-executionPolicy -Scope CurrentUser Unrestricted
PowerShell.exe -File "\\rhino\SW01\Software\OEM\Win10\CSD Laptop Project\Default_Regional.ps1"  -ExecutionPolicy UnRestricted

echo Installing FULL Office 2016 setup with office adminfile, including Outlook 2016
\\rhino\SW01\Software\OEM\Win10\CSD Laptop Project\Office2016\setup.exe

echo Activating office 2016
cscript "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" /sethst:vlmcs.ru.ac.za
cscript "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" /act

echo Starting F-Secure Installation, please wait...
msiexec /q /i "\\rhino\SW01\Software\OEM\AntiVirus\F-Secure\RU_Labs-fscs-14.22-FULL.msi" /passive /norestart   

echo Installing Firefox
"\\rhino\SW01\Software\Public\applications\Mozilla\Firefox Setup 65.0.2.exe" -ms

echo Installing Google Chrome, please wait....
msiexec /q /i "\\rhino\sw01\Software\Public\applications\Google\GoogleChromeStandaloneEnterprise64.msi" /passive /norestart

echo Copy Layout Modification file
copy \\rhino\SW01\Software\oem\Win10\LayoutModification.xml C:\Users\Default\AppData\Local\Microsoft\Windows\Shell
rename C:\Users\Default\AppData\Local\TileDataLayer TileDataLayer.Old

echo Installing Adobe Flash Players for Firefox and Chrome, please wait...
msiexec /q /i "\\rhino\SW01\Software\public\applications\Full Shockwave Player\install_flash_player_29_plugin.msi" /passive /norestart
msiexec /q /i "\\rhino\SW01\Software\public\applications\Full Shockwave Player\install_flash_player_29_ppapi.msi" /passive /norestart

echo Installing Adobe Shockwave Player, please wait...
msiexec /q /i "\\rhino\SW01\Software\public\applications\Full Shockwave Player\sw_lic_full_installer.msi" /passive /norestart

echo Installing VLC Media player
"\\rhino\sw01\Software\Public\applications\vlc-3.0.4-win64.exe" /L=1033 /S

echo Installing Satsuki Decoder
\\rhino\SW01\Software\public\applications\codecs\Satsuki.Decoder.Pack.5.1.0.1 /S
echo Please wait for Satsuki to finish Installing
\\rhino\SW01\Software\oem\pstools\sleep.exe 10

echo Setting Default Associations
xcopy /y \\rhino\SW01\Software\OEM\Win10\OEMDefaultAssociations.xml "C:\Windows\System32"

echo Restoring PowerShell restrictions...
PowerShell.exe set-executionPolicy restricted
\\rhino\SW01\Software\oem\pstools\sleep.exe 10

echo Installing Adobe Acrobat DC Reader, please wait...
"\\rhino\SW01\Software\Library\Adobe Acrobat for Windows\DC Reader\setup.exe"
\\rhino\SW01\Software\oem\pstools\sleep.exe 120

echo Delete Ruce Laptop to start after restarting...
del /f /q "c:\Users\Public\Desktop\Ruce Laptop.bat"
"\\rhino\SW01\Software\oem\pstools\sleep.exe" 5

echo Disable auto login with rucetech account...
regedit /s "\\rhino\SW01\Software\OEM\Win10\CSD Laptop Project\Auto_LogOff.reg"

echo Switching ON UAC settings...
regedit /s \\rhino\SW01\Software\oem\win10\uac_on.reg
\\rhino\SW01\Software\oem\pstools\sleep.exe 10

shutdown -r -t 00

