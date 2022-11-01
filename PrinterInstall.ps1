# Sysnative explanation https://www.samlogic.net/articles/sysnative-folder-64-bit-windows.htm
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
$PrintDriver = "Kyocera TASKalfa 4052ci KX"
$PrinterPort = "HRSO001PrintQueue"
$PrinterIP = "10.16.3.4"
$PrinterName = "HRSO001PrintQueue"

# Run the Sysnative line when packaged as win32
# Run the System32 line when packaged as testing in PowerShell
#C:\Windows\Sysnative\pnputil.exe -i -a .\x3UNIVX.inf
#C:\Windows\System32\pnputil.exe -i -a .\Xerox_VersaLink_C400_C405_PCL6.inf
Add-PrinterDriver -Name $PrintDriver
Add-PrinterPort -Name $PrinterPort -PrinterHostAddress $PrinterIP
Add-Printer -Name $PrinterName -DriverName $PrintDriver -PortName $PrinterPort
