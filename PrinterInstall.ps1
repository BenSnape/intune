# Export settings
#$GPC = get-printconfiguration  -PrinterName "printer"
#$GPC.PrintTicketXML | out-file C:\Temp\printer.xml
#
#Import
#$XMLA = Get-Content "C:\Temp\printer.xml" | Out-String  
#Set-PrintConfiguration -PrinterName "printer1" -PrintTicketXml $XMLA
#
#
#Detect on Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Printers\Xerox versalink C405
#
#C:\Windows\Sysnative\pnputil.exe -i -a .\x3UNIVX.inf
#Add-PrinterDriver -Name "Xerox Global Print Driver PCL6"
#Add-PrinterPort -Name "Xerox 6515" -PrinterHostAddress "192.168.88.65"
#Add-Printer -Name "Xerox 6515" -DriverName "Xerox Global Print Driver PCL6" -PortName "Xerox 6515"
#
C:\Windows\System32\pnputil.exe -i -a .\Xerox_VersaLink_C400_C405_PCL6.inf
Add-PrinterDriver -Name "Xerox VersaLink C405 V4 PCL6"
Add-PrinterPort -Name "Xerox C405" -PrinterHostAddress "10.0.0.152"
Add-Printer -Name "Xerox versalink C405" -DriverName "Xerox VersaLink C405 V4 PCL6" -PortName "Xerox C405"
