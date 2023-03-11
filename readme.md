# <ins>Documentation</ins>
Please follow these instructions to install and setup RUCE SIH computers.
1. Copy the "SIH Devices Full Offline" Setup to the Public folder on the computer. I personally use FastCopy392_installer.exe as i find it faster to copy. But its up to you.

2. Run the "Admin Make User Account Setup 0.0.bat" file as admin. This script will ask you to put the laptop name and number and will proceede to creating a new account e.g. "SIH ACER 01" or "SIH DELL 11".

3. Run the "SIH Devices Non Admin Step 0.0.bat" which will install all the needed software on both admin and user accounts.

4. Follow the command prompt prompts whenever necessary. 

### <ins>Differences between Flashdrives</ins>
In this section, I will keep track of the differences between the Flashdrives.

1. This flashdrive is to be used for setting up computers which are using Windows lean version of windows 10. The specific iso used to install this version of windows is  Win_10_Pro_Build_18363.1909.476.iso. 

2. This flasdrive is different in the following ways:
    1. It copies the SIH Devices Full Offline Setup\Win10\traffic.dll file to  to the path C:\Users\RUCE Admin\AppData\Roaming\Zoom\bin\ folder. 
    2. It copies the zoom folder in SIH Devices Full Offline Setup\Win10\applications\Zoom which is copied to the SIH ACER 01's path C:\Users\SIH ACER 01\AppData\Roaming\Zoom
    3. It makes a zoom shotcut on the Desktop from C:\Users\SIH ACER 01\AppData\Roaming\Zoom\bin\zoom.exe 
    4. It manually installs the drivers by running "SIH Devices Full Offline\Win10\applications\radeon-software-adrenalin-2020-21.5.2-win10-64bit-legacyasics-june21-legacy.exe"




