
### https://www.reddit.com/r/fortinet/comments/fi16uv/automating_the_install_of_forticlient_vpn_nonems/
msiexec /i FortiClientVPN.msi /passive /quiet INSTALLLEVEL=3 DESKTOPSHORTCUT=0

Rem # get the MSI identifier get-wmiobject Win32_Product | Sort-Object -Property Name | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
Rem # Uninstall command 
msiexec /x {MSI ID} /q

### Backup the config and package with a bat file that copies the file then restores it
copy SSL-VPN.conf "C:\Program Files\Fortinet\FortiClient\SSL-VPN.conf" /Y
cd "C:\Program Files\Fortinet\FortiClient"
"C:\Program Files\Fortinet\FortiClient\FCConfig.exe" -m vpn -f "C:\Program Files\Fortinet\FortiClient\SSL-VPN.conf" -o import -i 1 -p Forticlient
