@echo off                                                       
color 0A                                                                                                          
echo cls                                                                                                         
echo This script creates user account SIH-LAPTOP-X                      
set /p pause="Press enter to continue... "                                                                       
set /p num="Enter computer number..."                                                                             
echo %num%                                                                                                        
echo.                                                                                                            
echo creating "SIH LAPTOP %num%" account....                                                                     
set _host="SIH LAPTOP %num%"                                                                                     
net user %_host% sih2022 /add                                                                                     
echo Switching off UAC settings...                                                                               
regedit /s %cd%\Win10\UAC_off.reg                              
echo "Finished creating User account SIH-LAPTOP-"%num%                                                                             
set /p pause="Press enter to continue..."                                        

