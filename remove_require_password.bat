@echo off                                                       
color 0A                                                                                                          
echo cls                                                                                                         
set /P make="Please type in the laptop make in UPPERCASE e.g. DELL or ACER...  "
set /p num="Enter computer number..."       
set year=%date:~10,20%                                                                       
@REM echo %num%                                                                                                        
echo.                                                                                                            

set _host="SIH %make% %num%"    

net user %_host% /passwordchg:no 
net user %_host% /expires:never 
set /p pause="Press enter to continue..."                    