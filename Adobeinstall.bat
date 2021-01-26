Rem # Get the latest download from Adobe https://get.adobe.com/uk/reader/enterprise/
Rem # Package as a Win32 App
Rem # Use the below command for the install command, update the .exe as required
AcroRdrDC2001320074_en_US.exe /sAll /rs /rps /msi /norestart /quiet EULA_ACCEPT=YES
Rem # get the MSI identifier get-wmiobject Win32_Product | Sort-Object -Property Name | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
Rem # Uninstall command 
msiexec /x {AC76BA86-7AD7-1033-7B44-AC0F074E4100} /q

Detection
"C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe"
