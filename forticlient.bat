### Install forticlient and apply configuration
### https://kb.fortinet.com/kb/documentLink.do?externalID=FD41256
### failed ### FortiSSLVPNclient.exe connect -s TMCP-VPN -h vpn.domain.com i -m -q
### https://www.reddit.com/r/fortinet/comments/6g5fs9/how_to_deploying_vpn_only_forticlient_without/
### http://www.osd-couture.com/2019/02/installing-fortinet-vpn-free-edition.html
### Download the .exe and run to edownload the .msi fiel in %temp%
### setup a client and export hte registry from HKEY_LOCAL_MACHINE\SOFTWARE\Fortinet\FortiClient\Sslvpn\Tunnels\

### Import reg
##Reg import FortinetSettings.reg

### Install Forticlient
##Msiexec /qb /i FortiClientVPN.msi /norestart INSTALLLEVEL=3

### https://www.reddit.com/r/fortinet/comments/fi16uv/automating_the_install_of_forticlient_vpn_nonems/
msiexec /i FortiClientVPN.msi /passive /quiet INSTALLLEVEL=3 DESKTOPSHORTCUT=0
reg import FortinetSettings.reg

Rem # get the MSI identifier get-wmiobject Win32_Product | Sort-Object -Property Name | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
Rem # Uninstall command 
msiexec /x {MSI ID} /q
