#C:\Windows\Sysnative\pnputil.exe -i -a .\x3UNIVX.inf
#Add-PrinterDriver -Name "Xerox Global Print Driver PCL6"
#Add-PrinterPort -Name "Xerox 6515" -PrinterHostAddress "192.168.88.65"
#Add-Printer -Name "Xerox 6515" -DriverName "Xerox Global Print Driver PCL6" -PortName "Xerox 6515"
#
C:\Windows\System32\pnputil.exe -i -a .\Xerox_VersaLink_C400_C405_PCL6.inf
Add-PrinterDriver -Name "Xerox VersaLink C405 V4 PCL6"
Add-PrinterPort -Name "Xerox C405" -PrinterHostAddress "10.0.0.152"
Add-Printer -Name "Xerox versalink C405" -DriverName "Xerox VersaLink C405 V4 PCL6" -PortName "Xerox C405"
