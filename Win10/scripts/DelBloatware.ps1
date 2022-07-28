get-appxpackage -allusers *BingFinance* | remove-appxpackage
get-appxpackage -allusers *BingNews* | remove-appxpackage
get-appxpackage -allusers *BingSports* | remove-appxpackage
get-appxpackage -allusers *BingWeather* | remove-appxpackage
get-appxpackage -allusers *Candy* | remove-appxpackage
get-appxpackage -allusers *FeedbackHub* | remove-appxpackage
get-appxpackage -allusers *Fitbit* | remove-appxpackage
get-appxpackage -allusers *Getstarted* | remove-appxpackage
get-appxpackage -allusers *LinkedIn* | remove-appxpackage
get-appxpackage -allusers *McAfee* | remove-appxpackage
get-appxpackage -allusers *Microsoft.Office* | remove-appxpackage
get-appxpackage -allusers *MicrosoftOfficeHub* | remove-appxpackage
get-appxpackage -allusers *OneConnect* | remove-appxpackage
get-appxpackage -allusers *Solitaire* | remove-appxpackage
get-appxpackage -allusers *ZuneMusic* | remove-appxpackage
get-appxpackage -allusers *ZuneVideo* | remove-appxpackage

$Applist = Get-AppXProvisionedPackage -online

$Applist | WHere-Object {$_.packagename -like "*BingFinance*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*BingNews*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*BingSports*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*BingWeather*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*Candy*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*FitBit*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*Getstarted*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*LinkedIn*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*McAfee*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*Microsoft.Office*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*MicrosoftOfficeHub*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*MicrosoftSolitaireCollection*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*OneConnect*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*ZuneMusic*"} | Remove-AppxProvisionedPackage -online
$Applist | WHere-Object {$_.packagename -like "*ZuneVideo*"} | Remove-AppxProvisionedPackage -online