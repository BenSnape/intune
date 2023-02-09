#description: This script will set the Enterprise Site list in the registry
#execution mode: Combined
#tags: Apps Install, MoJ, NOMIS

<#
    DESCRIPTION:    Create Trusted Sites 

    AUTHOR:         Ben Snape
    DATE:           09/02/2023
    USAGE:          This script will set the Enterprise Site list in the registry
                    
                    
#>

# Start powershell logging
$SaveVerbosePreference = $VerbosePreference
$VerbosePreference = 'continue'
$VMTime = Get-Date
$LogTime = $VMTime.ToUniversalTime()
mkdir "C:\Windows\temp\Logs\ScriptedActions\EnterpriseSites" -Force
Start-Transcript -Path "C:\Windows\temp\Logs\ScriptedActions\EnterpriseSites\ps_log.txt" -Append
Write-Host "################# New Script Run #################"
Write-host "Current time (UTC-0): $LogTime"

#1. Add Enterprise Site list location

#Setting IExplorer settings
Write-Verbose "Now configuring Enterprise Site list location"

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode"

$Name = "SiteList"

$value = "https://<URL>sites.xml"

IF(!(Test-Path $registryPath))

  {

    New-Item -Path $registryPath -Force | Out-Null

    New-ItemProperty -Path $registryPath -Name $name -Value $value   -PropertyType String -Force | Out-Null}

 ELSE {

    New-ItemProperty -Path $registryPath -Name $name -Value $value  -PropertyType String -Force | Out-Null}



Write-Host "Enterprise Site list location added Successfully"

Stop-Transcript
