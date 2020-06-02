C:\Windows\Sysnative\pnputil.exe -i -a .\x3UNIVX.inf
Add-PrinterDriver -Name "Xerox Global Print Driver PCL6"
Add-PrinterPort -Name "Xerox 6515" -PrinterHostAddress "192.168.88.65"
Add-Printer -Name "Xerox 6515" -DriverName "Xerox Global Print Driver PCL6" -PortName "Xerox 6515"
