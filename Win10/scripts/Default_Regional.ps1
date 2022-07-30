$DefaultHKEY = "HKU\DEFAULT_USER"
$DefaultRegPath = "C:\Users\Default\NTUSER.DAT"

Set-Culture en-ZA
Set-WinSystemLocale en-ZA
Set-WinHomeLocation -GeoId 209
Set-WinUserLanguageList en-ZA
reg load $DefaultHKEY $DefaultRegPath
# reg import "\\rhino\sw01\Software\OEM\Win10\Laptop\en-za-default.reg"
reg import ".\en-za-default.reg"
reg unload $DefaultHKEY
# reg import "\\rhino\sw01\Software\OEM\Win10\Laptop\en-za-welcome.reg"
reg import ".\en-za-welcome.reg"