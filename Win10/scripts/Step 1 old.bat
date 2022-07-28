echo off

color 0A

echo Connect the Wi-Fi to Eduroam Before Continuing 

set /p pause="Press enter to continue... "

echo Enabling the Local Tech account...
net user /add RUCETech Ruc319RU
net localgroup Administrators rucetech /add
net accounts /maxpwage:unlimited

echo Enabling the Local Tech account...
net user /add RUCE Ruceuser
net localgroup Administrators RUCE /add
net accounts /maxpwage:unlimited

echo Mapping Rhino to be able to load stages...
net use * \\rhino.ru.ac.za\sw01

echo Switching off UAC settings...
regedit /s \\rhino\SW01\Software\oem\win7\aaa\uac_off.reg

echo Enable Auto Login with RUCETech account...
regedit /s "\\rhino\SW01\Software\OEM\Win10\CSD Laptop Project\Auto_LogOn RUCETech.reg"

color 09

echo Copying Ruce Laptop to start after restarting...
copy "\\rhino.ru.ac.za\SW01\Software\OEM\Win10\CSD Laptop Project\Ruce Laptop.bat" "c:\Users\Public\Desktop"
"\\rhino\SW01\Software\oem\pstools\sleep.exe" 5

echo Running Office Suite removal tool with PowerShell...
PowerShell.exe set-executionPolicy -Scope CurrentUser Unrestricted
Powershell.exe -File "\\rhino.ru.ac.za\SW01\Software\OEM\Win10\CSD Laptop Project\Office_Removal.ps1" -ExecutionPolicy UnRestricted

set /p pause="Press enter to continue... "

shutdown -r -t 00