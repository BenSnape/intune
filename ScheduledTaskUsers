##https://marckean.com/2017/05/06/scheduled-task/
$ShedService = New-Object –comobject 'Schedule.Service'
$ShedService.Connect()

$Task = $ShedService.NewTask(0)
$Task.RegistrationInfo.Description = 'UserLogonDrives'
$Task.Settings.Enabled = $true
$Task.Settings.AllowDemandStart = $true

$trigger = $task.triggers.Create(9)
$trigger.Enabled = $true

$action = $Task.Actions.Create(0)
$action.Path = 'C:\temp\UserMapDrives.bat'
# $action.WorkingDirectory = ''

$taskFolder = $ShedService.GetFolder("\")
$taskFolder.RegisterTaskDefinition('UserLogonScript', $Task , 6, 'Users', $null, 4)
