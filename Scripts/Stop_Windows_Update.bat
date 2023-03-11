@echo off
@echo ***********************************
@echo Stopping Windows Update Service
Net stop wuauserv
@echo disabling Windows Update Service
sc config "wuauserv" start=disabled
@echo ***********************************
@echo Deleting Windows Update Cache Files
del /f /s /q %windir%\SoftwareDistribution\*.*
del /f /s /q %windir%\system32\catroot2\*.*
@echo Deleting Windows Update Service
sc delete wuauserv
@echo ***********************************
set /p pause="Please click to continue?"