@echo off

echo off                                                                                                         
color 0A                                                                                                          
rem echo Connect the Wi-Fi to Eduroam Before Continuing                                                          
set /p pause="Press enter to continue... "                                                                       
set /p num="Enter computer number..."                                                                             
echo %num%                                                                                                        
echo.                                                                                                            
echo creating "SIH LAPTOP %num%" account....                                                                     
set _host="SIH LAPTOP %num%"                                                                                     
net user %_host% sih2022 /add                                                                                     
rem echo Mapping Rhino to be able to load stages...                                                               
rem net use * \\rhino.ru.ac.za\sw01                                                                              
echo Switching off UAC settings...                                                                               
regedit /s %cd%\Win10\UAC_off.reg                                                                                 
rem color 09                                                                                                      
rem echo Copying Ruce Laptop to start after restarting...                                                         
rem copy "%cd%\Win10\scripts\Ruce Laptop.bat" "c:\Users\Public\Desktop"                                
rem "%cd%\Win10\pstools\sleep.exe" 5                                                                             
Echo Create Folder for Office Removal Tool                                                                        
md c:\Temp                                                                                                       
Echo Copy office Removal Tool                                                                                     
echo Get-TroubleshootingPack -Path "%cd%\Win10\applications\MicrosoftOffice\Office 2016 Pro+ Home Use\o15-ctrremove" | Invoke-TroubleshootingPack -AnswerFile "%cd%\Win10\applications\MicrosoftOffice\Office 2016 Pro+ Home Use\OfficeAnswers.xml"  
copy "%cd%\Win10\scripts\Office_Removal.ps1" "c:\Temp"                                                 
echo copy "%cd%\Office_Removal.ps1" "c:\Temp"                                                                         
echo Running Office Suite removal tool with PowerShell...                                                         
PowerShell.exe set-executionPolicy -Scope CurrentUser Unrestricted                                                
Powershell.exe -File "C:\Temp\Office_Removal.ps1" -ExecutionPolicy UnRestricted                                   
set /p pause="Phase 1 complete. Press enter to continue to Phase 2... "                                          
