$registryPath = "HKLM:\SOFTWARE\Tessian\Settings"

$Name = "name"

$value = "123"

IF(!(Test-Path $registryPath))

  {

    New-Item -Path $registryPath -Force | Out-Null

    New-ItemProperty -Path $registryPath -Name $name -Value $value   -PropertyType String -Force | Out-Null}

 ELSE {

    New-ItemProperty -Path $registryPath -Name $name -Value $value  -PropertyType String -Force | Out-Null}
