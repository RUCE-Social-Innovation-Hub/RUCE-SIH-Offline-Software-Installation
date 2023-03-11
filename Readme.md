# <ins>Documentation</ins>
This file is meant to document the differences between the different iso files in this flashdrive. 

1. en-us_windows_10_iot_enterprise_ltsc_2021_x64_dvd_257ad90f.iso is our version 2 windows installation iso. It is a Long Term Servicing Channel, a version of Windows 10 that is designed for use cases where stability and compatibility are more important than access to new features. LTSC releases of Windows 10 are intended for devices that are used in critical systems, such as medical equipment or air traffic control systems or industrial controllers. The primary reason why we use this in the hub is to reduce the number of windows feature updates, and get a more cleaner version of windows with minimum bloatware. 

2. Win_10_Pro_Build_18363.1909.476.iso is our windows lean version 3 windows installation. Windows 10 Lean is a smaller edition of Windows 10 for devices with 16GB of storage or less1. It is also known as Windows 10 CloudE or Windows 10 S. It has a smaller footprint and less features than the regular Windows 10, such as no Registry Editor, no Microsoft Management Console, no wallpapers, no drivers for CD/DVD drives, and so on. It is designed to run faster and more efficiently on low-end devices. We use this as our version 3 windows installation because it does not have bloatware at all and can run effeciently on low specs devices. However, we will have to hunt down for drivers for this version of windows.  


### <ins> Miscalleneous</ins>
As of the time i wrote this documentation, the remaining versions of windows were lagely untested. Please feel free to play around with them as per requirements. However, Windows 10 Lite Edition 19H2 x64.iso seemed to run slow for some strange reason after installation - It slowed down the computer using this version of windows and i needed more time to investigate. tiny10 21H2 x64 2209.iso is still untested. 

Version 1 of windows refers to the version that came pre-installed with the computer. 