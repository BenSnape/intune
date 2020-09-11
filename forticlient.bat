### Install forticlient and apply configuration
### https://kb.fortinet.com/kb/documentLink.do?externalID=FD41256
FortiSSLVPNclient.exe connect -s TMCP-VPN -h vpn.domain.com i -m -q

Rem # get the MSI identifier get-wmiobject Win32_Product | Sort-Object -Property Name | Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
Rem # Uninstall command 
msiexec /x {MSI ID} /q
