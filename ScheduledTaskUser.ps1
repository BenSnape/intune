## Delete the scheduled Task
# Unregister-ScheduledTask -TaskName "CopyFiles" -Confirm:$False
##
#Add as a PowerShell Scipt in Intune, run as System, the script sets the task to run as the logged in user

	###########################################################################################
	# Register a scheduled task to run for all users and execute the script on logon		  #
	###########################################################################################

	$schtaskName="CopyFiles"
	$schtaskDescription="Description"

	#Execute task in users context
  $principal = New-ScheduledTaskPrincipal -UserId (Get-CimInstance –ClassName Win32_ComputerSystem | Select-Object -expand UserName)
	$action = New-ScheduledTaskAction -Execute "C:\path\app.EXE" -Argument "arguments"
    $settings= New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries
    #Add triggers
    $trigger = @(
      $(New-ScheduledTaskTrigger -AtLogOn),
      $(New-ScheduledTaskTrigger -Once -At 7am -RepetitionDuration  (New-TimeSpan -Days 1)  -RepetitionInterval  (New-TimeSpan -Minutes 60)   )
      )
	#$null=Register-ScheduledTask -TaskName $schtaskName -Trigger $trigger -Action $action  -Principal $principal -Settings $settings -Description $schtaskDescription -Force
    Register-ScheduledTask -Action $action -Trigger $trigger -TaskName $schtaskName -Description $schtaskDescription -Principal $principal


	Start-ScheduledTask -TaskName $schtaskName
