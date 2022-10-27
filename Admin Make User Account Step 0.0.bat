@echo off                                                       
color 0A                                                                                                          
echo cls                                                                                                         
set /P make="Please type in the laptop make in UPPERCASE e.g. DELL or ACER...  "
set /p num="Enter computer number..."       
set year=%date:~0,4%                                                                       
@REM echo %num%                                                                                                        
echo.                                                                                                            
echo creating "SIH %make% %num%" account....                                                                     
set _host="SIH %make% %num%"                                                                                     
net user %_host% sih%year% /add                                                                                     
echo Switching off UAC settings...                                                                               
regedit /s %cd%\Win10\UAC_off.reg                              
echo "Finished creating User account "SIH %make% %num%"                                                                             
set /p pause="Press enter to continue..."                                        

