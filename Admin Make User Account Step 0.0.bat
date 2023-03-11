@echo off                                                       
color 0A                                                                                                          
echo cls                                                                                                         
set /P make="Please type in the laptop make in UPPERCASE e.g. DELL or ACER...  "
set /p num="Enter computer number..."       
set year=%date:~10,20%                                                                       
@REM echo %num%                                                                                                        
echo.                                                                                                            
echo creating "SIH %make% %num%" account....                                                                     
set _host="SIH %make% %num%"    

REM Check if user exists
net user _host >nul 2>&1
if %ERRORLEVEL% EQU 0 (
  REM User exists, delete it
  net user _host /delete
) else (
  REM User does not exist, do nothing
)

net user %_host% sih%year% /add                                                                                     
echo Switching off UAC settings...                                                                               
regedit /s %cd%\Win10\UAC_off.reg                              
echo "Finished creating User account "SIH %make% %num%"      
setx LaptopName "SIH %make% %num%"                                                                       
set /p pause="Press enter to continue..."                                        

