## Delete the scheduled Task
# Unregister-ScheduledTask -TaskName "Name" -Confirm:$False
##

	###########################################################################################
	# Register a scheduled task to run for all users and execute the script on logon	
  # Creates triggers for at logon and repeat every 30 minutes
	###########################################################################################

	$schtaskName= "Name"
	$schtaskDescription="Description"

	#Execute task in users context
	$principal= New-ScheduledTaskPrincipal -GroupId "S-1-5-32-545" -Id "Author"
	#call the vbscript helper and pass the PosH script as argument
	$action = New-ScheduledTaskAction -Execute "<path>.EXE" -Argument "Arguments"
    $settings= New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries
    #Add triggers
    $trigger = @(
      $(New-ScheduledTaskTrigger -AtLogOn),
      $(New-ScheduledTaskTrigger -Once -At 7am -RepetitionDuration  (New-TimeSpan -Days 1)  -RepetitionInterval  (New-TimeSpan -Minutes 30)   )
      )
	#$null=Register-ScheduledTask -TaskName $schtaskName -Trigger $trigger -Action $action  -Principal $principal -Settings $settings -Description $schtaskDescription -Force
    Register-ScheduledTask -Action $action -Trigger $trigger -TaskName $schtaskName -Description $schtaskDescription -Principal $principal


	Start-ScheduledTask -TaskName $schtaskName
