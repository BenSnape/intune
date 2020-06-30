Rem # Get the latest download from Adobe https://get.adobe.com/uk/reader/enterprise/
Rem # Package as a Win32 App
Rem # Use the below command for the install command, update the .exe as required
AcroRdrDC2000620042_en_US.exe /sAll /rs /rps /msi /norestart /quiet EULA_ACCEPT=YES
Rem # get the MSI identifier get-wmiobject Win32_Product | Sort-Object -Property Name | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
Rem # Uninstall command 
msiexec /x {MSI ID} /q
